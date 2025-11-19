@interface THRevealTOCPanController
- (BOOL)wantsToHandlePanInDirection:(CGPoint)a3;
- (CGPoint)startCenterPoint;
- (THRevealTOCPanController)initWithDelegate:(id)a3 interactiveCanvasController:(id)a4;
- (double)p_shrinkAmountForMovement:(CGPoint)a3;
- (id)completionAnimationFromContentLocation:(id)a3 movement:(CGPoint)a4 velocity:(CGPoint)a5;
- (id)contentLocationForMovement:(CGPoint)a3 velocity:(CGPoint)a4 placement:(id *)a5 currentLocation:(id)a6;
- (id)p_contentLocationForMovement:(CGPoint)a3;
- (void)dealloc;
- (void)guidedPanDidEnd;
- (void)guidedPanDidFinishCompletionAnimation;
- (void)guidedPanWillBeginAtPoint:(CGPoint)a3 withCenterPoint:(CGPoint)a4;
@end

@implementation THRevealTOCPanController

- (THRevealTOCPanController)initWithDelegate:(id)a3 interactiveCanvasController:(id)a4
{
  v7.receiver = self;
  v7.super_class = THRevealTOCPanController;
  result = [(THRevealTOCPanController *)&v7 init];
  if (result)
  {
    result->_delegate = a3;
    result->_icc = a4;
  }

  return result;
}

- (void)dealloc
{
  if (self->_pageLayout || self->_startContentLocation || self->_targetContentLocation)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3.receiver = self;
  v3.super_class = THRevealTOCPanController;
  [(THRevealTOCPanController *)&v3 dealloc];
}

- (BOOL)wantsToHandlePanInDirection:(CGPoint)a3
{
  y = a3.y;
  result = [(THRevealTOCDelegate *)self->_delegate canRevealTOC];
  if (y <= 0.6)
  {
    return 0;
  }

  return result;
}

- (void)guidedPanWillBeginAtPoint:(CGPoint)a3 withCenterPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(THRevealTOCDelegate *)self->_delegate willRevealTOC:a3.x];
  v34 = x;
  v35 = y;
  pageLayout = [objc_msgSend(-[THInteractiveCanvasController hitRep:allowsAllReps:](self->_icc hitRep:1 allowsAllReps:{x, y), "layout"), "pageLayout"}];
  self->_pageLayout = pageLayout;
  if (!pageLayout)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    pageLayout = self->_pageLayout;
  }

  icc = self->_icc;
  [(THPageLayout *)pageLayout frameInRoot];
  [(THInteractiveCanvasController *)icc convertUnscaledToBoundsRect:?];
  v32 = v10;
  v33 = v9;
  v12 = v11;
  v14 = v13;
  [(THRevealTOCDelegate *)self->_delegate pageTargetRectForRevealingTOC];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(THInteractiveCanvasController *)self->_icc viewScale];
  v36.origin.x = v16;
  v36.origin.y = v18;
  v36.size.width = v20;
  v36.size.height = v22;
  CGRectGetWidth(v36);
  v37.origin.y = v32;
  v37.origin.x = v33;
  v37.size.width = v12;
  v37.size.height = v14;
  CGRectGetWidth(v37);
  v23 = self->_icc;
  TSDCenterOfRect();
  [(THInteractiveCanvasController *)v23 contentPlacementForPoint:[(THRevealTOCDelegate *)self->_delegate unmovingViewForRevealingTOC] inView:v24, v25];
  v27 = v26;
  v29 = v28;
  [(THPageLayout *)self->_pageLayout frameInRoot];
  TSDCenterOfRect();
  v30 = [TSDContentLocation contentLocationWithUnscaledPoint:"contentLocationWithUnscaledPoint:viewScale:" viewScale:?];
  if (self->_targetContentLocation)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->_targetContentLocation = [(THInteractiveCanvasController *)self->_icc convertContentLocation:v30 fromPlacement:v27 toPlacement:v29, kTSDContentPlacementCenter.var0.x, kTSDContentPlacementCenter.var0.y];
  [(THInteractiveCanvasController *)self->_icc viewScale];
  self->_startContentLocation = [TSDContentLocation contentLocationWithUnscaledPoint:v34 viewScale:v35, v31];
}

- (id)p_contentLocationForMovement:(CGPoint)a3
{
  [(THInteractiveCanvasController *)self->_icc convertBoundsToUnscaledPoint:a3.x, a3.y];
  [(TSDContentLocation *)self->_startContentLocation unscaledPoint];
  TSDSubtractPoints();
  v5 = v4;
  v7 = v6;
  [(TSDContentLocation *)self->_startContentLocation viewScale];

  return [TSDContentLocation contentLocationWithUnscaledPoint:v5 viewScale:v7, v8];
}

- (double)p_shrinkAmountForMovement:(CGPoint)a3
{
  v4 = [(THRevealTOCPanController *)self p_contentLocationForMovement:a3.x, a3.y];
  [(TSDContentLocation *)self->_startContentLocation unscaledPoint];
  v6 = v5;
  [(TSDContentLocation *)self->_targetContentLocation unscaledPoint];
  v8 = v6 - v7;
  if (v6 - v7 <= 0.0)
  {
    return 0.0;
  }

  [v4 unscaledPoint];
  v10 = v9;
  [(TSDContentLocation *)self->_startContentLocation unscaledPoint];
  if (v10 >= v11)
  {
    return 0.0;
  }

  [(TSDContentLocation *)self->_startContentLocation unscaledPoint];
  v13 = v12;
  [v4 unscaledPoint];
  return fmin((v13 - v14) / v8, 1.0);
}

- (id)contentLocationForMovement:(CGPoint)a3 velocity:(CGPoint)a4 placement:(id *)a5 currentLocation:(id)a6
{
  y = a3.y;
  x = a3.x;
  v10 = [(THRevealTOCPanController *)self p_contentLocationForMovement:a5, a6, a3.x, a3.y, a4.x, a4.y];
  [(THRevealTOCPanController *)self p_shrinkAmountForMovement:x, y];
  v12 = v11;
  if (v11 != 0.0)
  {
    [(TSDContentLocation *)self->_startContentLocation viewScale];
    [(TSDContentLocation *)self->_targetContentLocation viewScale];
    TSDInterpolateFloats();
    [v10 setViewScale:?];
  }

  [(THRevealTOCDelegate *)self->_delegate revealTOCByAmount:v12];
  *a5 = kTSDContentPlacementCenter;
  return v10;
}

- (id)completionAnimationFromContentLocation:(id)a3 movement:(CGPoint)a4 velocity:(CGPoint)a5
{
  y = a5.y;
  [(THRevealTOCPanController *)self p_shrinkAmountForMovement:a4.x, a4.y, a5.x];
  if (y <= 100.0 && (y >= -100.0 ? (v9 = v8 <= 0.300000012) : (v9 = 1), v9))
  {
    v11 = 0;
    p_startContentLocation = &self->_startContentLocation;
  }

  else
  {
    p_startContentLocation = &self->_targetContentLocation;
    v11 = 1;
  }

  v12 = *p_startContentLocation;
  v13 = +[TSDContentPathAnimation animation];
  [v13 setDuration:0.25];
  [v13 setContentLocations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", a3, v12, 0)}];
  [v13 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionEaseInEaseOut)}];
  delegate = self->_delegate;
  if (v11)
  {
    v15 = 1;
    [(THRevealTOCDelegate *)delegate revealTOCAnimated:1 duration:0.25];
  }

  else
  {
    [(THRevealTOCDelegate *)delegate unrevealTOCAnimated:1 duration:0.25];
    v15 = 0;
  }

  self->_animatingToTOC = v15;
  return v13;
}

- (void)guidedPanDidFinishCompletionAnimation
{
  if (self->_animatingToTOC)
  {
    [(THRevealTOCDelegate *)self->_delegate didRevealTOC];
  }
}

- (void)guidedPanDidEnd
{
  [(THRevealTOCDelegate *)self->_delegate endRevealTOC];

  self->_pageLayout = 0;
  self->_startContentLocation = 0;

  self->_targetContentLocation = 0;
}

- (CGPoint)startCenterPoint
{
  x = self->_startCenterPoint.x;
  y = self->_startCenterPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
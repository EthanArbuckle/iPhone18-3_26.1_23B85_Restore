@interface THWZoomableCanvasController
- (BOOL)createLayerHostIfNeededWithUnscaledFrame:(CGRect)a3 viewScale:(double)a4;
- (BOOL)createViewIfNeededWithUnscaledFrame:(CGRect)a3 viewScale:(double)a4;
- (BOOL)interactiveCanvasController:(id)a3 allowsEditMenuForRep:(id)a4;
- (BOOL)interactiveCanvasControllerIsRelatedCanvasScrolling:(id)a3;
- (BOOL)isZoomedOut;
- (CGPoint)clampedUnscaledContentOffset:(CGPoint)a3 anchor:(CGPoint)a4 viewScale:(double)a5 scrollViewBoundsSize:(CGSize)a6;
- (CGPoint)contentOffsetForAnchor:(CGPoint)a3;
- (CGPoint)interactiveCanvasController:(id)a3 clampContentOffset:(CGPoint)a4 forViewScale:(double)a5 scrollViewBoundsSize:(CGSize)a6;
- (CGRect)interactiveCanvasController:(id)a3 expandBoundsForHitTesting:(CGRect)a4;
- (CGRect)targetVisibleRect;
- (THWZoomableCanvasController)initWithDocumentRoot:(id)a3;
- (_NSRange)loadedPageRange;
- (id)interactiveCanvasController:(id)a3 delegateConformingToProtocol:(id)a4 forRep:(id)a5;
- (id)interactiveCanvasController:(id)a3 layoutGeometryProviderForLayout:(id)a4;
- (id)interactiveCanvasController:(id)a3 primaryTargetForGesture:(id)a4;
- (void)dealloc;
- (void)interactiveCanvasController:(id)a3 willAnimateScrollToVisibleUnscaledRect:(CGRect)a4;
- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)a3 stillAnimating:(BOOL)a4;
- (void)interactiveCanvasControllerDidZoom:(id)a3;
- (void)p_rebuildContentSize;
- (void)p_rebuildInfos;
- (void)p_updateContentsScale;
- (void)p_updateInfosToDisplay;
- (void)p_updateWithDelegate;
- (void)setDelegate:(id)a3;
- (void)setUnscaledFrame:(CGRect)a3 viewScale:(double)a4;
- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 anchor:(CGPoint)a5;
- (void)setupImmediatePressGesture;
- (void)teardownController;
@end

@implementation THWZoomableCanvasController

- (THWZoomableCanvasController)initWithDocumentRoot:(id)a3
{
  v7.receiver = self;
  v7.super_class = THWZoomableCanvasController;
  v3 = [(THWZoomableCanvasController *)&v7 init];
  if (v3)
  {
    objc_opt_class();
    v3->_documentRoot = TSUDynamicCast();
    origin = CGRectNull.origin;
    size = CGRectNull.size;
    v3->_loadedPageRange = xmmword_34A730;
    v3->_targetVisibleRect.origin = origin;
    v3->_targetVisibleRect.size = size;
  }

  return v3;
}

- (void)dealloc
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setDelegate:0];

  v3.receiver = self;
  v3.super_class = THWZoomableCanvasController;
  [(THWZoomableCanvasController *)&v3 dealloc];
}

- (BOOL)createViewIfNeededWithUnscaledFrame:(CGRect)a3 viewScale:(double)a4
{
  p_scrollView = &self->_scrollView;
  scrollView = self->_scrollView;
  if (!scrollView)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    THCanvasAndScrollViewCreateWithClass(self, &self->_interactiveCanvasController, &self->_layerHost, p_scrollView, v12, 0, v13);
    clippingLayerHost = self->_clippingLayerHost;
    if (clippingLayerHost)
    {
      [(THWClippingLayerHost *)clippingLayerHost setInteractiveCanvasController:0];
      [(THWClippingLayerHost *)self->_clippingLayerHost teardownAndTransferCanvasLayersToHost:[(THWZoomableCanvasController *)self layerHost]];

      self->_clippingLayerHost = 0;
    }

    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController disableAllGestures];
    [(THWZoomableCanvasController *)self setUnscaledFrame:x viewScale:y, width, height, a4];
    [(TSKScrollView *)self->_scrollView hideScrollIndicators];
    [(TSKScrollView *)self->_scrollView setMayPassScrollEventsToNextResponder:1];
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setNestedCanvasAllowLayoutAndRenderOnThread:0];
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setAllowLayoutAndRenderOnThread:1];
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setCreateRepsForOffscreenLayouts:1];
    [-[TSDCanvasLayerHosting canvasLayer](self->_layerHost "canvasLayer")];
    [(THWZoomableCanvasController *)self p_updateWithDelegate];
  }

  return scrollView == 0;
}

- (BOOL)createLayerHostIfNeededWithUnscaledFrame:(CGRect)a3 viewScale:(double)a4
{
  if (self->_scrollView || self->_layerHost || self->_interactiveCanvasController || self->_clippingLayerHost)
  {
    return 0;
  }

  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  THCanvasAndClippingLayerHostCreateWithClass(self, &self->_interactiveCanvasController, &self->_clippingLayerHost, 0);
  v5 = 1;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setNestedCanvasAllowLayoutAndRenderOnThread:1];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setCreateRepsForOffscreenLayouts:1];
  [(TSDCanvasLayer *)[(THWClippingLayerHost *)self->_clippingLayerHost canvasLayer] setCenteredInScrollView:1];
  [(THWZoomableCanvasController *)self setUnscaledFrame:x viewScale:y, width, height, a4];
  [(THWZoomableCanvasController *)self p_updateWithDelegate];
  return v5;
}

- (void)p_updateWithDelegate
{
  if (self->_delegate)
  {
    [(THWZoomableCanvasController *)self p_rebuildContentSize];
    [(THWZoomableCanvasController *)self p_updateContentsScale];
    if (objc_opt_respondsToSelector())
    {
      [(THWZoomableCanvasControllerDelegate *)self->_delegate zoomableCanvasControllerCustomizeLayerHost:self];
    }

    [(THWZoomableCanvasController *)self p_rebuildInfos];
  }
}

- (void)p_updateContentsScale
{
  if (self->_clippingLayerHost)
  {
    v3 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController canvas];
    [(THWZoomableCanvasControllerDelegate *)self->_delegate zoomableCanvasControllerContentsScale:self];

    [v3 i_setContentsScale:?];
  }
}

- (void)setUnscaledFrame:(CGRect)a3 viewScale:(double)a4
{
  TSDMultiplyRectScalar();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  scrollView = self->_scrollView;
  if (scrollView)
  {
    [(TSKScrollView *)scrollView frame];
    v15 = v14;
    v17 = v16;
    v18 = self->_scrollView;
  }

  else
  {
    clippingLayerHost = self->_clippingLayerHost;
    if (!clippingLayerHost)
    {
      return;
    }

    [(CALayer *)[(THWClippingLayerHost *)clippingLayerHost clippingLayer] frame];
    v15 = v20;
    v17 = v21;
    v18 = [(THWClippingLayerHost *)self->_clippingLayerHost clippingLayer];
  }

  [(CALayer *)v18 setFrame:v6, v8, v10, v12];
  if (v15 != v10 || v17 != v12)
  {
    [(THWZoomableCanvasController *)self p_rebuildContentSize];

    [(THWZoomableCanvasController *)self p_rebuildInfos];
  }
}

- (void)setDelegate:(id)a3
{
  self->_delegate = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_17D1FC;
  v6 = &unk_45AE00;
  v7 = self;
  if (+[NSThread isMainThread])
  {
    v5(v4);
  }

  else
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_17D204;
    v3[3] = &unk_45B8B0;
    v3[4] = v4;
    dispatch_async(&_dispatch_main_q, v3);
  }
}

- (void)teardownController
{
  [(TSKScrollView *)self->_scrollView setDelegate:0];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController teardown];
  clippingLayerHost = self->_clippingLayerHost;

  [(THWClippingLayerHost *)clippingLayerHost teardown];
}

- (void)p_updateInfosToDisplay
{
  v3 = [(THWZoomableCanvasController *)self delegate];
  if (v3)
  {
    v4 = v3;
    [(TSDInteractiveCanvasController *)[(THWZoomableCanvasController *)self interactiveCanvasController] visibleBoundsRect];
    v9 = CGRectUnion(v8, self->_targetVisibleRect);
    v5 = [(THWZoomableCanvasControllerDelegate *)v4 zoomableCanvasController:self infosToDisplayForViewport:v9.origin.x, v9.origin.y, v9.size.width, v9.size.height];
    v6 = [(THWZoomableCanvasController *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)v6 setInfosToDisplay:v5];
  }
}

- (void)p_rebuildContentSize
{
  v3 = [(THWZoomableCanvasController *)self interactiveCanvasController];
  if (self->_delegate)
  {
    v4 = v3;
    if ([(TSDInteractiveCanvasController *)v3 layerHost])
    {
      [(THWZoomableCanvasControllerDelegate *)[(THWZoomableCanvasController *)self delegate] sizeOfCanvasForZoomableCanvasController:self];
      [objc_msgSend(-[TSDInteractiveCanvasController layerHost](v4 "layerHost")];
      v7 = [-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")];

      [v7 fixFrameAndScrollView];
    }
  }
}

- (void)p_rebuildInfos
{
  v3 = [(THWZoomableCanvasController *)self interactiveCanvasController];
  if (self->_delegate && [(TSDInteractiveCanvasController *)v3 layerHost])
  {

    [(THWZoomableCanvasController *)self p_updateInfosToDisplay];
  }
}

- (void)interactiveCanvasController:(id)a3 willAnimateScrollToVisibleUnscaledRect:(CGRect)a4
{
  [(THWZoomableCanvasController *)self setTargetVisibleRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];

  [a3 currentlyWaitingOnThreadedLayoutAndRender];
}

- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)a3 stillAnimating:(BOOL)a4
{
  if (!a4)
  {
    [(THWZoomableCanvasController *)self setTargetVisibleRect:a3, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  }
}

- (id)interactiveCanvasController:(id)a3 layoutGeometryProviderForLayout:(id)a4
{
  v6 = [(THWZoomableCanvasController *)self delegate];

  return [(THWZoomableCanvasControllerDelegate *)v6 zoomableCanvasController:self geometryProviderForLayout:a4];
}

- (id)interactiveCanvasController:(id)a3 delegateConformingToProtocol:(id)a4 forRep:(id)a5
{
  v6 = [(THWZoomableCanvasController *)self delegate:a3];
  if ([(THWZoomableCanvasControllerDelegate *)v6 conformsToProtocol:a4])
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (CGRect)interactiveCanvasController:(id)a3 expandBoundsForHitTesting:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(THWZoomableCanvasController *)self delegate];

  [(THWZoomableCanvasControllerDelegate *)v9 zoomableCanvasController:self expandBoundsForHitTesting:x, y, width, height];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)interactiveCanvasController:(id)a3 primaryTargetForGesture:(id)a4
{
  v6 = [(THWZoomableCanvasController *)self delegate];

  return [(THWZoomableCanvasControllerDelegate *)v6 zoomableCanvasController:self primaryTargetForGesture:a4];
}

- (void)interactiveCanvasControllerDidZoom:(id)a3
{
  v5 = [(THWZoomableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [a3 viewScale];

    [(THWZoomableCanvasControllerDelegate *)v5 zoomableCanvasController:self didEndZoomingAtScale:?];
  }
}

- (BOOL)interactiveCanvasControllerIsRelatedCanvasScrolling:(id)a3
{
  v4 = [(THWZoomableCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWZoomableCanvasControllerDelegate *)v4 zoomableCanvasControllerIsRelatedCanvasScrolling:self];
}

- (CGPoint)interactiveCanvasController:(id)a3 clampContentOffset:(CGPoint)a4 forViewScale:(double)a5 scrollViewBoundsSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  y = a4.y;
  x = a4.x;
  [objc_msgSend(-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController layerHost];
  TSDMultiplySizeScalar();
  if (width <= v10)
  {
    v12 = x;
  }

  else
  {
    v12 = (width - v10) * -0.5;
  }

  if (height <= v11)
  {
    v13 = y;
  }

  else
  {
    v13 = (height - v11) * -0.5;
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)interactiveCanvasController:(id)a3 allowsEditMenuForRep:(id)a4
{
  v6 = [(THWZoomableCanvasController *)self delegate];

  return [(THWZoomableCanvasControllerDelegate *)v6 zoomableCanvasController:self allowsEditMenuForRep:a4];
}

- (void)setupImmediatePressGesture
{
  if (!self->_immediatePressGesture)
  {
    v3 = [TSWPLongPressGestureRecognizer alloc];
    v4 = [(TSDInteractiveCanvasController *)[(THWZoomableCanvasController *)self interactiveCanvasController] gestureDispatcher];
    v5 = [v3 initWithGestureDispatcher:v4 gestureKind:TSWPImmediatePress];
    [(THWZoomableCanvasController *)self setImmediatePressGesture:v5];

    [(TSWPLongPressGestureRecognizer *)[(THWZoomableCanvasController *)self immediatePressGesture] setNumberOfTapsRequired:0];
    [(TSWPLongPressGestureRecognizer *)[(THWZoomableCanvasController *)self immediatePressGesture] setNumberOfTouchesRequired:1];
    [(TSWPLongPressGestureRecognizer *)[(THWZoomableCanvasController *)self immediatePressGesture] setMinimumPressDuration:0.0];
    [objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[THWZoomableCanvasController layerHost](self "layerHost")];
    [-[TSDInteractiveCanvasController gestureDispatcher](-[THWZoomableCanvasController interactiveCanvasController](self "interactiveCanvasController")];
  }
}

- (BOOL)isZoomedOut
{
  v3 = [-[TSDInteractiveCanvasController canvasView](self->_interactiveCanvasController "canvasView")];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController viewScale];
  v5 = v4;
  [v3 minimumPinchViewScale];
  return vabdd_f64(v5, v6) < 0.00999999978;
}

- (CGPoint)contentOffsetForAnchor:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!self->_scrollView)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController contentOffset];
  v7 = v6;
  v9 = v8;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController viewScale];
  v11 = v10;
  [(TSKScrollView *)self->_scrollView bounds];
  v13 = v7 + x * v12 / v11;
  v15 = v9 + y * v14 / v11;
  result.y = v15;
  result.x = v13;
  return result;
}

- (CGPoint)clampedUnscaledContentOffset:(CGPoint)a3 anchor:(CGPoint)a4 viewScale:(double)a5 scrollViewBoundsSize:(CGSize)a6
{
  v6 = a4.x * a6.width / a5;
  v7 = a4.y * a6.height / a5;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController clampedUnscaledContentOffset:a3.x - v6 forViewScale:a3.y - v7 scrollViewBoundsSize:a5, a6.width, a6.height];
  v9 = v6 + v8;
  v11 = v7 + v10;
  result.y = v11;
  result.x = v9;
  return result;
}

- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 anchor:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v11 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layerHost];
  [objc_msgSend(v11 "clippingLayer")];
  v13 = v8 - x * v12 / a3;
  v15 = v7 - y * v14 / a3;
  if (self->_clippingLayerHost)
  {
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController clampedUnscaledContentOffset:v13 forViewScale:v15, a3];
    v16 = [v11 canvasLayer];
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setViewScale:a3];
    [v16 fixFrameAndScrollView];
    [v16 bounds];
    TSDRectWithSize();
    [v16 setFrame:?];
    TSDMultiplyPointScalar();
    clippingLayerHost = self->_clippingLayerHost;

    [(THWClippingLayerHost *)clippingLayerHost setContentOffset:?];
  }

  else if (self->_scrollView)
  {
    interactiveCanvasController = self->_interactiveCanvasController;

    [(TSDInteractiveCanvasController *)interactiveCanvasController setViewScale:1 contentOffset:0 clampOffset:a3 animated:v13, v15];
  }
}

- (_NSRange)loadedPageRange
{
  length = self->_loadedPageRange.length;
  location = self->_loadedPageRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)targetVisibleRect
{
  x = self->_targetVisibleRect.origin.x;
  y = self->_targetVisibleRect.origin.y;
  width = self->_targetVisibleRect.size.width;
  height = self->_targetVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
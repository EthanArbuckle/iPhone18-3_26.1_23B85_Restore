@interface THGuidedPanController
- (BOOL)isFocusedOnColumn;
- (BOOL)isFocusedOnPage;
- (BOOL)isFocusedOnTarget;
- (CGPoint)consumedMovement;
- (CGPoint)previousMovement;
- (CGPoint)unscaledCenterPoint;
- (CGPoint)unscaledStartPoint;
- (THGuidedPanController)initWithInteractiveCanvasController:(id)a3;
- (double)viewScaleForUnscaledRect:(CGRect)a3 forPage:(BOOL)a4;
- (id)completionAnimationFromContentLocation:(id)a3 movement:(CGPoint)a4 velocity:(CGPoint)a5;
- (id)contentLocationForMovement:(CGPoint)a3 velocity:(CGPoint)a4 placement:(id *)a5 currentLocation:(id)a6;
- (id)p_completionAnimationUsingWellsForMovement:(CGPoint)a3 velocity:(CGPoint)a4 currentLocation:(id)a5;
- (id)p_contentLocationUsingWellsForMovement:(CGPoint)a3 velocity:(CGPoint)a4 currentLocation:(id)a5;
- (void)dealloc;
- (void)guidedPanWillBeginAtPoint:(CGPoint)a3 withCenterPoint:(CGPoint)a4;
@end

@implementation THGuidedPanController

- (THGuidedPanController)initWithInteractiveCanvasController:(id)a3
{
  v6.receiver = self;
  v6.super_class = THGuidedPanController;
  v4 = [(THGuidedPanController *)&v6 init];
  if (v4)
  {
    v4->_interactiveCanvasController = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THGuidedPanController;
  [(THGuidedPanController *)&v3 dealloc];
}

- (void)guidedPanWillBeginAtPoint:(CGPoint)a3 withCenterPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  [(THGuidedPanDelegate *)self->_delegate guidedPanWillBegin];
  self->_unscaledStartPoint.x = v7;
  self->_unscaledStartPoint.y = v6;
  self->_unscaledCenterPoint.x = x;
  self->_unscaledCenterPoint.y = y;
  v9 = CGPointZero;
  self->_consumedMovement = CGPointZero;
  self->_previousMovement = v9;
  v10 = objc_alloc_init(NSMutableArray);
  [(THGuidedPanTarget *)self->_target guidedPanTargetAddWellsToArray:v10 withController:self];
  v11 = objc_alloc_init(THGuidedPanPageWell);
  [v10 addObject:v11];

  [(THGuidedPanController *)self setCurrentWells:v10];
  delegate = self->_delegate;
  if (delegate)
  {
    [(THGuidedPanDelegate *)delegate guidedPanZoomedOutViewScale];
  }

  else
  {
    target = self->_target;
    if (target)
    {
      [(THGuidedPanTarget *)target guidedPanTargetUnscaledPageRect];
      [(THGuidedPanController *)self viewScaleForUnscaledRect:1 forPage:?];
    }

    else
    {
      v13 = 1.0;
    }
  }

  self->_pageViewScale = v13;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  currentWells = self->_currentWells;
  v16 = [(NSArray *)currentWells countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(currentWells);
        }

        [*(*(&v20 + 1) + 8 * i) guidedPanWillBeginAtPoint:self controller:{v7, v6}];
      }

      v17 = [(NSArray *)currentWells countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (id)p_contentLocationUsingWellsForMovement:(CGPoint)a3 velocity:(CGPoint)a4 currentLocation:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = [TSDContentLocation contentLocationWithUnscaledPoint:a5 viewScale:self->_unscaledCenterPoint.x, self->_unscaledCenterPoint.y, self->_pageViewScale, a4.y];
  interactiveCanvasController = self->_interactiveCanvasController;
  [(THInteractiveCanvasController *)[(THGuidedPanController *)self interactiveCanvasController] centerPlusMovementContentPlacement];
  v10 = [THInteractiveCanvasController convertContentLocation:"convertContentLocation:fromPlacement:toPlacement:" fromPlacement:v8 toPlacement:?];
  v11 = 0.0;
  v12 = [TSDContentLocation contentLocationWithUnscaledPoint:"contentLocationWithUnscaledPoint:viewScale:" viewScale:?];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  currentWells = self->_currentWells;
  v14 = [(NSArray *)currentWells countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    v17 = 1.0;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(currentWells);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        [v19 weightWithMovement:v10 proposedLocation:self controller:{x, y}];
        v21 = v20;
        [v19 smoothWeight];
        if (v22 > 0.0)
        {
          [v19 currentWeight];
          [v19 smoothWeight];
          TSDInterpolateFloats();
          v21 = v23;
        }

        [v19 setCurrentWeight:v21];
        v24 = v17 - v11;
        [v19 currentBlendedWeight];
        [v19 setPreviousBlendedWeight:?];
        [v19 setCurrentBlendedWeight:(v17 - v11) * v21];
        if ((v17 - v11) * v21 > 0.0)
        {
          v25 = [v19 contentLocationWithMovement:self controller:{x, y}];
          if (v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v10;
          }

          [(TSDContentLocation *)v12 unscaledPoint];
          [v26 unscaledPoint];
          TSDInterpolatePoints();
          TSDAddPoints();
          v28 = v27;
          v30 = v29;
          [(TSDContentLocation *)v12 viewScale];
          v32 = v31;
          [v26 viewScale];
          TSDInterpolateFloats();
          v34 = v32 + v33;
          v35 = v28;
          v17 = 1.0;
          v12 = [TSDContentLocation contentLocationWithUnscaledPoint:v35 viewScale:v30, v34];
          v11 = 1.0 - v24 * (1.0 - v21);
        }
      }

      v15 = [(NSArray *)currentWells countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v15);
  }

  return v12;
}

- (id)p_completionAnimationUsingWellsForMovement:(CGPoint)a3 velocity:(CGPoint)a4 currentLocation:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  currentWells = self->_currentWells;
  v12 = [(NSArray *)currentWells countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  v14 = 0;
  v15 = 0;
  v16 = *v27;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v27 != v16)
      {
        objc_enumerationMutation(currentWells);
      }

      v18 = *(*(&v26 + 1) + 8 * i);
      v19 = [v18 guidedPanWellRatingWithMovement:self velocity:v9 controller:{v8, x, y}];
      if (v19 > v14)
      {
        v14 = v19;
        v15 = v18;
      }
    }

    v13 = [(NSArray *)currentWells countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v13);
  if (v14 <= 1)
  {
LABEL_11:
    v20 = [(THGuidedPanController *)self target];
LABEL_12:
    v21 = 0;
    v22 = 0;
    goto LABEL_13;
  }

  v20 = [(THGuidedPanController *)self target];
  if (!v15)
  {
    goto LABEL_12;
  }

  v22 = [v15 contentAnimationToFocalPointFromLocation:a5 withMovement:self velocity:v9 controller:{v8, x, y}];
  v21 = [v15 guidedPanTargetWithController:self location:a5];
LABEL_13:
  [(THGuidedPanController *)self setTarget:v21];
  if (objc_opt_respondsToSelector())
  {
    [v22 duration];
    v24 = v23;
  }

  else
  {
    v24 = 0.2;
  }

  [(THGuidedPanDelegate *)self->_delegate guidedPanWillAnimateFrom:v20 to:[(THGuidedPanController *)self target] duration:v24];
  return v22;
}

- (id)contentLocationForMovement:(CGPoint)a3 velocity:(CGPoint)a4 placement:(id *)a5 currentLocation:(id)a6
{
  self->_previousMovement = a3;
  if (a5)
  {
    *a5 = kTSDContentPlacementCenter;
  }

  TSDSubtractPoints();
  v8 = [THGuidedPanController p_contentLocationUsingWellsForMovement:"p_contentLocationUsingWellsForMovement:velocity:currentLocation:" velocity:a6 currentLocation:?];
  [(THGuidedPanDelegate *)self->_delegate guidedPanUnscaledPageSize];
  TSDRectWithSize();
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  MidX = CGRectGetMidX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MinY = CGRectGetMinY(v37);
  v15 = [(THGuidedPanController *)self interactiveCanvasController];
  [(THInteractiveCanvasController *)[(THGuidedPanController *)self interactiveCanvasController] screenTopContentPlacement];
  v17 = v16;
  v19 = v18;
  [v8 viewScale];
  [(THInteractiveCanvasController *)v15 clampedCenterPointForPoint:MidX withPlacement:MinY viewScale:v17, v19, v20];
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v21 = CGRectGetMidX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MaxY = CGRectGetMaxY(v39);
  v23 = [(THGuidedPanController *)self interactiveCanvasController];
  [(THInteractiveCanvasController *)[(THGuidedPanController *)self interactiveCanvasController] screenBottomContentPlacement];
  v25 = v24;
  v27 = v26;
  [v8 viewScale];
  [(THInteractiveCanvasController *)v23 clampedCenterPointForPoint:v21 withPlacement:MaxY viewScale:v25, v27, v28];
  [v8 unscaledPoint];
  v30 = v29;
  [v8 unscaledPoint];
  TSUClamp();
  v32 = v31;
  [v8 viewScale];

  return [TSDContentLocation contentLocationWithUnscaledPoint:v30 viewScale:v32, v33];
}

- (id)completionAnimationFromContentLocation:(id)a3 movement:(CGPoint)a4 velocity:(CGPoint)a5
{
  TSDSubtractPoints();

  return [THGuidedPanController p_completionAnimationUsingWellsForMovement:"p_completionAnimationUsingWellsForMovement:velocity:currentLocation:" velocity:a3 currentLocation:?];
}

- (BOOL)isFocusedOnColumn
{
  target = self->_target;
  if (target)
  {
    if ([(THGuidedPanTarget *)target guidedPanTargetKind]== 1)
    {
      [(THGuidedPanTarget *)self->_target viewScaleWithController:self];
      v5 = v4;
      [(THInteractiveCanvasController *)self->_interactiveCanvasController viewScale];
      LOBYTE(target) = vabdd_f64(v6, v5) < 0.00999999978;
    }

    else
    {
      LOBYTE(target) = 0;
    }
  }

  return target;
}

- (BOOL)isFocusedOnPage
{
  target = self->_target;
  if (target)
  {
    if ([(THGuidedPanTarget *)target guidedPanTargetKind])
    {
      LOBYTE(target) = 0;
    }

    else
    {
      [(THGuidedPanTarget *)self->_target viewScaleWithController:self];
      v5 = v4;
      [(THInteractiveCanvasController *)self->_interactiveCanvasController viewScale];
      LOBYTE(target) = vabdd_f64(v6, v5) < 0.00999999978;
    }
  }

  return target;
}

- (BOOL)isFocusedOnTarget
{
  v3 = [(THGuidedPanTarget *)self->_target guidedPanTargetIsTargeted];
  if (v3)
  {
    if ([(THGuidedPanController *)self isFocusedOnColumn])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [(THGuidedPanController *)self isFocusedOnPage];
    }
  }

  return v3;
}

- (double)viewScaleForUnscaledRect:(CGRect)a3 forPage:(BOOL)a4
{
  if (a4)
  {
    v4 = [(THInteractiveCanvasController *)self->_interactiveCanvasController layerHost:a3.origin.x];
    v5 = [v4 canvasLayer];
    [objc_msgSend(v4 "clippingLayer")];
    [v5 minimumPinchViewScale];
    [v5 maximumPinchViewScale];

    TSUClamp();
  }

  else
  {
    interactiveCanvasController = self->_interactiveCanvasController;

    [(THInteractiveCanvasController *)interactiveCanvasController viewScaleForZoomToFitRect:a3.origin.x outset:a3.origin.y fitWidthOnly:?];
  }

  return result;
}

- (CGPoint)unscaledStartPoint
{
  x = self->_unscaledStartPoint.x;
  y = self->_unscaledStartPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)unscaledCenterPoint
{
  x = self->_unscaledCenterPoint.x;
  y = self->_unscaledCenterPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)consumedMovement
{
  x = self->_consumedMovement.x;
  y = self->_consumedMovement.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)previousMovement
{
  x = self->_previousMovement.x;
  y = self->_previousMovement.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
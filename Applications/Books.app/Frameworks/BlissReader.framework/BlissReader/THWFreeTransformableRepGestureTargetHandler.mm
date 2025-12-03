@interface THWFreeTransformableRepGestureTargetHandler
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)freeTransformControllerShouldAllowPinchDown:(id)down;
- (BOOL)freeTransformControllerShouldMoveFreeTransformViewAboveStatusBar:(id)bar;
- (BOOL)freeTransformControllerShouldUpdateAngleAfterBegin:(id)begin;
- (BOOL)freeTransformControllerShouldUsedTracedShadowPath:(id)path;
- (BOOL)freeTransformControllerWantsCurtainFadeOut:(id)out;
- (BOOL)freeTransformControllerWantsShadow:(id)shadow;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)interactionEnabled;
- (CGRect)freeTransformControllerRectForCompletionAnimation:(id)animation;
- (CGSize)curtainSizeForFreeTransformController:(id)controller;
- (THWFreeTransformController)ftc;
- (THWFreeTransformableRepGestureTargetHandler)initWithFreeTransformableRep:(id)rep handler:(id)handler;
- (id)curtainColorForFreeTransformController:(id)controller;
- (id)freeTransformControllerStyledRep:(id)rep;
- (id)shadowPathForFreeTransformController:(id)controller;
- (id)unmovingParentViewForFreeTransformController:(id)controller;
- (void)freeTransformControllerDidBegin:(id)begin;
- (void)freeTransformControllerDidEnd:(id)end passedThreshold:(BOOL)threshold;
- (void)freeTransformControllerDidFinishFreeTransforming:(id)transforming passedThreshold:(BOOL)threshold completionBlock:(id)block;
- (void)freeTransformControllerWillFadeOutCurtain:(id)curtain;
- (void)freeTransformControllerWillMoveTargetLayer:(id)layer;
- (void)p_cleanupAfterFreeTransform;
- (void)p_setupFreeTransformControllerWithGesture:(id)gesture;
- (void)willBeginHandlingGesture:(id)gesture;
@end

@implementation THWFreeTransformableRepGestureTargetHandler

- (THWFreeTransformableRepGestureTargetHandler)initWithFreeTransformableRep:(id)rep handler:(id)handler
{
  v9.receiver = self;
  v9.super_class = THWFreeTransformableRepGestureTargetHandler;
  v6 = [(THWFreeTransformableRepGestureTargetHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(THWFreeTransformableRepGestureTargetHandler *)v6 setRep:rep];
    [(THWFreeTransformableRepGestureTargetHandler *)v7 setHandler:handler];
  }

  return v7;
}

- (BOOL)interactionEnabled
{
  [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([[(THWFreeTransformableRepGestureTargetHandler *)self rep] freeTransformInteractionEnabledOverride]& 1) != 0)
  {
    return 1;
  }

  objc_opt_class();
  [[(THWFreeTransformableRepGestureTargetHandler *)self rep] interactiveCanvasController];
  v3 = TSUDynamicCast();
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  if ([v3 isCompactWidth])
  {
    return 0;
  }

  else
  {
    return [v4 isCompactHeight] ^ 1;
  }
}

- (THWFreeTransformController)ftc
{
  freeTransformController = [(THWFreeTransformableRepHandler *)[(THWFreeTransformableRepGestureTargetHandler *)self handler] freeTransformController];
  if (!freeTransformController)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return freeTransformController;
}

- (void)p_setupFreeTransformControllerWithGesture:(id)gesture
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)self ftc] delegate]!= self)
  {
    freeTransformDelegate = [gesture freeTransformDelegate];
    if (freeTransformDelegate != [(THWFreeTransformableRepHandler *)[(THWFreeTransformableRepGestureTargetHandler *)self handler] freeTransformController])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if ([-[THWFreeTransformableRepHandler freeTransformController](-[THWFreeTransformableRepGestureTargetHandler handler](self "handler")])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if ([-[THWFreeTransformableRepHandler freeTransformController](-[THWFreeTransformableRepGestureTargetHandler handler](self "handler")])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)self ftc] setDelegate:self];
    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)self ftc] setTransformGR:gesture];
    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)self ftc] setTargetLayer:[[(THWFreeTransformableRepGestureTargetHandler *)self rep] transformLayer]];
    v6 = 0.75;
    if (([[(THWFreeTransformableRepGestureTargetHandler *)self rep] isExpanded]& 1) == 0)
    {
      if ([[(THWFreeTransformableRepGestureTargetHandler *)self rep] meetsStageDimensionRequirementForExpanded])
      {
        v6 = 1.25;
      }

      else
      {
        v6 = INFINITY;
      }
    }

    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)self ftc] setScaleThreshold:v6];
    if (([[(THWFreeTransformableRepGestureTargetHandler *)self rep] isExpanded]& 1) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = [[(THWFreeTransformableRepGestureTargetHandler *)self rep] meetsStageDimensionRequirementForExpanded]^ 1;
    }

    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)self ftc] setBounceUpOnly:v7];
    transformLayer = [[(THWFreeTransformableRepGestureTargetHandler *)self rep] transformLayer];
    if (transformLayer)
    {
      v9 = transformLayer;
      hostCanvasLayer = [(THWFreeTransformableRepHandler *)[(THWFreeTransformableRepGestureTargetHandler *)self handler] hostCanvasLayer];
      [v9 frame];
      [hostCanvasLayer convertRect:objc_msgSend(v9 fromLayer:{"superlayer"), v11, v12, v13, v14}];

      [gesture recenterOnTargetWithRectInView:?];
    }
  }
}

- (void)p_cleanupAfterFreeTransform
{
  [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)self ftc] setDelegate:0];
  [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)self ftc] setTargetLayer:0];
  v3 = [(THWFreeTransformableRepGestureTargetHandler *)self ftc];

  [(THWFreeTransformController *)v3 setTransformGR:0];
}

- (void)freeTransformControllerWillFadeOutCurtain:(id)curtain
{
  [(THWFreeTransformableRepGestureTargetHandler *)self handler];
  if (objc_opt_respondsToSelector())
  {
    handler = [(THWFreeTransformableRepGestureTargetHandler *)self handler];
    v5 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];
    v6 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

    [(THWFreeTransformableRepHandler *)handler freeTransformWillFadeOutCurtain:v5 expandableRep:v6];
  }
}

- (BOOL)freeTransformControllerWantsCurtainFadeOut:(id)out
{
  v3 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v3 isExpanded];
}

- (id)curtainColorForFreeTransformController:(id)controller
{
  handler = [(THWFreeTransformableRepGestureTargetHandler *)self handler];

  return [(THWFreeTransformableRepHandler *)handler curtainColorForFreeTransform];
}

- (CGSize)curtainSizeForFreeTransformController:(id)controller
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (-[THWFreeTransformableRep isExpanded](-[THWFreeTransformableRepGestureTargetHandler rep](self, "rep", controller), "isExpanded") && [-[THWFreeTransformableRepHandler hostCanvasLayer](-[THWFreeTransformableRepGestureTargetHandler handler](self "handler")])
  {
    [objc_msgSend(-[THWFreeTransformableRepHandler hostCanvasLayer](-[THWFreeTransformableRepGestureTargetHandler handler](self "handler")];
    width = v6;
    height = v7;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)freeTransformControllerDidBegin:(id)begin
{
  handler = [(THWFreeTransformableRepGestureTargetHandler *)self handler];
  v5 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  v6 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  [(THWFreeTransformableRepHandler *)handler freeTransformDidBeginWithRep:v5 expandableRep:v6];
}

- (BOOL)freeTransformControllerShouldUpdateAngleAfterBegin:(id)begin
{
  v3 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v3 isExpanded];
}

- (CGRect)freeTransformControllerRectForCompletionAnimation:(id)animation
{
  handler = [(THWFreeTransformableRepGestureTargetHandler *)self handler];
  v5 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  [(THWFreeTransformableRepHandler *)handler rectForCompletionAnimationWithRep:v5];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)freeTransformControllerDidEnd:(id)end passedThreshold:(BOOL)threshold
{
  thresholdCopy = threshold;
  [[(THWFreeTransformableRepGestureTargetHandler *)self rep] freeTransformDidEnd];
  [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if (objc_opt_respondsToSelector())
  {
    [[(THWFreeTransformableRepGestureTargetHandler *)self rep] freeTransformDidEndPassedThreshold:thresholdCopy];
  }

  [(THWFreeTransformableRepGestureTargetHandler *)self p_cleanupAfterFreeTransform];
}

- (id)unmovingParentViewForFreeTransformController:(id)controller
{
  interactiveCanvasController = [[(THWFreeTransformableRepGestureTargetHandler *)self rep] interactiveCanvasController];

  return [interactiveCanvasController canvasView];
}

- (void)freeTransformControllerDidFinishFreeTransforming:(id)transforming passedThreshold:(BOOL)threshold completionBlock:(id)block
{
  thresholdCopy = threshold;
  handler = [(THWFreeTransformableRepGestureTargetHandler *)self handler];
  v10 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  v11 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if (thresholdCopy)
  {

    [(THWFreeTransformableRepHandler *)handler freeTransformDidEndWithRep:v10 expandableRep:v11 completionBlock:block];
  }

  else
  {
    [(THWFreeTransformableRepHandler *)handler freeTransformDidCancelWithRep:v10 expandableRep:v11];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v14 = sub_189F34;
    v15 = &unk_45AEA8;
    selfCopy = self;
    blockCopy = block;
    if ([objc_msgSend(transforming "transformGR")] == &dword_4)
    {
      v14(v13);
    }

    else
    {
      if (![[(THWFreeTransformableRepGestureTargetHandler *)self rep] animationController])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      animationController = [[(THWFreeTransformableRepGestureTargetHandler *)self rep] animationController];
      [animationController setSource:{-[THWFreeTransformableRepGestureTargetHandler rep](self, "rep")}];
      [animationController setDestination:{-[THWFreeTransformableRepGestureTargetHandler rep](self, "rep")}];
      [animationController setHostLayer:{objc_msgSend(objc_msgSend(-[THWFreeTransformableRep interactiveCanvasController](-[THWFreeTransformableRepGestureTargetHandler rep](self, "rep"), "interactiveCanvasController"), "layerHost"), "canvasLayer")}];
      [animationController presentAnimationWithCompletionBlock:v13 overshoot:{-[THWFreeTransformableRep isExpanded](-[THWFreeTransformableRepGestureTargetHandler rep](self, "rep"), "isExpanded") ^ 1}];
    }
  }
}

- (BOOL)freeTransformControllerShouldMoveFreeTransformViewAboveStatusBar:(id)bar
{
  [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v4 freeTransformShouldMoveAboveStatusBar];
}

- (id)freeTransformControllerStyledRep:(id)rep
{
  [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v4 styledRep];
}

- (void)freeTransformControllerWillMoveTargetLayer:(id)layer
{
  [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

    [(THWFreeTransformableRep *)v5 freeTransformWillMoveTargetLayer:layer];
  }
}

- (id)shadowPathForFreeTransformController:(id)controller
{
  v3 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v3 shadowPath];
}

- (BOOL)freeTransformControllerShouldUsedTracedShadowPath:(id)path
{
  v3 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v3 freeTransformUseTracedShadowPath];
}

- (BOOL)freeTransformControllerWantsShadow:(id)shadow
{
  [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v4 freeTransformWantsShadow];
}

- (BOOL)freeTransformControllerShouldAllowPinchDown:(id)down
{
  hostCanvasLayer = [(THWFreeTransformableRepHandler *)[(THWFreeTransformableRepGestureTargetHandler *)self handler] hostCanvasLayer];
  isExpanded = [[(THWFreeTransformableRepGestureTargetHandler *)self rep] isExpanded];
  if (isExpanded)
  {
    if ([hostCanvasLayer allowsPinchZoom])
    {
      [hostCanvasLayer viewScale];
      v7 = v6;
      [hostCanvasLayer minimumPinchViewScale];
      LOBYTE(isExpanded) = vabdd_f64(v7, v8) < 0.00999999978;
    }

    else
    {
      LOBYTE(isExpanded) = 1;
    }
  }

  return isExpanded;
}

- (BOOL)canHandleGesture:(id)gesture
{
  interactionEnabled = [(THWFreeTransformableRepGestureTargetHandler *)self interactionEnabled];
  if (interactionEnabled)
  {
    gestureKind = [gesture gestureKind];
    if (gestureKind != TSDFreeTransform)
    {
LABEL_3:
      LOBYTE(interactionEnabled) = 0;
      return interactionEnabled;
    }

    objc_opt_class();
    v7 = TSUDynamicCast();
    if (!v7)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if ([v7 freeTransformDelegate])
    {
      freeTransformDelegate = [v7 freeTransformDelegate];
      if (freeTransformDelegate != [(THWFreeTransformableRepGestureTargetHandler *)self ftc])
      {
        goto LABEL_3;
      }
    }

    else
    {
      v9 = [-[THWFreeTransformableRepHandler hostCanvasLayer](-[THWFreeTransformableRepGestureTargetHandler handler](self "handler")];
      [[(THWFreeTransformableRepGestureTargetHandler *)self rep] frameInUnscaledCanvas];
      v29 = CGRectInset(v28, -14.0, -14.0);
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      [-[THWFreeTransformableRep interactiveCanvasController](-[THWFreeTransformableRepGestureTargetHandler rep](self "rep")];
      [objc_msgSend(v7 "touch1")];
      TSDMultiplyPointScalar();
      v14 = v13;
      v16 = v15;
      [objc_msgSend(v7 "touch2")];
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v26.x = v14;
      v26.y = v16;
      if (!CGRectContainsPoint(v30, v26))
      {
        goto LABEL_3;
      }

      TSDMultiplyPointScalar();
      v27.x = v17;
      v27.y = v18;
      v31.origin.x = x;
      v31.size.height = height;
      v31.origin.y = y;
      v31.size.width = width;
      interactionEnabled = CGRectContainsPoint(v31, v27);
      if (!interactionEnabled)
      {
        return interactionEnabled;
      }
    }

    if (([[(THWFreeTransformableRepGestureTargetHandler *)self rep] meetsStageDimensionRequirementForExpanded]& 1) == 0 && ([[(THWFreeTransformableRepGestureTargetHandler *)self rep] isExpanded]& 1) == 0)
    {
      objc_opt_class();
      [TSUDynamicCast() scale];
      if (v19 <= 1.0)
      {
        goto LABEL_3;
      }
    }

    [(THWFreeTransformableRepGestureTargetHandler *)self rep];
    if (objc_opt_respondsToSelector())
    {
      v20 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];
      [gesture naturalLocationForRep:{-[THWFreeTransformableRepGestureTargetHandler rep](self, "rep")}];
      v21 = [(THWFreeTransformableRep *)v20 hitRep:?];
      v22 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

      LOBYTE(interactionEnabled) = [(THWFreeTransformableRep *)v22 freeTransformMayBeginOverRep:v21];
    }

    else
    {
      LOBYTE(interactionEnabled) = 1;
    }
  }

  return interactionEnabled;
}

- (BOOL)handleGesture:(id)gesture
{
  interactionEnabled = [(THWFreeTransformableRepGestureTargetHandler *)self interactionEnabled];
  if (interactionEnabled)
  {
    gestureKind = [gesture gestureKind];
    if (gestureKind == TSDFreeTransform)
    {
      objc_opt_class();
      v7 = TSUDynamicCast();
      if (v7)
      {
        v8 = v7;
        gestureState = [gesture gestureState];
        if (gestureState == 1)
        {
          [(THWFreeTransformableRepGestureTargetHandler *)self rep];
          if (objc_opt_respondsToSelector())
          {
            [[(THWFreeTransformableRepGestureTargetHandler *)self rep] freeTransformWillBegin];
          }

          [(THWFreeTransformableRepGestureTargetHandler *)self p_setupFreeTransformControllerWithGesture:v8];
        }

        [-[THWFreeTransformableRepHandler freeTransformController](-[THWFreeTransformableRepGestureTargetHandler handler](self "handler")];
        if (gestureState - 3 <= 1)
        {
          [objc_msgSend(-[THWFreeTransformableRepHandler freeTransformController](-[THWFreeTransformableRepGestureTargetHandler handler](self "handler")];
          [-[THWFreeTransformableRepHandler freeTransformController](-[THWFreeTransformableRepGestureTargetHandler handler](self "handler")];
        }
      }

      else
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      LOBYTE(interactionEnabled) = 1;
    }

    else
    {
      LOBYTE(interactionEnabled) = 0;
    }
  }

  return interactionEnabled;
}

- (void)willBeginHandlingGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind == TSDFreeTransform)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (!v5)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if ([v5 freeTransformDelegate])
    {
      freeTransformDelegate = [v5 freeTransformDelegate];
      if (freeTransformDelegate != [(THWFreeTransformableRepHandler *)[(THWFreeTransformableRepGestureTargetHandler *)self handler] freeTransformController])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }

    freeTransformController = [(THWFreeTransformableRepHandler *)[(THWFreeTransformableRepGestureTargetHandler *)self handler] freeTransformController];

    [v5 setFreeTransformDelegate:freeTransformController];
  }
}

@end
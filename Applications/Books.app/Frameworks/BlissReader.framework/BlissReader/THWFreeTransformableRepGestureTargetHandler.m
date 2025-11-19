@interface THWFreeTransformableRepGestureTargetHandler
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)freeTransformControllerShouldAllowPinchDown:(id)a3;
- (BOOL)freeTransformControllerShouldMoveFreeTransformViewAboveStatusBar:(id)a3;
- (BOOL)freeTransformControllerShouldUpdateAngleAfterBegin:(id)a3;
- (BOOL)freeTransformControllerShouldUsedTracedShadowPath:(id)a3;
- (BOOL)freeTransformControllerWantsCurtainFadeOut:(id)a3;
- (BOOL)freeTransformControllerWantsShadow:(id)a3;
- (BOOL)handleGesture:(id)a3;
- (BOOL)interactionEnabled;
- (CGRect)freeTransformControllerRectForCompletionAnimation:(id)a3;
- (CGSize)curtainSizeForFreeTransformController:(id)a3;
- (THWFreeTransformController)ftc;
- (THWFreeTransformableRepGestureTargetHandler)initWithFreeTransformableRep:(id)a3 handler:(id)a4;
- (id)curtainColorForFreeTransformController:(id)a3;
- (id)freeTransformControllerStyledRep:(id)a3;
- (id)shadowPathForFreeTransformController:(id)a3;
- (id)unmovingParentViewForFreeTransformController:(id)a3;
- (void)freeTransformControllerDidBegin:(id)a3;
- (void)freeTransformControllerDidEnd:(id)a3 passedThreshold:(BOOL)a4;
- (void)freeTransformControllerDidFinishFreeTransforming:(id)a3 passedThreshold:(BOOL)a4 completionBlock:(id)a5;
- (void)freeTransformControllerWillFadeOutCurtain:(id)a3;
- (void)freeTransformControllerWillMoveTargetLayer:(id)a3;
- (void)p_cleanupAfterFreeTransform;
- (void)p_setupFreeTransformControllerWithGesture:(id)a3;
- (void)willBeginHandlingGesture:(id)a3;
@end

@implementation THWFreeTransformableRepGestureTargetHandler

- (THWFreeTransformableRepGestureTargetHandler)initWithFreeTransformableRep:(id)a3 handler:(id)a4
{
  v9.receiver = self;
  v9.super_class = THWFreeTransformableRepGestureTargetHandler;
  v6 = [(THWFreeTransformableRepGestureTargetHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(THWFreeTransformableRepGestureTargetHandler *)v6 setRep:a3];
    [(THWFreeTransformableRepGestureTargetHandler *)v7 setHandler:a4];
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
  v2 = [(THWFreeTransformableRepHandler *)[(THWFreeTransformableRepGestureTargetHandler *)self handler] freeTransformController];
  if (!v2)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v2;
}

- (void)p_setupFreeTransformControllerWithGesture:(id)a3
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)self ftc] delegate]!= self)
  {
    v5 = [a3 freeTransformDelegate];
    if (v5 != [(THWFreeTransformableRepHandler *)[(THWFreeTransformableRepGestureTargetHandler *)self handler] freeTransformController])
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
    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)self ftc] setTransformGR:a3];
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
    v8 = [[(THWFreeTransformableRepGestureTargetHandler *)self rep] transformLayer];
    if (v8)
    {
      v9 = v8;
      v10 = [(THWFreeTransformableRepHandler *)[(THWFreeTransformableRepGestureTargetHandler *)self handler] hostCanvasLayer];
      [v9 frame];
      [v10 convertRect:objc_msgSend(v9 fromLayer:{"superlayer"), v11, v12, v13, v14}];

      [a3 recenterOnTargetWithRectInView:?];
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

- (void)freeTransformControllerWillFadeOutCurtain:(id)a3
{
  [(THWFreeTransformableRepGestureTargetHandler *)self handler];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(THWFreeTransformableRepGestureTargetHandler *)self handler];
    v5 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];
    v6 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

    [(THWFreeTransformableRepHandler *)v4 freeTransformWillFadeOutCurtain:v5 expandableRep:v6];
  }
}

- (BOOL)freeTransformControllerWantsCurtainFadeOut:(id)a3
{
  v3 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v3 isExpanded];
}

- (id)curtainColorForFreeTransformController:(id)a3
{
  v3 = [(THWFreeTransformableRepGestureTargetHandler *)self handler];

  return [(THWFreeTransformableRepHandler *)v3 curtainColorForFreeTransform];
}

- (CGSize)curtainSizeForFreeTransformController:(id)a3
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (-[THWFreeTransformableRep isExpanded](-[THWFreeTransformableRepGestureTargetHandler rep](self, "rep", a3), "isExpanded") && [-[THWFreeTransformableRepHandler hostCanvasLayer](-[THWFreeTransformableRepGestureTargetHandler handler](self "handler")])
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

- (void)freeTransformControllerDidBegin:(id)a3
{
  v4 = [(THWFreeTransformableRepGestureTargetHandler *)self handler];
  v5 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  v6 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  [(THWFreeTransformableRepHandler *)v4 freeTransformDidBeginWithRep:v5 expandableRep:v6];
}

- (BOOL)freeTransformControllerShouldUpdateAngleAfterBegin:(id)a3
{
  v3 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v3 isExpanded];
}

- (CGRect)freeTransformControllerRectForCompletionAnimation:(id)a3
{
  v4 = [(THWFreeTransformableRepGestureTargetHandler *)self handler];
  v5 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  [(THWFreeTransformableRepHandler *)v4 rectForCompletionAnimationWithRep:v5];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)freeTransformControllerDidEnd:(id)a3 passedThreshold:(BOOL)a4
{
  v4 = a4;
  [[(THWFreeTransformableRepGestureTargetHandler *)self rep] freeTransformDidEnd];
  [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if (objc_opt_respondsToSelector())
  {
    [[(THWFreeTransformableRepGestureTargetHandler *)self rep] freeTransformDidEndPassedThreshold:v4];
  }

  [(THWFreeTransformableRepGestureTargetHandler *)self p_cleanupAfterFreeTransform];
}

- (id)unmovingParentViewForFreeTransformController:(id)a3
{
  v3 = [[(THWFreeTransformableRepGestureTargetHandler *)self rep] interactiveCanvasController];

  return [v3 canvasView];
}

- (void)freeTransformControllerDidFinishFreeTransforming:(id)a3 passedThreshold:(BOOL)a4 completionBlock:(id)a5
{
  v6 = a4;
  v9 = [(THWFreeTransformableRepGestureTargetHandler *)self handler];
  v10 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  v11 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if (v6)
  {

    [(THWFreeTransformableRepHandler *)v9 freeTransformDidEndWithRep:v10 expandableRep:v11 completionBlock:a5];
  }

  else
  {
    [(THWFreeTransformableRepHandler *)v9 freeTransformDidCancelWithRep:v10 expandableRep:v11];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v14 = sub_189F34;
    v15 = &unk_45AEA8;
    v16 = self;
    v17 = a5;
    if ([objc_msgSend(a3 "transformGR")] == &dword_4)
    {
      v14(v13);
    }

    else
    {
      if (![[(THWFreeTransformableRepGestureTargetHandler *)self rep] animationController])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      v12 = [[(THWFreeTransformableRepGestureTargetHandler *)self rep] animationController];
      [v12 setSource:{-[THWFreeTransformableRepGestureTargetHandler rep](self, "rep")}];
      [v12 setDestination:{-[THWFreeTransformableRepGestureTargetHandler rep](self, "rep")}];
      [v12 setHostLayer:{objc_msgSend(objc_msgSend(-[THWFreeTransformableRep interactiveCanvasController](-[THWFreeTransformableRepGestureTargetHandler rep](self, "rep"), "interactiveCanvasController"), "layerHost"), "canvasLayer")}];
      [v12 presentAnimationWithCompletionBlock:v13 overshoot:{-[THWFreeTransformableRep isExpanded](-[THWFreeTransformableRepGestureTargetHandler rep](self, "rep"), "isExpanded") ^ 1}];
    }
  }
}

- (BOOL)freeTransformControllerShouldMoveFreeTransformViewAboveStatusBar:(id)a3
{
  [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v4 freeTransformShouldMoveAboveStatusBar];
}

- (id)freeTransformControllerStyledRep:(id)a3
{
  [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v4 styledRep];
}

- (void)freeTransformControllerWillMoveTargetLayer:(id)a3
{
  [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

    [(THWFreeTransformableRep *)v5 freeTransformWillMoveTargetLayer:a3];
  }
}

- (id)shadowPathForFreeTransformController:(id)a3
{
  v3 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v3 shadowPath];
}

- (BOOL)freeTransformControllerShouldUsedTracedShadowPath:(id)a3
{
  v3 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v3 freeTransformUseTracedShadowPath];
}

- (BOOL)freeTransformControllerWantsShadow:(id)a3
{
  [(THWFreeTransformableRepGestureTargetHandler *)self rep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

  return [(THWFreeTransformableRep *)v4 freeTransformWantsShadow];
}

- (BOOL)freeTransformControllerShouldAllowPinchDown:(id)a3
{
  v4 = [(THWFreeTransformableRepHandler *)[(THWFreeTransformableRepGestureTargetHandler *)self handler] hostCanvasLayer];
  v5 = [[(THWFreeTransformableRepGestureTargetHandler *)self rep] isExpanded];
  if (v5)
  {
    if ([v4 allowsPinchZoom])
    {
      [v4 viewScale];
      v7 = v6;
      [v4 minimumPinchViewScale];
      LOBYTE(v5) = vabdd_f64(v7, v8) < 0.00999999978;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)canHandleGesture:(id)a3
{
  v5 = [(THWFreeTransformableRepGestureTargetHandler *)self interactionEnabled];
  if (v5)
  {
    v6 = [a3 gestureKind];
    if (v6 != TSDFreeTransform)
    {
LABEL_3:
      LOBYTE(v5) = 0;
      return v5;
    }

    objc_opt_class();
    v7 = TSUDynamicCast();
    if (!v7)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if ([v7 freeTransformDelegate])
    {
      v8 = [v7 freeTransformDelegate];
      if (v8 != [(THWFreeTransformableRepGestureTargetHandler *)self ftc])
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
      v5 = CGRectContainsPoint(v31, v27);
      if (!v5)
      {
        return v5;
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
      [a3 naturalLocationForRep:{-[THWFreeTransformableRepGestureTargetHandler rep](self, "rep")}];
      v21 = [(THWFreeTransformableRep *)v20 hitRep:?];
      v22 = [(THWFreeTransformableRepGestureTargetHandler *)self rep];

      LOBYTE(v5) = [(THWFreeTransformableRep *)v22 freeTransformMayBeginOverRep:v21];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)handleGesture:(id)a3
{
  v5 = [(THWFreeTransformableRepGestureTargetHandler *)self interactionEnabled];
  if (v5)
  {
    v6 = [a3 gestureKind];
    if (v6 == TSDFreeTransform)
    {
      objc_opt_class();
      v7 = TSUDynamicCast();
      if (v7)
      {
        v8 = v7;
        v9 = [a3 gestureState];
        if (v9 == 1)
        {
          [(THWFreeTransformableRepGestureTargetHandler *)self rep];
          if (objc_opt_respondsToSelector())
          {
            [[(THWFreeTransformableRepGestureTargetHandler *)self rep] freeTransformWillBegin];
          }

          [(THWFreeTransformableRepGestureTargetHandler *)self p_setupFreeTransformControllerWithGesture:v8];
        }

        [-[THWFreeTransformableRepHandler freeTransformController](-[THWFreeTransformableRepGestureTargetHandler handler](self "handler")];
        if (v9 - 3 <= 1)
        {
          [objc_msgSend(-[THWFreeTransformableRepHandler freeTransformController](-[THWFreeTransformableRepGestureTargetHandler handler](self "handler")];
          [-[THWFreeTransformableRepHandler freeTransformController](-[THWFreeTransformableRepGestureTargetHandler handler](self "handler")];
        }
      }

      else
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)willBeginHandlingGesture:(id)a3
{
  v4 = [a3 gestureKind];
  if (v4 == TSDFreeTransform)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (!v5)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if ([v5 freeTransformDelegate])
    {
      v6 = [v5 freeTransformDelegate];
      if (v6 != [(THWFreeTransformableRepHandler *)[(THWFreeTransformableRepGestureTargetHandler *)self handler] freeTransformController])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }

    v7 = [(THWFreeTransformableRepHandler *)[(THWFreeTransformableRepGestureTargetHandler *)self handler] freeTransformController];

    [v5 setFreeTransformDelegate:v7];
  }
}

@end
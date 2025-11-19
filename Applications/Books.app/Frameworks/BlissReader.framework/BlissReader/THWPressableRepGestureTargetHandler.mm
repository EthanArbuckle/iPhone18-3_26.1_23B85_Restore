@interface THWPressableRepGestureTargetHandler
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)canHandleGesture:(id)a3 forChildRep:(id)a4;
- (BOOL)handleGesture:(id)a3;
- (BOOL)p_gestureIsHandleable:(id)a3;
- (BOOL)p_isGestureWithinPressableBounds:(id)a3;
- (BOOL)widgetInteractionAllowAutoplay;
- (BOOL)widgetInteractionDisabledOnPage;
- (BOOL)widgetInteractionEnabled;
- (CGPoint)pressPoint;
- (CGPoint)shadowPressPoint;
- (THWPressableRepGestureTargetHandler)initWithPressableRep:(id)a3 pressHandler:(id)a4;
- (void)dealloc;
- (void)p_invokeAction;
- (void)p_pressInAnimationWithCompletionBlock:(id)a3;
- (void)p_recoilAnimationWithCompletionBlock:(id)a3;
- (void)p_relaxAnimationWithCompletionBlock:(id)a3;
- (void)p_updateAnimation:(id)a3;
- (void)spoofGesture;
@end

@implementation THWPressableRepGestureTargetHandler

- (THWPressableRepGestureTargetHandler)initWithPressableRep:(id)a3 pressHandler:(id)a4
{
  v9.receiver = self;
  v9.super_class = THWPressableRepGestureTargetHandler;
  v6 = [(THWPressableRepGestureTargetHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(THWPressableRepGestureTargetHandler *)v6 setPressableRep:a3];
    [(THWPressableRepGestureTargetHandler *)v7 setPressHandler:a4];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWPressableRepGestureTargetHandler;
  [(THWPressableRepGestureTargetHandler *)&v3 dealloc];
}

- (BOOL)widgetInteractionDisabledOnPage
{
  v3 = [-[THWPressableRep interactiveCanvasController](-[THWPressableRepGestureTargetHandler pressableRep](self "pressableRep")];
  if (v3)
  {
    LOBYTE(v3) = [v3 widgetHostingAllowInteractionOnPageForRep:{-[THWPressableRepGestureTargetHandler pressableRep](self, "pressableRep")}] ^ 1;
  }

  return v3;
}

- (BOOL)widgetInteractionAllowAutoplay
{
  v3 = [-[THWPressableRep interactiveCanvasController](-[THWPressableRepGestureTargetHandler pressableRep](self "pressableRep")];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [(THWPressableRepGestureTargetHandler *)self pressableRep];

  return [v4 widgetHostingAllowAutoplayForRep:v5];
}

- (void)p_pressInAnimationWithCompletionBlock:(id)a3
{
  if ([[(THWPressableRepGestureTargetHandler *)self pressableRep] wantsPressAnimation])
  {
    v5 = [[(THWPressableRepGestureTargetHandler *)self pressableRep] pressableAnimationLayer];
    v6 = [[(THWPressableRepGestureTargetHandler *)self pressableRep] pressableAnimationShadowLayer];
    v7 = [v5 superlayer];
    [v5 bounds];
    TSDCenterOfRect();
    [v7 convertPoint:v5 fromLayer:?];
    [(THWPressableRepGestureTargetHandler *)self setPressPoint:?];
    v8 = [v6 superlayer];
    [v6 bounds];
    TSDCenterOfRect();
    [v8 convertPoint:v6 fromLayer:?];
    [(THWPressableRepGestureTargetHandler *)self setShadowPressPoint:?];
    +[CATransaction begin];
    [CATransaction setCompletionBlock:a3];
    [(THWPressableRepGestureTargetHandler *)self pressPoint];
    [v5 addPressAnimationFromPoint:? scale:?];
    [(THWPressableRepGestureTargetHandler *)self shadowPressPoint];
    [v6 addPressAnimationFromPoint:? scale:?];

    +[CATransaction commit];
  }

  else if (a3)
  {
    v9 = *(a3 + 2);

    v9(a3);
  }
}

- (void)p_recoilAnimationWithCompletionBlock:(id)a3
{
  if ([[(THWPressableRepGestureTargetHandler *)self pressableRep] wantsPressAnimation])
  {
    +[CATransaction begin];
    [CATransaction setCompletionBlock:a3];
    v5 = [[(THWPressableRepGestureTargetHandler *)self pressableRep] pressableAnimationLayer];
    [(THWPressableRepGestureTargetHandler *)self pressPoint];
    [v5 addRecoilAnimationFromPoint:0 hardRebound:?];
    v6 = [[(THWPressableRepGestureTargetHandler *)self pressableRep] pressableAnimationShadowLayer];
    [(THWPressableRepGestureTargetHandler *)self shadowPressPoint];
    [v6 addRecoilAnimationFromPoint:0 hardRebound:?];

    +[CATransaction commit];
  }

  else if (a3)
  {
    v7 = *(a3 + 2);

    v7(a3);
  }
}

- (void)p_invokeAction
{
  if ([[(THWPressableRepGestureTargetHandler *)self pressableRep] wantsPressAction])
  {
    v3 = [(THWPressableRepGestureTargetHandler *)self pressHandler];
    v4 = [(THWPressableRepGestureTargetHandler *)self pressableRep];
    [(THWPressableRepGestureTargetHandler *)self pressPoint];

    [(THWPressableRepPressHandler *)v3 pressableRepWasPressed:v4 atPoint:?];
  }
}

- (void)p_relaxAnimationWithCompletionBlock:(id)a3
{
  if ([[(THWPressableRepGestureTargetHandler *)self pressableRep] wantsPressAnimation])
  {
    +[CATransaction begin];
    if (a3)
    {
      [CATransaction setCompletionBlock:a3];
    }

    v5 = [[(THWPressableRepGestureTargetHandler *)self pressableRep] pressableAnimationLayer];
    [(THWPressableRepGestureTargetHandler *)self pressPoint];
    [v5 addRelaxAnimationFromPoint:?];
    v6 = [[(THWPressableRepGestureTargetHandler *)self pressableRep] pressableAnimationShadowLayer];
    [(THWPressableRepGestureTargetHandler *)self shadowPressPoint];
    [v6 addRelaxAnimationFromPoint:?];

    +[CATransaction commit];
  }

  else if (a3)
  {
    v7 = *(a3 + 2);

    v7(a3);
  }
}

- (void)p_updateAnimation:(id)a3
{
  v4 = [(THWPressableRepGestureTargetHandler *)self p_isGestureWithinPressableBounds:a3];
  v5 = ![(THWPressableRepGestureTargetHandler *)self isPressableAtPoint]| v4;
  if (v5)
  {
    if ([(THWPressableRepGestureTargetHandler *)self isPressableAtPoint]|| ((v4 ^ 1) & 1) != 0)
    {
      return;
    }

    [(THWPressableRepGestureTargetHandler *)self p_pressInAnimationWithCompletionBlock:&stru_45DFE0];
  }

  else
  {
    [(THWPressableRepGestureTargetHandler *)self p_relaxAnimationWithCompletionBlock:0];
  }

  [(THWPressableRepGestureTargetHandler *)self setIsPressableAtPoint:v5 & 1];
}

- (BOOL)widgetInteractionEnabled
{
  if ([(THWPressableRepGestureTargetHandler *)self p_isPageInteractionMode])
  {
    return ![(THWPressableRepGestureTargetHandler *)self widgetInteractionDisabledOnPage];
  }

  else
  {
    return 1;
  }
}

- (BOOL)p_isGestureWithinPressableBounds:(id)a3
{
  objc_loadWeak(&self->_pressableRep);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  [objc_loadWeak(&self->_pressableRep) pressableNaturalBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [a3 naturalLocationForRep:objc_loadWeak(&self->_pressableRep)];
  v14 = v13;
  v16 = v15;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;

  return CGRectContainsPoint(*&v17, *&v14);
}

- (BOOL)p_gestureIsHandleable:(id)a3
{
  if ([(THWPressableRepGestureTargetHandler *)self handlePressOnDoubleTap])
  {
    v5 = 0;
  }

  else
  {
    v6 = [a3 gestureKind];
    v5 = v6 == TSWPImmediatePress;
  }

  if ([(THWPressableRepGestureTargetHandler *)self handlePressOnDoubleTap])
  {
    v7 = [a3 gestureKind];
    v8 = v7 == TSWPImmediateDoubleTap;
  }

  else
  {
    v8 = 0;
  }

  return v5 || v8;
}

- (BOOL)canHandleGesture:(id)a3 forChildRep:(id)a4
{
  if (![(THWPressableRepGestureTargetHandler *)self p_gestureIsHandleable:?]|| ![(THWPressableRepGestureTargetHandler *)self p_isGestureWithinPressableBounds:a3])
  {
    return 0;
  }

  v7 = [(THWPressableRepGestureTargetHandler *)self pressableRep];

  return [(THWPressableRep *)v7 shouldRecognizePressOnRep:a4];
}

- (BOOL)canHandleGesture:(id)a3
{
  if ([(THWPressableRepGestureTargetHandler *)self p_isPageInteractionMode]&& [(THWPressableRepGestureTargetHandler *)self enabledOnlyIfWidgetInteractionDisabledOnPage]&& ![(THWPressableRepGestureTargetHandler *)self widgetInteractionDisabledOnPage])
  {
    return 0;
  }

  if (![(THWPressableRepGestureTargetHandler *)self p_gestureIsHandleable:a3])
  {
    return 0;
  }

  if (![(THWPressableRepGestureTargetHandler *)self p_isGestureWithinPressableBounds:a3])
  {
    return 0;
  }

  if (![[(THWPressableRepGestureTargetHandler *)self pressableRep] wantsPressAction])
  {
    return 0;
  }

  [a3 naturalLocationForRep:{-[THWPressableRepGestureTargetHandler pressableRep](self, "pressableRep")}];
  v7 = [[(THWPressableRepGestureTargetHandler *)self pressableRep] hitRep:v5, v6];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [(THWPressableRepGestureTargetHandler *)self pressableRep];

  return [(THWPressableRep *)v9 shouldRecognizePressOnRep:v8];
}

- (BOOL)handleGesture:(id)a3
{
  v5 = [(THWPressableRepGestureTargetHandler *)self p_gestureIsHandleable:?];
  if (v5)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if ([objc_msgSend(v6 "view")])
    {
      [v6 cancel];
    }

    v7 = [a3 gestureState];
    if (v7 > 3)
    {
      if ((v7 - 4) < 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      switch(v7)
      {
        case 1:
          self->_isPressed = 1;
          [(THWPressableRepGestureTargetHandler *)self setIsPressableAtPoint:1];
          [[(THWPressableRepGestureTargetHandler *)self pressableRep] setHandlingPress:1];
          [(THWPressableRepGestureTargetHandler *)self p_pressInAnimationWithCompletionBlock:&stru_45E000];
          return v5;
        case 2:
          [(THWPressableRepGestureTargetHandler *)self p_updateAnimation:a3];
          return v5;
        case 3:
          if (![(THWPressableRepGestureTargetHandler *)self handlePressOnDoubleTap]&& [(THWPressableRepGestureTargetHandler *)self isPressableAtPoint]|| [(THWPressableRepGestureTargetHandler *)self handlePressOnDoubleTap])
          {
            [(THWPressableRepGestureTargetHandler *)self pressableRep];
            if ((objc_opt_respondsToSelector() & 1) != 0 && [[(THWPressableRepGestureTargetHandler *)self pressableRep] wantsRecoilAnimation])
            {
              v16[0] = _NSConcreteStackBlock;
              v16[1] = 3221225472;
              v16[2] = sub_1620D0;
              v16[3] = &unk_45AE00;
              v16[4] = self;
              [(THWPressableRepGestureTargetHandler *)self p_recoilAnimationWithCompletionBlock:v16];
LABEL_17:
              self->_isPressed = 0;
              return v5;
            }

            v11 = _NSConcreteStackBlock;
            v12 = 3221225472;
            v13 = sub_162120;
            v14 = &unk_45AE00;
            v15 = self;
            v9 = &v11;
            v8 = self;
LABEL_16:
            [(THWPressableRepGestureTargetHandler *)v8 p_relaxAnimationWithCompletionBlock:v9, v11, v12, v13, v14, v15];
            goto LABEL_17;
          }

LABEL_15:
          [[(THWPressableRepGestureTargetHandler *)self pressableRep] setHandlingPress:0];
          v8 = self;
          v9 = 0;
          goto LABEL_16;
      }
    }
  }

  return v5;
}

- (void)spoofGesture
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1621DC;
  v2[3] = &unk_45AE00;
  v2[4] = self;
  [(THWPressableRepGestureTargetHandler *)self p_pressInAnimationWithCompletionBlock:v2];
}

- (CGPoint)pressPoint
{
  x = self->_pressPoint.x;
  y = self->_pressPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)shadowPressPoint
{
  x = self->_shadowPressPoint.x;
  y = self->_shadowPressPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
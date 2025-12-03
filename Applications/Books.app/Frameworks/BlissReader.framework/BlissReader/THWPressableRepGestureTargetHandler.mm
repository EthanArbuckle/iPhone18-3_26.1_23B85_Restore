@interface THWPressableRepGestureTargetHandler
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)canHandleGesture:(id)gesture forChildRep:(id)rep;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)p_gestureIsHandleable:(id)handleable;
- (BOOL)p_isGestureWithinPressableBounds:(id)bounds;
- (BOOL)widgetInteractionAllowAutoplay;
- (BOOL)widgetInteractionDisabledOnPage;
- (BOOL)widgetInteractionEnabled;
- (CGPoint)pressPoint;
- (CGPoint)shadowPressPoint;
- (THWPressableRepGestureTargetHandler)initWithPressableRep:(id)rep pressHandler:(id)handler;
- (void)dealloc;
- (void)p_invokeAction;
- (void)p_pressInAnimationWithCompletionBlock:(id)block;
- (void)p_recoilAnimationWithCompletionBlock:(id)block;
- (void)p_relaxAnimationWithCompletionBlock:(id)block;
- (void)p_updateAnimation:(id)animation;
- (void)spoofGesture;
@end

@implementation THWPressableRepGestureTargetHandler

- (THWPressableRepGestureTargetHandler)initWithPressableRep:(id)rep pressHandler:(id)handler
{
  v9.receiver = self;
  v9.super_class = THWPressableRepGestureTargetHandler;
  v6 = [(THWPressableRepGestureTargetHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(THWPressableRepGestureTargetHandler *)v6 setPressableRep:rep];
    [(THWPressableRepGestureTargetHandler *)v7 setPressHandler:handler];
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
  pressableRep = [(THWPressableRepGestureTargetHandler *)self pressableRep];

  return [v4 widgetHostingAllowAutoplayForRep:pressableRep];
}

- (void)p_pressInAnimationWithCompletionBlock:(id)block
{
  if ([[(THWPressableRepGestureTargetHandler *)self pressableRep] wantsPressAnimation])
  {
    pressableAnimationLayer = [[(THWPressableRepGestureTargetHandler *)self pressableRep] pressableAnimationLayer];
    pressableAnimationShadowLayer = [[(THWPressableRepGestureTargetHandler *)self pressableRep] pressableAnimationShadowLayer];
    superlayer = [pressableAnimationLayer superlayer];
    [pressableAnimationLayer bounds];
    TSDCenterOfRect();
    [superlayer convertPoint:pressableAnimationLayer fromLayer:?];
    [(THWPressableRepGestureTargetHandler *)self setPressPoint:?];
    superlayer2 = [pressableAnimationShadowLayer superlayer];
    [pressableAnimationShadowLayer bounds];
    TSDCenterOfRect();
    [superlayer2 convertPoint:pressableAnimationShadowLayer fromLayer:?];
    [(THWPressableRepGestureTargetHandler *)self setShadowPressPoint:?];
    +[CATransaction begin];
    [CATransaction setCompletionBlock:block];
    [(THWPressableRepGestureTargetHandler *)self pressPoint];
    [pressableAnimationLayer addPressAnimationFromPoint:? scale:?];
    [(THWPressableRepGestureTargetHandler *)self shadowPressPoint];
    [pressableAnimationShadowLayer addPressAnimationFromPoint:? scale:?];

    +[CATransaction commit];
  }

  else if (block)
  {
    v9 = *(block + 2);

    v9(block);
  }
}

- (void)p_recoilAnimationWithCompletionBlock:(id)block
{
  if ([[(THWPressableRepGestureTargetHandler *)self pressableRep] wantsPressAnimation])
  {
    +[CATransaction begin];
    [CATransaction setCompletionBlock:block];
    pressableAnimationLayer = [[(THWPressableRepGestureTargetHandler *)self pressableRep] pressableAnimationLayer];
    [(THWPressableRepGestureTargetHandler *)self pressPoint];
    [pressableAnimationLayer addRecoilAnimationFromPoint:0 hardRebound:?];
    pressableAnimationShadowLayer = [[(THWPressableRepGestureTargetHandler *)self pressableRep] pressableAnimationShadowLayer];
    [(THWPressableRepGestureTargetHandler *)self shadowPressPoint];
    [pressableAnimationShadowLayer addRecoilAnimationFromPoint:0 hardRebound:?];

    +[CATransaction commit];
  }

  else if (block)
  {
    v7 = *(block + 2);

    v7(block);
  }
}

- (void)p_invokeAction
{
  if ([[(THWPressableRepGestureTargetHandler *)self pressableRep] wantsPressAction])
  {
    pressHandler = [(THWPressableRepGestureTargetHandler *)self pressHandler];
    pressableRep = [(THWPressableRepGestureTargetHandler *)self pressableRep];
    [(THWPressableRepGestureTargetHandler *)self pressPoint];

    [(THWPressableRepPressHandler *)pressHandler pressableRepWasPressed:pressableRep atPoint:?];
  }
}

- (void)p_relaxAnimationWithCompletionBlock:(id)block
{
  if ([[(THWPressableRepGestureTargetHandler *)self pressableRep] wantsPressAnimation])
  {
    +[CATransaction begin];
    if (block)
    {
      [CATransaction setCompletionBlock:block];
    }

    pressableAnimationLayer = [[(THWPressableRepGestureTargetHandler *)self pressableRep] pressableAnimationLayer];
    [(THWPressableRepGestureTargetHandler *)self pressPoint];
    [pressableAnimationLayer addRelaxAnimationFromPoint:?];
    pressableAnimationShadowLayer = [[(THWPressableRepGestureTargetHandler *)self pressableRep] pressableAnimationShadowLayer];
    [(THWPressableRepGestureTargetHandler *)self shadowPressPoint];
    [pressableAnimationShadowLayer addRelaxAnimationFromPoint:?];

    +[CATransaction commit];
  }

  else if (block)
  {
    v7 = *(block + 2);

    v7(block);
  }
}

- (void)p_updateAnimation:(id)animation
{
  v4 = [(THWPressableRepGestureTargetHandler *)self p_isGestureWithinPressableBounds:animation];
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

- (BOOL)p_isGestureWithinPressableBounds:(id)bounds
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
  [bounds naturalLocationForRep:objc_loadWeak(&self->_pressableRep)];
  v14 = v13;
  v16 = v15;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;

  return CGRectContainsPoint(*&v17, *&v14);
}

- (BOOL)p_gestureIsHandleable:(id)handleable
{
  if ([(THWPressableRepGestureTargetHandler *)self handlePressOnDoubleTap])
  {
    v5 = 0;
  }

  else
  {
    gestureKind = [handleable gestureKind];
    v5 = gestureKind == TSWPImmediatePress;
  }

  if ([(THWPressableRepGestureTargetHandler *)self handlePressOnDoubleTap])
  {
    gestureKind2 = [handleable gestureKind];
    v8 = gestureKind2 == TSWPImmediateDoubleTap;
  }

  else
  {
    v8 = 0;
  }

  return v5 || v8;
}

- (BOOL)canHandleGesture:(id)gesture forChildRep:(id)rep
{
  if (![(THWPressableRepGestureTargetHandler *)self p_gestureIsHandleable:?]|| ![(THWPressableRepGestureTargetHandler *)self p_isGestureWithinPressableBounds:gesture])
  {
    return 0;
  }

  pressableRep = [(THWPressableRepGestureTargetHandler *)self pressableRep];

  return [(THWPressableRep *)pressableRep shouldRecognizePressOnRep:rep];
}

- (BOOL)canHandleGesture:(id)gesture
{
  if ([(THWPressableRepGestureTargetHandler *)self p_isPageInteractionMode]&& [(THWPressableRepGestureTargetHandler *)self enabledOnlyIfWidgetInteractionDisabledOnPage]&& ![(THWPressableRepGestureTargetHandler *)self widgetInteractionDisabledOnPage])
  {
    return 0;
  }

  if (![(THWPressableRepGestureTargetHandler *)self p_gestureIsHandleable:gesture])
  {
    return 0;
  }

  if (![(THWPressableRepGestureTargetHandler *)self p_isGestureWithinPressableBounds:gesture])
  {
    return 0;
  }

  if (![[(THWPressableRepGestureTargetHandler *)self pressableRep] wantsPressAction])
  {
    return 0;
  }

  [gesture naturalLocationForRep:{-[THWPressableRepGestureTargetHandler pressableRep](self, "pressableRep")}];
  v7 = [[(THWPressableRepGestureTargetHandler *)self pressableRep] hitRep:v5, v6];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  pressableRep = [(THWPressableRepGestureTargetHandler *)self pressableRep];

  return [(THWPressableRep *)pressableRep shouldRecognizePressOnRep:v8];
}

- (BOOL)handleGesture:(id)gesture
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

    gestureState = [gesture gestureState];
    if (gestureState > 3)
    {
      if ((gestureState - 4) < 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      switch(gestureState)
      {
        case 1:
          self->_isPressed = 1;
          [(THWPressableRepGestureTargetHandler *)self setIsPressableAtPoint:1];
          [[(THWPressableRepGestureTargetHandler *)self pressableRep] setHandlingPress:1];
          [(THWPressableRepGestureTargetHandler *)self p_pressInAnimationWithCompletionBlock:&stru_45E000];
          return v5;
        case 2:
          [(THWPressableRepGestureTargetHandler *)self p_updateAnimation:gesture];
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
            selfCopy = self;
            v9 = &v11;
            selfCopy3 = self;
LABEL_16:
            [(THWPressableRepGestureTargetHandler *)selfCopy3 p_relaxAnimationWithCompletionBlock:v9, v11, v12, v13, v14, selfCopy];
            goto LABEL_17;
          }

LABEL_15:
          [[(THWPressableRepGestureTargetHandler *)self pressableRep] setHandlingPress:0];
          selfCopy3 = self;
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
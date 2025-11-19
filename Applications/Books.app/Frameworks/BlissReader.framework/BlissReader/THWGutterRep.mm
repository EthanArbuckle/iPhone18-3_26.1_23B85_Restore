@interface THWGutterRep
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)canHandleGesture:(id)a3 forChildRep:(id)a4;
- (BOOL)handleGesture:(id)a3;
- (BOOL)shouldRecognizePressOnRep:(id)a3;
- (BOOL)wantsPressAction;
- (BOOL)wantsPressAnimation;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGRect)frameForPopupInUnscaledCanvas;
- (THAnimationController)animationController;
- (THWGutterRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)expandedContentDrawableToPresent;
- (id)infoForPressable;
- (int)pressableAction;
- (void)dealloc;
@end

@implementation THWGutterRep

- (THWGutterRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6.receiver = self;
  v6.super_class = THWGutterRep;
  v4 = [(THWGutterRep *)&v6 initWithLayout:a3 canvas:a4];
  if (v4)
  {
    objc_opt_class();
    [(THWGutterRep *)v4 interactiveCanvasController];
    -[THWGutterRep setPressableHandler:](v4, "setPressableHandler:", -[THWPressableRepGestureTargetHandler initWithPressableRep:pressHandler:]([THWPressableRepGestureTargetHandler alloc], "initWithPressableRep:pressHandler:", v4, [TSUDynamicCast() pressHandlerForPressableReps]));
  }

  return v4;
}

- (void)dealloc
{
  self->mAnimationController = 0;

  v3.receiver = self;
  v3.super_class = THWGutterRep;
  [(THWGutterRep *)&v3 dealloc];
}

- (BOOL)canHandleGesture:(id)a3 forChildRep:(id)a4
{
  v6 = [(THWGutterRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v6 canHandleGesture:a3 forChildRep:a4];
}

- (CALayer)pressableAnimationLayer
{
  v3 = [(THWGutterRep *)self interactiveCanvasController];
  v4 = [-[THWGutterRep interactiveCanvasController](self "interactiveCanvasController")];

  return [v3 layerForRep:v4];
}

- (id)infoForPressable
{
  v2 = [(THWGutterRep *)self info];

  return [v2 associatedInfo];
}

- (int)pressableAction
{
  v3.receiver = self;
  v3.super_class = THWGutterRep;
  return [(THWGutterRep *)&v3 pressableAction];
}

- (BOOL)wantsPressAnimation
{
  if ([objc_msgSend(-[THWGutterRep interactiveCanvasController](self "interactiveCanvasController")])
  {
    return 1;
  }

  if ([(THWGutterRep *)self pressableAction]!= 1)
  {
    return 0;
  }

  [(THWGutterRep *)self infoForPressable];
  return [TSUProtocolCast() popUpInfo] != 0;
}

- (BOOL)wantsPressAction
{
  if ([objc_msgSend(-[THWGutterRep interactiveCanvasController](self "interactiveCanvasController")])
  {
    return 1;
  }

  if ([(THWGutterRep *)self pressableAction]!= 1)
  {
    return 0;
  }

  [(THWGutterRep *)self infoForPressable];
  return [TSUProtocolCast() popUpInfo] != 0;
}

- (BOOL)shouldRecognizePressOnRep:(id)a3
{
  v5 = [a3 info];
  if (v5 == [-[THWGutterRep info](self "info")])
  {
    return 1;
  }

  v6 = [a3 info];
  return v6 == [-[THWGutterRep info](self "info")];
}

- (CGRect)frameForPopupInUnscaledCanvas
{
  v2 = [-[THWGutterRep interactiveCanvasController](self "interactiveCanvasController")];

  [v2 frameInRoot];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGAffineTransform)freeTransform
{
  v3 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v3;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return self;
}

- (id)expandedContentDrawableToPresent
{
  v2 = [-[THWGutterRep info](self "info")];
  objc_opt_class();
  v3 = TSUDynamicCast();
  if (!v3)
  {
    v6 = TSUProtocolCast();
    if (!v6)
    {
      return v2;
    }

    goto LABEL_5;
  }

  v4 = v3;
  [v3 stageDrawable];
  v5 = TSUProtocolCast();
  if ([v5 popUpInfo])
  {
    v6 = v5;
LABEL_5:
    if ([v6 popUpInfo])
    {

      return TSUProtocolCast();
    }

    return v2;
  }

  if ([v4 expandedStageDrawable])
  {
    v8 = [v4 expandedStageDrawable];
  }

  else
  {
    v8 = [v4 stageDrawable];
  }

  v9 = [v8 repClass];
  if (![v9 conformsToProtocol:&OBJC_PROTOCOL___THWExpandedRep] || (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(v9, "expandedAllowsPresentationInExpandedForInfo:isReflowablePresentation:", objc_msgSend(v4, "expandedStageDrawable"), 0))
  {
    return v4;
  }

  if ([v4 expandedStageDrawable])
  {

    return [v4 expandedStageDrawable];
  }

  else
  {

    return [v4 stageDrawable];
  }
}

- (BOOL)canHandleGesture:(id)a3
{
  v4 = [(THWGutterRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v4 canHandleGesture:a3];
}

- (BOOL)handleGesture:(id)a3
{
  v4 = [(THWGutterRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v4 handleGesture:a3];
}

- (THAnimationController)animationController
{
  result = self->mAnimationController;
  if (!result)
  {
    v4 = objc_alloc_init(THAnimationController);
    self->mAnimationController = v4;
    [(THAnimationController *)v4 addObserver:self];
    [(THAnimationController *)self->mAnimationController setSource:self];
    return self->mAnimationController;
  }

  return result;
}

@end
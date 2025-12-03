@interface THWGutterRep
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)canHandleGesture:(id)gesture forChildRep:(id)rep;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)shouldRecognizePressOnRep:(id)rep;
- (BOOL)wantsPressAction;
- (BOOL)wantsPressAnimation;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGRect)frameForPopupInUnscaledCanvas;
- (THAnimationController)animationController;
- (THWGutterRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)expandedContentDrawableToPresent;
- (id)infoForPressable;
- (int)pressableAction;
- (void)dealloc;
@end

@implementation THWGutterRep

- (THWGutterRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v6.receiver = self;
  v6.super_class = THWGutterRep;
  v4 = [(THWGutterRep *)&v6 initWithLayout:layout canvas:canvas];
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

- (BOOL)canHandleGesture:(id)gesture forChildRep:(id)rep
{
  pressableHandler = [(THWGutterRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler canHandleGesture:gesture forChildRep:rep];
}

- (CALayer)pressableAnimationLayer
{
  interactiveCanvasController = [(THWGutterRep *)self interactiveCanvasController];
  v4 = [-[THWGutterRep interactiveCanvasController](self "interactiveCanvasController")];

  return [interactiveCanvasController layerForRep:v4];
}

- (id)infoForPressable
{
  info = [(THWGutterRep *)self info];

  return [info associatedInfo];
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

- (BOOL)shouldRecognizePressOnRep:(id)rep
{
  info = [rep info];
  if (info == [-[THWGutterRep info](self "info")])
  {
    return 1;
  }

  info2 = [rep info];
  return info2 == [-[THWGutterRep info](self "info")];
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
    expandedStageDrawable = [v4 expandedStageDrawable];
  }

  else
  {
    expandedStageDrawable = [v4 stageDrawable];
  }

  repClass = [expandedStageDrawable repClass];
  if (![repClass conformsToProtocol:&OBJC_PROTOCOL___THWExpandedRep] || (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(repClass, "expandedAllowsPresentationInExpandedForInfo:isReflowablePresentation:", objc_msgSend(v4, "expandedStageDrawable"), 0))
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

- (BOOL)canHandleGesture:(id)gesture
{
  pressableHandler = [(THWGutterRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler canHandleGesture:gesture];
}

- (BOOL)handleGesture:(id)gesture
{
  pressableHandler = [(THWGutterRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler handleGesture:gesture];
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
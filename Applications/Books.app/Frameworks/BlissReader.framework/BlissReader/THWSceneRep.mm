@interface THWSceneRep
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)expandedHasContentForPanel:(int)panel;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)wantsPressAction;
- (CGAffineTransform)freeTransform;
- (CGAffineTransform)shadowAnimationLayerDestinationTransform:(SEL)transform uniformTargetScale:(id)scale;
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize;
- (CGRect)ftcTargetFrame;
- (CGRect)p_contentsRectForDestination:(CGSize)destination shouldFill:(BOOL)fill;
- (CGRect)p_scaledViewFrameOnCanvas;
- (CGRect)rectForCompletion;
- (CGRect)targetFrameForSource:(id)source;
- (CGSize)p_targetExpandedSize;
- (THAnimationController)animationController;
- (THWSceneRep)initWithLayout:(id)layout canvas:(id)canvas;
- (double)expandedContentMinimumZoomScale;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize;
- (double)screenScaleForSceneController:(id)controller;
- (id)animationLayer;
- (id)backgroundColorForSceneController:(id)controller;
- (id)documentRootForSceneController:(id)controller;
- (id)expandedChildInfosForPanel:(int)panel;
- (id)p_sceneContentLayer;
- (id)placeholderLayerForSceneController:(id)controller;
- (id)shadowAnimationLayer;
- (id)shadowPath;
- (id)targetLayer;
- (int)pressableAction;
- (void)addChildViewsToArray:(id)array;
- (void)animationControllerDidAddContentAnimations:(id)animations uniformTargetScale:(double)scale;
- (void)animationControllerDidPresent:(id)present;
- (void)animationControllerSetupTarget:(id)target;
- (void)animationControllerTeardownTarget:(id)target;
- (void)canvasDidBeginFreeTransform;
- (void)canvasDidEndFreeTransform;
- (void)dealloc;
- (void)didAddChildView:(id)view;
- (void)didPresentExpanded;
- (void)expandedDidAppearPreAnimation;
- (void)expandedDidRotateTransitionToSize:(CGSize)size;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame;
- (void)expandedWillRotateTransitionFromSize:(CGSize)size toSize:(CGSize)toSize;
- (void)freeTransformDidEnd;
- (void)freeTransformWillBegin;
- (void)handleNotificationVantageDidChange:(id)change;
- (void)handleSingleTapInSceneForSceneController:(id)controller;
- (void)p_reparentSceneView;
- (void)p_setupImageCropAnimationControllerWithDestinationRep:(id)rep;
- (void)p_setupSceneControllerIfNecessary:(BOOL)necessary;
- (void)p_updateInteractiveMode;
- (void)reparentAnimationLayerIfBackedByView:(id)view;
- (void)reparentTargetLayerIfBackedByView:(id)view;
- (void)replaceContentsFromRep:(id)rep;
- (void)sceneDidLoadForSceneController:(id)controller;
- (void)setChildReps:(id)reps;
- (void)updateChildrenFromLayout;
- (void)viewScrollWillChange;
- (void)viewScrollingEnded;
- (void)willBeRemoved;
- (void)willBeginHandlingGesture:(id)gesture;
- (void)willRemoveChildView:(id)view;
@end

@implementation THWSceneRep

- (THWSceneRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v8.receiver = self;
  v8.super_class = THWSceneRep;
  v4 = [(THWSceneRep *)&v8 initWithLayout:layout canvas:canvas];
  if (v4)
  {
    objc_opt_class();
    [(THWSceneRep *)v4 interactiveCanvasController];
    pressHandlerForPressableReps = [TSUDynamicCast() pressHandlerForPressableReps];
    if (pressHandlerForPressableReps)
    {
      v4->_pressableHandler = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:v4 pressHandler:pressHandlerForPressableReps];
    }

    v4->_freeTransformableHandler = -[THWFreeTransformableRepGestureTargetHandler initWithFreeTransformableRep:handler:]([THWFreeTransformableRepGestureTargetHandler alloc], "initWithFreeTransformableRep:handler:", v4, [objc_msgSend(-[THWSceneRep hostICC](v4 "hostICC")]);
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v4 name:"handleNotificationVantageWillChange:" object:@"THVantageWillChangeNotification", 0];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v4 name:"handleNotificationVantageDidChange:" object:@"THVantageDidChangeNotification", 0];
    -[THWSceneRep setLoanedSceneController:](v4, "setLoanedSceneController:", [objc_msgSend(-[THWSceneRep interactiveCanvasController](v4 "interactiveCanvasController")]);
    v6 = [objc_msgSend(-[THWSceneRep hostICC](v4 "hostICC")];
    if ([(THWSceneRep *)v4 loanedSceneController])
    {
      if (!v6)
      {
        return v4;
      }

      goto LABEL_8;
    }

    if (v6 & 1 | (([-[THWSceneRep layout](v4 "layout")] & 1) == 0))
    {
LABEL_8:
      v4->_isCurrentlyScrolling = [-[THWSceneRep interactiveCanvasController](v4 "interactiveCanvasController")];
      [(THWSceneRep *)v4 p_setupSceneControllerIfNecessary:v6];
    }
  }

  return v4;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  [(THWImageCropAnimationController *)self->_imageCropAnimationController teardownWrapperLayer];

  self->_imageCropAnimationController = 0;
  self->_childReps = 0;

  self->_freeTransformableHandler = 0;
  self->_sceneController = 0;

  self->_pressableHandler = 0;
  self->_animationController = 0;
  v3.receiver = self;
  v3.super_class = THWSceneRep;
  [(THWSceneRep *)&v3 dealloc];
}

- (CGRect)p_scaledViewFrameOnCanvas
{
  [-[THWSceneRep layout](self "layout")];
  [-[THWSceneRep canvas](self "canvas")];

  TSDRoundedRectForMainScreen();
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)p_setupSceneControllerIfNecessary:(BOOL)necessary
{
  if (self->_sceneController)
  {
    return;
  }

  v5 = [THWSceneController alloc];
  info = [(THWSceneRep *)self info];
  [(THWSceneRep *)self p_scaledViewFrameOnCanvas];
  sceneController = [(THWSceneController *)v5 initWithSceneInfo:info frame:self delegate:?];
  self->_sceneController = sceneController;
  if (necessary)
  {
    goto LABEL_3;
  }

  if ([(THWSceneRep *)self isExpanded]&& ![(THWSceneRep *)self isCurrentlyScrolling])
  {
    sceneController = self->_sceneController;
LABEL_3:

    [(THWSceneController *)sceneController loadScene];
    return;
  }

  v8 = self->_sceneController;

  [(THWSceneController *)v8 loadSceneDeferred];
}

- (void)viewScrollWillChange
{
  v3.receiver = self;
  v3.super_class = THWSceneRep;
  [(THWSceneRep *)&v3 viewScrollWillChange];
  self->_isCurrentlyScrolling = 1;
  if ([(THWSceneRep *)self isVisibleOnCanvas])
  {
    [(THWSceneController *)[(THWSceneRep *)self sceneController] pauseIdleAnimation];
  }
}

- (void)viewScrollingEnded
{
  v3.receiver = self;
  v3.super_class = THWSceneRep;
  [(THWSceneRep *)&v3 viewScrollingEnded];
  self->_isCurrentlyScrolling = 0;
  if ([(THWSceneRep *)self isVisibleOnCanvas])
  {
    if ([(THWSceneRep *)self sceneController])
    {
      if (![(THWSceneController *)[(THWSceneRep *)self sceneController] view])
      {
        [-[THWSceneRep interactiveCanvasController](self "interactiveCanvasController")];
      }

      [(THWSceneController *)[(THWSceneRep *)self sceneController] resumeIdleAnimationIfNecessary];
    }

    else
    {
      [-[THWSceneRep interactiveCanvasController](self "interactiveCanvasController")];
    }
  }
}

- (void)canvasDidBeginFreeTransform
{
  sceneController = [(THWSceneRep *)self sceneController];

  [(THWSceneController *)sceneController pauseIdleAnimation];
}

- (void)canvasDidEndFreeTransform
{
  if ([(THWSceneRep *)self isVisibleOnCanvas])
  {
    sceneController = [(THWSceneRep *)self sceneController];

    [(THWSceneController *)sceneController resumeIdleAnimationIfNecessary];
  }
}

- (void)handleNotificationVantageDidChange:(id)change
{
  v4 = [objc_msgSend(change "userInfo")];
  if (([v4 isEqualToString:@"THVantageChangeReasonTransitionToGlossary"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"THVantageChangeReasonTransitionToNotesVC"))
  {
    sceneController = [(THWSceneRep *)self sceneController];

    [(THWSceneController *)sceneController pauseIdleAnimation];
  }
}

- (id)documentRootForSceneController:(id)controller
{
  interactiveCanvasController = [(THWSceneRep *)self interactiveCanvasController];

  return [interactiveCanvasController documentRoot];
}

- (id)backgroundColorForSceneController:(id)controller
{
  info = [(THWSceneRep *)self info];

  return [info stageColor];
}

- (id)placeholderLayerForSceneController:(id)controller
{
  interactiveCanvasController = [(THWSceneRep *)self interactiveCanvasController];
  v5 = [-[THWSceneRep interactiveCanvasController](self "interactiveCanvasController")];

  return [interactiveCanvasController layerForRep:v5];
}

- (double)screenScaleForSceneController:(id)controller
{
  v3 = +[UIScreen mainScreen];

  [(UIScreen *)v3 scale];
  return result;
}

- (void)handleSingleTapInSceneForSceneController:(id)controller
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWSceneRep *)self pressableHandler] widgetInteractionDisabledOnPage])
  {
    goto LABEL_2;
  }

  if ([(THWSceneRep *)self animating])
  {
    return;
  }

  if (![(THWSceneRep *)self isExpanded]&& [(THWSceneRep *)self meetsStageDimensionRequirementForExpanded])
  {
LABEL_2:
    pressableHandler = [(THWSceneRep *)self pressableHandler];

    [(THWPressableRepGestureTargetHandler *)pressableHandler spoofGesture];
  }

  else
  {
    [-[THWSceneRep interactiveCanvasController](self "interactiveCanvasController")];
    v5 = TSUProtocolCast();

    [v5 handleSingleTap];
  }
}

- (void)sceneDidLoadForSceneController:(id)controller
{
  if (![(THWSceneRep *)self isCurrentlyScrolling])
  {
    interactiveCanvasController = [(THWSceneRep *)self interactiveCanvasController];

    [interactiveCanvasController invalidateReps];
  }
}

- (void)setChildReps:(id)reps
{
  childReps = self->_childReps;
  if (childReps != reps)
  {
    [(NSArray *)childReps makeObjectsPerformSelector:"setParentRep:" withObject:0];

    repsCopy = reps;
    self->_childReps = repsCopy;

    [(NSArray *)repsCopy makeObjectsPerformSelector:"setParentRep:" withObject:self];
  }
}

- (void)addChildViewsToArray:(id)array
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  isVisibleOnCanvas = [(THWSceneRep *)self isVisibleOnCanvas];
  sceneController = [(THWSceneRep *)self sceneController];
  if (!isVisibleOnCanvas)
  {
    view = [(THWSceneController *)sceneController view];
    if (!view)
    {
      goto LABEL_13;
    }

    view2 = view;
    sceneController2 = [(THWSceneRep *)self sceneController];
    [(THWSceneRep *)self p_scaledViewFrameOnCanvas];
    [(THWSceneController *)sceneController2 setFrame:?];
    goto LABEL_12;
  }

  if (sceneController)
  {
    if (![(THWSceneRep *)self isCurrentlyScrolling]&& ![(THWSceneController *)[(THWSceneRep *)self sceneController] view])
    {
      [(THWSceneController *)[(THWSceneRep *)self sceneController] setupSceneView];
    }

    view2 = [(THWSceneController *)[(THWSceneRep *)self sceneController] view];
    sceneController3 = [(THWSceneRep *)self sceneController];
    [(THWSceneRep *)self p_scaledViewFrameOnCanvas];
    [(THWSceneController *)sceneController3 setFrame:?];
    if (view2)
    {
LABEL_12:
      [array addObject:view2];
    }
  }

LABEL_13:

  [(THWSceneRep *)self p_updateInteractiveMode];
}

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = THWSceneRep;
  [(THWSceneRep *)&v3 willBeRemoved];
  if (self->_sceneController)
  {
    [(THWSceneController *)[(THWSceneRep *)self sceneController] stopAnimation];
    [(THWSceneController *)[(THWSceneRep *)self sceneController] setDelegate:0];
  }
}

- (void)didAddChildView:(id)view
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (view && [(THWSceneController *)[(THWSceneRep *)self sceneController] view]== view)
  {
    sceneController = [(THWSceneRep *)self sceneController];

    [(THWSceneController *)sceneController didAddSceneView];
  }
}

- (void)willRemoveChildView:(id)view
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (view && ![(THWSceneRep *)self loanedSceneController]&& self->_sceneController && [(THWSceneController *)[(THWSceneRep *)self sceneController] view]== view)
  {
    [(THWSceneController *)self->_sceneController stopAnimation];

    [view removeFromSuperview];
  }
}

- (void)p_updateInteractiveMode
{
  [(THWSceneController *)[(THWSceneRep *)self sceneController] setUserInteractionEnabled:1];
  widgetInteractionDisabledOnPage = [(THWPressableRepGestureTargetHandler *)[(THWSceneRep *)self pressableHandler] widgetInteractionDisabledOnPage];
  sceneController = [(THWSceneRep *)self sceneController];
  if (widgetInteractionDisabledOnPage)
  {

    [(THWSceneController *)sceneController pauseIdleAnimationForRotation];
  }

  else
  {

    [(THWSceneController *)sceneController resumeIdleAnimationIfNecessary];
  }
}

- (void)updateChildrenFromLayout
{
  v3 = [TSDContainerRep childrenFromLayoutInContainerRep:self];

  [(THWSceneRep *)self setChildReps:v3];
}

- (BOOL)wantsPressAction
{
  if ([(THWSceneRep *)self meetsStageDimensionRequirementForExpanded]|| (v3 = [(THWPressableRepGestureTargetHandler *)[(THWSceneRep *)self pressableHandler] widgetInteractionDisabledOnPage]))
  {
    LOBYTE(v3) = [(THWSceneRep *)self pressableAction]!= 0;
  }

  return v3;
}

- (int)pressableAction
{
  v3.receiver = self;
  v3.super_class = THWSceneRep;
  return [(THWSceneRep *)&v3 pressableAction];
}

- (BOOL)canHandleGesture:(id)gesture
{
  if (![(THWSceneRep *)self animating]&& [(THWPressableRepGestureTargetHandler *)[(THWSceneRep *)self pressableHandler] canHandleGesture:gesture])
  {
    return 1;
  }

  freeTransformableHandler = [(THWSceneRep *)self freeTransformableHandler];

  return [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler canHandleGesture:gesture];
}

- (BOOL)handleGesture:(id)gesture
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWSceneRep *)self pressableHandler] handleGesture:gesture])
  {
    return 1;
  }

  freeTransformableHandler = [(THWSceneRep *)self freeTransformableHandler];

  return [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler handleGesture:gesture];
}

- (void)willBeginHandlingGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind == TSDFreeTransform)
  {
    freeTransformableHandler = [(THWSceneRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler willBeginHandlingGesture:gesture];
  }
}

- (BOOL)isExpanded
{
  layout = [(THWSceneRep *)self layout];

  return [layout isExpanded];
}

- (id)shadowPath
{
  if (![objc_msgSend(-[THWSceneRep info](self "info")])
  {
    return 0;
  }

  imageCropAnimationController = self->_imageCropAnimationController;

  return [(THWImageCropAnimationController *)imageCropAnimationController sourceShadowPath];
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWSceneRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (void)freeTransformWillBegin
{
  objc_opt_class();
  [(THWExpandedRepController *)[(THWSceneRep *)self expandedRepController] expandedRepSourceRep];
  v3 = TSUDynamicCast();

  [(THWSceneRep *)self p_setupImageCropAnimationControllerWithDestinationRep:v3];
}

- (void)freeTransformDidEnd
{
  [(THWImageCropAnimationController *)self->_imageCropAnimationController teardownWrapperLayer];

  self->_imageCropAnimationController = 0;
  objc_opt_class();
  [(THAnimationController *)self->_animationController destination];
  v3 = TSUDynamicCast();
  [v3 p_reparentSceneView];
  if ([(THWSceneRep *)self sceneDidReceiveRotationLayoutDuringFreeTransform])
  {
    [(THWSceneRep *)self setSceneDidReceiveRotationLayoutDuringFreeTransform:0];
    [objc_msgSend(v3 "sceneController")];
    layout = [v3 layout];

    [layout invalidateFrame];
  }
}

- (CGRect)rectForCompletion
{
  layout = [(THWSceneRep *)self layout];

  [layout frameInParent];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (THAnimationController)animationController
{
  result = self->_animationController;
  if (!result)
  {
    v4 = objc_alloc_init(THAnimationController);
    self->_animationController = v4;
    [(THAnimationController *)v4 addObserver:self];
    [(THAnimationController *)self->_animationController setSource:self];
    [(THAnimationController *)self->_animationController setShadowFadeOutDurationScale:1.0];
    [(THAnimationController *)self->_animationController setShadowTransformDurationScale:0.5];
    return self->_animationController;
  }

  return result;
}

- (void)expandedDidAppearPreAnimation
{
  sceneController = [(THWSceneRep *)self sceneController];
  if (sceneController)
  {
    v3 = sceneController;
    if (![(THWSceneController *)sceneController hasRendered])
    {
      view = [(THWSceneController *)v3 view];

      [view setNeedsDisplay];
    }
  }
}

- (void)didPresentExpanded
{
  sceneController = [(THWSceneRep *)self sceneController];

  [(THWSceneController *)sceneController setUserInteractionEnabled:1];
}

- (BOOL)expandedHasContentForPanel:(int)panel
{
  v3 = *&panel;
  v4 = [-[THWSceneRep info](self "info")];

  return [v4 panelContentProviderHasContentForPanel:v3];
}

- (id)expandedChildInfosForPanel:(int)panel
{
  v3 = *&panel;
  v4 = [-[THWSceneRep info](self "info")];

  return [v4 panelContentProviderChildInfosForPanel:v3];
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame
{
  v4 = [(THWSceneRep *)self layout:frame.origin.x];

  [v4 invalidateFrame];
}

- (double)expandedContentMinimumZoomScale
{
  if (![-[THWSceneRep layout](self "layout")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWSceneRep *)self frameInUnscaledCanvas];
  v4 = v3;
  v6 = v5;
  [objc_msgSend(-[THWSceneRep layout](self "layout")];
  v9 = 1.0;
  if (v4 <= 0.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = v4;
  }

  if (v6 > 0.0)
  {
    v9 = v6;
  }

  return THScaleNeededToFitSizeInSize(v10, v9, v7, v8);
}

- (id)animationLayer
{
  if (![(THWSceneRep *)self isFreeTransformInProgress]|| (result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWSceneRep *)self freeTransformableHandler] ftc] freeTransformLayer]) == 0)
  {
    imageCropAnimationController = [(THWSceneRep *)self imageCropAnimationController];

    return [(THWImageCropAnimationController *)imageCropAnimationController wrapperLayer];
  }

  return result;
}

- (id)p_sceneContentLayer
{
  result = [(THWSceneController *)[(THWSceneRep *)self sceneController] sceneLayer];
  if (!result)
  {
    interactiveCanvasController = [(THWSceneRep *)self interactiveCanvasController];

    return [interactiveCanvasController layerForRep:self];
  }

  return result;
}

- (CGRect)p_contentsRectForDestination:(CGSize)destination shouldFill:(BOOL)fill
{
  if (fill)
  {
    v4 = 1.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 1.0;
  }

  else
  {
    [(THWSceneRep *)self layerFrameInScaledCanvas];
    TSDRectWithSize();
    TSDFitOrFillSizeInRect();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    TSDCenterOfRect();
    TSDRectWithCenterAndSize();
    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    CGRectIntersection(v20, v22);
    TSDSubtractPoints();
    TSDRectWithOriginAndSize();
    v5 = v16 / v13;
    v6 = v17 / v15;
    v4 = v18 / v13;
    v7 = v19 / v15;
  }

  result.size.height = v7;
  result.size.width = v4;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)shadowAnimationLayer
{
  if (![(THWSceneRep *)self isFreeTransformInProgress])
  {
    return 0;
  }

  v3 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWSceneRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v3 shadowLayer];
}

- (CGAffineTransform)shadowAnimationLayerDestinationTransform:(SEL)transform uniformTargetScale:(id)scale
{
  v7 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v7;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  if ([(THWSceneRep *)self imageCropAnimationController])
  {
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] sourceContentsRect];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] targetContentsRect];
    [-[THWSceneRep shadowAnimationLayer](self "shadowAnimationLayer")];
    TSDMultiplyRectBySize();
    v30 = v9;
    v31 = v8;
    v34 = v11;
    v35 = v10;
    TSDMultiplyRectBySize();
    v32 = v13;
    v33 = v12;
    TSDCenterOfRect();
    TSDCenterOfRect();
    TSDRectWithSize();
    TSDCenterOfRect();
    TSDSubtractPoints();
    v15 = v14;
    v17 = v16;
    TSDSubtractPoints();
    v19 = v18;
    v21 = v20;
    CGAffineTransformMakeTranslation(retstr, v15, v17);
    CGAffineTransformMakeScale(&t2, v33 / v35, v32 / v34);
    v22 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v22;
    *&t1.tx = *&retstr->tx;
    CGAffineTransformConcat(&v38, &t1, &t2);
    v23 = *&v38.c;
    *&retstr->a = *&v38.a;
    *&retstr->c = v23;
    *&retstr->tx = *&v38.tx;
    CGAffineTransformMakeTranslation(&t2, v19, v21);
    v24 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v24;
    *&t1.tx = *&retstr->tx;
    CGAffineTransformConcat(&v38, &t1, &t2);
    v25 = *&v38.c;
    *&retstr->a = *&v38.a;
    *&retstr->c = v25;
    *&retstr->tx = *&v38.tx;
  }

  v26 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWSceneRep *)self freeTransformableHandler:v30] ftc];
  if (v26)
  {
    [(THWFreeTransformController *)v26 originalShadowTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v27 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v27;
  *&t1.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&v38, &t1, &t2);
  v29 = *&v38.c;
  *&retstr->a = *&v38.a;
  *&retstr->c = v29;
  *&retstr->tx = *&v38.tx;
  return result;
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = [(THWSceneRep *)self isFreeTransformInProgress];
  if (result)
  {
    result = [(THWFreeTransformableRepGestureTargetHandler *)[(THWSceneRep *)self freeTransformableHandler] ftc];
    if (result)
    {
      result = [(CGAffineTransform *)result currentTransform];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
    }

    v7 = v9;
    *&retstr->a = v8;
    *&retstr->c = v7;
    *&retstr->tx = v10;
  }

  return result;
}

- (void)reparentAnimationLayerIfBackedByView:(id)view
{
  if (![(THWSceneRep *)self isFreeTransformInProgress])
  {

    [(THWSceneRep *)self p_reparentSceneView];
  }
}

- (id)targetLayer
{
  if ([(THWSceneRep *)self isFreeTransformInProgress]&& ![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWSceneRep *)self freeTransformableHandler] ftc] passedThreshold])
  {
    return 0;
  }

  return [(THWSceneRep *)self p_sceneContentLayer];
}

- (CGRect)ftcTargetFrame
{
  if ([(THWSceneRep *)self isFreeTransformInProgress])
  {
    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWSceneRep *)self freeTransformableHandler] ftc] completionTargetRect];
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)targetFrameForSource:(id)source
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  objc_opt_class();
  v8 = TSUDynamicCast();
  sceneController = [v8 sceneController];
  if (sceneController)
  {
    v10 = sceneController;
    [objc_msgSend(objc_msgSend(v8 "interactiveCanvasController")];
    v12 = v11;
    v14 = v13;
    [objc_msgSend(-[THWSceneRep interactiveCanvasController](self "interactiveCanvasController")];
    if ([v10 shouldFillSize:v12 withinSize:v14])
    {
      TSDFitOrFillSizeInRect();
      x = v15;
      y = v16;
      width = v17;
      height = v18;
    }
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)p_reparentSceneView
{
  view = [(THWSceneController *)[(THWSceneRep *)self sceneController] view];
  if (view)
  {
    v4 = view;
    if (![(THWSceneRep *)self imageCropAnimationController])
    {
      v7 = v4;
      [-[THWSceneRep subviewsController](self "subviewsController")];
      sceneController = [(THWSceneRep *)self sceneController];
      [(THWSceneRep *)self p_scaledViewFrameOnCanvas];
      [(THWSceneController *)sceneController setFrame:?];
      [objc_msgSend(v4 "layer")];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1B6644;
      v6[3] = &unk_45AE00;
      v6[4] = v4;
      [-[THWSceneRep interactiveCanvasController](self "interactiveCanvasController")];
    }
  }
}

- (void)reparentTargetLayerIfBackedByView:(id)view
{
  objc_opt_class();
  [view source];
  if (([TSUDynamicCast() isFreeTransformInProgress] & 1) == 0)
  {

    [(THWSceneRep *)self p_reparentSceneView];
  }
}

- (void)animationControllerDidPresent:(id)present
{
  self->_animationController = 0;

  [(THWSceneRep *)self setAnimating:0];
}

- (void)animationControllerSetupTarget:(id)target
{
  objc_opt_class();
  [target destination];
  v5 = TSUDynamicCast();

  [(THWSceneRep *)self p_setupImageCropAnimationControllerWithDestinationRep:v5];
}

- (void)animationControllerTeardownTarget:(id)target
{
  if (![(THWSceneRep *)self isFreeTransformInProgress])
  {
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] teardownWrapperLayer];

    self->_imageCropAnimationController = 0;

    [(THWSceneRep *)self p_reparentSceneView];
  }
}

- (void)animationControllerDidAddContentAnimations:(id)animations uniformTargetScale:(double)scale
{
  imageCropAnimationController = [(THWSceneRep *)self imageCropAnimationController];
  [animations animationDuration];

  [THWImageCropAnimationController addAnimationWithDuration:imageCropAnimationController targetScale:"addAnimationWithDuration:targetScale:"];
}

- (void)replaceContentsFromRep:(id)rep
{
  v7.receiver = self;
  v7.super_class = THWSceneRep;
  [(THWSceneRep *)&v7 replaceContentsFromRep:?];
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = v5;
    if (self->_sceneController)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    -[THWSceneRep setSceneController:](self, "setSceneController:", [v6 sceneController]);
    [(THWSceneController *)[(THWSceneRep *)self sceneController] setDelegate:self];
    [(THWSceneRep *)self setLoanedSceneController:0];
    [(THWSceneRep *)self setSceneTransferHappened:1];
    [v6 setSceneController:0];
    [v6 setLoanedSceneController:1];
    [objc_msgSend(rep "interactiveCanvasController")];
    [-[THWSceneRep interactiveCanvasController](self "interactiveCanvasController")];
  }
}

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize
{
  height = toSize.height;
  width = toSize.width;
  v6 = size.height;
  v7 = size.width;
  yFovFixed = [(THWSceneController *)[(THWSceneRep *)self sceneController] yFovFixed];
  result = height / v6;
  if ((yFovFixed & 1) == 0)
  {
    return width / v7;
  }

  return result;
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedWillRotateTransitionFromSize:(CGSize)size toSize:(CGSize)toSize
{
  height = toSize.height;
  width = toSize.width;
  v6 = size.height;
  v7 = size.width;
  [(THWSceneController *)[(THWSceneRep *)self sceneController] setDisableFrameUpdate:1];
  [(THWSceneController *)[(THWSceneRep *)self sceneController] frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(THWSceneRep *)self scaleForCenteredAutoRotateFromSize:v7 toSize:v6, width, height];
  if ([(THWSceneController *)[(THWSceneRep *)self sceneController] yFovFixed])
  {
    if (v7 >= width)
    {
      goto LABEL_6;
    }
  }

  else if (v6 >= height)
  {
    goto LABEL_6;
  }

  TSDCenterOfRect();
  TSDRectWithCenterAndSize();
  v10 = v17;
  v12 = v18;
  v14 = v19;
  v16 = v20;
LABEL_6:
  sceneController = [(THWSceneRep *)self sceneController];

  [(THWSceneController *)sceneController setFrame:1 overrideDisabled:v10, v12, v14, v16];
}

- (void)expandedDidRotateTransitionToSize:(CGSize)size
{
  if ([(THWSceneRep *)self isFreeTransformInProgress:size.width])
  {

    [(THWSceneRep *)self setSceneDidReceiveRotationLayoutDuringFreeTransform:1];
  }

  else
  {
    [(THWSceneController *)[(THWSceneRep *)self sceneController] setDisableFrameUpdate:0];
    layout = [(THWSceneRep *)self layout];

    [layout invalidateFrame];
  }
}

- (CGSize)p_targetExpandedSize
{
  v2 = [-[THWSceneRep hostICC](self "hostICC")];
  if (v2)
  {

    [v2 widgetHostExpandedSize];
  }

  else
  {
    v3 = 100.0;
    v4 = 100.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)p_setupImageCropAnimationControllerWithDestinationRep:(id)rep
{
  p_sceneContentLayer = [(THWSceneRep *)self p_sceneContentLayer];
  [objc_msgSend(-[THWSceneRep interactiveCanvasController](self "interactiveCanvasController")];
  v7 = v6;
  v9 = v8;
  if (rep)
  {
    [rep layerFrameInScaledCanvas];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    [(THWSceneRep *)self p_targetExpandedSize];
    v11 = v14;
    v13 = v15;
  }

  v16 = [(THWSceneController *)[(THWSceneRep *)self sceneController] shouldFillSize:v7 withinSize:v9, v11, v13];
  if ([(THWSceneRep *)self imageCropAnimationController])
  {
    if (rep)
    {
      v17 = rep == self;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17;
    if (!(v18 | v16))
    {
      goto LABEL_12;
    }
  }

  else if (!v16)
  {
LABEL_12:
    [-[THWSceneController view](-[THWSceneRep sceneController](self "sceneController")];
    TSDSizeExpandedToMatchAspectRatio();
    TSDCenterOfRect();
    TSDRectWithCenterAndSize();
    TSDRoundedRectForMainScreen();
    v7 = v19;
    v9 = v20;
    [(THWSceneController *)[(THWSceneRep *)self sceneController] setFrame:v21, v22, v19, v20];
  }

  if ([(THWSceneRep *)self imageCropAnimationController])
  {
    if (rep)
    {
      if (rep == self)
      {
        [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] sourceContentsRect];
        [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setTargetContentsRect:v57, v58, v59, v60];
        [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] sourceCornerRadius];
        v62 = v61;
        imageCropAnimationController = [(THWSceneRep *)self imageCropAnimationController];
        v40 = v62;
      }

      else
      {
        [(THWSceneRep *)self p_contentsRectForDestination:v16 shouldFill:v11, v13];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        [rep p_contentsRectForDestination:v16 ^ 1 shouldFill:{v7, v9}];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setSourceContentsRect:v24, v26, v28, v30];
        [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setTargetContentsRect:v32, v34, v36, v38];
        imageCropAnimationController = [(THWSceneRep *)self imageCropAnimationController];
        v40 = 0.0;
      }

      [(THWImageCropAnimationController *)imageCropAnimationController setTargetCornerRadius:v40];
    }
  }

  else
  {
    [(THWSceneRep *)self p_contentsRectForDestination:v16 shouldFill:v11, v13];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    if (rep)
    {
      [rep p_contentsRectForDestination:v16 ^ 1 shouldFill:{v7, v9}];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
    }

    else
    {
      v54 = 1.0;
      v50 = 0.0;
      v52 = 0.0;
      v56 = 1.0;
    }

    self->_imageCropAnimationController = [[THWImageCropAnimationController alloc] initWithImageContentLayer:p_sceneContentLayer];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setSourceContentsRect:v42, v44, v46, v48];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setSourceCornerRadius:0.0];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setTargetContentsRect:v50, v52, v54, v56];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setTargetCornerRadius:0.0];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setCropDurationScale:0.5];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setCornerRadiusDurationScale:0.5];
    imageCropAnimationController2 = [(THWSceneRep *)self imageCropAnimationController];

    [(THWImageCropAnimationController *)imageCropAnimationController2 setupWrapperLayer];
  }
}

@end
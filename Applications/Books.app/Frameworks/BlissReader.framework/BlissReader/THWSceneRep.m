@interface THWSceneRep
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)expandedHasContentForPanel:(int)a3;
- (BOOL)handleGesture:(id)a3;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)wantsPressAction;
- (CGAffineTransform)freeTransform;
- (CGAffineTransform)shadowAnimationLayerDestinationTransform:(SEL)a3 uniformTargetScale:(id)a4;
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (CGRect)ftcTargetFrame;
- (CGRect)p_contentsRectForDestination:(CGSize)a3 shouldFill:(BOOL)a4;
- (CGRect)p_scaledViewFrameOnCanvas;
- (CGRect)rectForCompletion;
- (CGRect)targetFrameForSource:(id)a3;
- (CGSize)p_targetExpandedSize;
- (THAnimationController)animationController;
- (THWSceneRep)initWithLayout:(id)a3 canvas:(id)a4;
- (double)expandedContentMinimumZoomScale;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (double)screenScaleForSceneController:(id)a3;
- (id)animationLayer;
- (id)backgroundColorForSceneController:(id)a3;
- (id)documentRootForSceneController:(id)a3;
- (id)expandedChildInfosForPanel:(int)a3;
- (id)p_sceneContentLayer;
- (id)placeholderLayerForSceneController:(id)a3;
- (id)shadowAnimationLayer;
- (id)shadowPath;
- (id)targetLayer;
- (int)pressableAction;
- (void)addChildViewsToArray:(id)a3;
- (void)animationControllerDidAddContentAnimations:(id)a3 uniformTargetScale:(double)a4;
- (void)animationControllerDidPresent:(id)a3;
- (void)animationControllerSetupTarget:(id)a3;
- (void)animationControllerTeardownTarget:(id)a3;
- (void)canvasDidBeginFreeTransform;
- (void)canvasDidEndFreeTransform;
- (void)dealloc;
- (void)didAddChildView:(id)a3;
- (void)didPresentExpanded;
- (void)expandedDidAppearPreAnimation;
- (void)expandedDidRotateTransitionToSize:(CGSize)a3;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4;
- (void)expandedWillRotateTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (void)freeTransformDidEnd;
- (void)freeTransformWillBegin;
- (void)handleNotificationVantageDidChange:(id)a3;
- (void)handleSingleTapInSceneForSceneController:(id)a3;
- (void)p_reparentSceneView;
- (void)p_setupImageCropAnimationControllerWithDestinationRep:(id)a3;
- (void)p_setupSceneControllerIfNecessary:(BOOL)a3;
- (void)p_updateInteractiveMode;
- (void)reparentAnimationLayerIfBackedByView:(id)a3;
- (void)reparentTargetLayerIfBackedByView:(id)a3;
- (void)replaceContentsFromRep:(id)a3;
- (void)sceneDidLoadForSceneController:(id)a3;
- (void)setChildReps:(id)a3;
- (void)updateChildrenFromLayout;
- (void)viewScrollWillChange;
- (void)viewScrollingEnded;
- (void)willBeRemoved;
- (void)willBeginHandlingGesture:(id)a3;
- (void)willRemoveChildView:(id)a3;
@end

@implementation THWSceneRep

- (THWSceneRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v8.receiver = self;
  v8.super_class = THWSceneRep;
  v4 = [(THWSceneRep *)&v8 initWithLayout:a3 canvas:a4];
  if (v4)
  {
    objc_opt_class();
    [(THWSceneRep *)v4 interactiveCanvasController];
    v5 = [TSUDynamicCast() pressHandlerForPressableReps];
    if (v5)
    {
      v4->_pressableHandler = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:v4 pressHandler:v5];
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

- (void)p_setupSceneControllerIfNecessary:(BOOL)a3
{
  if (self->_sceneController)
  {
    return;
  }

  v5 = [THWSceneController alloc];
  v6 = [(THWSceneRep *)self info];
  [(THWSceneRep *)self p_scaledViewFrameOnCanvas];
  sceneController = [(THWSceneController *)v5 initWithSceneInfo:v6 frame:self delegate:?];
  self->_sceneController = sceneController;
  if (a3)
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
  v2 = [(THWSceneRep *)self sceneController];

  [(THWSceneController *)v2 pauseIdleAnimation];
}

- (void)canvasDidEndFreeTransform
{
  if ([(THWSceneRep *)self isVisibleOnCanvas])
  {
    v3 = [(THWSceneRep *)self sceneController];

    [(THWSceneController *)v3 resumeIdleAnimationIfNecessary];
  }
}

- (void)handleNotificationVantageDidChange:(id)a3
{
  v4 = [objc_msgSend(a3 "userInfo")];
  if (([v4 isEqualToString:@"THVantageChangeReasonTransitionToGlossary"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"THVantageChangeReasonTransitionToNotesVC"))
  {
    v5 = [(THWSceneRep *)self sceneController];

    [(THWSceneController *)v5 pauseIdleAnimation];
  }
}

- (id)documentRootForSceneController:(id)a3
{
  v3 = [(THWSceneRep *)self interactiveCanvasController];

  return [v3 documentRoot];
}

- (id)backgroundColorForSceneController:(id)a3
{
  v3 = [(THWSceneRep *)self info];

  return [v3 stageColor];
}

- (id)placeholderLayerForSceneController:(id)a3
{
  v4 = [(THWSceneRep *)self interactiveCanvasController];
  v5 = [-[THWSceneRep interactiveCanvasController](self "interactiveCanvasController")];

  return [v4 layerForRep:v5];
}

- (double)screenScaleForSceneController:(id)a3
{
  v3 = +[UIScreen mainScreen];

  [(UIScreen *)v3 scale];
  return result;
}

- (void)handleSingleTapInSceneForSceneController:(id)a3
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
    v4 = [(THWSceneRep *)self pressableHandler];

    [(THWPressableRepGestureTargetHandler *)v4 spoofGesture];
  }

  else
  {
    [-[THWSceneRep interactiveCanvasController](self "interactiveCanvasController")];
    v5 = TSUProtocolCast();

    [v5 handleSingleTap];
  }
}

- (void)sceneDidLoadForSceneController:(id)a3
{
  if (![(THWSceneRep *)self isCurrentlyScrolling])
  {
    v4 = [(THWSceneRep *)self interactiveCanvasController];

    [v4 invalidateReps];
  }
}

- (void)setChildReps:(id)a3
{
  childReps = self->_childReps;
  if (childReps != a3)
  {
    [(NSArray *)childReps makeObjectsPerformSelector:"setParentRep:" withObject:0];

    v6 = a3;
    self->_childReps = v6;

    [(NSArray *)v6 makeObjectsPerformSelector:"setParentRep:" withObject:self];
  }
}

- (void)addChildViewsToArray:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THWSceneRep *)self isVisibleOnCanvas];
  v6 = [(THWSceneRep *)self sceneController];
  if (!v5)
  {
    v9 = [(THWSceneController *)v6 view];
    if (!v9)
    {
      goto LABEL_13;
    }

    v7 = v9;
    v10 = [(THWSceneRep *)self sceneController];
    [(THWSceneRep *)self p_scaledViewFrameOnCanvas];
    [(THWSceneController *)v10 setFrame:?];
    goto LABEL_12;
  }

  if (v6)
  {
    if (![(THWSceneRep *)self isCurrentlyScrolling]&& ![(THWSceneController *)[(THWSceneRep *)self sceneController] view])
    {
      [(THWSceneController *)[(THWSceneRep *)self sceneController] setupSceneView];
    }

    v7 = [(THWSceneController *)[(THWSceneRep *)self sceneController] view];
    v8 = [(THWSceneRep *)self sceneController];
    [(THWSceneRep *)self p_scaledViewFrameOnCanvas];
    [(THWSceneController *)v8 setFrame:?];
    if (v7)
    {
LABEL_12:
      [a3 addObject:v7];
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

- (void)didAddChildView:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (a3 && [(THWSceneController *)[(THWSceneRep *)self sceneController] view]== a3)
  {
    v5 = [(THWSceneRep *)self sceneController];

    [(THWSceneController *)v5 didAddSceneView];
  }
}

- (void)willRemoveChildView:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (a3 && ![(THWSceneRep *)self loanedSceneController]&& self->_sceneController && [(THWSceneController *)[(THWSceneRep *)self sceneController] view]== a3)
  {
    [(THWSceneController *)self->_sceneController stopAnimation];

    [a3 removeFromSuperview];
  }
}

- (void)p_updateInteractiveMode
{
  [(THWSceneController *)[(THWSceneRep *)self sceneController] setUserInteractionEnabled:1];
  v3 = [(THWPressableRepGestureTargetHandler *)[(THWSceneRep *)self pressableHandler] widgetInteractionDisabledOnPage];
  v4 = [(THWSceneRep *)self sceneController];
  if (v3)
  {

    [(THWSceneController *)v4 pauseIdleAnimationForRotation];
  }

  else
  {

    [(THWSceneController *)v4 resumeIdleAnimationIfNecessary];
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

- (BOOL)canHandleGesture:(id)a3
{
  if (![(THWSceneRep *)self animating]&& [(THWPressableRepGestureTargetHandler *)[(THWSceneRep *)self pressableHandler] canHandleGesture:a3])
  {
    return 1;
  }

  v6 = [(THWSceneRep *)self freeTransformableHandler];

  return [(THWFreeTransformableRepGestureTargetHandler *)v6 canHandleGesture:a3];
}

- (BOOL)handleGesture:(id)a3
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWSceneRep *)self pressableHandler] handleGesture:a3])
  {
    return 1;
  }

  v6 = [(THWSceneRep *)self freeTransformableHandler];

  return [(THWFreeTransformableRepGestureTargetHandler *)v6 handleGesture:a3];
}

- (void)willBeginHandlingGesture:(id)a3
{
  v5 = [a3 gestureKind];
  if (v5 == TSDFreeTransform)
  {
    v6 = [(THWSceneRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)v6 willBeginHandlingGesture:a3];
  }
}

- (BOOL)isExpanded
{
  v2 = [(THWSceneRep *)self layout];

  return [v2 isExpanded];
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
    v4 = [v3 layout];

    [v4 invalidateFrame];
  }
}

- (CGRect)rectForCompletion
{
  v2 = [(THWSceneRep *)self layout];

  [v2 frameInParent];
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
  v2 = [(THWSceneRep *)self sceneController];
  if (v2)
  {
    v3 = v2;
    if (![(THWSceneController *)v2 hasRendered])
    {
      v4 = [(THWSceneController *)v3 view];

      [v4 setNeedsDisplay];
    }
  }
}

- (void)didPresentExpanded
{
  v2 = [(THWSceneRep *)self sceneController];

  [(THWSceneController *)v2 setUserInteractionEnabled:1];
}

- (BOOL)expandedHasContentForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [-[THWSceneRep info](self "info")];

  return [v4 panelContentProviderHasContentForPanel:v3];
}

- (id)expandedChildInfosForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [-[THWSceneRep info](self "info")];

  return [v4 panelContentProviderChildInfosForPanel:v3];
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4
{
  v4 = [(THWSceneRep *)self layout:a3.origin.x];

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
    v4 = [(THWSceneRep *)self imageCropAnimationController];

    return [(THWImageCropAnimationController *)v4 wrapperLayer];
  }

  return result;
}

- (id)p_sceneContentLayer
{
  result = [(THWSceneController *)[(THWSceneRep *)self sceneController] sceneLayer];
  if (!result)
  {
    v4 = [(THWSceneRep *)self interactiveCanvasController];

    return [v4 layerForRep:self];
  }

  return result;
}

- (CGRect)p_contentsRectForDestination:(CGSize)a3 shouldFill:(BOOL)a4
{
  if (a4)
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

- (CGAffineTransform)shadowAnimationLayerDestinationTransform:(SEL)a3 uniformTargetScale:(id)a4
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

- (void)reparentAnimationLayerIfBackedByView:(id)a3
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

- (CGRect)targetFrameForSource:(id)a3
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  objc_opt_class();
  v8 = TSUDynamicCast();
  v9 = [v8 sceneController];
  if (v9)
  {
    v10 = v9;
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
  v3 = [(THWSceneController *)[(THWSceneRep *)self sceneController] view];
  if (v3)
  {
    v4 = v3;
    if (![(THWSceneRep *)self imageCropAnimationController])
    {
      v7 = v4;
      [-[THWSceneRep subviewsController](self "subviewsController")];
      v5 = [(THWSceneRep *)self sceneController];
      [(THWSceneRep *)self p_scaledViewFrameOnCanvas];
      [(THWSceneController *)v5 setFrame:?];
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

- (void)reparentTargetLayerIfBackedByView:(id)a3
{
  objc_opt_class();
  [a3 source];
  if (([TSUDynamicCast() isFreeTransformInProgress] & 1) == 0)
  {

    [(THWSceneRep *)self p_reparentSceneView];
  }
}

- (void)animationControllerDidPresent:(id)a3
{
  self->_animationController = 0;

  [(THWSceneRep *)self setAnimating:0];
}

- (void)animationControllerSetupTarget:(id)a3
{
  objc_opt_class();
  [a3 destination];
  v5 = TSUDynamicCast();

  [(THWSceneRep *)self p_setupImageCropAnimationControllerWithDestinationRep:v5];
}

- (void)animationControllerTeardownTarget:(id)a3
{
  if (![(THWSceneRep *)self isFreeTransformInProgress])
  {
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] teardownWrapperLayer];

    self->_imageCropAnimationController = 0;

    [(THWSceneRep *)self p_reparentSceneView];
  }
}

- (void)animationControllerDidAddContentAnimations:(id)a3 uniformTargetScale:(double)a4
{
  v5 = [(THWSceneRep *)self imageCropAnimationController];
  [a3 animationDuration];

  [THWImageCropAnimationController addAnimationWithDuration:v5 targetScale:"addAnimationWithDuration:targetScale:"];
}

- (void)replaceContentsFromRep:(id)a3
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
    [objc_msgSend(a3 "interactiveCanvasController")];
    [-[THWSceneRep interactiveCanvasController](self "interactiveCanvasController")];
  }
}

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v8 = [(THWSceneController *)[(THWSceneRep *)self sceneController] yFovFixed];
  result = height / v6;
  if ((v8 & 1) == 0)
  {
    return width / v7;
  }

  return result;
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedWillRotateTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
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
  v21 = [(THWSceneRep *)self sceneController];

  [(THWSceneController *)v21 setFrame:1 overrideDisabled:v10, v12, v14, v16];
}

- (void)expandedDidRotateTransitionToSize:(CGSize)a3
{
  if ([(THWSceneRep *)self isFreeTransformInProgress:a3.width])
  {

    [(THWSceneRep *)self setSceneDidReceiveRotationLayoutDuringFreeTransform:1];
  }

  else
  {
    [(THWSceneController *)[(THWSceneRep *)self sceneController] setDisableFrameUpdate:0];
    v4 = [(THWSceneRep *)self layout];

    [v4 invalidateFrame];
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

- (void)p_setupImageCropAnimationControllerWithDestinationRep:(id)a3
{
  v5 = [(THWSceneRep *)self p_sceneContentLayer];
  [objc_msgSend(-[THWSceneRep interactiveCanvasController](self "interactiveCanvasController")];
  v7 = v6;
  v9 = v8;
  if (a3)
  {
    [a3 layerFrameInScaledCanvas];
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
    if (a3)
    {
      v17 = a3 == self;
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
    if (a3)
    {
      if (a3 == self)
      {
        [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] sourceContentsRect];
        [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setTargetContentsRect:v57, v58, v59, v60];
        [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] sourceCornerRadius];
        v62 = v61;
        v39 = [(THWSceneRep *)self imageCropAnimationController];
        v40 = v62;
      }

      else
      {
        [(THWSceneRep *)self p_contentsRectForDestination:v16 shouldFill:v11, v13];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        [a3 p_contentsRectForDestination:v16 ^ 1 shouldFill:{v7, v9}];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setSourceContentsRect:v24, v26, v28, v30];
        [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setTargetContentsRect:v32, v34, v36, v38];
        v39 = [(THWSceneRep *)self imageCropAnimationController];
        v40 = 0.0;
      }

      [(THWImageCropAnimationController *)v39 setTargetCornerRadius:v40];
    }
  }

  else
  {
    [(THWSceneRep *)self p_contentsRectForDestination:v16 shouldFill:v11, v13];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    if (a3)
    {
      [a3 p_contentsRectForDestination:v16 ^ 1 shouldFill:{v7, v9}];
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

    self->_imageCropAnimationController = [[THWImageCropAnimationController alloc] initWithImageContentLayer:v5];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setSourceContentsRect:v42, v44, v46, v48];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setSourceCornerRadius:0.0];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setTargetContentsRect:v50, v52, v54, v56];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setTargetCornerRadius:0.0];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setCropDurationScale:0.5];
    [(THWImageCropAnimationController *)[(THWSceneRep *)self imageCropAnimationController] setCornerRadiusDurationScale:0.5];
    v63 = [(THWSceneRep *)self imageCropAnimationController];

    [(THWImageCropAnimationController *)v63 setupWrapperLayer];
  }
}

@end
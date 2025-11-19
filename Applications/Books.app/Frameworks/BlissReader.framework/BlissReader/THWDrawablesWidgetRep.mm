@interface THWDrawablesWidgetRep
- (BOOL)canExpand;
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)canHandleGesture:(id)a3 forChildRep:(id)a4;
- (BOOL)expandedHasContentForPanel:(int)a3;
- (BOOL)freeTransformMayBeginOverRep:(id)a3;
- (BOOL)freeTransformWantsShadow;
- (BOOL)handleGesture:(id)a3;
- (BOOL)isFreeTransformInProgress;
- (BOOL)meetsStageDimensionRequirementForExpanded;
- (BOOL)pIsChildInfo:(id)a3 inContainerInfo:(id)a4;
- (BOOL)p_expandedStageDrawableWantsFreeTransform;
- (BOOL)p_isExpanded;
- (BOOL)p_isExpanding;
- (BOOL)p_isFreeTransformInProgressOnSourceRep;
- (BOOL)p_shouldSuppressRenderingDuringExpansion;
- (BOOL)shouldFadeOutAnimationLayer:(id)a3;
- (BOOL)shouldRecognizePressOnRep:(id)a3;
- (BOOL)wantsPressAction;
- (BOOL)wantsPressAnimation;
- (CALayer)pressableAnimationLayer;
- (CALayer)pressableAnimationShadowLayer;
- (CGAffineTransform)freeTransform;
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (CGRect)expandedFrameInUnscaledCanvasSize;
- (CGRect)ftcTargetFrame;
- (CGRect)pressableNaturalBounds;
- (CGRect)rectForCompletion;
- (THAnimationController)animationController;
- (THWDrawablesWidgetRep)initWithLayout:(id)a3 canvas:(id)a4;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (id)expandedChildInfosForPanel:(int)a3;
- (id)expandedContentDrawableToPresent;
- (id)expandedPanel:(int)a3 primaryTargetForGesture:(id)a4;
- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5;
- (id)p_animationLayer;
- (id)p_repToAnimate;
- (id)p_setupContainerLayer;
- (id)shadowAnimationLayer;
- (id)sourceReflectionLayer;
- (id)sourceShadowLayer;
- (id)styledRep;
- (id)targetLayer;
- (id)targetReflectionLayer;
- (id)targetShadowLayer;
- (int)expandedAppearance;
- (int)expandedAppearanceForPanel:(int)a3;
- (int)pressableAction;
- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5;
- (void)dealloc;
- (void)didPresentExpanded;
- (void)expandedDidRotateTransitionToSize:(CGSize)a3;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4;
- (void)expandedWillPresentWithController:(id)a3;
- (void)expandedWillTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (void)freeTransformWillBegin;
- (void)p_addChildRepsToArray:(id)a3 inContainer:(id)a4;
- (void)p_suppressRendering:(BOOL)a3;
- (void)p_togglePanelDescriptionExpanded;
- (void)willBeginHandlingGesture:(id)a3;
@end

@implementation THWDrawablesWidgetRep

- (THWDrawablesWidgetRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v10.receiver = self;
  v10.super_class = THWDrawablesWidgetRep;
  v4 = [(THWDrawablesWidgetRep *)&v10 initWithLayout:a3 canvas:a4];
  if (v4)
  {
    objc_opt_class();
    [(THWDrawablesWidgetRep *)v4 interactiveCanvasController];
    v5 = [TSUDynamicCast() pressHandlerForPressableReps];
    if (v5)
    {
      [(THWDrawablesWidgetRep *)v4 setPressableHandler:[[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:v4 pressHandler:v5]];
    }

    v6 = [(THWDrawablesWidgetRep *)v4 info];
    if (([-[THWDrawablesWidgetRep layout](v4 "layout")] & 1) != 0 || !objc_msgSend(v6, "isExpandedOnly") || -[THWDrawablesWidgetRep p_expandedStageDrawableWantsFreeTransform](v4, "p_expandedStageDrawableWantsFreeTransform"))
    {
      v4->mFreeTransformableHandler = -[THWFreeTransformableRepGestureTargetHandler initWithFreeTransformableRep:handler:]([THWFreeTransformableRepGestureTargetHandler alloc], "initWithFreeTransformableRep:handler:", v4, [objc_msgSend(-[THWDrawablesWidgetRep hostICC](v4 "hostICC")]);
    }

    v7 = [-[THWDrawablesWidgetRep layout](v4 "layout")];
    v8 = [v7 repClass];
    if (objc_opt_respondsToSelector())
    {
      -[THWDrawablesWidgetRep setShouldUseContainerForAnimation:](v4, "setShouldUseContainerForAnimation:", [v8 expandableUseContainerForAnimations:v7]);
      if ([(THWDrawablesWidgetRep *)v4 shouldUseContainerForAnimation])
      {
        objc_opt_class();
        -[THWDrawablesWidgetRep setAnimationContainerProvidesShadowForAnimation:](v4, "setAnimationContainerProvidesShadowForAnimation:", [objc_msgSend(TSUDynamicCast() "shadow")]);
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  self->mStageChildReps = 0;
  v3.receiver = self;
  v3.super_class = THWDrawablesWidgetRep;
  [(THWDrawablesWidgetRep *)&v3 dealloc];
}

- (BOOL)p_isExpanded
{
  v2 = [(THWDrawablesWidgetRep *)self layout];

  return [v2 isExpanded];
}

- (BOOL)p_isFreeTransformInProgressOnSourceRep
{
  objc_opt_class();
  [(THWExpandedRepController *)self->_expandedRepController expandedRepSourceRep];
  v3 = [objc_msgSend(TSUDynamicCast() "freeTransformableHandler")];

  return [v3 isFreeTransformInProgress];
}

- (BOOL)p_shouldSuppressRenderingDuringExpansion
{
  if ([(THWDrawablesWidgetRep *)self shouldUseContainerForAnimation])
  {
    objc_opt_class();
    [-[THWDrawablesWidgetRep layout](self "layout")];
    v3 = TSUDynamicCast();
    if ([v3 stroke])
    {
      if (([objc_msgSend(v3 "stroke")] & 1) == 0)
      {
        [objc_msgSend(v3 "stroke")];
        if (v4 > 1.0)
        {
          return 0;
        }
      }
    }
  }

  if (![(THWDrawablesWidgetRep *)self p_isExpanding])
  {
    return 0;
  }

  return [(THWDrawablesWidgetRep *)self p_isFreeTransformInProgressOnSourceRep];
}

- (BOOL)p_isExpanding
{
  expandedRepController = self->_expandedRepController;
  if (expandedRepController)
  {
    LOBYTE(expandedRepController) = [(THWExpandedRepController *)expandedRepController expandedRepControllerState]== 1;
  }

  return expandedRepController;
}

- (void)p_suppressRendering:(BOOL)a3
{
  v3 = a3;
  v4 = [(THWDrawablesWidgetRep *)self interactiveCanvasController];

  [v4 setShouldSuppressRendering:v3 animated:0];
}

- (id)p_repToAnimate
{
  if (![-[THWDrawablesWidgetRep layout](self "layout")] || (result = objc_msgSend(-[THWDrawablesWidgetRep interactiveCanvasController](self, "interactiveCanvasController"), "repForInfo:", objc_msgSend(-[THWDrawablesWidgetRep layout](self, "layout"), "actualStageDrawable"))) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return self;
  }

  return result;
}

- (BOOL)p_expandedStageDrawableWantsFreeTransform
{
  if (![-[THWDrawablesWidgetRep info](self "info")])
  {
    return 0;
  }

  v3 = [objc_msgSend(-[THWDrawablesWidgetRep info](self "info")];
  if (![v3 conformsToProtocol:&OBJC_PROTOCOL___THWExpandedRep] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = [-[THWDrawablesWidgetRep info](self "info")];

  return [v3 expandedAllowsFreeTransformForInfo:v4];
}

- (BOOL)canHandleGesture:(id)a3 forChildRep:(id)a4
{
  v7 = [a3 gestureKind];
  if (v7 == TSDFreeTransform)
  {
    return 1;
  }

  v8 = [(THWDrawablesWidgetRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v8 canHandleGesture:a3 forChildRep:a4];
}

- (id)p_setupContainerLayer
{
  v3 = [(THWDrawablesWidgetRep *)self p_repToAnimate];
  v4 = [-[THWDrawablesWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
  v5 = [-[THWDrawablesWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
  [v5 setAnchorPoint:{0.5, 0.5}];
  [v4 frame];
  TSDCenterOfRect();
  [v5 setPosition:?];
  [v4 frame];
  v7 = v6;
  [v4 frame];
  [v5 setBounds:{0.0, 0.0, v7}];
  [v4 frame];
  v9 = -v8;
  [v4 frame];
  CATransform3DMakeTranslation(&v13, v9, -v10, 0.0);
  v12 = v13;
  [v5 setSublayerTransform:&v12];
  return v5;
}

- (CALayer)pressableAnimationLayer
{
  if ([(THWDrawablesWidgetRep *)self shouldUseContainerForAnimation])
  {

    return [(THWDrawablesWidgetRep *)self p_setupContainerLayer];
  }

  else
  {
    v3 = [(THWDrawablesWidgetRep *)self interactiveCanvasController];
    v4 = [(THWDrawablesWidgetRep *)self p_repToAnimate];

    return [v3 layerForRep:v4];
  }
}

- (CALayer)pressableAnimationShadowLayer
{
  if ([(THWDrawablesWidgetRep *)self shouldUseContainerForAnimation])
  {
    return 0;
  }

  return [(THWDrawablesWidgetRep *)self sourceShadowLayer];
}

- (int)pressableAction
{
  v3.receiver = self;
  v3.super_class = THWDrawablesWidgetRep;
  return [(THWDrawablesWidgetRep *)&v3 pressableAction];
}

- (BOOL)wantsPressAnimation
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]|| ![(THWDrawablesWidgetRep *)self meetsStageDimensionRequirementForExpanded])
  {
    return 0;
  }

  v3 = [-[THWDrawablesWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
  v4 = [(THWDrawablesWidgetRep *)self pressableAction];

  return [v3 allowsAction:v4];
}

- (BOOL)wantsPressAction
{
  v3 = [(THWDrawablesWidgetRep *)self meetsStageDimensionRequirementForExpanded];
  if (v3)
  {
    v4 = [-[THWDrawablesWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
    v5 = [(THWDrawablesWidgetRep *)self pressableAction];

    LOBYTE(v3) = [v4 allowsAction:v5];
  }

  return v3;
}

- (BOOL)pIsChildInfo:(id)a3 inContainerInfo:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  do
  {
    v6 = v5 == a4;
    v7 = [v5 parentInfo];
    if (!v7)
    {
      break;
    }

    v8 = v5 == a4;
    v5 = v7;
  }

  while (!v8);
  return v6;
}

- (BOOL)shouldRecognizePressOnRep:(id)a3
{
  v5 = [a3 info];
  if (v5 == [objc_msgSend(-[THWDrawablesWidgetRep info](self "info")])
  {
    [objc_msgSend(-[THWDrawablesWidgetRep info](self "info")];
    v7 = v6;
    v9 = v8;
    [objc_msgSend(objc_msgSend(objc_msgSend(-[THWDrawablesWidgetRep info](self "info")];
    if (v7 == v11 && v9 == v10)
    {
      [objc_msgSend(objc_msgSend(objc_msgSend(-[THWDrawablesWidgetRep info](self "info")];
      v15 = v14 == CGPointZero.x && v13 == CGPointZero.y;
      if (v15 && ([objc_msgSend(-[THWDrawablesWidgetRep interactiveCanvasController](self "interactiveCanvasController")] & 1) != 0)
      {
        return 1;
      }
    }
  }

  v16 = [a3 info];
  if (v16 == [-[THWDrawablesWidgetRep layout](self "layout")])
  {
    return 1;
  }

  v17 = [a3 info];
  [-[THWDrawablesWidgetRep layout](self "layout")];
  v18 = TSUProtocolCast();

  return [(THWDrawablesWidgetRep *)self pIsChildInfo:v17 inContainerInfo:v18];
}

- (CGRect)pressableNaturalBounds
{
  v2 = [(THWDrawablesWidgetRep *)self layout];

  [v2 stageFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)p_animationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]|| (result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc] freeTransformLayer]) == 0)
  {

    return [(THWDrawablesWidgetRep *)self pressableAnimationLayer];
  }

  return result;
}

- (id)shadowAnimationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    return 0;
  }

  v3 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v3 shadowLayer];
}

- (id)sourceShadowLayer
{
  if ([(THWDrawablesWidgetRep *)self shouldUseContainerForAnimation])
  {
    return 0;
  }

  v4 = [(THWDrawablesWidgetRep *)self styledRep];

  return [v4 shadowLayer];
}

- (id)sourceReflectionLayer
{
  if ([(THWDrawablesWidgetRep *)self shouldUseContainerForAnimation])
  {
    return 0;
  }

  v4 = [(THWDrawablesWidgetRep *)self styledRep];

  return [v4 reflectionLayer];
}

- (BOOL)shouldFadeOutAnimationLayer:(id)a3
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (-[THWDrawablesWidgetRep p_shouldSuppressRenderingDuringExpansion](self, "p_shouldSuppressRenderingDuringExpansion") || ([v5 p_shouldSuppressRenderingDuringExpansion] & 1) != 0 || -[THWDrawablesWidgetRep p_isExpanded](self, "p_isExpanded"))
  {
    goto LABEL_4;
  }

  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]|| (v6 = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc] passedThreshold]))
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([a3 shouldForceDisableCrossfadeFromSource:self])
    {
LABEL_4:
      LOBYTE(v6) = 0;
      return v6;
    }

    LOBYTE(v6) = 1;
  }

  return v6;
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress];
  if (result)
  {
    result = [(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc];
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

- (id)targetLayer
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]&& ![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc] passedThreshold])
  {
    return 0;
  }

  return [(THWDrawablesWidgetRep *)self p_animationLayer];
}

- (CGRect)ftcTargetFrame
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc] completionTargetRect];
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

- (id)targetShadowLayer
{
  if ([(THWDrawablesWidgetRep *)self shouldUseContainerForAnimation])
  {
    return 0;
  }

  v4 = [(THWDrawablesWidgetRep *)self styledRep];

  return [v4 shadowLayer];
}

- (id)targetReflectionLayer
{
  if ([(THWDrawablesWidgetRep *)self shouldUseContainerForAnimation])
  {
    return 0;
  }

  v4 = [(THWDrawablesWidgetRep *)self styledRep];

  return [v4 reflectionLayer];
}

- (id)expandedContentDrawableToPresent
{
  v3 = [-[THWDrawablesWidgetRep info](self "info")];
  v4 = [(THWDrawablesWidgetRep *)self info];
  if (v3)
  {
    v5 = [v4 expandedStageDrawable];
  }

  else
  {
    v5 = [v4 stageDrawable];
  }

  v6 = [v5 repClass];
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___THWExpandedRep] && ((objc_opt_respondsToSelector() & 1) == 0 || objc_msgSend(v6, "expandedAllowsPresentationInExpandedForInfo:isReflowablePresentation:", objc_msgSend(-[THWDrawablesWidgetRep info](self, "info"), "expandedStageDrawable"), objc_msgSend(-[THWDrawablesWidgetRep layout](self, "layout"), "isReflowablePresentation"))))
  {
    v7 = [-[THWDrawablesWidgetRep info](self "info")];
    v8 = [(THWDrawablesWidgetRep *)self info];
    if (v7)
    {

      return [v8 expandedStageDrawable];
    }

    else
    {

      return [v8 stageDrawable];
    }
  }

  else
  {

    return [(THWDrawablesWidgetRep *)self info];
  }
}

- (void)didPresentExpanded
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(THWDrawablesWidgetRep *)self childReps:0];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = TSUProtocolCast();
        if (objc_opt_respondsToSelector())
        {
          [v8 didPresentExpanded];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [-[THWDrawablesWidgetRep layout](self "layout")];
  [(THWDrawablesWidgetRep *)self p_suppressRendering:0];
  [-[THWDrawablesWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
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

- (BOOL)canExpand
{
  v2 = [-[THWDrawablesWidgetRep interactiveCanvasController](self "interactiveCanvasController")];

  return [v2 canExpand];
}

- (void)expandedWillPresentWithController:(id)a3
{
  self->_expandedRepController = a3;
  if ([(THWDrawablesWidgetRep *)self p_shouldSuppressRenderingDuringExpansion])
  {

    [(THWDrawablesWidgetRep *)self p_suppressRendering:1];
  }
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4
{
  [-[THWDrawablesWidgetRep layout](self layout];
  v5 = [(THWDrawablesWidgetRep *)self layout];

  [v5 invalidateChildren];
}

- (BOOL)expandedHasContentForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [-[THWDrawablesWidgetRep info](self "info")];

  return [v4 panelContentProviderHasContentForPanel:v3];
}

- (id)expandedChildInfosForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [-[THWDrawablesWidgetRep info](self "info")];

  return [v4 panelContentProviderChildInfosForPanel:v3];
}

- (int)expandedAppearance
{
  if (![-[THWDrawablesWidgetRep info](self "info")])
  {
    [-[THWDrawablesWidgetRep info](self "info")];
  }

  objc_opt_class();
  [-[THWDrawablesWidgetRep interactiveCanvasController](self interactiveCanvasController];
  v3 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v3 expandedAppearance];
}

- (int)expandedAppearanceForPanel:(int)a3
{
  v3 = *&a3;
  if (![-[THWDrawablesWidgetRep info](self "info")])
  {
    [-[THWDrawablesWidgetRep info](self "info")];
  }

  objc_opt_class();
  [-[THWDrawablesWidgetRep interactiveCanvasController](self interactiveCanvasController];
  v5 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v5 expandedAppearanceForPanel:v3];
}

- (void)p_addChildRepsToArray:(id)a3 inContainer:(id)a4
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a4 childReps];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [a3 addObject:*(*(&v12 + 1) + 8 * v10)];
        v11 = TSUProtocolCast();
        if (v11)
        {
          [(THWDrawablesWidgetRep *)self p_addChildRepsToArray:a3 inContainer:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (CGRect)expandedFrameInUnscaledCanvasSize
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:{objc_msgSend(-[THWDrawablesWidgetRep interactiveCanvasController](self, "interactiveCanvasController"), "repForInfo:", objc_msgSend(-[THWDrawablesWidgetRep layout](self, "layout"), "actualStageDrawable"))}];
  v4 = TSUProtocolCast();
  if (v4)
  {
    [(THWDrawablesWidgetRep *)self p_addChildRepsToArray:v3 inContainer:v4];
  }

  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [v3 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v11 = height;
    v12 = width;
    v13 = y;
    x = CGRectZero.origin.x;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v35.origin.x = CGRectZero.origin.x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = height;
        v38.origin.x = x;
        v38.origin.y = v13;
        v38.size.width = v12;
        v38.size.height = v11;
        v17 = CGRectEqualToRect(v35, v38);
        [v16 frameInUnscaledCanvas];
        v22 = v18;
        v23 = v19;
        v24 = v20;
        v25 = v21;
        if (!v17)
        {
          v36.origin.x = x;
          v36.origin.y = v13;
          v36.size.width = v12;
          v36.size.height = v11;
          *&v18 = CGRectUnion(v36, *&v22);
        }

        x = v18;
        v13 = v19;
        v12 = v20;
        v11 = v21;
      }

      v9 = [v3 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = height;
    v12 = width;
    v13 = y;
    x = CGRectZero.origin.x;
  }

  v26 = x;
  v27 = v13;
  v28 = v12;
  v29 = v11;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)p_togglePanelDescriptionExpanded
{
  [(THWDrawablesWidgetRep *)self setPanelDescriptionExpanded:[(THWDrawablesWidgetRep *)self panelDescriptionExpanded]^ 1];
  [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerAnimatePanel:1 withCrossFadeContent:1 backgroundLayout:0 duration:0.25];
  expandedRepController = self->_expandedRepController;

  [(THWExpandedRepController *)expandedRepController expandedRepControllerInvalidateChildrenInPanel:1 invalidateWPAuto:1];
}

- (id)expandedPanel:(int)a3 primaryTargetForGesture:(id)a4
{
  if (a3 != 1)
  {
    return 0;
  }

  v7[7] = v4;
  v7[8] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_143800;
  v7[3] = &unk_45AE00;
  v7[4] = self;
  return [[THWTapGestureAction alloc] initWithAction:v7];
}

- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5
{
  if (a4 == 1 && !self->_panelDescriptionExpanded)
  {
    v6 = [-[THWDrawablesWidgetRep layout](self layout];
    if ([v6 isCompactHeight])
    {
      return 2;
    }

    else if ([v6 isCompactWidth])
    {
      return 5;
    }
  }

  return a5;
}

- (BOOL)meetsStageDimensionRequirementForExpanded
{
  [objc_msgSend(objc_msgSend(-[THWDrawablesWidgetRep layout](self "layout")];
  v4 = v3;
  v6 = v5;
  if ([-[THWDrawablesWidgetRep info](self "info")])
  {
    return 1;
  }

  if (v6 < 660.0)
  {
    return v4 < 960.0;
  }

  return 0;
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (void)freeTransformWillBegin
{
  v2 = [(THWDrawablesWidgetRep *)self pressableAnimationLayer];

  [(CALayer *)v2 removeAllAnimations];
}

- (BOOL)freeTransformMayBeginOverRep:(id)a3
{
  if ([(THWDrawablesWidgetRep *)self p_isExpanded])
  {
    return 1;
  }

  return [(THWDrawablesWidgetRep *)self shouldRecognizePressOnRep:a3];
}

- (id)styledRep
{
  objc_opt_class();
  [(THWDrawablesWidgetRep *)self p_repToAnimate];

  return TSUDynamicCast();
}

- (BOOL)freeTransformWantsShadow
{
  if ([(THWDrawablesWidgetRep *)self shouldUseContainerForAnimation])
  {
    return ![(THWDrawablesWidgetRep *)self animationContainerProvidesShadowForAnimation];
  }

  else
  {
    return 1;
  }
}

- (CGRect)rectForCompletion
{
  v2 = [-[THWDrawablesWidgetRep styledRep](self "styledRep")];

  [v2 frameInParent];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v9 = [(THWDrawablesWidgetRep *)self layout];
  [-[THWDrawablesWidgetRep interactiveCanvasController](self "interactiveCanvasController")];

  [v9 scaleForCenteredAutoRotateFromSize:v7 toSize:v6 scale:{width, height, v10}];
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

- (void)expandedDidRotateTransitionToSize:(CGSize)a3
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler:a3.width] ftc] isFreeTransformInProgress])
  {
    [-[THWDrawablesWidgetRep layout](self "layout")];
    v4 = [(THWDrawablesWidgetRep *)self layout];

    [v4 invalidateChildren];
  }
}

- (void)expandedWillTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  v4 = [(THWDrawablesWidgetRep *)self interactiveCanvasController:a3.width];

  [v4 setViewScale:1.0];
}

- (BOOL)canHandleGesture:(id)a3
{
  if (-[THWFreeTransformableRepGestureTargetHandler canHandleGesture:](-[THWDrawablesWidgetRep freeTransformableHandler](self, "freeTransformableHandler"), "canHandleGesture:", a3) && ([objc_msgSend(-[THWDrawablesWidgetRep interactiveCanvasController](self "interactiveCanvasController")] & 1) != 0)
  {
    return 1;
  }

  v6 = [(THWDrawablesWidgetRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v6 canHandleGesture:a3];
}

- (BOOL)handleGesture:(id)a3
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self pressableHandler] handleGesture:a3]|| [(THWFreeTransformableRepGestureTargetHandler *)[(THWDrawablesWidgetRep *)self freeTransformableHandler] handleGesture:a3])
  {
    return 1;
  }

  [a3 gestureKind];
  return 0;
}

- (void)willBeginHandlingGesture:(id)a3
{
  v5 = [a3 gestureKind];
  if (v5 == TSDFreeTransform)
  {
    v6 = [(THWDrawablesWidgetRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)v6 willBeginHandlingGesture:a3];
  }
}

- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5
{
  y = a3.y;
  x = a3.x;
  v12.receiver = self;
  v12.super_class = THWDrawablesWidgetRep;
  result = [THWDrawablesWidgetRep hitRep:"hitRep:withGesture:passingTest:" withGesture:? passingTest:?];
  if (!result)
  {
    v11 = [a4 gestureKind];
    if (v11 == TSDFreeTransform && ([(THWDrawablesWidgetRep *)self p_isExpanded]|| ([(THWDrawablesWidgetRep *)self naturalBounds], v13.x = x, v13.y = y, CGRectContainsPoint(v14, v13))) && (!a5 || (*(a5 + 2))(a5, self)))
    {
      return self;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end
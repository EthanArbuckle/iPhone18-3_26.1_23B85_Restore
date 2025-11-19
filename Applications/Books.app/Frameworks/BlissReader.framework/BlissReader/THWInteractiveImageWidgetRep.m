@interface THWInteractiveImageWidgetRep
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)expandedHasContentForPanel:(int)a3;
- (BOOL)expandedPanel:(int)a3 isVisibleWithDefault:(BOOL)a4;
- (BOOL)expandedPanelAllowVisible;
- (BOOL)expandedWantsSingleTapBehavior;
- (BOOL)handleGesture:(id)a3;
- (BOOL)interactiveImageCalloutIsScrollViewDragging:(id)a3;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)overlayableZoomableCanvasControllerDeferViewCreation:(id)a3;
- (BOOL)overlayableZoomableCanvasControllerIsRelatedCanvasScrolling:(id)a3;
- (BOOL)p_createViewIfNeededWithFrame:(CGRect)a3;
- (BOOL)p_isExpanding;
- (BOOL)p_isStageBackgroundTransparent;
- (BOOL)p_widgetInteractionDisabledOnPage;
- (BOOL)userInteractionEnabled;
- (BOOL)wantsPressAction;
- (BOOL)wantsPressAnimation;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGAffineTransform)shadowAnimationLayerDestinationTransform:(SEL)a3 uniformTargetScale:(id)a4;
- (CGPoint)contentOffset;
- (CGPoint)convertContentPointToUnscaledOverlayPoint:(CGPoint)a3;
- (CGPoint)interactiveImageCallout:(id)a3 convertContentPointToUnscaledOverlayPoint:(CGPoint)a4;
- (CGPoint)p_clientScaledContentOffsetFromScrollview;
- (CGPoint)p_clientScaledFromScrollScaledPoint:(CGPoint)a3;
- (CGPoint)p_scrollScaledFromClientScaledPoint:(CGPoint)a3;
- (CGPoint)p_wingOffsetForPortalRect:(CGRect)a3;
- (CGRect)ftcTargetFrame;
- (CGRect)naturalBoundsForHitTesting;
- (CGRect)p_backgroundImageContentsRect;
- (CGRect)p_bufferedHullFrameForImageFrame:(CGRect)a3 calloutFrame:(CGRect)a4;
- (CGRect)p_calloutFrameWithViewScale:(double)a3;
- (CGRect)p_diagramFrame;
- (CGRect)p_diagramFrameWithViewScale:(double)a3;
- (CGRect)p_expandedViewportFrameInPortalRect:(CGRect)a3;
- (CGRect)p_imageFrame;
- (CGRect)p_imageFrameWithViewScale:(double)a3;
- (CGRect)p_portalFrame;
- (CGRect)p_stageBackgroundFrameRelativeToImageContentLayer;
- (CGRect)p_viewportFrame;
- (CGRect)pressableNaturalBounds;
- (CGRect)rectForCompletion;
- (CGSize)sizeOfContentCanvasForOverlayableZoomableCanvasController:(id)a3;
- (THAnimationController)animationController;
- (THWInteractiveImageWidgetRep)initWithLayout:(id)a3 canvas:(id)a4;
- (UIEdgeInsets)expandedStackedControlContainerInsetsForPanel:(int)a3 withDefault:(UIEdgeInsets)a4;
- (UIEdgeInsets)p_insetsForInnerFrame:(CGRect)a3 inOuterFrame:(CGRect)a4;
- (UIEdgeInsets)p_insetsWithViewScale:(double)a3 viewportBounds:(CGRect)a4;
- (double)baseViewScale;
- (double)expandedMinHeightForPanel:(int)a3 withDefault:(double)a4;
- (double)overlayableZoomableCanvasControllerContentsScale:(id)a3;
- (double)p_maxCalloutViewScale;
- (double)zoomDuration;
- (id)additionalGestureTargetsForZoomableCanvasController:(id)a3 gesture:(id)a4;
- (id)animationLayer;
- (id)calloutInfoForDisplay;
- (id)calloutReps;
- (id)documentRootForOverlayableZoomableCanvasController:(id)a3;
- (id)expandedAdditionalChildLayoutsForPanel:(int)a3;
- (id)expandedChildInfosForPanel:(int)a3;
- (id)expandedLayoutGeometryForLayout:(id)a3 inPanel:(int)a4 withWidth:(double)a5 insets:(UIEdgeInsets)a6;
- (id)expandedPanel:(int)a3 primaryTargetForGesture:(id)a4;
- (id)expandedRotationAnimationController;
- (id)infosToDisplayForContainerInOverlayableZoomableCanvasController:(id)a3;
- (id)overlayableZoomableCanvasController:(id)a3 infosToDisplayForContentViewport:(CGRect)a4;
- (id)overlayableZoomableCanvasController:(id)a3 primaryTargetForGesture:(id)a4;
- (id)p_backgroundImageContentLayer;
- (id)p_backgroundImageRep;
- (id)p_imageRep;
- (id)p_sidebarRep;
- (id)shadowAnimationLayer;
- (id)shadowPath;
- (id)styledRep;
- (id)targetLayer;
- (id)viewControllerForView:(id)a3;
- (unint64_t)selectedCalloutIndex;
- (unint64_t)viewportIndex;
- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5;
- (void)addAlternateLayersForChildViewsToArray:(id)a3;
- (void)addChildViewsToArray:(id)a3;
- (void)animatableDestinationSetupTarget:(id)a3;
- (void)animationControllerDidAddContentAnimations:(id)a3 uniformTargetScale:(double)a4;
- (void)animationControllerDidPresent:(id)a3;
- (void)animationControllerSetupTarget:(id)a3;
- (void)animationControllerTeardownTarget:(id)a3;
- (void)applyScrollingPolicy;
- (void)changeToViewport:(unint64_t)a3 previousCalloutIndex:(unint64_t)a4 contentOffset:(CGPoint)a5 animated:(BOOL)a6;
- (void)control:(id)a3 repWasAdded:(id)a4;
- (void)control:(id)a3 repWillBeRemoved:(id)a4;
- (void)dealloc;
- (void)didExitExpanded;
- (void)didPresentExpanded;
- (void)didUpdateLayer:(id)a3;
- (void)expandedPanel:(int)a3 willAnimateToVisible:(BOOL)a4 duration:(double)a5;
- (void)expandedPanel:(int)a3 willChangeToVisible:(BOOL)a4;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4;
- (void)expandedWillPresentWithController:(id)a3;
- (void)freeTransformDidEnd;
- (void)freeTransformWillBegin;
- (void)handleNavigateCommandWithNumber:(unint64_t)a3;
- (void)handleNavigateNextCommand;
- (void)handleNavigatePreviousCommand;
- (void)interactiveImageCalloutPressed:(id)a3;
- (void)overlayableZoomableCanvasController:(id)a3 willLayoutRep:(id)a4;
- (void)p_adjustScrollViewContentInsets;
- (void)p_invalidateCalloutReps;
- (void)p_setupBorderAndBackground;
- (void)p_setupImageCropAnimationControllerWithDestinationRep:(id)a3;
- (void)p_setupInitialZoom;
- (void)p_setupMinimumViewScale;
- (void)p_supressRendering:(BOOL)a3;
- (void)p_teardownImageCropAnimationControllerWithDestinationRep:(id)a3;
- (void)p_togglePanelDescriptionExpanded;
- (void)p_updateDiagramAnimated:(BOOL)a3 completion:(id)a4;
- (void)p_updateDiagramWithZoom:(double)a3 offset:(CGPoint)a4 animated:(BOOL)a5 previousCalloutIndex:(unint64_t)a6 completion:(id)a7;
- (void)p_updateStageBackgroundLayer;
- (void)p_updateStageBackgroundLayerFromLayout;
- (void)replaceContentsFromRep:(id)a3;
- (void)screenScaleDidChange;
- (void)selectedCalloutIndexUpdatedAnimated:(BOOL)a3;
- (void)setCalloutsVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)updateFromLayout;
- (void)updatedHovering;
- (void)viewScaleDidChange;
- (void)widgetInteractionModeChanged;
- (void)willBeRemoved;
- (void)willBeginHandlingGesture:(id)a3;
- (void)willRemoveChildView:(id)a3;
- (void)willReplaceContentsFromRep:(id)a3;
@end

@implementation THWInteractiveImageWidgetRep

- (THWInteractiveImageWidgetRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v21.receiver = self;
  v21.super_class = THWInteractiveImageWidgetRep;
  v4 = [(THWInteractiveImageWidgetRep *)&v21 initWithLayout:a3 canvas:a4];
  if (v4)
  {
    v4->_freeTransformableHandler = -[THWFreeTransformableRepGestureTargetHandler initWithFreeTransformableRep:handler:]([THWFreeTransformableRepGestureTargetHandler alloc], "initWithFreeTransformableRep:handler:", v4, [objc_msgSend(-[THWInteractiveImageWidgetRep hostICC](v4 "hostICC")]);
    v5 = [[THWInteractiveImageWidgetController alloc] initWithLayout:[(THWInteractiveImageWidgetRep *)v4 layout]];
    v4->_controller = v5;
    [(THWInteractiveImageWidgetController *)v5 setDelegate:v4];
    v4->_borderColor = [+[TSUColor clearColor](TSUColor "clearColor")];
    v4->_animationPreviousCalloutIndex = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(THWInteractiveImageWidgetRep *)v4 layout];
    [v6 stageFrame];
    [v6 rectInRoot:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = -[THWOverlayableZoomableCanvasController initWithFrame:documentRoot:delegate:]([THWOverlayableZoomableCanvasController alloc], "initWithFrame:documentRoot:delegate:", [-[THWInteractiveImageWidgetRep interactiveCanvasController](v4 "interactiveCanvasController")], v4, v7, v9, v11, v13);
    v4->_stageCanvasController = v15;
    [(THWOverlayableZoomableCanvasController *)v15 createLayerHostIfNeededWithFrame:v8, v10, v12, v14];
    [(THWOverlayableZoomableCanvasController *)v4->_stageCanvasController setDelegate:v4];
    stageCanvasController = v4->_stageCanvasController;
    [-[THWInteractiveImageWidgetRep canvas](v4 "canvas")];
    [(THWOverlayableZoomableCanvasController *)stageCanvasController setNaturalFrame:v8 scale:v10, v12, v14, v17];
    [(THWInteractiveImageWidgetRep *)v4 p_setupInitialZoom];
    [(THWInteractiveImageWidgetRep *)v4 p_setupBorderAndBackground];
    [-[THWInteractiveImageWidgetRep layout](v4 "layout")];
    objc_opt_class();
    [(THWInteractiveImageWidgetRep *)v4 interactiveCanvasController];
    v18 = [TSUDynamicCast() pressHandlerForPressableReps];
    if (v18)
    {
      v19 = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:v4 pressHandler:v18];
      v4->_pressableHandler = v19;
      [(THWPressableRepGestureTargetHandler *)v19 setEnabledOnlyIfWidgetInteractionDisabledOnPage:1];
    }

    [(THWInteractiveImageWidgetRep *)v4 widgetInteractionModeChanged];
    if ([(THWInteractiveImageWidgetRep *)v4 isExpanded])
    {
      v4->_calloutsHidden = 1;
      v4->_wantsCachedImage = 1;
    }
  }

  return v4;
}

- (void)dealloc
{
  self->mAnimationController = 0;

  [(THWInteractiveImageWidgetController *)self->_controller setDelegate:0];
  [(THWImageCropAnimationController *)self->_imageCropAnimationController teardownWrapperLayer];

  self->_imageCropAnimationController = 0;
  [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController setDelegate:0];
  [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController teardownController];
  [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController teardownView];

  v3.receiver = self;
  v3.super_class = THWInteractiveImageWidgetRep;
  [(THWInteractiveImageWidgetRep *)&v3 dealloc];
}

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = THWInteractiveImageWidgetRep;
  [(THWInteractiveImageWidgetRep *)&v3 willBeRemoved];
  [(CALayer *)self->_stageBackgroundLayer setDelegate:0];
}

- (CGRect)naturalBoundsForHitTesting
{
  v2 = [(THWInteractiveImageWidgetRep *)self layout];

  [v2 stageFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)p_createViewIfNeededWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(THWInteractiveImageWidgetRep *)self layout];
  if (self->_stageCanvasController)
  {
    v9 = v8;
    v10 = [-[THWInteractiveImageWidgetRep layout](self "layout")];
    if (v10)
    {
      v10 = [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController createViewIfNeededWithFrame:x, y, width, height];
      if (v10)
      {
        [v9 stageCornerRadius];
        [(CALayer *)[(UIView *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController view] layer] setCornerRadius:v11];
        [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController setupImmediatePressGesture];
        stageCanvasController = self->_stageCanvasController;
        [-[THWInteractiveImageWidgetRep canvas](self "canvas")];
        [(THWOverlayableZoomableCanvasController *)stageCanvasController setNaturalFrame:x scale:y, width, height, v13];
        [(THWInteractiveImageWidgetRep *)self p_setupInitialZoom];
        [(THWInteractiveImageWidgetRep *)self p_setupBorderAndBackground];
        [(THWInteractiveImageWidgetRep *)self p_adjustScrollViewContentInsets];
        [(THWInteractiveImageWidgetRep *)self widgetInteractionModeChanged];
        LOBYTE(v10) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)calloutReps
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [-[THWInteractiveImageWidgetRep layout](self layout];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContainerICC] repForLayout:*(*(&v11 + 1) + 8 * v8)];
        if (v9)
        {
          [v3 addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setCalloutsVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(THWInteractiveImageWidgetRep *)self calloutReps];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11) setVisible:v5 animated:v4];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = [(THWInteractiveImageWidgetRep *)self p_sidebarRep];
  if (v12)
  {
    [v12 setVisible:v5 animated:v4];
  }

  else
  {
    [objc_msgSend(-[THWInteractiveImageWidgetRep layout](self "layout")];
  }
}

- (unint64_t)viewportIndex
{
  v2 = [(THWInteractiveImageWidgetRep *)self controller];

  return [(THWInteractiveImageWidgetController *)v2 calloutIndex];
}

- (double)zoomDuration
{
  [(THWInteractiveImageWidgetRep *)self rotationDuration];
  if (v3 == 0.0)
  {
    return 0.5;
  }

  [(THWInteractiveImageWidgetRep *)self rotationDuration];
  return result;
}

- (id)p_imageRep
{
  objc_opt_class();
  -[TSDInteractiveCanvasController repForInfo:](-[THWOverlayableZoomableCanvasController scrollContentICC](self->_stageCanvasController, "scrollContentICC"), "repForInfo:", [-[THWInteractiveImageWidgetRep info](self "info")]);

  return TSUDynamicCast();
}

- (void)willReplaceContentsFromRep:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    [(THWInteractiveImageWidgetRep *)self setUseStoredViewportIndex:1];
    -[THWInteractiveImageWidgetRep setStoredViewportIndex:](self, "setStoredViewportIndex:", [v5 viewportIndex]);
    [-[THWInteractiveImageWidgetRep layout](self "layout")];
    -[THWInteractiveImageWidgetRep setStageBackgroundImage:](self, "setStageBackgroundImage:", [v5 stageBackgroundImage]);
    if ([(THWInteractiveImageWidgetRep *)self isExpanded])
    {
      v6 = [v5 p_imageRep];

      self->_cachedImage = 0;
      self->_cachedImage = [v6 newCachedSizedImage];
    }

    else
    {
      v7 = [(THWInteractiveImageWidgetRep *)self p_imageRep];
      [v7 pushDisableImageSizing];
      v8 = [v5 viewportIndex];
      if (v8 == -[THWInteractiveImageWidgetController calloutIndex](self->_controller, "calloutIndex") || (v9 = [objc_msgSend(v5 "p_imageRep")]) == 0)
      {
        controller = self->_controller;
        v12 = [v5 viewportIndex];

        [(THWInteractiveImageWidgetController *)controller selectOption:v12 force:1 animated:0];
      }

      else
      {
        v10 = v9;
        [v7 useCachedSizedImage:v9];

        -[THWInteractiveImageWidgetController selectOption:force:animated:](self->_controller, "selectOption:force:animated:", [v5 viewportIndex], 1, 0);
        [objc_msgSend(v7 "interactiveCanvasController")];

        [v7 generateSizedImageOnBackgroundThread];
      }
    }
  }
}

- (void)replaceContentsFromRep:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    [-[THWInteractiveImageWidgetRep layout](self "layout")];
    [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerInvalidateChildrenInPanel:1 invalidateWPAuto:1];
    -[THWInteractiveImageWidgetController selectOption:force:animated:](self->_controller, "selectOption:force:animated:", [v5 viewportIndex], 1, 0);
  }

  if (![(THWInteractiveImageWidgetRep *)self isExpanded])
  {
    v6 = [(THWInteractiveImageWidgetRep *)self p_imageRep];

    [v6 popDisableImageSizing];
  }
}

- (void)widgetInteractionModeChanged
{
  if ([(THWInteractiveImageWidgetRep *)self pressableHandler])
  {
    v3 = [(THWPressableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self pressableHandler] widgetInteractionEnabled];
  }

  else
  {
    v3 = 1;
  }

  [(THWInteractiveImageWidgetRep *)self setUserInteractionEnabled:v3];
}

- (void)viewScaleDidChange
{
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContentICC] contentOffset];
  v20.receiver = self;
  v20.super_class = THWInteractiveImageWidgetRep;
  [(THWInteractiveImageWidgetRep *)&v20 updateFromLayout];
  v3 = [(THWInteractiveImageWidgetRep *)self layout];
  [-[THWInteractiveImageWidgetRep layout](self "layout")];
  [v3 rectInRoot:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  stageCanvasController = self->_stageCanvasController;
  [-[THWInteractiveImageWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
  [(THWOverlayableZoomableCanvasController *)stageCanvasController setNaturalFrame:v5 scale:v7, v9, v11, v13];
  [(THWInteractiveImageWidgetRep *)self p_invalidateCalloutReps];
  v14 = [-[THWInteractiveImageWidgetRep info](self "info")];
  [v14 viewScale];
  TSDMultiplyPointScalar();
  v16 = v15;
  v18 = v17;
  [v14 viewScale];
  [(THWInteractiveImageWidgetRep *)self p_updateDiagramWithZoom:0 offset:[(THWInteractiveImageWidgetRep *)self viewportIndex] animated:0 previousCalloutIndex:v19 completion:v16, v18];
}

- (void)screenScaleDidChange
{
  v3.receiver = self;
  v3.super_class = THWInteractiveImageWidgetRep;
  [(THWInteractiveImageWidgetRep *)&v3 screenScaleDidChange];
  [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController screenScaleDidChange];
  [-[THWInteractiveImageWidgetRep canvas](self "canvas")];
  [(CALayer *)self->_stageBackgroundLayer setContentsScale:?];
  [(THWInteractiveImageWidgetRep *)self setStageBackgroundImage:0];
}

- (void)didUpdateLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = THWInteractiveImageWidgetRep;
  [(THWInteractiveImageWidgetRep *)&v4 didUpdateLayer:a3];
  [(THWInteractiveImageWidgetRep *)self p_updateStageBackgroundLayer];
}

- (void)p_updateStageBackgroundLayerFromLayout
{
  v3 = [(THWInteractiveImageWidgetRep *)self layout];
  [-[THWInteractiveImageWidgetRep layout](self "layout")];
  [v3 rectInRoot:?];
  [(CALayer *)self->_stageBackgroundLayer setPosition:CGPointZero.x, CGPointZero.y];
  [-[THWInteractiveImageWidgetRep canvas](self "canvas")];
  TSDMultiplySizeScalar();
  TSDRectWithSize();
  TSDRoundedRect();
  stageBackgroundLayer = self->_stageBackgroundLayer;

  [(CALayer *)stageBackgroundLayer setBounds:?];
}

- (void)updateFromLayout
{
  v3.receiver = self;
  v3.super_class = THWInteractiveImageWidgetRep;
  [(THWInteractiveImageWidgetRep *)&v3 updateFromLayout];
  [(THWInteractiveImageWidgetRep *)self p_updateStageBackgroundLayerFromLayout];
}

- (BOOL)p_isStageBackgroundTransparent
{
  objc_opt_class();
  [-[THWInteractiveImageWidgetRep info](self "info")];
  v3 = TSUDynamicCast();
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  if ([v3 fillType])
  {
    return 0;
  }

  [objc_msgSend(v4 "referenceColor")];
  return v6 == 0.0;
}

- (void)p_updateStageBackgroundLayer
{
  if (!self->_stageBackgroundLayer)
  {
    v3 = objc_alloc_init(CALayer);
    self->_stageBackgroundLayer = v3;
    y = CGPointZero.y;
    [(CALayer *)v3 setAnchorPoint:CGPointZero.x, y];
    [(CALayer *)self->_stageBackgroundLayer setPosition:CGPointZero.x, y];
    [-[THWInteractiveImageWidgetRep canvas](self "canvas")];
    [(CALayer *)self->_stageBackgroundLayer setContentsScale:?];
    [(CALayer *)self->_stageBackgroundLayer setDelegate:[(THWInteractiveImageWidgetRep *)self interactiveCanvasController]];
    [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController setBackgroundLayer:self->_stageBackgroundLayer];
  }

  [(THWInteractiveImageWidgetRep *)self p_updateStageBackgroundLayerFromLayout];
  objc_opt_class();
  [-[THWInteractiveImageWidgetRep info](self "info")];
  v5 = TSUDynamicCast();
  v6 = 0;
  v7 = 0;
  if (![(THWInteractiveImageWidgetRep *)self p_isStageBackgroundTransparent]&& v5)
  {
    if ([v5 fillType])
    {
      stageBackgroundImage = self->_stageBackgroundImage;
      if (!stageBackgroundImage)
      {
        [(CALayer *)self->_stageBackgroundLayer contentsScale];
        [objc_msgSend(-[THWInteractiveImageWidgetRep info](self "info")];
        TSDMultiplySizeScalar();
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_170E94;
        v11[3] = &unk_45E090;
        v11[4] = v5;
        v11[5] = v9;
        v11[6] = v10;
        [(THWInteractiveImageWidgetRep *)self setStageBackgroundImage:[TSUImage imageWithSize:v11 drawnUsingBlock:?]];
        stageBackgroundImage = self->_stageBackgroundImage;
      }

      v6 = [(TSUImage *)stageBackgroundImage CGImage];
      [(CALayer *)self->_stageBackgroundLayer setContentsGravity:kCAGravityResize];
      v7 = 0;
    }

    else
    {
      v7 = [objc_msgSend(v5 "referenceColor")];
      v6 = 0;
    }
  }

  if (v7 != [(CALayer *)self->_stageBackgroundLayer backgroundColor])
  {
    [(CALayer *)self->_stageBackgroundLayer setBackgroundColor:v7];
  }

  if (v6 != [(CALayer *)self->_stageBackgroundLayer contents])
  {
    [(CALayer *)self->_stageBackgroundLayer setContents:v6];
  }
}

- (void)addChildViewsToArray:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THWInteractiveImageWidgetRep *)self layout];
  if (v5)
  {
    v6 = v5;
    [v5 stageFrame];
    [v6 rectInRoot:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(THWInteractiveImageWidgetRep *)self p_createViewIfNeededWithFrame:?];
    v15 = [(THWInteractiveImageWidgetRep *)self stageCanvasController];
    [-[THWInteractiveImageWidgetRep canvas](self "canvas")];
    [(THWOverlayableZoomableCanvasController *)v15 setNaturalFrame:v8 scale:v10, v12, v14, v16];
    v17 = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] view];
    if (v17)
    {

      [a3 addObject:v17];
    }
  }
}

- (id)viewControllerForView:(id)a3
{
  v4 = [(THWInteractiveImageWidgetRep *)self stageCanvasController];
  if ([(THWOverlayableZoomableCanvasController *)v4 view]!= a3)
  {
    return 0;
  }

  return [(THWOverlayableZoomableCanvasController *)v4 viewController];
}

- (void)willRemoveChildView:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  stageCanvasController = self->_stageCanvasController;
  if (stageCanvasController && [(THWOverlayableZoomableCanvasController *)stageCanvasController view]== a3)
  {
    v6 = self->_stageCanvasController;

    [(THWOverlayableZoomableCanvasController *)v6 teardownView];
  }
}

- (double)baseViewScale
{
  v2 = [(THWInteractiveImageWidgetRep *)self layout];

  [v2 baseViewScale];
  return result;
}

- (CGPoint)p_clientScaledContentOffsetFromScrollview
{
  [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] contentOffset];

  [(THWInteractiveImageWidgetRep *)self p_clientScaledFromScrollScaledPoint:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)contentOffset
{
  [(THWInteractiveImageWidgetRep *)self p_clientScaledContentOffsetFromScrollview];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  y = a4.y;
  x = a4.x;
  [(THWInteractiveImageWidgetRep *)self baseViewScale];
  v13 = v12;
  v14 = 0.0;
  if (v7)
  {
    [(THWInteractiveImageWidgetRep *)self zoomDuration];
    v14 = v15;
  }

  [(THWInteractiveImageWidgetRep *)self rotationDuration];
  if (v16 != 0.0)
  {
    [(THWInteractiveImageWidgetRep *)self rotationDuration];
    v14 = v17;
  }

  [(THWInteractiveImageWidgetRep *)self p_scrollScaledFromClientScaledPoint:x, y];
  v19 = v18;
  v21 = v20;
  v22 = [(THWInteractiveImageWidgetRep *)self stageCanvasController];

  [(THWOverlayableZoomableCanvasController *)v22 setViewScale:a6 contentOffset:v13 * a3 animationDuration:v19 completion:v21, v14];
}

- (void)addAlternateLayersForChildViewsToArray:(id)a3
{
  v4 = [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController alternateLayerForView];
  if (v4)
  {

    [a3 addObject:v4];
  }
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
    [(THAnimationController *)self->mAnimationController setShadowFadeOutDurationScale:1.0];
    [(THAnimationController *)self->mAnimationController setShadowTransformDurationScale:0.5];
    return self->mAnimationController;
  }

  return result;
}

- (void)animationControllerSetupTarget:(id)a3
{
  objc_opt_class();
  [a3 destination];
  v5 = TSUDynamicCast();

  [(THWInteractiveImageWidgetRep *)self p_setupImageCropAnimationControllerWithDestinationRep:v5];
}

- (void)p_teardownImageCropAnimationControllerWithDestinationRep:(id)a3
{
  [a3 p_teardownAsAnimationDestination];
  [(THWImageCropAnimationController *)self->_imageCropAnimationController setBackgroundLayer:0];
  [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController setBackgroundLayer:self->_stageBackgroundLayer];
  [(THWInteractiveImageWidgetRep *)self p_updateStageBackgroundLayerFromLayout];
  [(THWImageCropAnimationController *)self->_imageCropAnimationController teardownWrapperLayer];

  self->_imageCropAnimationController = 0;
}

- (void)animationControllerTeardownTarget:(id)a3
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    objc_opt_class();
    [a3 destination];
    [(THWInteractiveImageWidgetRep *)self p_teardownImageCropAnimationControllerWithDestinationRep:TSUDynamicCast()];
  }

  [(CALayer *)[(THWInteractiveImageWidgetRep *)self sourceOverlayLayer] setSublayers:0];

  [(THWInteractiveImageWidgetRep *)self setSourceOverlayLayer:0];
}

- (void)animationControllerDidPresent:(id)a3
{
  objc_opt_class();
  [a3 destination];
  v5 = TSUDynamicCast();
  v6 = v5;
  if (v5 != self)
  {
    [(THWInteractiveImageWidgetRep *)v5 setCalloutsVisible:0 animated:0];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_17161C;
  v7[3] = &unk_45AE58;
  v7[4] = v6;
  v7[5] = self;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)animationControllerDidAddContentAnimations:(id)a3 uniformTargetScale:(double)a4
{
  [a3 animationDuration];
  v8 = v7;
  [THWImageCropAnimationController addAnimationWithDuration:"addAnimationWithDuration:targetScale:" targetScale:?];
  objc_opt_class();
  [a3 destination];
  if (TSUDynamicCast())
  {
    v9 = a4;
  }

  else
  {
    v9 = 1.0;
  }

  imageCropAnimationController = self->_imageCropAnimationController;

  [(THWImageCropAnimationController *)imageCropAnimationController addBackgroundAnimationWithDuration:v8 targetScale:v9];
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress];
  if (result)
  {
    result = [(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc];
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

- (id)animationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]|| (result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc] freeTransformLayer]) == 0)
  {
    imageCropAnimationController = self->_imageCropAnimationController;

    return [(THWImageCropAnimationController *)imageCropAnimationController wrapperLayer];
  }

  return result;
}

- (id)shadowAnimationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    return 0;
  }

  v3 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v3 shadowLayer];
}

- (void)animatableDestinationSetupTarget:(id)a3
{
  objc_opt_class();
  [(THWExpandedRepController *)self->_expandedRepController expandedRepSourceRep];
  if (!TSUDynamicCast())
  {
    [(THWInteractiveImageWidgetRep *)self p_supressRendering:0];
    [-[THWInteractiveImageWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
    [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContainerICC] layoutIfNeeded];
    v4 = [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContentICC];

    [(TSDInteractiveCanvasController *)v4 layoutIfNeeded];
  }
}

- (id)targetLayer
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]&& ![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc] passedThreshold])
  {
    return 0;
  }

  return [(THWInteractiveImageWidgetRep *)self p_backgroundImageContentLayer];
}

- (CGRect)ftcTargetFrame
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc] completionTargetRect];
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

- (BOOL)isExpanded
{
  v2 = [(THWInteractiveImageWidgetRep *)self layout];

  return [v2 isExpanded];
}

- (id)shadowPath
{
  if ([(THWInteractiveImageWidgetRep *)self p_isStageBackgroundTransparent])
  {
    if ([objc_msgSend(-[THWInteractiveImageWidgetRep info](self "info")])
    {
      imageCropAnimationController = self->_imageCropAnimationController;

      return [(THWImageCropAnimationController *)imageCropAnimationController sourceShadowPath];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = self->_imageCropAnimationController;

    return [(THWImageCropAnimationController *)v4 backgroundShadowPath];
  }
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (void)freeTransformWillBegin
{
  objc_opt_class();
  [(THWExpandedRepController *)self->_expandedRepController expandedRepSourceRep];
  v3 = TSUDynamicCast();

  [(THWInteractiveImageWidgetRep *)self p_setupImageCropAnimationControllerWithDestinationRep:v3];
}

- (void)freeTransformDidEnd
{
  objc_opt_class();
  [(THWExpandedRepController *)self->_expandedRepController expandedRepSourceRep];
  v3 = TSUDynamicCast();

  [(THWInteractiveImageWidgetRep *)self p_teardownImageCropAnimationControllerWithDestinationRep:v3];
}

- (id)styledRep
{
  objc_opt_class();
  [(THWInteractiveImageWidgetRep *)self p_backgroundImageRep];

  return TSUDynamicCast();
}

- (CGRect)rectForCompletion
{
  v2 = [(THWInteractiveImageWidgetRep *)self layout];

  [v2 frameInParent];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
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

- (void)expandedWillPresentWithController:(id)a3
{
  self->_expandedRepController = a3;
  if ([(THWInteractiveImageWidgetRep *)self p_shouldSuppressRenderingDuringExpansion])
  {

    [(THWInteractiveImageWidgetRep *)self p_supressRendering:1];
  }
}

- (void)p_supressRendering:(BOOL)a3
{
  v3 = a3;
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContainerICC] setShouldSuppressRendering:a3 animated:0];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContentICC] setShouldSuppressRendering:v3 animated:0];
  v5 = [(THWInteractiveImageWidgetRep *)self interactiveCanvasController];

  [v5 setShouldSuppressRendering:v3 animated:0];
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4
{
  [-[THWInteractiveImageWidgetRep layout](self layout];
  [-[THWInteractiveImageWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContainerICC] layoutIfNeeded];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContentICC] layoutIfNeeded];
  v5 = [(THWInteractiveImageWidgetRep *)self stageCanvasController];
  v6 = [(THWInteractiveImageWidgetRep *)self layout];
  [-[THWInteractiveImageWidgetRep layout](self "layout")];
  [v6 rectInRoot:?];
  [THWOverlayableZoomableCanvasController setNaturalFrame:v5 scale:"setNaturalFrame:scale:"];

  [(THWInteractiveImageWidgetRep *)self updateDiagramAnimated:0];
}

- (BOOL)expandedHasContentForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [(THWInteractiveImageWidgetRep *)self layout];

  return [v4 hasContentForPanel:v3];
}

- (id)expandedChildInfosForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [(THWInteractiveImageWidgetRep *)self layout];

  return [v4 infosForPanel:v3];
}

- (id)expandedAdditionalChildLayoutsForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [(THWInteractiveImageWidgetRep *)self layout];

  return [v4 additionalLayoutsForPanel:v3];
}

- (double)expandedMinHeightForPanel:(int)a3 withDefault:(double)a4
{
  if (a3 == 2)
  {
    if ([-[THWInteractiveImageWidgetRep layout](self "layout")] && !objc_msgSend(objc_msgSend(-[THWInteractiveImageWidgetRep layout](self, "layout"), "additionalLayoutsForPanel:", 2), "count"))
    {
      return 0.0;
    }
  }

  else if (a3 == 1 && [-[THWInteractiveImageWidgetRep layout](self "layout")])
  {
    return 0.0;
  }

  return a4;
}

- (id)expandedLayoutGeometryForLayout:(id)a3 inPanel:(int)a4 withWidth:(double)a5 insets:(UIEdgeInsets)a6
{
  right = a6.right;
  left = a6.left;
  v10 = [TSUProtocolCast() tag];
  if (a4 != 2 || v10 != &dword_0 + 3)
  {
    return 0;
  }

  v11 = [[TSDLayoutGeometry alloc] initWithFrame:{CGPointZero.x, CGPointZero.y, a5 - left - right, 31.0}];

  return v11;
}

- (id)expandedRotationAnimationController
{
  v2 = [[THWInteractiveImageExpandedRotationController alloc] initWithRep:self canvas:[(THWInteractiveImageWidgetRep *)self canvas] stageCanvasController:[(THWInteractiveImageWidgetRep *)self stageCanvasController]];

  return v2;
}

- (BOOL)expandedPanelAllowVisible
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(THWInteractiveImageWidgetRep *)self calloutReps];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * v6) hovering])
        {
          return 0;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (void)updatedHovering
{
  v2 = [(THWInteractiveImageWidgetRep *)self expandedRepController];

  [(THWExpandedRepController *)v2 expandedRepControllerUpdatePanelVisibility];
}

- (BOOL)canHandleGesture:(id)a3
{
  v5 = [a3 gestureKind];
  if ([(THWPressableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self pressableHandler] canHandleGesture:a3])
  {
    goto LABEL_2;
  }

  v6 = [(THWInteractiveImageWidgetRep *)self userInteractionEnabled];
  if (!v6)
  {
    return v6;
  }

  if (-[THWFreeTransformableRepGestureTargetHandler canHandleGesture:](-[THWInteractiveImageWidgetRep freeTransformableHandler](self, "freeTransformableHandler"), "canHandleGesture:", a3) || ([-[THWInteractiveImageWidgetRep layout](self "layout")] & 1) == 0 && (objc_msgSend(v5, "isEqual:", TSDShortTap) & 1) != 0)
  {
LABEL_2:
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = [(THWInteractiveImageWidgetRep *)self p_singleTapResetsToDefaultZoom];
    if (v6)
    {
      v6 = [v5 isEqual:TSWPImmediatePress];
      if (v6)
      {
        LOBYTE(v6) = [(THWInteractiveImageWidgetRep *)self viewportIndex]!= 0;
      }
    }
  }

  return v6;
}

- (BOOL)handleGesture:(id)a3
{
  v5 = [a3 gestureKind];
  if ([(THWPressableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self pressableHandler] canHandleGesture:a3])
  {
    v6 = [(THWInteractiveImageWidgetRep *)self pressableHandler];
LABEL_5:

    LOBYTE(v7) = [(THWPressableRepGestureTargetHandler *)v6 handleGesture:a3];
    return v7;
  }

  if ([(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] canHandleGesture:a3])
  {
    v6 = [(THWInteractiveImageWidgetRep *)self freeTransformableHandler];
    goto LABEL_5;
  }

  if ([a3 gestureState] == 2 && -[THWOverlayableZoomableCanvasController isDragging](-[THWInteractiveImageWidgetRep stageCanvasController](self, "stageCanvasController"), "isDragging") && objc_msgSend(v5, "isEqualToString:", TSWPImmediatePress))
  {
    objc_opt_class();
    [TSUDynamicCast() cancel];
  }

  if (([v5 isEqual:TSDShortTap] & 1) != 0 || (v7 = objc_msgSend(v5, "isEqual:", TSWPImmediatePress)) != 0)
  {
    if ([a3 gestureState] == 3 && !-[THWOverlayableZoomableCanvasController isDragging](-[THWInteractiveImageWidgetRep stageCanvasController](self, "stageCanvasController"), "isDragging"))
    {
      [-[THWInteractiveImageWidgetRep layout](self "layout")];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [a3 naturalLocationForRep:self];
      v20.x = v16;
      v20.y = v17;
      v21.origin.x = v9;
      v21.origin.y = v11;
      v21.size.width = v13;
      v21.size.height = v15;
      if (CGRectContainsPoint(v21, v20))
      {
        [(THWInteractiveImageWidgetController *)self->_controller selectOption:0];
      }
    }

    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)willBeginHandlingGesture:(id)a3
{
  v5 = [a3 gestureKind];
  if (v5 == TSDFreeTransform)
  {
    v6 = [(THWInteractiveImageWidgetRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)v6 willBeginHandlingGesture:a3];
  }
}

- (void)p_togglePanelDescriptionExpanded
{
  [(THWInteractiveImageWidgetRep *)self setPanelDescriptionExpanded:[(THWInteractiveImageWidgetRep *)self panelDescriptionExpanded]^ 1];
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
  v7[2] = sub_172604;
  v7[3] = &unk_45AE00;
  v7[4] = self;
  return [[THWTapGestureAction alloc] initWithAction:v7];
}

- (void)handleNavigateNextCommand
{
  v3 = [-[THWInteractiveImageWidgetRep layout](self "layout")];
  if (v3 == [-[THWInteractiveImageWidgetRep info](self "info")] - 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 + 1;
  }

  controller = self->_controller;

  [(THWInteractiveImageWidgetController *)controller selectOption:v4];
}

- (void)handleNavigatePreviousCommand
{
  v3 = [-[THWInteractiveImageWidgetRep layout](self "layout")];
  v4 = [-[THWInteractiveImageWidgetRep info](self "info")];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  controller = self->_controller;

  [(THWInteractiveImageWidgetController *)controller selectOption:v5 - 1];
}

- (void)handleNavigateCommandWithNumber:(unint64_t)a3
{
  if ([-[THWInteractiveImageWidgetRep info](self "info")] - 1 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  controller = self->_controller;

  [(THWInteractiveImageWidgetController *)controller selectOption:v5];
}

- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5
{
  if (a4 == 1 && !self->_panelDescriptionExpanded)
  {
    if ([-[THWInteractiveImageWidgetRep layout](self layout])
    {
      return 2;
    }

    else
    {
      return 5;
    }
  }

  return a5;
}

- (UIEdgeInsets)expandedStackedControlContainerInsetsForPanel:(int)a3 withDefault:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  if (a3 == 1)
  {
    if ([objc_msgSend(-[THWInteractiveImageWidgetRep layout](self "layout")])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a3 == 2)
  {
    if ([objc_msgSend(-[THWInteractiveImageWidgetRep layout](self "layout")])
    {
      top = 7.0;
      bottom = 6.0;
      right = 5.0;
      left = 5.0;
      goto LABEL_7;
    }

LABEL_6:
    top = TSDEdgeInsetsZero[0].f64[0];
    left = TSDEdgeInsetsZero[0].f64[1];
    bottom = TSDEdgeInsetsZero[1].f64[0];
    right = TSDEdgeInsetsZero[1].f64[1];
  }

LABEL_7:
  v8 = top;
  v9 = left;
  v10 = bottom;
  v11 = right;
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (BOOL)expandedPanel:(int)a3 isVisibleWithDefault:(BOOL)a4
{
  if ((a3 - 1) > 1)
  {
    return a4;
  }

  v6 = [(THWInteractiveImageWidgetRep *)self layout];

  return [v6 isCombinedPanelVisible];
}

- (void)expandedPanel:(int)a3 willAnimateToVisible:(BOOL)a4 duration:(double)a5
{
  if (a3 == 1)
  {
    [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerAnimatePanel:*&a3 withCrossFadeContent:1 backgroundLayout:0 duration:a5];
  }
}

- (void)expandedPanel:(int)a3 willChangeToVisible:(BOOL)a4
{
  if (a3 == 1)
  {
    [-[THWInteractiveImageWidgetRep layout](self "layout")];
    expandedRepController = self->_expandedRepController;

    [(THWExpandedRepController *)expandedRepController expandedRepControllerInvalidateChildrenInPanel:1 invalidateWPAuto:0];
  }
}

- (BOOL)expandedWantsSingleTapBehavior
{
  if ([(THWInteractiveImageWidgetRep *)self viewportIndex])
  {
    return 0;
  }

  v4 = [(THWInteractiveImageWidgetRep *)self stageCanvasController];

  return [(THWOverlayableZoomableCanvasController *)v4 isZoomedOut];
}

- (id)documentRootForOverlayableZoomableCanvasController:(id)a3
{
  v3 = [(THWInteractiveImageWidgetRep *)self interactiveCanvasController];

  return [v3 documentRoot];
}

- (CGSize)sizeOfContentCanvasForOverlayableZoomableCanvasController:(id)a3
{
  v3 = [(THWInteractiveImageWidgetRep *)self layout];

  [v3 zoomableCanvasSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)overlayableZoomableCanvasController:(id)a3 infosToDisplayForContentViewport:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if ([(THWInteractiveImageWidgetRep *)self stageCanvasController]!= a3)
  {
    return 0;
  }

  v10 = [(THWInteractiveImageWidgetRep *)self layout];

  return [v10 infosForStageContentViewport:{x, y, width, height}];
}

- (id)infosToDisplayForContainerInOverlayableZoomableCanvasController:(id)a3
{
  if (self->_calloutsHidden)
  {
    return 0;
  }

  v6 = [(THWInteractiveImageWidgetRep *)self layout:a3];

  return [v6 infosForContainer];
}

- (id)overlayableZoomableCanvasController:(id)a3 primaryTargetForGesture:(id)a4
{
  v6 = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContainerICC];
  [a4 unscaledLocationForICC:v6];
  [(TSDInteractiveCanvasController *)v6 hitRep:a4 withGesture:&stru_45E0B0 passingTest:?];
  v7 = TSUProtocolCast();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = self;
  }

  if (![(THWPressableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self pressableHandler] canHandleGesture:a4])
  {
    return v8;
  }

  return [(THWInteractiveImageWidgetRep *)self pressableHandler];
}

- (void)overlayableZoomableCanvasController:(id)a3 willLayoutRep:(id)a4
{
  v5 = [a4 info];
  if (v5 == [-[THWInteractiveImageWidgetRep info](self "info")])
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (v6)
    {
      v7 = v6;
      if (!self->_cachedImage && self->_wantsCachedImage)
      {
        self->_cachedImage = [v6 newCachedSizedImageWithNaturalSize];
      }

      self->_wantsCachedImage = 0;
      if (self->_cachedImage)
      {
        [v7 useCachedSizedImage:?];
        [v7 generateSizedImageOnBackgroundThread];

        self->_cachedImage = 0;
      }
    }
  }
}

- (id)additionalGestureTargetsForZoomableCanvasController:(id)a3 gesture:(id)a4
{
  [-[THWInteractiveImageWidgetRep interactiveCanvasController](self interactiveCanvasController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = [-[THWInteractiveImageWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
  v7 = [(THWInteractiveImageWidgetRep *)self interactiveCanvasController];

  return [v6 additionalGestureTargetsForInteractiveCanvasController:v7 gesture:a4];
}

- (BOOL)overlayableZoomableCanvasControllerDeferViewCreation:(id)a3
{
  v3 = [(THWInteractiveImageWidgetRep *)self interactiveCanvasController];

  return [v3 currentlyScrolling];
}

- (double)overlayableZoomableCanvasControllerContentsScale:(id)a3
{
  v3 = [-[THWInteractiveImageWidgetRep interactiveCanvasController](self interactiveCanvasController];

  [v3 contentsScale];
  return result;
}

- (BOOL)overlayableZoomableCanvasControllerIsRelatedCanvasScrolling:(id)a3
{
  v3 = [(THWInteractiveImageWidgetRep *)self interactiveCanvasController];

  return [v3 currentlyScrolling];
}

- (void)control:(id)a3 repWasAdded:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    [v5 setTransportControlDelegate:self->_controller];
    controller = self->_controller;

    [(THWInteractiveImageWidgetController *)controller setTransportControlsRep:v5];
  }
}

- (void)control:(id)a3 repWillBeRemoved:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    controller = self->_controller;

    [(THWInteractiveImageWidgetController *)controller setTransportControlsRep:0];
  }
}

- (CGPoint)convertContentPointToUnscaledOverlayPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(THWInteractiveImageWidgetRep *)self stageCanvasController];

  [(THWOverlayableZoomableCanvasController *)v5 unscaledContainerPointFromUnscaledContentPoint:x, y];
  result.y = v7;
  result.x = v6;
  return result;
}

- (id)calloutInfoForDisplay
{
  result = [-[THWInteractiveImageWidgetRep layout](self "layout")];
  if (result)
  {
    v4 = [-[THWInteractiveImageWidgetRep layout](self "layout")];
    v5 = [-[THWInteractiveImageWidgetRep layout](self "layout")];

    return [v4 calloutAtIndex:v5];
  }

  return result;
}

- (unint64_t)selectedCalloutIndex
{
  v2 = [(THWInteractiveImageWidgetRep *)self layout];

  return [v2 selectedCalloutIndex];
}

- (void)applyScrollingPolicy
{
  v3 = -[THWInteractiveImageWidgetRep viewportIndex](self, "viewportIndex") || [-[THWInteractiveImageWidgetRep layout](self "layout")];
  v4 = [(THWInteractiveImageWidgetRep *)self stageCanvasController];

  [(THWOverlayableZoomableCanvasController *)v4 setScrollEnabled:v3];
}

- (CALayer)pressableAnimationLayer
{
  v2 = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] view];

  return [(UIView *)v2 layer];
}

- (BOOL)wantsPressAnimation
{
  v2 = [(THWInteractiveImageWidgetRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v2 widgetInteractionDisabledOnPage];
}

- (BOOL)wantsPressAction
{
  if ([(THWInteractiveImageWidgetRep *)self meetsStageDimensionRequirementForExpanded]|| (v3 = [(THWPressableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self pressableHandler] widgetInteractionDisabledOnPage]))
  {
    LOBYTE(v3) = [(THWInteractiveImageWidgetRep *)self pressableAction]!= 0;
  }

  return v3;
}

- (BOOL)p_widgetInteractionDisabledOnPage
{
  v2 = [(THWInteractiveImageWidgetRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v2 widgetInteractionDisabledOnPage];
}

- (CGRect)pressableNaturalBounds
{
  v2 = [(THWInteractiveImageWidgetRep *)self layout];

  [v2 stageFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGAffineTransform)shadowAnimationLayerDestinationTransform:(SEL)a3 uniformTargetScale:(id)a4
{
  v7 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v7;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  v8 = [(THWInteractiveImageWidgetRep *)self shadowAnimationLayer];
  if (self->_imageCropAnimationController)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    [v8 bounds];
    v11 = [(THWInteractiveImageWidgetRep *)self p_isStageBackgroundTransparent];
    imageCropAnimationController = self->_imageCropAnimationController;
    if (v11)
    {
      [(THWImageCropAnimationController *)imageCropAnimationController sourceContentsRect];
      [(THWImageCropAnimationController *)self->_imageCropAnimationController targetContentsRect];
      TSDMultiplyRectBySize();
      v47 = v14;
      v48 = v13;
      TSDMultiplyRectBySize();
    }

    else
    {
      [(THWImageCropAnimationController *)imageCropAnimationController backgroundSourceFrame];
      [v10 convertRect:-[THWImageCropAnimationController wrapperLayer](self->_imageCropAnimationController fromLayer:{"wrapperLayer"), v20, v21, v22, v23}];
      v47 = v25;
      v48 = v24;
      [(THWImageCropAnimationController *)self->_imageCropAnimationController backgroundTargetFrame];
      TSDMultiplyRectScalar();
      [v10 convertRect:-[THWImageCropAnimationController wrapperLayer](self->_imageCropAnimationController fromLayer:{"wrapperLayer"), v26, v27, v28, v29}];
    }

    v46 = v15;
    v18 = v16;
    v19 = v17;
    TSDCenterOfRect();
    TSDCenterOfRect();
    TSDRectWithSize();
    TSDCenterOfRect();
    TSDSubtractPoints();
    v31 = v30;
    v33 = v32;
    TSDSubtractPoints();
    v35 = v34;
    v37 = v36;
    CGAffineTransformMakeTranslation(retstr, v31, v33);
    CGAffineTransformMakeScale(&t2, v18 / v48, v19 / v47);
    v38 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v38;
    *&t1.tx = *&retstr->tx;
    CGAffineTransformConcat(&v51, &t1, &t2);
    v39 = *&v51.c;
    *&retstr->a = *&v51.a;
    *&retstr->c = v39;
    *&retstr->tx = *&v51.tx;
    CGAffineTransformMakeTranslation(&t2, v35, v37);
    v40 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v40;
    *&t1.tx = *&retstr->tx;
    CGAffineTransformConcat(&v51, &t1, &t2);
    v41 = *&v51.c;
    *&retstr->a = *&v51.a;
    *&retstr->c = v41;
    *&retstr->tx = *&v51.tx;
  }

  v42 = [(THWFreeTransformableRepGestureTargetHandler *)self->_freeTransformableHandler ftc];
  if (v42)
  {
    [(THWFreeTransformController *)v42 originalShadowTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v43 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v43;
  *&t1.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&v51, &t1, &t2);
  v45 = *&v51.c;
  *&retstr->a = *&v51.a;
  *&retstr->c = v45;
  *&retstr->tx = *&v51.tx;
  return result;
}

- (CGRect)p_stageBackgroundFrameRelativeToImageContentLayer
{
  v3 = [(THWInteractiveImageWidgetRep *)self p_backgroundImageContentLayer];
  [(CALayer *)self->_stageBackgroundLayer bounds];
  stageBackgroundLayer = self->_stageBackgroundLayer;

  [v3 convertRect:stageBackgroundLayer fromLayer:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)p_setupImageCropAnimationControllerWithDestinationRep:(id)a3
{
  v5 = [(THWInteractiveImageWidgetRep *)self p_backgroundImageContentLayer];
  [a3 setCalloutsVisible:0 animated:0];
  [(THWInteractiveImageWidgetRep *)self setCalloutsVisible:0 animated:0];
  if (v5 && !self->_imageCropAnimationController)
  {
    [(THWInteractiveImageWidgetRep *)self p_backgroundImageContentsRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    if (a3)
    {
      [a3 p_backgroundImageContentsRect];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
    }

    else
    {
      v23 = 1.0;
      v19 = 0.0;
      v21 = 0.0;
      v25 = 1.0;
    }

    v31 = [[THWImageCropAnimationController alloc] initWithImageContentLayer:v5];
    self->_imageCropAnimationController = v31;
    [(THWImageCropAnimationController *)v31 setSourceContentsRect:v11, v13, v15, v17];
    [-[THWInteractiveImageWidgetRep layout](self "layout")];
    v33 = v32;
    [-[THWInteractiveImageWidgetRep canvas](self "canvas")];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setSourceCornerRadius:v33 * v34];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetContentsRect:v19, v21, v23, v25];
    [objc_msgSend(a3 "layout")];
    v36 = v35;
    [objc_msgSend(a3 "canvas")];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetCornerRadius:v36 * v37];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setCropDurationScale:0.5];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setBackgroundDurationScale:0.5];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setCornerRadiusDurationScale:0.5];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setupWrapperLayer];
    v38 = [(THWImageCropAnimationController *)self->_imageCropAnimationController wrapperLayer];
    [(CALayer *)self->_stageBackgroundLayer bounds];
    [(CALayer *)v38 convertRect:self->_stageBackgroundLayer fromLayer:?];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController setBackgroundLayer:0];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setBackgroundLayer:self->_stageBackgroundLayer];
    [(CALayer *)self->_stageBackgroundLayer setFrame:v40, v42, v44, v46];
    [(CALayer *)self->_stageBackgroundLayer removeAllAnimations];
    [a3 p_setupAsAnimationDestination];
    v47 = v40;
    v48 = v42;
    v49 = v44;
    v50 = v46;
    if (a3)
    {
      [a3 p_stageBackgroundFrameRelativeToImageContentLayer];
      v47 = v51;
      v48 = v52;
      v49 = v53;
      v50 = v54;
    }

    [(THWImageCropAnimationController *)self->_imageCropAnimationController setBackgroundSourceFrame:v40, v42, v44, v46];
    imageCropAnimationController = self->_imageCropAnimationController;
    v26 = v47;
    v27 = v48;
    v28 = v49;
    v29 = v50;
  }

  else
  {
    if (!a3)
    {
      return;
    }

    [a3 p_backgroundImageContentsRect];
    if (a3 == self)
    {
      [(THWImageCropAnimationController *)self->_imageCropAnimationController sourceContentsRect];
      [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetContentsRect:?];
      [(THWImageCropAnimationController *)self->_imageCropAnimationController sourceCornerRadius];
    }

    else
    {
      [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetContentsRect:?];
      [objc_msgSend(a3 "layout")];
      v7 = v6;
      [objc_msgSend(a3 "canvas")];
      v9 = v7 * v8;
    }

    [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetCornerRadius:v9];
    [a3 p_stageBackgroundFrameRelativeToImageContentLayer];
    imageCropAnimationController = self->_imageCropAnimationController;
  }

  [(THWImageCropAnimationController *)imageCropAnimationController setBackgroundTargetFrame:v26, v27, v28, v29];
}

- (CGPoint)p_scrollScaledFromClientScaledPoint:(CGPoint)a3
{
  [(THWInteractiveImageWidgetRep *)self baseViewScale];

  TSDMultiplyPointScalar();
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)p_clientScaledFromScrollScaledPoint:(CGPoint)a3
{
  [(THWInteractiveImageWidgetRep *)self baseViewScale];

  TSDMultiplyPointScalar();
  result.y = v4;
  result.x = v3;
  return result;
}

- (UIEdgeInsets)p_insetsWithViewScale:(double)a3 viewportBounds:(CGRect)a4
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  rect = a4.origin.x;
  [(THWInteractiveImageWidgetRep *)self p_imageFrameWithViewScale:?];
  v43 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(THWInteractiveImageWidgetRep *)self p_calloutFrameWithViewScale:a3];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(THWInteractiveImageWidgetRep *)self p_diagramFrameWithViewScale:a3];
  v49 = v22;
  v50 = v21;
  v47 = v24;
  v48 = v23;
  [(THWInteractiveImageWidgetRep *)self p_bufferedHullFrameForImageFrame:v43 calloutFrame:v8, v10, v12, v14, v16, v18, v20];
  x = v53.origin.x;
  v26 = v53.origin.y;
  v27 = v53.size.width;
  v28 = v53.size.height;
  v29 = CGRectGetWidth(v53);
  v54.origin.x = rect;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  if (v29 >= CGRectGetWidth(v54))
  {
    v58.origin.x = x;
    v58.origin.y = v26;
    v58.size.width = v27;
    v58.size.height = v28;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = rect;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    v31 = fmin(MinX, CGRectGetMinX(v59));
    v60.origin.x = x;
    v60.origin.y = v26;
    v60.size.width = v27;
    v60.size.height = v28;
    v32 = CGRectGetMaxX(v60) - v31;
  }

  else
  {
    v55.origin.x = x;
    v55.origin.y = v26;
    v55.size.width = v27;
    v55.size.height = v28;
    MidX = CGRectGetMidX(v55);
    v56.origin.x = rect;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v31 = MidX + CGRectGetWidth(v56) * -0.5;
    v57.origin.x = rect;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    v32 = CGRectGetWidth(v57);
  }

  v61.origin.x = v31;
  v61.origin.y = v26;
  v61.size.width = v32;
  v61.size.height = v28;
  v34 = CGRectGetHeight(v61);
  v62.origin.x = rect;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  if (v34 >= CGRectGetHeight(v62))
  {
    v66.origin.x = v31;
    v66.origin.y = v26;
    v66.size.width = v32;
    v66.size.height = v28;
    MinY = CGRectGetMinY(v66);
    v67.origin.x = rect;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v36 = fmin(MinY, CGRectGetMinY(v67));
    v68.origin.x = v31;
    v68.origin.y = v26;
    v68.size.width = v32;
    v68.size.height = v28;
    v37 = CGRectGetMaxY(v68) - v36;
  }

  else
  {
    v63.origin.x = v31;
    v63.origin.y = v26;
    v63.size.width = v32;
    v63.size.height = v28;
    MidY = CGRectGetMidY(v63);
    v64.origin.x = rect;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v36 = MidY + CGRectGetHeight(v64) * -0.5;
    v65.origin.x = rect;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    v37 = CGRectGetHeight(v65);
  }

  [(THWInteractiveImageWidgetRep *)self p_insetsForInnerFrame:v31 inOuterFrame:v36, v32, v37, v50, v49, v48, v47];
  result.right = v42;
  result.bottom = v41;
  result.left = v40;
  result.top = v39;
  return result;
}

- (double)p_maxCalloutViewScale
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [-[THWInteractiveImageWidgetRep info](self info];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) viewScale];
        v6 = fmax(v6, v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  result = 1.0;
  if (v6 > 0.0)
  {
    return v6;
  }

  return result;
}

- (CGRect)p_expandedViewportFrameInPortalRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [objc_msgSend(-[THWInteractiveImageWidgetRep info](self "info")];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = THScaleNeededToFitSizeInSize(v10, v12, width, height);
  v15 = THRectCenterRectInRect(v7, v9, v11, v13, x, y, width, height);

  v19 = THRectMultiplyRectCenteredScalar(v15, v16, v17, v18, v14);
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGPoint)p_wingOffsetForPortalRect:(CGRect)a3
{
  [(THWInteractiveImageWidgetRep *)self p_expandedViewportFrameInPortalRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  TSDSubtractPoints();
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)p_backgroundImageRep
{
  v3 = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContentICC];
  v4 = [-[THWInteractiveImageWidgetRep info](self "info")];

  return [(TSDInteractiveCanvasController *)v3 repForInfo:v4];
}

- (id)p_backgroundImageContentLayer
{
  objc_opt_class();
  [(THWInteractiveImageWidgetRep *)self p_backgroundImageRep];
  v3 = TSUDynamicCast();

  return [v3 contentsLayer];
}

- (CGRect)p_backgroundImageContentsRect
{
  v3 = [(THWInteractiveImageWidgetRep *)self p_backgroundImageContentLayer];
  if (v3)
  {
    v4 = v3;
    [(THWInteractiveImageWidgetRep *)self p_portalFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v4 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v29.origin.x = v6;
    v29.origin.y = v8;
    v29.size.width = v10;
    v29.size.height = v12;
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v18;
    v31.size.height = v20;
    CGRectIntersection(v29, v31);
    TSDSubtractPoints();
    TSDRectWithOriginAndSize();
    v22 = v21 / v18;
    v24 = v23 / v20;
    v26 = v25 / v18;
    v28 = v27 / v20;
  }

  else
  {
    v26 = 1.0;
    v22 = 0.0;
    v24 = 0.0;
    v28 = 1.0;
  }

  result.size.height = v28;
  result.size.width = v26;
  result.origin.y = v24;
  result.origin.x = v22;
  return result;
}

- (void)p_setupBorderAndBackground
{
  v3 = [(THWInteractiveImageWidgetRep *)self info];
  v4 = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] layer];
  [-[THWInteractiveImageWidgetRep info](self "info")];
  [(CALayer *)v4 setCornerRadius:?];
  objc_opt_class();
  [objc_msgSend(v3 "viewportStyle")];
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = v5;
    [v5 width];
    [(CALayer *)v4 setBorderWidth:?];
    -[CALayer setBorderColor:](v4, "setBorderColor:", [objc_msgSend(v6 "color")]);
    -[THWInteractiveImageWidgetRep setBorderColor:](self, "setBorderColor:", [objc_msgSend(v6 "color")]);
  }

  [-[THWInteractiveImageWidgetRep info](self "info")];
  v8 = v7;
  v9 = [(UIView *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] view] layer];

  [(CALayer *)v9 setCornerRadius:v8];
}

- (void)didExitExpanded
{
  v3 = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] layer];
  v4 = [(THWInteractiveImageWidgetRep *)self borderColor];

  [(CALayer *)v3 setBorderColor:v4];
}

- (void)didPresentExpanded
{
  -[CALayer setBorderColor:](-[THWOverlayableZoomableCanvasController layer](-[THWInteractiveImageWidgetRep stageCanvasController](self, "stageCanvasController"), "layer"), "setBorderColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
  [-[THWInteractiveImageWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContainerICC] setShouldSuppressRendering:0 animated:0];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContentICC] setShouldSuppressRendering:0 animated:0];
  self->_calloutsHidden = 0;
  [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController updateContainerInfosToDisplay];
  v3 = [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContainerICC];

  [(TSDInteractiveCanvasController *)v3 layoutIfNeeded];
}

- (CGRect)p_imageFrame
{
  [objc_msgSend(objc_msgSend(-[THWInteractiveImageWidgetRep info](self "info")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(THWInteractiveImageWidgetRep *)self stageCanvasController];
  if (v11)
  {
    [(THWOverlayableZoomableCanvasController *)v11 contentViewTransform];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  return CGRectApplyAffineTransform(v13, &v12);
}

- (CGRect)p_imageFrameWithViewScale:(double)a3
{
  memset(&v5, 0, sizeof(v5));
  CGAffineTransformMakeScale(&v5, a3, a3);
  [objc_msgSend(objc_msgSend(-[THWInteractiveImageWidgetRep info](self "info")];
  v4 = v5;
  return CGRectApplyAffineTransform(v6, &v4);
}

- (CGRect)p_diagramFrame
{
  [-[THWInteractiveImageWidgetRep info](self "info")];
  v4 = v3;
  [-[THWInteractiveImageWidgetRep info](self "info")];
  v6 = v5;
  v7 = [(THWInteractiveImageWidgetRep *)self stageCanvasController];
  if (v7)
  {
    [(THWOverlayableZoomableCanvasController *)v7 contentViewTransform];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = v4;
  v9.size.height = v6;
  return CGRectApplyAffineTransform(v9, &v8);
}

- (CGRect)p_diagramFrameWithViewScale:(double)a3
{
  memset(&v8, 0, sizeof(v8));
  CGAffineTransformMakeScale(&v8, a3, a3);
  [-[THWInteractiveImageWidgetRep info](self "info")];
  v5 = v4;
  [-[THWInteractiveImageWidgetRep info](self "info")];
  v9.size.height = v6;
  v7 = v8;
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = v5;
  return CGRectApplyAffineTransform(v9, &v7);
}

- (CGRect)p_calloutFrameWithViewScale:(double)a3
{
  v4 = [(THWInteractiveImageWidgetRep *)self layout];

  [v4 calloutFrameWithViewScale:a3];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)p_viewportFrame
{
  [(THWInteractiveImageWidgetRep *)self p_portalFrame];

  [(THWInteractiveImageWidgetRep *)self p_expandedViewportFrameInPortalRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_portalFrame
{
  [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] contentOffset];
  v4 = v3;
  [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] contentOffset];
  v6 = v5;
  [(UIView *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] view] bounds];
  v8 = v7;
  [(UIView *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] view] bounds];
  v10 = v4;
  v11 = v6;
  v12 = v8;
  result.size.height = v9;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)p_bufferedHullFrameForImageFrame:(CGRect)a3 calloutFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v30 = a3.origin.x;
  v31 = a3.origin.y;
  v32 = CGRectUnion(a3, a4);
  v24 = v32.origin.y;
  v25 = v32.origin.x;
  v23 = v32.size.width;
  v26 = v32.size.height;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v29 = 0.0;
  v10 = 0.0;
  if (CGRectGetWidth(v32) > 0.0)
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    MinX = CGRectGetMinX(v33);
    v34.origin.x = v30;
    v34.origin.y = v31;
    v34.size.width = v9;
    v34.size.height = v8;
    if (MinX >= CGRectGetMinX(v34))
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 30.0;
    }
  }

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  if (CGRectGetHeight(v35) > 0.0)
  {
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = v30;
    v37.origin.y = v31;
    v37.size.width = v9;
    v37.size.height = v8;
    v13 = MinY < CGRectGetMinY(v37);
    v14 = 0.0;
    if (v13)
    {
      v14 = 30.0;
    }

    v29 = v14;
  }

  v27 = v9;
  v28 = v8;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v15 = 0.0;
  v16 = 0.0;
  if (CGRectGetWidth(v38) > 0.0)
  {
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    MaxX = CGRectGetMaxX(v39);
    v40.origin.x = v30;
    v40.origin.y = v31;
    v40.size.width = v27;
    v40.size.height = v28;
    if (MaxX <= CGRectGetMaxX(v40))
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 30.0;
    }
  }

  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  if (CGRectGetHeight(v41) > 0.0)
  {
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    MaxY = CGRectGetMaxY(v42);
    v43.origin.x = v30;
    v43.origin.y = v31;
    v43.size.width = v27;
    v43.size.height = v28;
    if (MaxY <= CGRectGetMaxY(v43))
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 30.0;
    }
  }

  v19 = v25 - v10;
  v20 = v24 - v29;
  v21 = v23 + v10 + v16;
  v22 = v26 + v29 + v15;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (UIEdgeInsets)p_insetsForInnerFrame:(CGRect)a3 inOuterFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v7 = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  v21 = a4.size.width;
  MinY = CGRectGetMinY(a4);
  v24.origin.x = v10;
  v24.origin.y = v9;
  v24.size.width = v8;
  v24.size.height = v7;
  v23 = MinY - CGRectGetMinY(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = v10;
  v26.origin.y = v9;
  v26.size.width = v8;
  v26.size.height = v7;
  v22 = MinX - CGRectGetMinX(v26);
  v27.origin.x = v10;
  v27.origin.y = v9;
  v27.size.width = v8;
  v27.size.height = v7;
  MaxY = CGRectGetMaxY(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = v21;
  v28.size.height = height;
  v14 = MaxY - CGRectGetMaxY(v28);
  v29.origin.x = v10;
  v29.origin.y = v9;
  v29.size.width = v8;
  v29.size.height = v7;
  MaxX = CGRectGetMaxX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = v21;
  v30.size.height = height;
  v16 = MaxX - CGRectGetMaxX(v30);
  v18 = v22;
  v17 = v23;
  v19 = v14;
  result.right = v16;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (void)p_setupMinimumViewScale
{
  objc_opt_class();
  [(THWInteractiveImageWidgetRep *)self info];
  v3 = TSUDynamicCast();
  v4 = [v3 calloutCount];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0.0;
    do
    {
      [objc_msgSend(v3 calloutAtIndex:{v6), "viewScale"}];
      if (v7 >= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      if (v7 == 0.0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v9;
      }

      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    v7 = 0.0;
  }

  [(THWInteractiveImageWidgetRep *)self baseViewScale];
  v11 = v7 * v10;
  if (v11 > 0.0)
  {
    v12 = [-[TSDInteractiveCanvasController canvasView](-[THWOverlayableZoomableCanvasController scrollContentICC](-[THWInteractiveImageWidgetRep stageCanvasController](self "stageCanvasController")];

    [v12 setMinimumPinchViewScale:v11];
  }
}

- (void)p_setupInitialZoom
{
  objc_opt_class();
  [(THWInteractiveImageWidgetRep *)self info];
  v3 = TSUDynamicCast();
  if ([(THWInteractiveImageWidgetRep *)self useStoredViewportIndex])
  {
    [(THWInteractiveImageWidgetController *)self->_controller selectOption:[(THWInteractiveImageWidgetRep *)self storedViewportIndex] force:1 animated:0];
  }

  else
  {
    v4 = [v3 calloutAtIndex:{-[THWInteractiveImageWidgetRep viewportIndex](self, "viewportIndex")}];
    [v4 viewScale];
    v6 = v5;
    [v4 contentOffset];
    [(THWInteractiveImageWidgetRep *)self p_updateDiagramWithZoom:0 offset:[(THWInteractiveImageWidgetRep *)self viewportIndex] animated:0 previousCalloutIndex:v6 completion:v7, v8];
  }

  [(THWInteractiveImageWidgetRep *)self applyScrollingPolicy];

  [(THWInteractiveImageWidgetRep *)self p_setupMinimumViewScale];
}

- (void)p_adjustScrollViewContentInsets
{
  [(THWInteractiveImageWidgetRep *)self p_portalFrame];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContentICC] viewScale];
  [THWInteractiveImageWidgetRep p_insetsWithViewScale:"p_insetsWithViewScale:viewportBounds:" viewportBounds:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(THWInteractiveImageWidgetRep *)self stageCanvasController];

  [(THWOverlayableZoomableCanvasController *)v11 setContentInset:v4, v6, v8, v10];
}

- (void)p_invalidateCalloutReps
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [-[THWInteractiveImageWidgetRep layout](self layout];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) invalidateFrame];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)p_updateDiagramWithZoom:(double)a3 offset:(CGPoint)a4 animated:(BOOL)a5 previousCalloutIndex:(unint64_t)a6 completion:(id)a7
{
  [(THWInteractiveImageWidgetRep *)self setTargetViewScale:?];
  TSDRoundedPoint();
  v13 = v12;
  v15 = v14;
  [(THWInteractiveImageWidgetRep *)self baseViewScale];
  v17 = v16 * a3;
  [(THWInteractiveImageWidgetRep *)self p_scrollScaledFromClientScaledPoint:v13, v15];
  v20 = v18;
  v21 = v19;
  if (a5)
  {
    self->_animationPreviousCalloutIndex = a6;
    v22 = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContainerICC];
    [(THWInteractiveImageWidgetRep *)self setAnimatingCallouts:1, _NSConcreteStackBlock, 3221225472, sub_174D1C, &unk_45E0D8, self, v22, a7, a6];
    [-[TSDInteractiveCanvasController trackingController](v22 "trackingController")];
    [objc_msgSend(-[THWInteractiveImageWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
    [-[TSDInteractiveCanvasController trackingController](-[THWOverlayableZoomableCanvasController scrollContentICC](-[THWInteractiveImageWidgetRep stageCanvasController](self "stageCanvasController")];
    +[CATransaction begin];
    [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContentICC] beginAnimations:@"view-scale" context:0];
    [(TSDInteractiveCanvasController *)v22 beginAnimations:@"callout-bounds" context:0];
    [(THWInteractiveImageWidgetRep *)self zoomDuration];
    [(TSDInteractiveCanvasController *)v22 setAnimationDuration:?];
    [(TSDInteractiveCanvasController *)v22 setAnimationUseRepFiltering:1];
    [-[THWInteractiveImageWidgetRep layout](self "layout")];
    [(THWInteractiveImageWidgetRep *)self setViewScale:1 contentOffset:&v24 animated:a3 completion:v13, v15];
    [(THWInteractiveImageWidgetRep *)self p_invalidateCalloutReps];
    [objc_msgSend(-[THWInteractiveImageWidgetRep layout](self "layout")];
    [(TSDInteractiveCanvasController *)v22 layoutIfNeeded];
    [(TSDInteractiveCanvasController *)v22 commitAnimations];
    [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContentICC] commitAnimations];
    [(THWInteractiveImageWidgetRep *)self setAnimatingCallouts:0];
    +[CATransaction commit];
    self->_animationPreviousCalloutIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    [-[THWInteractiveImageWidgetRep layout](self "layout")];
    [(THWInteractiveImageWidgetRep *)self setViewScale:0 contentOffset:0 animated:a3 completion:v13, v15];
    [(THWInteractiveImageWidgetRep *)self p_invalidateCalloutReps];
    [objc_msgSend(-[THWInteractiveImageWidgetRep layout](self "layout")];
    [objc_msgSend(-[THWInteractiveImageWidgetRep layout](self "layout")];
    [(THWInteractiveImageWidgetRep *)self p_adjustScrollViewContentInsets];
    if (a7)
    {
      v23 = *(a7 + 2);

      v23(a7, 1);
    }
  }
}

- (id)p_sidebarRep
{
  objc_opt_class();
  -[TSDInteractiveCanvasController repForLayout:](-[THWOverlayableZoomableCanvasController scrollContainerICC](self->_stageCanvasController, "scrollContainerICC"), "repForLayout:", [-[THWInteractiveImageWidgetRep layout](self "layout")]);

  return TSUDynamicCast();
}

- (void)p_updateDiagramAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = a3;
  objc_opt_class();
  [(THWInteractiveImageWidgetRep *)self info];
  v7 = [TSUDynamicCast() calloutAtIndex:{-[THWInteractiveImageWidgetRep viewportIndex](self, "viewportIndex")}];
  [v7 viewScale];
  v9 = v8;
  [v7 contentOffset];
  v11 = v10;
  v13 = v12;
  v14 = [(THWInteractiveImageWidgetRep *)self viewportIndex];

  [(THWInteractiveImageWidgetRep *)self p_updateDiagramWithZoom:v5 offset:v14 animated:a4 previousCalloutIndex:v9 completion:v11, v13];
}

- (void)changeToViewport:(unint64_t)a3 previousCalloutIndex:(unint64_t)a4 contentOffset:(CGPoint)a5 animated:(BOOL)a6
{
  v6 = a6;
  v9 = [-[THWInteractiveImageWidgetRep info](self "info")];
  [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] setScrollEnabled:0];
  [-[THWInteractiveImageWidgetRep layout](self "layout")];
  [v9 viewScale];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_175038;
  v10[3] = &unk_45B188;
  v10[4] = self;
  [THWInteractiveImageWidgetRep p_updateDiagramWithZoom:"p_updateDiagramWithZoom:offset:animated:previousCalloutIndex:completion:" offset:v6 animated:a4 previousCalloutIndex:v10 completion:?];
}

- (void)selectedCalloutIndexUpdatedAnimated:(BOOL)a3
{
  v3 = a3;
  [(THWInteractiveImageWidgetRep *)self setPanelDescriptionExpanded:0];
  if (v3)
  {
    expandedRepController = self->_expandedRepController;
    [(THWInteractiveImageWidgetRep *)self zoomDuration];
    [(THWExpandedRepController *)expandedRepController expandedRepControllerAnimatePanel:1 withCrossFadeContent:1 backgroundLayout:0 duration:?];
  }

  v6 = self->_expandedRepController;

  [(THWExpandedRepController *)v6 expandedRepControllerInvalidateChildrenInPanel:1 invalidateWPAuto:1];
}

- (BOOL)userInteractionEnabled
{
  v2 = [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContainerICC] canvasView];

  return [v2 isUserInteractionEnabled];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  if (a3)
  {
    if ([(THWInteractiveImageWidgetRep *)self pressableHandler])
    {
      v4 = [(THWPressableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self pressableHandler] widgetInteractionEnabled];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContainerICC] canvasView];

  [v5 setUserInteractionEnabled:v4];
}

- (CGPoint)interactiveImageCallout:(id)a3 convertContentPointToUnscaledOverlayPoint:(CGPoint)a4
{
  [(THWInteractiveImageWidgetRep *)self convertContentPointToUnscaledOverlayPoint:a3, a4.x, a4.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)interactiveImageCalloutPressed:(id)a3
{
  v4 = [-[THWInteractiveImageWidgetRep info](self "info")];
  controller = self->_controller;

  [(THWInteractiveImageWidgetController *)controller selectOption:v4];
}

- (BOOL)interactiveImageCalloutIsScrollViewDragging:(id)a3
{
  v3 = [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContentICC] canvasView];

  return [v3 isAncestorScrollViewDragging];
}

@end
@interface THWInteractiveImageWidgetRep
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)expandedHasContentForPanel:(int)panel;
- (BOOL)expandedPanel:(int)panel isVisibleWithDefault:(BOOL)default;
- (BOOL)expandedPanelAllowVisible;
- (BOOL)expandedWantsSingleTapBehavior;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)interactiveImageCalloutIsScrollViewDragging:(id)dragging;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)overlayableZoomableCanvasControllerDeferViewCreation:(id)creation;
- (BOOL)overlayableZoomableCanvasControllerIsRelatedCanvasScrolling:(id)scrolling;
- (BOOL)p_createViewIfNeededWithFrame:(CGRect)frame;
- (BOOL)p_isExpanding;
- (BOOL)p_isStageBackgroundTransparent;
- (BOOL)p_widgetInteractionDisabledOnPage;
- (BOOL)userInteractionEnabled;
- (BOOL)wantsPressAction;
- (BOOL)wantsPressAnimation;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGAffineTransform)shadowAnimationLayerDestinationTransform:(SEL)transform uniformTargetScale:(id)scale;
- (CGPoint)contentOffset;
- (CGPoint)convertContentPointToUnscaledOverlayPoint:(CGPoint)point;
- (CGPoint)interactiveImageCallout:(id)callout convertContentPointToUnscaledOverlayPoint:(CGPoint)point;
- (CGPoint)p_clientScaledContentOffsetFromScrollview;
- (CGPoint)p_clientScaledFromScrollScaledPoint:(CGPoint)point;
- (CGPoint)p_scrollScaledFromClientScaledPoint:(CGPoint)point;
- (CGPoint)p_wingOffsetForPortalRect:(CGRect)rect;
- (CGRect)ftcTargetFrame;
- (CGRect)naturalBoundsForHitTesting;
- (CGRect)p_backgroundImageContentsRect;
- (CGRect)p_bufferedHullFrameForImageFrame:(CGRect)frame calloutFrame:(CGRect)calloutFrame;
- (CGRect)p_calloutFrameWithViewScale:(double)scale;
- (CGRect)p_diagramFrame;
- (CGRect)p_diagramFrameWithViewScale:(double)scale;
- (CGRect)p_expandedViewportFrameInPortalRect:(CGRect)rect;
- (CGRect)p_imageFrame;
- (CGRect)p_imageFrameWithViewScale:(double)scale;
- (CGRect)p_portalFrame;
- (CGRect)p_stageBackgroundFrameRelativeToImageContentLayer;
- (CGRect)p_viewportFrame;
- (CGRect)pressableNaturalBounds;
- (CGRect)rectForCompletion;
- (CGSize)sizeOfContentCanvasForOverlayableZoomableCanvasController:(id)controller;
- (THAnimationController)animationController;
- (THWInteractiveImageWidgetRep)initWithLayout:(id)layout canvas:(id)canvas;
- (UIEdgeInsets)expandedStackedControlContainerInsetsForPanel:(int)panel withDefault:(UIEdgeInsets)default;
- (UIEdgeInsets)p_insetsForInnerFrame:(CGRect)frame inOuterFrame:(CGRect)outerFrame;
- (UIEdgeInsets)p_insetsWithViewScale:(double)scale viewportBounds:(CGRect)bounds;
- (double)baseViewScale;
- (double)expandedMinHeightForPanel:(int)panel withDefault:(double)default;
- (double)overlayableZoomableCanvasControllerContentsScale:(id)scale;
- (double)p_maxCalloutViewScale;
- (double)zoomDuration;
- (id)additionalGestureTargetsForZoomableCanvasController:(id)controller gesture:(id)gesture;
- (id)animationLayer;
- (id)calloutInfoForDisplay;
- (id)calloutReps;
- (id)documentRootForOverlayableZoomableCanvasController:(id)controller;
- (id)expandedAdditionalChildLayoutsForPanel:(int)panel;
- (id)expandedChildInfosForPanel:(int)panel;
- (id)expandedLayoutGeometryForLayout:(id)layout inPanel:(int)panel withWidth:(double)width insets:(UIEdgeInsets)insets;
- (id)expandedPanel:(int)panel primaryTargetForGesture:(id)gesture;
- (id)expandedRotationAnimationController;
- (id)infosToDisplayForContainerInOverlayableZoomableCanvasController:(id)controller;
- (id)overlayableZoomableCanvasController:(id)controller infosToDisplayForContentViewport:(CGRect)viewport;
- (id)overlayableZoomableCanvasController:(id)controller primaryTargetForGesture:(id)gesture;
- (id)p_backgroundImageContentLayer;
- (id)p_backgroundImageRep;
- (id)p_imageRep;
- (id)p_sidebarRep;
- (id)shadowAnimationLayer;
- (id)shadowPath;
- (id)styledRep;
- (id)targetLayer;
- (id)viewControllerForView:(id)view;
- (unint64_t)selectedCalloutIndex;
- (unint64_t)viewportIndex;
- (unsigned)expandedMaxLineCountForTextLayout:(id)layout inPanel:(int)panel withDefault:(unsigned int)default;
- (void)addAlternateLayersForChildViewsToArray:(id)array;
- (void)addChildViewsToArray:(id)array;
- (void)animatableDestinationSetupTarget:(id)target;
- (void)animationControllerDidAddContentAnimations:(id)animations uniformTargetScale:(double)scale;
- (void)animationControllerDidPresent:(id)present;
- (void)animationControllerSetupTarget:(id)target;
- (void)animationControllerTeardownTarget:(id)target;
- (void)applyScrollingPolicy;
- (void)changeToViewport:(unint64_t)viewport previousCalloutIndex:(unint64_t)index contentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)control:(id)control repWasAdded:(id)added;
- (void)control:(id)control repWillBeRemoved:(id)removed;
- (void)dealloc;
- (void)didExitExpanded;
- (void)didPresentExpanded;
- (void)didUpdateLayer:(id)layer;
- (void)expandedPanel:(int)panel willAnimateToVisible:(BOOL)visible duration:(double)duration;
- (void)expandedPanel:(int)panel willChangeToVisible:(BOOL)visible;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame;
- (void)expandedWillPresentWithController:(id)controller;
- (void)freeTransformDidEnd;
- (void)freeTransformWillBegin;
- (void)handleNavigateCommandWithNumber:(unint64_t)number;
- (void)handleNavigateNextCommand;
- (void)handleNavigatePreviousCommand;
- (void)interactiveImageCalloutPressed:(id)pressed;
- (void)overlayableZoomableCanvasController:(id)controller willLayoutRep:(id)rep;
- (void)p_adjustScrollViewContentInsets;
- (void)p_invalidateCalloutReps;
- (void)p_setupBorderAndBackground;
- (void)p_setupImageCropAnimationControllerWithDestinationRep:(id)rep;
- (void)p_setupInitialZoom;
- (void)p_setupMinimumViewScale;
- (void)p_supressRendering:(BOOL)rendering;
- (void)p_teardownImageCropAnimationControllerWithDestinationRep:(id)rep;
- (void)p_togglePanelDescriptionExpanded;
- (void)p_updateDiagramAnimated:(BOOL)animated completion:(id)completion;
- (void)p_updateDiagramWithZoom:(double)zoom offset:(CGPoint)offset animated:(BOOL)animated previousCalloutIndex:(unint64_t)index completion:(id)completion;
- (void)p_updateStageBackgroundLayer;
- (void)p_updateStageBackgroundLayerFromLayout;
- (void)replaceContentsFromRep:(id)rep;
- (void)screenScaleDidChange;
- (void)selectedCalloutIndexUpdatedAnimated:(BOOL)animated;
- (void)setCalloutsVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setViewScale:(double)scale contentOffset:(CGPoint)offset animated:(BOOL)animated completion:(id)completion;
- (void)updateFromLayout;
- (void)updatedHovering;
- (void)viewScaleDidChange;
- (void)widgetInteractionModeChanged;
- (void)willBeRemoved;
- (void)willBeginHandlingGesture:(id)gesture;
- (void)willRemoveChildView:(id)view;
- (void)willReplaceContentsFromRep:(id)rep;
@end

@implementation THWInteractiveImageWidgetRep

- (THWInteractiveImageWidgetRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v21.receiver = self;
  v21.super_class = THWInteractiveImageWidgetRep;
  v4 = [(THWInteractiveImageWidgetRep *)&v21 initWithLayout:layout canvas:canvas];
  if (v4)
  {
    v4->_freeTransformableHandler = -[THWFreeTransformableRepGestureTargetHandler initWithFreeTransformableRep:handler:]([THWFreeTransformableRepGestureTargetHandler alloc], "initWithFreeTransformableRep:handler:", v4, [objc_msgSend(-[THWInteractiveImageWidgetRep hostICC](v4 "hostICC")]);
    v5 = [[THWInteractiveImageWidgetController alloc] initWithLayout:[(THWInteractiveImageWidgetRep *)v4 layout]];
    v4->_controller = v5;
    [(THWInteractiveImageWidgetController *)v5 setDelegate:v4];
    v4->_borderColor = [+[TSUColor clearColor](TSUColor "clearColor")];
    v4->_animationPreviousCalloutIndex = 0x7FFFFFFFFFFFFFFFLL;
    layout = [(THWInteractiveImageWidgetRep *)v4 layout];
    [layout stageFrame];
    [layout rectInRoot:?];
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
    pressHandlerForPressableReps = [TSUDynamicCast() pressHandlerForPressableReps];
    if (pressHandlerForPressableReps)
    {
      v19 = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:v4 pressHandler:pressHandlerForPressableReps];
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
  layout = [(THWInteractiveImageWidgetRep *)self layout];

  [layout stageFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)p_createViewIfNeededWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layout = [(THWInteractiveImageWidgetRep *)self layout];
  if (self->_stageCanvasController)
  {
    v9 = layout;
    height = [-[THWInteractiveImageWidgetRep layout](self "layout")];
    if (height)
    {
      height = [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController createViewIfNeededWithFrame:x, y, width, height];
      if (height)
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
        LOBYTE(height) = 1;
      }
    }
  }

  else
  {
    LOBYTE(height) = 0;
  }

  return height;
}

- (id)calloutReps
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  layout = [-[THWInteractiveImageWidgetRep layout](self layout];
  v5 = [layout countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(layout);
        }

        v9 = [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContainerICC] repForLayout:*(*(&v11 + 1) + 8 * v8)];
        if (v9)
        {
          [v3 addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [layout countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setCalloutsVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  calloutReps = [(THWInteractiveImageWidgetRep *)self calloutReps];
  v8 = [calloutReps countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(calloutReps);
        }

        [*(*(&v13 + 1) + 8 * v11) setVisible:visibleCopy animated:animatedCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [calloutReps countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  p_sidebarRep = [(THWInteractiveImageWidgetRep *)self p_sidebarRep];
  if (p_sidebarRep)
  {
    [p_sidebarRep setVisible:visibleCopy animated:animatedCopy];
  }

  else
  {
    [objc_msgSend(-[THWInteractiveImageWidgetRep layout](self "layout")];
  }
}

- (unint64_t)viewportIndex
{
  controller = [(THWInteractiveImageWidgetRep *)self controller];

  return [(THWInteractiveImageWidgetController *)controller calloutIndex];
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

- (void)willReplaceContentsFromRep:(id)rep
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
      p_imageRep = [v5 p_imageRep];

      self->_cachedImage = 0;
      self->_cachedImage = [p_imageRep newCachedSizedImage];
    }

    else
    {
      p_imageRep2 = [(THWInteractiveImageWidgetRep *)self p_imageRep];
      [p_imageRep2 pushDisableImageSizing];
      viewportIndex = [v5 viewportIndex];
      if (viewportIndex == -[THWInteractiveImageWidgetController calloutIndex](self->_controller, "calloutIndex") || (v9 = [objc_msgSend(v5 "p_imageRep")]) == 0)
      {
        controller = self->_controller;
        viewportIndex2 = [v5 viewportIndex];

        [(THWInteractiveImageWidgetController *)controller selectOption:viewportIndex2 force:1 animated:0];
      }

      else
      {
        v10 = v9;
        [p_imageRep2 useCachedSizedImage:v9];

        -[THWInteractiveImageWidgetController selectOption:force:animated:](self->_controller, "selectOption:force:animated:", [v5 viewportIndex], 1, 0);
        [objc_msgSend(p_imageRep2 "interactiveCanvasController")];

        [p_imageRep2 generateSizedImageOnBackgroundThread];
      }
    }
  }
}

- (void)replaceContentsFromRep:(id)rep
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
    p_imageRep = [(THWInteractiveImageWidgetRep *)self p_imageRep];

    [p_imageRep popDisableImageSizing];
  }
}

- (void)widgetInteractionModeChanged
{
  if ([(THWInteractiveImageWidgetRep *)self pressableHandler])
  {
    widgetInteractionEnabled = [(THWPressableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self pressableHandler] widgetInteractionEnabled];
  }

  else
  {
    widgetInteractionEnabled = 1;
  }

  [(THWInteractiveImageWidgetRep *)self setUserInteractionEnabled:widgetInteractionEnabled];
}

- (void)viewScaleDidChange
{
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContentICC] contentOffset];
  v20.receiver = self;
  v20.super_class = THWInteractiveImageWidgetRep;
  [(THWInteractiveImageWidgetRep *)&v20 updateFromLayout];
  layout = [(THWInteractiveImageWidgetRep *)self layout];
  [-[THWInteractiveImageWidgetRep layout](self "layout")];
  [layout rectInRoot:?];
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

- (void)didUpdateLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = THWInteractiveImageWidgetRep;
  [(THWInteractiveImageWidgetRep *)&v4 didUpdateLayer:layer];
  [(THWInteractiveImageWidgetRep *)self p_updateStageBackgroundLayer];
}

- (void)p_updateStageBackgroundLayerFromLayout
{
  layout = [(THWInteractiveImageWidgetRep *)self layout];
  [-[THWInteractiveImageWidgetRep layout](self "layout")];
  [layout rectInRoot:?];
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
  cGImage = 0;
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

      cGImage = [(TSUImage *)stageBackgroundImage CGImage];
      [(CALayer *)self->_stageBackgroundLayer setContentsGravity:kCAGravityResize];
      v7 = 0;
    }

    else
    {
      v7 = [objc_msgSend(v5 "referenceColor")];
      cGImage = 0;
    }
  }

  if (v7 != [(CALayer *)self->_stageBackgroundLayer backgroundColor])
  {
    [(CALayer *)self->_stageBackgroundLayer setBackgroundColor:v7];
  }

  if (cGImage != [(CALayer *)self->_stageBackgroundLayer contents])
  {
    [(CALayer *)self->_stageBackgroundLayer setContents:cGImage];
  }
}

- (void)addChildViewsToArray:(id)array
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  layout = [(THWInteractiveImageWidgetRep *)self layout];
  if (layout)
  {
    v6 = layout;
    [layout stageFrame];
    [v6 rectInRoot:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(THWInteractiveImageWidgetRep *)self p_createViewIfNeededWithFrame:?];
    stageCanvasController = [(THWInteractiveImageWidgetRep *)self stageCanvasController];
    [-[THWInteractiveImageWidgetRep canvas](self "canvas")];
    [(THWOverlayableZoomableCanvasController *)stageCanvasController setNaturalFrame:v8 scale:v10, v12, v14, v16];
    view = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] view];
    if (view)
    {

      [array addObject:view];
    }
  }
}

- (id)viewControllerForView:(id)view
{
  stageCanvasController = [(THWInteractiveImageWidgetRep *)self stageCanvasController];
  if ([(THWOverlayableZoomableCanvasController *)stageCanvasController view]!= view)
  {
    return 0;
  }

  return [(THWOverlayableZoomableCanvasController *)stageCanvasController viewController];
}

- (void)willRemoveChildView:(id)view
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  stageCanvasController = self->_stageCanvasController;
  if (stageCanvasController && [(THWOverlayableZoomableCanvasController *)stageCanvasController view]== view)
  {
    v6 = self->_stageCanvasController;

    [(THWOverlayableZoomableCanvasController *)v6 teardownView];
  }
}

- (double)baseViewScale
{
  layout = [(THWInteractiveImageWidgetRep *)self layout];

  [layout baseViewScale];
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

- (void)setViewScale:(double)scale contentOffset:(CGPoint)offset animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  [(THWInteractiveImageWidgetRep *)self baseViewScale];
  v13 = v12;
  v14 = 0.0;
  if (animatedCopy)
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
  stageCanvasController = [(THWInteractiveImageWidgetRep *)self stageCanvasController];

  [(THWOverlayableZoomableCanvasController *)stageCanvasController setViewScale:completion contentOffset:v13 * scale animationDuration:v19 completion:v21, v14];
}

- (void)addAlternateLayersForChildViewsToArray:(id)array
{
  alternateLayerForView = [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController alternateLayerForView];
  if (alternateLayerForView)
  {

    [array addObject:alternateLayerForView];
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

- (void)animationControllerSetupTarget:(id)target
{
  objc_opt_class();
  [target destination];
  v5 = TSUDynamicCast();

  [(THWInteractiveImageWidgetRep *)self p_setupImageCropAnimationControllerWithDestinationRep:v5];
}

- (void)p_teardownImageCropAnimationControllerWithDestinationRep:(id)rep
{
  [rep p_teardownAsAnimationDestination];
  [(THWImageCropAnimationController *)self->_imageCropAnimationController setBackgroundLayer:0];
  [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController setBackgroundLayer:self->_stageBackgroundLayer];
  [(THWInteractiveImageWidgetRep *)self p_updateStageBackgroundLayerFromLayout];
  [(THWImageCropAnimationController *)self->_imageCropAnimationController teardownWrapperLayer];

  self->_imageCropAnimationController = 0;
}

- (void)animationControllerTeardownTarget:(id)target
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    objc_opt_class();
    [target destination];
    [(THWInteractiveImageWidgetRep *)self p_teardownImageCropAnimationControllerWithDestinationRep:TSUDynamicCast()];
  }

  [(CALayer *)[(THWInteractiveImageWidgetRep *)self sourceOverlayLayer] setSublayers:0];

  [(THWInteractiveImageWidgetRep *)self setSourceOverlayLayer:0];
}

- (void)animationControllerDidPresent:(id)present
{
  objc_opt_class();
  [present destination];
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

- (void)animationControllerDidAddContentAnimations:(id)animations uniformTargetScale:(double)scale
{
  [animations animationDuration];
  v8 = v7;
  [THWImageCropAnimationController addAnimationWithDuration:"addAnimationWithDuration:targetScale:" targetScale:?];
  objc_opt_class();
  [animations destination];
  if (TSUDynamicCast())
  {
    scaleCopy = scale;
  }

  else
  {
    scaleCopy = 1.0;
  }

  imageCropAnimationController = self->_imageCropAnimationController;

  [(THWImageCropAnimationController *)imageCropAnimationController addBackgroundAnimationWithDuration:v8 targetScale:scaleCopy];
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

- (void)animatableDestinationSetupTarget:(id)target
{
  objc_opt_class();
  [(THWExpandedRepController *)self->_expandedRepController expandedRepSourceRep];
  if (!TSUDynamicCast())
  {
    [(THWInteractiveImageWidgetRep *)self p_supressRendering:0];
    [-[THWInteractiveImageWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
    [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContainerICC] layoutIfNeeded];
    scrollContentICC = [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContentICC];

    [(TSDInteractiveCanvasController *)scrollContentICC layoutIfNeeded];
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
  layout = [(THWInteractiveImageWidgetRep *)self layout];

  return [layout isExpanded];
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
  layout = [(THWInteractiveImageWidgetRep *)self layout];

  [layout frameInParent];
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

- (void)expandedWillPresentWithController:(id)controller
{
  self->_expandedRepController = controller;
  if ([(THWInteractiveImageWidgetRep *)self p_shouldSuppressRenderingDuringExpansion])
  {

    [(THWInteractiveImageWidgetRep *)self p_supressRendering:1];
  }
}

- (void)p_supressRendering:(BOOL)rendering
{
  renderingCopy = rendering;
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContainerICC] setShouldSuppressRendering:rendering animated:0];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContentICC] setShouldSuppressRendering:renderingCopy animated:0];
  interactiveCanvasController = [(THWInteractiveImageWidgetRep *)self interactiveCanvasController];

  [interactiveCanvasController setShouldSuppressRendering:renderingCopy animated:0];
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame
{
  [-[THWInteractiveImageWidgetRep layout](self layout];
  [-[THWInteractiveImageWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContainerICC] layoutIfNeeded];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContentICC] layoutIfNeeded];
  stageCanvasController = [(THWInteractiveImageWidgetRep *)self stageCanvasController];
  layout = [(THWInteractiveImageWidgetRep *)self layout];
  [-[THWInteractiveImageWidgetRep layout](self "layout")];
  [layout rectInRoot:?];
  [THWOverlayableZoomableCanvasController setNaturalFrame:stageCanvasController scale:"setNaturalFrame:scale:"];

  [(THWInteractiveImageWidgetRep *)self updateDiagramAnimated:0];
}

- (BOOL)expandedHasContentForPanel:(int)panel
{
  v3 = *&panel;
  layout = [(THWInteractiveImageWidgetRep *)self layout];

  return [layout hasContentForPanel:v3];
}

- (id)expandedChildInfosForPanel:(int)panel
{
  v3 = *&panel;
  layout = [(THWInteractiveImageWidgetRep *)self layout];

  return [layout infosForPanel:v3];
}

- (id)expandedAdditionalChildLayoutsForPanel:(int)panel
{
  v3 = *&panel;
  layout = [(THWInteractiveImageWidgetRep *)self layout];

  return [layout additionalLayoutsForPanel:v3];
}

- (double)expandedMinHeightForPanel:(int)panel withDefault:(double)default
{
  if (panel == 2)
  {
    if ([-[THWInteractiveImageWidgetRep layout](self "layout")] && !objc_msgSend(objc_msgSend(-[THWInteractiveImageWidgetRep layout](self, "layout"), "additionalLayoutsForPanel:", 2), "count"))
    {
      return 0.0;
    }
  }

  else if (panel == 1 && [-[THWInteractiveImageWidgetRep layout](self "layout")])
  {
    return 0.0;
  }

  return default;
}

- (id)expandedLayoutGeometryForLayout:(id)layout inPanel:(int)panel withWidth:(double)width insets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  v10 = [TSUProtocolCast() tag];
  if (panel != 2 || v10 != &dword_0 + 3)
  {
    return 0;
  }

  v11 = [[TSDLayoutGeometry alloc] initWithFrame:{CGPointZero.x, CGPointZero.y, width - left - right, 31.0}];

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
  calloutReps = [(THWInteractiveImageWidgetRep *)self calloutReps];
  v3 = [calloutReps countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(calloutReps);
        }

        if ([*(*(&v8 + 1) + 8 * v6) hovering])
        {
          return 0;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [calloutReps countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  expandedRepController = [(THWInteractiveImageWidgetRep *)self expandedRepController];

  [(THWExpandedRepController *)expandedRepController expandedRepControllerUpdatePanelVisibility];
}

- (BOOL)canHandleGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if ([(THWPressableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self pressableHandler] canHandleGesture:gesture])
  {
    goto LABEL_2;
  }

  userInteractionEnabled = [(THWInteractiveImageWidgetRep *)self userInteractionEnabled];
  if (!userInteractionEnabled)
  {
    return userInteractionEnabled;
  }

  if (-[THWFreeTransformableRepGestureTargetHandler canHandleGesture:](-[THWInteractiveImageWidgetRep freeTransformableHandler](self, "freeTransformableHandler"), "canHandleGesture:", gesture) || ([-[THWInteractiveImageWidgetRep layout](self "layout")] & 1) == 0 && (objc_msgSend(gestureKind, "isEqual:", TSDShortTap) & 1) != 0)
  {
LABEL_2:
    LOBYTE(userInteractionEnabled) = 1;
  }

  else
  {
    userInteractionEnabled = [(THWInteractiveImageWidgetRep *)self p_singleTapResetsToDefaultZoom];
    if (userInteractionEnabled)
    {
      userInteractionEnabled = [gestureKind isEqual:TSWPImmediatePress];
      if (userInteractionEnabled)
      {
        LOBYTE(userInteractionEnabled) = [(THWInteractiveImageWidgetRep *)self viewportIndex]!= 0;
      }
    }
  }

  return userInteractionEnabled;
}

- (BOOL)handleGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if ([(THWPressableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self pressableHandler] canHandleGesture:gesture])
  {
    pressableHandler = [(THWInteractiveImageWidgetRep *)self pressableHandler];
LABEL_5:

    LOBYTE(v7) = [(THWPressableRepGestureTargetHandler *)pressableHandler handleGesture:gesture];
    return v7;
  }

  if ([(THWFreeTransformableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self freeTransformableHandler] canHandleGesture:gesture])
  {
    pressableHandler = [(THWInteractiveImageWidgetRep *)self freeTransformableHandler];
    goto LABEL_5;
  }

  if ([gesture gestureState] == 2 && -[THWOverlayableZoomableCanvasController isDragging](-[THWInteractiveImageWidgetRep stageCanvasController](self, "stageCanvasController"), "isDragging") && objc_msgSend(gestureKind, "isEqualToString:", TSWPImmediatePress))
  {
    objc_opt_class();
    [TSUDynamicCast() cancel];
  }

  if (([gestureKind isEqual:TSDShortTap] & 1) != 0 || (v7 = objc_msgSend(gestureKind, "isEqual:", TSWPImmediatePress)) != 0)
  {
    if ([gesture gestureState] == 3 && !-[THWOverlayableZoomableCanvasController isDragging](-[THWInteractiveImageWidgetRep stageCanvasController](self, "stageCanvasController"), "isDragging"))
    {
      [-[THWInteractiveImageWidgetRep layout](self "layout")];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [gesture naturalLocationForRep:self];
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

- (void)willBeginHandlingGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind == TSDFreeTransform)
  {
    freeTransformableHandler = [(THWInteractiveImageWidgetRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler willBeginHandlingGesture:gesture];
  }
}

- (void)p_togglePanelDescriptionExpanded
{
  [(THWInteractiveImageWidgetRep *)self setPanelDescriptionExpanded:[(THWInteractiveImageWidgetRep *)self panelDescriptionExpanded]^ 1];
  [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerAnimatePanel:1 withCrossFadeContent:1 backgroundLayout:0 duration:0.25];
  expandedRepController = self->_expandedRepController;

  [(THWExpandedRepController *)expandedRepController expandedRepControllerInvalidateChildrenInPanel:1 invalidateWPAuto:1];
}

- (id)expandedPanel:(int)panel primaryTargetForGesture:(id)gesture
{
  if (panel != 1)
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

- (void)handleNavigateCommandWithNumber:(unint64_t)number
{
  if ([-[THWInteractiveImageWidgetRep info](self "info")] - 1 >= number)
  {
    numberCopy = number;
  }

  else
  {
    numberCopy = 0;
  }

  controller = self->_controller;

  [(THWInteractiveImageWidgetController *)controller selectOption:numberCopy];
}

- (unsigned)expandedMaxLineCountForTextLayout:(id)layout inPanel:(int)panel withDefault:(unsigned int)default
{
  if (panel == 1 && !self->_panelDescriptionExpanded)
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

  return default;
}

- (UIEdgeInsets)expandedStackedControlContainerInsetsForPanel:(int)panel withDefault:(UIEdgeInsets)default
{
  right = default.right;
  bottom = default.bottom;
  left = default.left;
  top = default.top;
  if (panel == 1)
  {
    if ([objc_msgSend(-[THWInteractiveImageWidgetRep layout](self "layout")])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (panel == 2)
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

- (BOOL)expandedPanel:(int)panel isVisibleWithDefault:(BOOL)default
{
  if ((panel - 1) > 1)
  {
    return default;
  }

  layout = [(THWInteractiveImageWidgetRep *)self layout];

  return [layout isCombinedPanelVisible];
}

- (void)expandedPanel:(int)panel willAnimateToVisible:(BOOL)visible duration:(double)duration
{
  if (panel == 1)
  {
    [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerAnimatePanel:*&panel withCrossFadeContent:1 backgroundLayout:0 duration:duration];
  }
}

- (void)expandedPanel:(int)panel willChangeToVisible:(BOOL)visible
{
  if (panel == 1)
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

  stageCanvasController = [(THWInteractiveImageWidgetRep *)self stageCanvasController];

  return [(THWOverlayableZoomableCanvasController *)stageCanvasController isZoomedOut];
}

- (id)documentRootForOverlayableZoomableCanvasController:(id)controller
{
  interactiveCanvasController = [(THWInteractiveImageWidgetRep *)self interactiveCanvasController];

  return [interactiveCanvasController documentRoot];
}

- (CGSize)sizeOfContentCanvasForOverlayableZoomableCanvasController:(id)controller
{
  layout = [(THWInteractiveImageWidgetRep *)self layout];

  [layout zoomableCanvasSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)overlayableZoomableCanvasController:(id)controller infosToDisplayForContentViewport:(CGRect)viewport
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  if ([(THWInteractiveImageWidgetRep *)self stageCanvasController]!= controller)
  {
    return 0;
  }

  layout = [(THWInteractiveImageWidgetRep *)self layout];

  return [layout infosForStageContentViewport:{x, y, width, height}];
}

- (id)infosToDisplayForContainerInOverlayableZoomableCanvasController:(id)controller
{
  if (self->_calloutsHidden)
  {
    return 0;
  }

  v6 = [(THWInteractiveImageWidgetRep *)self layout:controller];

  return [v6 infosForContainer];
}

- (id)overlayableZoomableCanvasController:(id)controller primaryTargetForGesture:(id)gesture
{
  scrollContainerICC = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContainerICC];
  [gesture unscaledLocationForICC:scrollContainerICC];
  [(TSDInteractiveCanvasController *)scrollContainerICC hitRep:gesture withGesture:&stru_45E0B0 passingTest:?];
  v7 = TSUProtocolCast();
  if (v7)
  {
    selfCopy = v7;
  }

  else
  {
    selfCopy = self;
  }

  if (![(THWPressableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self pressableHandler] canHandleGesture:gesture])
  {
    return selfCopy;
  }

  return [(THWInteractiveImageWidgetRep *)self pressableHandler];
}

- (void)overlayableZoomableCanvasController:(id)controller willLayoutRep:(id)rep
{
  info = [rep info];
  if (info == [-[THWInteractiveImageWidgetRep info](self "info")])
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

- (id)additionalGestureTargetsForZoomableCanvasController:(id)controller gesture:(id)gesture
{
  [-[THWInteractiveImageWidgetRep interactiveCanvasController](self interactiveCanvasController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = [-[THWInteractiveImageWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
  interactiveCanvasController = [(THWInteractiveImageWidgetRep *)self interactiveCanvasController];

  return [v6 additionalGestureTargetsForInteractiveCanvasController:interactiveCanvasController gesture:gesture];
}

- (BOOL)overlayableZoomableCanvasControllerDeferViewCreation:(id)creation
{
  interactiveCanvasController = [(THWInteractiveImageWidgetRep *)self interactiveCanvasController];

  return [interactiveCanvasController currentlyScrolling];
}

- (double)overlayableZoomableCanvasControllerContentsScale:(id)scale
{
  interactiveCanvasController = [-[THWInteractiveImageWidgetRep interactiveCanvasController](self interactiveCanvasController];

  [interactiveCanvasController contentsScale];
  return result;
}

- (BOOL)overlayableZoomableCanvasControllerIsRelatedCanvasScrolling:(id)scrolling
{
  interactiveCanvasController = [(THWInteractiveImageWidgetRep *)self interactiveCanvasController];

  return [interactiveCanvasController currentlyScrolling];
}

- (void)control:(id)control repWasAdded:(id)added
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

- (void)control:(id)control repWillBeRemoved:(id)removed
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    controller = self->_controller;

    [(THWInteractiveImageWidgetController *)controller setTransportControlsRep:0];
  }
}

- (CGPoint)convertContentPointToUnscaledOverlayPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  stageCanvasController = [(THWInteractiveImageWidgetRep *)self stageCanvasController];

  [(THWOverlayableZoomableCanvasController *)stageCanvasController unscaledContainerPointFromUnscaledContentPoint:x, y];
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
  layout = [(THWInteractiveImageWidgetRep *)self layout];

  return [layout selectedCalloutIndex];
}

- (void)applyScrollingPolicy
{
  v3 = -[THWInteractiveImageWidgetRep viewportIndex](self, "viewportIndex") || [-[THWInteractiveImageWidgetRep layout](self "layout")];
  stageCanvasController = [(THWInteractiveImageWidgetRep *)self stageCanvasController];

  [(THWOverlayableZoomableCanvasController *)stageCanvasController setScrollEnabled:v3];
}

- (CALayer)pressableAnimationLayer
{
  view = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] view];

  return [(UIView *)view layer];
}

- (BOOL)wantsPressAnimation
{
  pressableHandler = [(THWInteractiveImageWidgetRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler widgetInteractionDisabledOnPage];
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
  pressableHandler = [(THWInteractiveImageWidgetRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler widgetInteractionDisabledOnPage];
}

- (CGRect)pressableNaturalBounds
{
  layout = [(THWInteractiveImageWidgetRep *)self layout];

  [layout stageFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGAffineTransform)shadowAnimationLayerDestinationTransform:(SEL)transform uniformTargetScale:(id)scale
{
  v7 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v7;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  shadowAnimationLayer = [(THWInteractiveImageWidgetRep *)self shadowAnimationLayer];
  if (self->_imageCropAnimationController)
  {
    v9 = shadowAnimationLayer == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = shadowAnimationLayer;
    [shadowAnimationLayer bounds];
    p_isStageBackgroundTransparent = [(THWInteractiveImageWidgetRep *)self p_isStageBackgroundTransparent];
    imageCropAnimationController = self->_imageCropAnimationController;
    if (p_isStageBackgroundTransparent)
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
  p_backgroundImageContentLayer = [(THWInteractiveImageWidgetRep *)self p_backgroundImageContentLayer];
  [(CALayer *)self->_stageBackgroundLayer bounds];
  stageBackgroundLayer = self->_stageBackgroundLayer;

  [p_backgroundImageContentLayer convertRect:stageBackgroundLayer fromLayer:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)p_setupImageCropAnimationControllerWithDestinationRep:(id)rep
{
  p_backgroundImageContentLayer = [(THWInteractiveImageWidgetRep *)self p_backgroundImageContentLayer];
  [rep setCalloutsVisible:0 animated:0];
  [(THWInteractiveImageWidgetRep *)self setCalloutsVisible:0 animated:0];
  if (p_backgroundImageContentLayer && !self->_imageCropAnimationController)
  {
    [(THWInteractiveImageWidgetRep *)self p_backgroundImageContentsRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    if (rep)
    {
      [rep p_backgroundImageContentsRect];
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

    v31 = [[THWImageCropAnimationController alloc] initWithImageContentLayer:p_backgroundImageContentLayer];
    self->_imageCropAnimationController = v31;
    [(THWImageCropAnimationController *)v31 setSourceContentsRect:v11, v13, v15, v17];
    [-[THWInteractiveImageWidgetRep layout](self "layout")];
    v33 = v32;
    [-[THWInteractiveImageWidgetRep canvas](self "canvas")];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setSourceCornerRadius:v33 * v34];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetContentsRect:v19, v21, v23, v25];
    [objc_msgSend(rep "layout")];
    v36 = v35;
    [objc_msgSend(rep "canvas")];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetCornerRadius:v36 * v37];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setCropDurationScale:0.5];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setBackgroundDurationScale:0.5];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setCornerRadiusDurationScale:0.5];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setupWrapperLayer];
    wrapperLayer = [(THWImageCropAnimationController *)self->_imageCropAnimationController wrapperLayer];
    [(CALayer *)self->_stageBackgroundLayer bounds];
    [(CALayer *)wrapperLayer convertRect:self->_stageBackgroundLayer fromLayer:?];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController setBackgroundLayer:0];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setBackgroundLayer:self->_stageBackgroundLayer];
    [(CALayer *)self->_stageBackgroundLayer setFrame:v40, v42, v44, v46];
    [(CALayer *)self->_stageBackgroundLayer removeAllAnimations];
    [rep p_setupAsAnimationDestination];
    v47 = v40;
    v48 = v42;
    v49 = v44;
    v50 = v46;
    if (rep)
    {
      [rep p_stageBackgroundFrameRelativeToImageContentLayer];
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
    if (!rep)
    {
      return;
    }

    [rep p_backgroundImageContentsRect];
    if (rep == self)
    {
      [(THWImageCropAnimationController *)self->_imageCropAnimationController sourceContentsRect];
      [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetContentsRect:?];
      [(THWImageCropAnimationController *)self->_imageCropAnimationController sourceCornerRadius];
    }

    else
    {
      [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetContentsRect:?];
      [objc_msgSend(rep "layout")];
      v7 = v6;
      [objc_msgSend(rep "canvas")];
      v9 = v7 * v8;
    }

    [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetCornerRadius:v9];
    [rep p_stageBackgroundFrameRelativeToImageContentLayer];
    imageCropAnimationController = self->_imageCropAnimationController;
  }

  [(THWImageCropAnimationController *)imageCropAnimationController setBackgroundTargetFrame:v26, v27, v28, v29];
}

- (CGPoint)p_scrollScaledFromClientScaledPoint:(CGPoint)point
{
  [(THWInteractiveImageWidgetRep *)self baseViewScale];

  TSDMultiplyPointScalar();
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)p_clientScaledFromScrollScaledPoint:(CGPoint)point
{
  [(THWInteractiveImageWidgetRep *)self baseViewScale];

  TSDMultiplyPointScalar();
  result.y = v4;
  result.x = v3;
  return result;
}

- (UIEdgeInsets)p_insetsWithViewScale:(double)scale viewportBounds:(CGRect)bounds
{
  width = bounds.size.width;
  height = bounds.size.height;
  y = bounds.origin.y;
  rect = bounds.origin.x;
  [(THWInteractiveImageWidgetRep *)self p_imageFrameWithViewScale:?];
  v43 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(THWInteractiveImageWidgetRep *)self p_calloutFrameWithViewScale:scale];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(THWInteractiveImageWidgetRep *)self p_diagramFrameWithViewScale:scale];
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
  info = [-[THWInteractiveImageWidgetRep info](self info];
  v3 = [info countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(info);
        }

        [*(*(&v10 + 1) + 8 * i) viewScale];
        v6 = fmax(v6, v8);
      }

      v4 = [info countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (CGRect)p_expandedViewportFrameInPortalRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (CGPoint)p_wingOffsetForPortalRect:(CGRect)rect
{
  [(THWInteractiveImageWidgetRep *)self p_expandedViewportFrameInPortalRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];

  TSDSubtractPoints();
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)p_backgroundImageRep
{
  scrollContentICC = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContentICC];
  v4 = [-[THWInteractiveImageWidgetRep info](self "info")];

  return [(TSDInteractiveCanvasController *)scrollContentICC repForInfo:v4];
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
  p_backgroundImageContentLayer = [(THWInteractiveImageWidgetRep *)self p_backgroundImageContentLayer];
  if (p_backgroundImageContentLayer)
  {
    v4 = p_backgroundImageContentLayer;
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
  info = [(THWInteractiveImageWidgetRep *)self info];
  layer = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] layer];
  [-[THWInteractiveImageWidgetRep info](self "info")];
  [(CALayer *)layer setCornerRadius:?];
  objc_opt_class();
  [objc_msgSend(info "viewportStyle")];
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = v5;
    [v5 width];
    [(CALayer *)layer setBorderWidth:?];
    -[CALayer setBorderColor:](layer, "setBorderColor:", [objc_msgSend(v6 "color")]);
    -[THWInteractiveImageWidgetRep setBorderColor:](self, "setBorderColor:", [objc_msgSend(v6 "color")]);
  }

  [-[THWInteractiveImageWidgetRep info](self "info")];
  v8 = v7;
  layer2 = [(UIView *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] view] layer];

  [(CALayer *)layer2 setCornerRadius:v8];
}

- (void)didExitExpanded
{
  layer = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] layer];
  borderColor = [(THWInteractiveImageWidgetRep *)self borderColor];

  [(CALayer *)layer setBorderColor:borderColor];
}

- (void)didPresentExpanded
{
  -[CALayer setBorderColor:](-[THWOverlayableZoomableCanvasController layer](-[THWInteractiveImageWidgetRep stageCanvasController](self, "stageCanvasController"), "layer"), "setBorderColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
  [-[THWInteractiveImageWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContainerICC] setShouldSuppressRendering:0 animated:0];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContentICC] setShouldSuppressRendering:0 animated:0];
  self->_calloutsHidden = 0;
  [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController updateContainerInfosToDisplay];
  scrollContainerICC = [(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContainerICC];

  [(TSDInteractiveCanvasController *)scrollContainerICC layoutIfNeeded];
}

- (CGRect)p_imageFrame
{
  [objc_msgSend(objc_msgSend(-[THWInteractiveImageWidgetRep info](self "info")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  stageCanvasController = [(THWInteractiveImageWidgetRep *)self stageCanvasController];
  if (stageCanvasController)
  {
    [(THWOverlayableZoomableCanvasController *)stageCanvasController contentViewTransform];
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

- (CGRect)p_imageFrameWithViewScale:(double)scale
{
  memset(&v5, 0, sizeof(v5));
  CGAffineTransformMakeScale(&v5, scale, scale);
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
  stageCanvasController = [(THWInteractiveImageWidgetRep *)self stageCanvasController];
  if (stageCanvasController)
  {
    [(THWOverlayableZoomableCanvasController *)stageCanvasController contentViewTransform];
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

- (CGRect)p_diagramFrameWithViewScale:(double)scale
{
  memset(&v8, 0, sizeof(v8));
  CGAffineTransformMakeScale(&v8, scale, scale);
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

- (CGRect)p_calloutFrameWithViewScale:(double)scale
{
  layout = [(THWInteractiveImageWidgetRep *)self layout];

  [layout calloutFrameWithViewScale:scale];
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

- (CGRect)p_bufferedHullFrameForImageFrame:(CGRect)frame calloutFrame:(CGRect)calloutFrame
{
  height = calloutFrame.size.height;
  width = calloutFrame.size.width;
  y = calloutFrame.origin.y;
  x = calloutFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v30 = frame.origin.x;
  v31 = frame.origin.y;
  v32 = CGRectUnion(frame, calloutFrame);
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

- (UIEdgeInsets)p_insetsForInnerFrame:(CGRect)frame inOuterFrame:(CGRect)outerFrame
{
  height = outerFrame.size.height;
  width = outerFrame.size.width;
  y = outerFrame.origin.y;
  x = outerFrame.origin.x;
  v7 = frame.size.height;
  v8 = frame.size.width;
  v9 = frame.origin.y;
  v10 = frame.origin.x;
  v21 = outerFrame.size.width;
  MinY = CGRectGetMinY(outerFrame);
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
  calloutCount = [v3 calloutCount];
  if (calloutCount)
  {
    v5 = calloutCount;
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
  stageCanvasController = [(THWInteractiveImageWidgetRep *)self stageCanvasController];

  [(THWOverlayableZoomableCanvasController *)stageCanvasController setContentInset:v4, v6, v8, v10];
}

- (void)p_invalidateCalloutReps
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  layout = [-[THWInteractiveImageWidgetRep layout](self layout];
  v3 = [layout countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(layout);
        }

        [*(*(&v7 + 1) + 8 * v6) invalidateFrame];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [layout countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)p_updateDiagramWithZoom:(double)zoom offset:(CGPoint)offset animated:(BOOL)animated previousCalloutIndex:(unint64_t)index completion:(id)completion
{
  [(THWInteractiveImageWidgetRep *)self setTargetViewScale:?];
  TSDRoundedPoint();
  v13 = v12;
  v15 = v14;
  [(THWInteractiveImageWidgetRep *)self baseViewScale];
  v17 = v16 * zoom;
  [(THWInteractiveImageWidgetRep *)self p_scrollScaledFromClientScaledPoint:v13, v15];
  v20 = v18;
  v21 = v19;
  if (animated)
  {
    self->_animationPreviousCalloutIndex = index;
    scrollContainerICC = [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContainerICC];
    [(THWInteractiveImageWidgetRep *)self setAnimatingCallouts:1, _NSConcreteStackBlock, 3221225472, sub_174D1C, &unk_45E0D8, self, scrollContainerICC, completion, index];
    [-[TSDInteractiveCanvasController trackingController](scrollContainerICC "trackingController")];
    [objc_msgSend(-[THWInteractiveImageWidgetRep interactiveCanvasController](self "interactiveCanvasController")];
    [-[TSDInteractiveCanvasController trackingController](-[THWOverlayableZoomableCanvasController scrollContentICC](-[THWInteractiveImageWidgetRep stageCanvasController](self "stageCanvasController")];
    +[CATransaction begin];
    [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContentICC] beginAnimations:@"view-scale" context:0];
    [(TSDInteractiveCanvasController *)scrollContainerICC beginAnimations:@"callout-bounds" context:0];
    [(THWInteractiveImageWidgetRep *)self zoomDuration];
    [(TSDInteractiveCanvasController *)scrollContainerICC setAnimationDuration:?];
    [(TSDInteractiveCanvasController *)scrollContainerICC setAnimationUseRepFiltering:1];
    [-[THWInteractiveImageWidgetRep layout](self "layout")];
    [(THWInteractiveImageWidgetRep *)self setViewScale:1 contentOffset:&v24 animated:zoom completion:v13, v15];
    [(THWInteractiveImageWidgetRep *)self p_invalidateCalloutReps];
    [objc_msgSend(-[THWInteractiveImageWidgetRep layout](self "layout")];
    [(TSDInteractiveCanvasController *)scrollContainerICC layoutIfNeeded];
    [(TSDInteractiveCanvasController *)scrollContainerICC commitAnimations];
    [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContentICC] commitAnimations];
    [(THWInteractiveImageWidgetRep *)self setAnimatingCallouts:0];
    +[CATransaction commit];
    self->_animationPreviousCalloutIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    [-[THWInteractiveImageWidgetRep layout](self "layout")];
    [(THWInteractiveImageWidgetRep *)self setViewScale:0 contentOffset:0 animated:zoom completion:v13, v15];
    [(THWInteractiveImageWidgetRep *)self p_invalidateCalloutReps];
    [objc_msgSend(-[THWInteractiveImageWidgetRep layout](self "layout")];
    [objc_msgSend(-[THWInteractiveImageWidgetRep layout](self "layout")];
    [(THWInteractiveImageWidgetRep *)self p_adjustScrollViewContentInsets];
    if (completion)
    {
      v23 = *(completion + 2);

      v23(completion, 1);
    }
  }
}

- (id)p_sidebarRep
{
  objc_opt_class();
  -[TSDInteractiveCanvasController repForLayout:](-[THWOverlayableZoomableCanvasController scrollContainerICC](self->_stageCanvasController, "scrollContainerICC"), "repForLayout:", [-[THWInteractiveImageWidgetRep layout](self "layout")]);

  return TSUDynamicCast();
}

- (void)p_updateDiagramAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  objc_opt_class();
  [(THWInteractiveImageWidgetRep *)self info];
  v7 = [TSUDynamicCast() calloutAtIndex:{-[THWInteractiveImageWidgetRep viewportIndex](self, "viewportIndex")}];
  [v7 viewScale];
  v9 = v8;
  [v7 contentOffset];
  v11 = v10;
  v13 = v12;
  viewportIndex = [(THWInteractiveImageWidgetRep *)self viewportIndex];

  [(THWInteractiveImageWidgetRep *)self p_updateDiagramWithZoom:animatedCopy offset:viewportIndex animated:completion previousCalloutIndex:v9 completion:v11, v13];
}

- (void)changeToViewport:(unint64_t)viewport previousCalloutIndex:(unint64_t)index contentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  v9 = [-[THWInteractiveImageWidgetRep info](self "info")];
  [(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] setScrollEnabled:0];
  [-[THWInteractiveImageWidgetRep layout](self "layout")];
  [v9 viewScale];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_175038;
  v10[3] = &unk_45B188;
  v10[4] = self;
  [THWInteractiveImageWidgetRep p_updateDiagramWithZoom:"p_updateDiagramWithZoom:offset:animated:previousCalloutIndex:completion:" offset:animatedCopy animated:index previousCalloutIndex:v10 completion:?];
}

- (void)selectedCalloutIndexUpdatedAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(THWInteractiveImageWidgetRep *)self setPanelDescriptionExpanded:0];
  if (animatedCopy)
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
  canvasView = [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContainerICC] canvasView];

  return [canvasView isUserInteractionEnabled];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    if ([(THWInteractiveImageWidgetRep *)self pressableHandler])
    {
      widgetInteractionEnabled = [(THWPressableRepGestureTargetHandler *)[(THWInteractiveImageWidgetRep *)self pressableHandler] widgetInteractionEnabled];
    }

    else
    {
      widgetInteractionEnabled = 1;
    }
  }

  else
  {
    widgetInteractionEnabled = 0;
  }

  canvasView = [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self stageCanvasController] scrollContainerICC] canvasView];

  [canvasView setUserInteractionEnabled:widgetInteractionEnabled];
}

- (CGPoint)interactiveImageCallout:(id)callout convertContentPointToUnscaledOverlayPoint:(CGPoint)point
{
  [(THWInteractiveImageWidgetRep *)self convertContentPointToUnscaledOverlayPoint:callout, point.x, point.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)interactiveImageCalloutPressed:(id)pressed
{
  v4 = [-[THWInteractiveImageWidgetRep info](self "info")];
  controller = self->_controller;

  [(THWInteractiveImageWidgetController *)controller selectOption:v4];
}

- (BOOL)interactiveImageCalloutIsScrollViewDragging:(id)dragging
{
  canvasView = [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self->_stageCanvasController scrollContentICC] canvasView];

  return [canvasView isAncestorScrollViewDragging];
}

@end
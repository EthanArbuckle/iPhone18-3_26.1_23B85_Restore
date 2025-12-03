@interface THWGalleryRep
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)control:(id)control isInteractionEnabledForRep:(id)rep;
- (BOOL)expandedAllowFreeTransform;
- (BOOL)expandedHasContentForPanel:(int)panel;
- (BOOL)expandedIsRelatedCanvasScrolling;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)p_isExpanding;
- (BOOL)p_moveToNextPage;
- (BOOL)p_moveToPreviousPage;
- (BOOL)p_shouldPageOnGesture:(id)gesture toLeft:(BOOL *)left toRight:(BOOL *)right;
- (BOOL)p_shouldSuppressRenderingDuringExpansion;
- (BOOL)p_supportZoom;
- (BOOL)pagedCanvasControllerDeferViewCreation:(id)creation;
- (BOOL)pagedCanvasControllerIsRelatedCanvasScrolling:(id)scrolling;
- (BOOL)wantsPressAnimation;
- (BOOL)zoomableCanvasControllerIsRelatedCanvasScrolling:(id)scrolling;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGAffineTransform)shadowAnimationLayerDestinationTransform:(SEL)transform uniformTargetScale:(id)scale;
- (CGRect)ftcTargetFrame;
- (CGRect)p_contentsRectForItem:(id)item;
- (CGRect)rectForCompletion;
- (CGRect)resizeOriginalLayoutFrame;
- (CGSize)sizeOfCanvasForZoomableCanvasController:(id)controller;
- (THAnimationController)animationController;
- (THWGalleryRep)initWithLayout:(id)layout canvas:(id)canvas;
- (UIEdgeInsets)expandedStackedControlContainerInsetsForPanel:(int)panel withDefault:(UIEdgeInsets)default;
- (__CTFont)pageControlCreateFont:(id)font;
- (double)expandedLeftRightInsetForTextLayout:(id)layout inPanel:(int)panel;
- (double)expandedMinHeightForPanel:(int)panel withDefault:(double)result;
- (double)expandedVerticalPaddingAfterForLayout:(id)layout inPanel:(int)panel;
- (double)p_expandedPaddingAfterCaption;
- (double)pagedCanvasController:(id)controller adjustScale:(double)scale andFrame:(CGRect *)frame;
- (double)pagedCanvasControllerContentsScale:(id)scale;
- (double)pagedCanvasControllerVerticalOverflow:(id)overflow;
- (double)zoomableCanvasControllerContentsScale:(id)scale;
- (id)animationLayer;
- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted;
- (id)currentItem;
- (id)expandedAdditionalChildLayoutsForPanel:(int)panel;
- (id)expandedChildInfosForPanel:(int)panel;
- (id)expandedLayoutGeometryForLayout:(id)layout inPanel:(int)panel withWidth:(double)width insets:(UIEdgeInsets)insets;
- (id)expandedPanel:(int)panel primaryTargetForGesture:(id)gesture;
- (id)expandedRotationAnimationController;
- (id)expandedZoomableInteractiveCanvasController;
- (id)p_currentImageContentLayer;
- (id)p_currentImageRep;
- (id)p_highlightLayerForThumbnailSize:(CGSize)size;
- (id)p_imageRepForItem:(id)item;
- (id)p_itemAtIndex:(unint64_t)index;
- (id)p_itemForZoomableCanvasController:(id)controller;
- (id)p_layerForItem:(id)item;
- (id)p_zoomableCanvasControlRepForItemIndex:(unint64_t)index;
- (id)p_zoomableCanvasControllerForItem:(id)item;
- (id)p_zoomableCanvasControllerForItemIndex:(unint64_t)index;
- (id)pageControl:(id)control layerForState:(int)state pageIndex:(unint64_t)index;
- (id)pageControlTextColor:(id)color;
- (id)pagedCanvasController:(id)controller infosToDisplayForPageRange:(_NSRange)range;
- (id)pagedCanvasController:(id)controller primaryTargetForGesture:(id)gesture;
- (id)pagedCanvasController:(id)controller renderedPageIndexSetFromReps:(id)reps;
- (id)shadowAnimationLayer;
- (id)shadowPath;
- (id)targetLayer;
- (id)zoomableCanvasController:(id)controller infosToDisplayForViewport:(CGRect)viewport;
- (unint64_t)currentPage;
- (unint64_t)p_itemIndexForZoomableCanvasController:(id)controller;
- (unint64_t)pageCountForPagedCanvasController:(id)controller;
- (unsigned)expandedAlignmentForLayout:(id)layout inPanel:(int)panel;
- (unsigned)expandedMaxLineCountForTextLayout:(id)layout inPanel:(int)panel withDefault:(unsigned int)default;
- (void)animationControllerDidAddContentAnimations:(id)animations uniformTargetScale:(double)scale;
- (void)animationControllerSetupTarget:(id)target;
- (void)animationControllerTeardownTarget:(id)target;
- (void)buttonControl:(id)control didUpdateLayer:(id)layer;
- (void)buttonControlInteractionDidEnd:(id)end;
- (void)buttonControlInteractionWillStart:(id)start;
- (void)buttonControlWasPressed:(id)pressed;
- (void)control:(id)control repWasAdded:(id)added;
- (void)control:(id)control repWillBeRemoved:(id)removed;
- (void)dealloc;
- (void)didPresentExpanded;
- (void)didPresentExpandedPostCommit;
- (void)expandedContentHandleDoubleTapZoomDirectlyAtPoint:(CGPoint)point;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame;
- (void)expandedWillStartWidgetLayoutFrameResize:(CGRect)resize;
- (void)freeTransformDidEnd;
- (void)freeTransformWillBegin;
- (void)p_goToPage:(unint64_t)page;
- (void)p_rasterizeCanvases:(BOOL)canvases;
- (void)p_relaxMinimizeInfosNextFrame;
- (void)p_resetViewScaleForItemsExcept:(id)except;
- (void)p_setupImageCropAnimationControllerWithDestinationRep:(id)rep;
- (void)p_toggleCurrentItemZoomableWithStageRelativeTouch:(CGPoint)touch;
- (void)p_togglePanelDescriptionExpanded;
- (void)p_updateMinMaxViewScaleForItem:(id)item forceMinScale:(BOOL)scale;
- (void)p_updateStageCornerRadius;
- (void)p_updateToPageIndex:(unint64_t)index usingCachedImagedFromRep:(id)rep;
- (void)p_updateUserInteractionForController:(id)controller;
- (void)pageControl:(id)control didChangeInteractivelyFromPageIndex:(unint64_t)index toPageIndex:(unint64_t)pageIndex;
- (void)pagedCanvasController:(id)controller customizeLayerHost:(id)host;
- (void)pagedCanvasController:(id)controller didScrollToPageIndex:(unint64_t)index;
- (void)pagedCanvasController:(id)controller mostVisiblePageChangedToPageIndex:(unint64_t)index;
- (void)screenScaleDidChange;
- (void)viewScaleDidChange;
- (void)willBeginHandlingGesture:(id)gesture;
- (void)willReplaceContentsFromRep:(id)rep;
- (void)zoomableCanvasControllerCustomizeLayerHost:(id)host;
@end

@implementation THWGalleryRep

- (THWGalleryRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v7.receiver = self;
  v7.super_class = THWGalleryRep;
  v4 = [(THWGalleryRep *)&v7 initWithLayout:layout canvas:canvas];
  if (v4)
  {
    objc_opt_class();
    [(THWGalleryRep *)v4 interactiveCanvasController];
    pressHandlerForPressableReps = [TSUDynamicCast() pressHandlerForPressableReps];
    v4->_currentPage = 0x7FFFFFFFFFFFFFFFLL;
    if (pressHandlerForPressableReps)
    {
      v4->_pressableHandler = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:v4 pressHandler:pressHandlerForPressableReps];
    }

    if ([(THWGalleryRep *)v4 isExpanded])
    {
      [-[THWGalleryRep hostICC](v4 "hostICC")];
    }

    else
    {
      [(THWGalleryRep *)v4 interactiveCanvasController];
    }

    v4->_progressTracker = TSUProtocolCast();
    v4->_progressSet = objc_alloc_init(NSMutableSet);
    if ([objc_msgSend(-[THWGalleryRep hostICC](v4 "hostICC")])
    {
      v4->_freeTransformableHandler = -[THWFreeTransformableRepGestureTargetHandler initWithFreeTransformableRep:handler:]([THWFreeTransformableRepGestureTargetHandler alloc], "initWithFreeTransformableRep:handler:", v4, [objc_msgSend(-[THWGalleryRep hostICC](v4 "hostICC")]);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWGalleryRep;
  [(THWGalleryRep *)&v3 dealloc];
}

- (BOOL)p_supportZoom
{
  layout = [(THWGalleryRep *)self layout];

  return [layout useZoom];
}

- (void)screenScaleDidChange
{
  v3.receiver = self;
  v3.super_class = THWGalleryRep;
  [(THWGalleryRep *)&v3 screenScaleDidChange];
  [-[THWGalleryRep canvas](self "canvas")];
  [(CAShapeLayer *)self->_thumbnailHighlightLayer setContentsScale:?];
}

- (id)p_highlightLayerForThumbnailSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (!self->_thumbnailHighlightLayer)
  {
    self->_thumbnailHighlightLayer = objc_alloc_init(CAShapeLayer);
    [(CAShapeLayer *)self->_thumbnailHighlightLayer setDelegate:+[THNoAnimationLayerDelegate sharedInstance]];
    [(CAShapeLayer *)self->_thumbnailHighlightLayer setAnchorPoint:CGPointZero.x, CGPointZero.y];
    -[CAShapeLayer setFillColor:](self->_thumbnailHighlightLayer, "setFillColor:", [+[TSUColor colorWithRed:green:blue:alpha:](TSUColor CGColor:1.0]);
    [(CAShapeLayer *)self->_thumbnailHighlightLayer setFillRule:kCAFillRuleEvenOdd];
    [-[THWGalleryRep canvas](self "canvas")];
    [(CAShapeLayer *)self->_thumbnailHighlightLayer setContentsScale:?];
  }

  [(THWGalleryRep *)self p_integralScaledThumbnailHighlightWidth];
  v7 = v6;
  v8 = floor(width);
  v9 = floor(height);
  v10 = v8 + v6 * 2.0;
  v11 = v9 + v6 * 2.0;
  [(CAShapeLayer *)self->_thumbnailHighlightLayer bounds];
  if (v13 != v10 || v12 != v11)
  {
    Mutable = CGPathCreateMutable();
    v17.origin.x = v7;
    v17.origin.y = v7;
    v17.size.width = v8;
    v17.size.height = v9;
    CGPathAddRect(Mutable, 0, v17);
    v18.origin.x = 0.0;
    v18.origin.y = 0.0;
    v18.size.width = v8 + v7 * 2.0;
    v18.size.height = v9 + v7 * 2.0;
    CGPathAddRect(Mutable, 0, v18);
    [(CAShapeLayer *)self->_thumbnailHighlightLayer setPath:Mutable];
    CGPathRelease(Mutable);
    [(CAShapeLayer *)self->_thumbnailHighlightLayer setBounds:0.0, 0.0, v8 + v7 * 2.0, v9 + v7 * 2.0];
  }

  return self->_thumbnailHighlightLayer;
}

- (unint64_t)currentPage
{
  if (self->_currentPage != 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_currentPage;
  }

  layout = [-[THWGalleryRep layout](self layout];

  return [layout currentPage];
}

- (void)viewScaleDidChange
{
  [(THWGalleryRep *)self p_updateStageCornerRadius];
  [(THWGalleryRep *)self p_updateUserInteractionForController:self->_stageCanvasController];
  thumbnailTrackCanvasController = self->_thumbnailTrackCanvasController;

  [(THWGalleryRep *)self p_updateUserInteractionForController:thumbnailTrackCanvasController];
}

- (void)p_updateStageCornerRadius
{
  [-[THWGalleryRep layout](self "layout")];
  v4 = v3;
  [-[THWGalleryRep canvas](self "canvas")];
  v6 = v4 * v5;
  v7 = [-[TSDInteractiveCanvasController layerHost](-[THWPagedCanvasController interactiveCanvasController](self->_stageCanvasController "interactiveCanvasController")];

  [v7 setCornerRadius:v6];
}

- (BOOL)p_shouldPageOnGesture:(id)gesture toLeft:(BOOL *)left toRight:(BOOL *)right
{
  if (left)
  {
    *left = 0;
  }

  if (right)
  {
    *right = 0;
  }

  return 0;
}

- (void)p_goToPage:(unint64_t)page
{
  if ([(THWGalleryRep *)self pageCountForPagedCanvasController:self->_stageCanvasController]<= page)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  pageIndex = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];
  if (pageIndex != page)
  {
    v6 = pageIndex >= page ? pageIndex - page : page - pageIndex;
    [(THWPagedCanvasController *)self->_stageCanvasController setMinimizeInfoChange:1];
    [(THWPagedCanvasController *)self->_stageCanvasController setPageIndex:page animated:v6 < 2];
    if (v6 >= 2)
    {
      [-[THWGalleryRep layout](self "layout")];
      [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerInvalidateChildrenInPanel:1 invalidateWPAuto:0];

      [(THWGalleryRep *)self p_relaxMinimizeInfosNextFrame];
    }
  }
}

- (BOOL)p_moveToNextPage
{
  p_canMoveToNextPage = [(THWGalleryRep *)self p_canMoveToNextPage];
  if (p_canMoveToNextPage)
  {
    [(THWGalleryRep *)self p_goToPage:[(THWPagedCanvasController *)self->_stageCanvasController pageIndex]+ 1];
  }

  return p_canMoveToNextPage;
}

- (BOOL)p_moveToPreviousPage
{
  p_canMoveToPreviousPage = [(THWGalleryRep *)self p_canMoveToPreviousPage];
  if (p_canMoveToPreviousPage)
  {
    [(THWGalleryRep *)self p_goToPage:[(THWPagedCanvasController *)self->_stageCanvasController pageIndex]- 1];
  }

  return p_canMoveToPreviousPage;
}

- (void)control:(id)control repWasAdded:(id)added
{
  v6 = [control tag];
  if (v6 <= 2)
  {
    if (!v6)
    {

      self->_stageCanvasController = 0;
      objc_opt_class();
      self->_stageCanvasController = [TSUDynamicCast() pagedCanvasController];
      [-[THWGalleryRep layout](self "layout")];
      if (v15 <= 0.0)
      {
        v16 = 0;
      }

      else
      {
        v16 = [-[THWGalleryRep interactiveCanvasController](self "interactiveCanvasController")];
      }

      [(THWPagedCanvasController *)self->_stageCanvasController setRasterize:v16];
      [(THWPagedCanvasController *)self->_stageCanvasController setMinimizeInfoChange:1];
      stageCanvasController = self->_stageCanvasController;
LABEL_21:

      [stageCanvasController setDelegate:self];
      return;
    }

    if (v6 == &dword_0 + 1)
    {

      self->_thumbnailTrackCanvasController = 0;
      objc_opt_class();
      pagedCanvasController = [TSUDynamicCast() pagedCanvasController];
      self->_thumbnailTrackCanvasController = pagedCanvasController;
      [(THWPagedCanvasController *)pagedCanvasController setDelegate:self];
      thumbnailTrackCanvasController = self->_thumbnailTrackCanvasController;

      [(THWPagedCanvasController *)thumbnailTrackCanvasController setDisableThreadedLayoutAndRenderDuringAnimation:0];
    }
  }

  else
  {
    if ((v6 - 3) >= 2)
    {
      if (v6 != &dword_4 + 1)
      {
        if (v6 == &dword_4 + 3)
        {
          objc_opt_class();
          v7 = TSUDynamicCast();
          [objc_msgSend(v7 "zoomableCanvasController")];
          [objc_msgSend(v7 "zoomableCanvasController")];
          v8 = [objc_msgSend(v7 "zoomableCanvasController")];
          index = [control index];
          v10 = index == [(THWPagedCanvasController *)self->_stageCanvasController pageIndex]&& [(THWGalleryRep *)self p_shouldSuppressRenderingDuringExpansion];

          [v8 setShouldSuppressRendering:v10 animated:0];
        }

        return;
      }

      objc_opt_class();
      stageCanvasController = TSUDynamicCast();
      goto LABEL_21;
    }

    objc_opt_class();
    v13 = TSUDynamicCast();
    [v13 setDelegate:self];
    [v13 setPageDirectlyToIndex:0];
    layout = [v13 layout];

    [layout setSpacing:9.0];
  }
}

- (void)control:(id)control repWillBeRemoved:(id)removed
{
  if ([control tag] == &dword_4 + 3)
  {
    objc_opt_class();
    zoomableCanvasController = [TSUDynamicCast() zoomableCanvasController];

    [zoomableCanvasController setDelegate:0];
  }
}

- (BOOL)control:(id)control isInteractionEnabledForRep:(id)rep
{
  if (![(THWGalleryRep *)self pressableHandler:control])
  {
    return 1;
  }

  pressableHandler = [(THWGalleryRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler widgetInteractionEnabled];
}

- (unint64_t)pageCountForPagedCanvasController:(id)controller
{
  if (!controller)
  {
    return 0;
  }

  if (self->_stageCanvasController == controller)
  {
    layout = [(THWGalleryRep *)self layout];

    return [layout numberOfStagePages];
  }

  else
  {
    if (self->_thumbnailTrackCanvasController != controller)
    {
      return 0;
    }

    layout2 = [(THWGalleryRep *)self layout];

    return [layout2 numberOfThumbnailTrackPages];
  }
}

- (id)pagedCanvasController:(id)controller infosToDisplayForPageRange:(_NSRange)range
{
  if (!controller)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  if (self->_stageCanvasController == controller)
  {
    layout = [(THWGalleryRep *)self layout];

    return [layout infosForStagePages:{location, length}];
  }

  else
  {
    if (self->_thumbnailTrackCanvasController != controller)
    {
      return 0;
    }

    layout2 = [(THWGalleryRep *)self layout];

    return [layout2 infosForThumbnailTrackPages:{location, length}];
  }
}

- (void)pagedCanvasController:(id)controller mostVisiblePageChangedToPageIndex:(unint64_t)index
{
  if (controller && self->_stageCanvasController == controller)
  {
    expandedRepController = self->_expandedRepController;
    if (expandedRepController)
    {
      [(THWExpandedRepController *)expandedRepController expandedRepControllerAnimatePanel:1 withCrossFadeContent:0 backgroundLayout:1 duration:0.15];
    }

    else
    {
      [-[THWGalleryRep interactiveCanvasController](self "interactiveCanvasController")];
    }

    [-[THWGalleryRep layout](self "layout")];
    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_thumbnailTrackCanvasController interactiveCanvasController] forceBackgroundLayout];
    [objc_msgSend(-[THWGalleryRep layout](self "layout")];
    thumbnailTrackCanvasController = self->_thumbnailTrackCanvasController;

    [(THWPagedCanvasController *)thumbnailTrackCanvasController invalidateLayers];
  }
}

- (void)pagedCanvasController:(id)controller didScrollToPageIndex:(unint64_t)index
{
  if (controller)
  {
    layout = [(THWGalleryRep *)self layout];
    v8 = layout;
    if (self->_stageCanvasController == controller)
    {
      [(THWGalleryRep *)self p_relaxMinimizeInfosNextFrame];
      [v8 updateCurrentItemIndex:index];
      [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerInvalidateChildrenInPanel:1 invalidateWPAuto:0];
      if (self->_thumbnailTrackCanvasController)
      {
        -[THWPagedCanvasController setPageIndex:](self->_thumbnailTrackCanvasController, "setPageIndex:", [v8 thumbnailPageIndexForItemIndex:index]);
        [(THWPagedCanvasController *)self->_thumbnailTrackCanvasController invalidateLayers];
      }

      currentItem = [(THWGalleryRep *)self currentItem];

      [(THWGalleryRep *)self p_resetViewScaleForItemsExcept:currentItem];
    }

    else if (self->_thumbnailTrackCanvasController == controller)
    {
      thumbnailPageControl = [layout thumbnailPageControl];

      [thumbnailPageControl setCurrentPage:index];
    }
  }
}

- (id)pagedCanvasController:(id)controller primaryTargetForGesture:(id)gesture
{
  if (*(self + 40) != controller)
  {
    return 0;
  }

  return self;
}

- (void)p_rasterizeCanvases:(BOOL)canvases
{
  if (canvases)
  {
    [-[THWGalleryRep layout](self "layout")];
  }

  stageCanvasController = self->_stageCanvasController;

  [(THWPagedCanvasController *)stageCanvasController setRasterize:?];
}

- (double)pagedCanvasControllerVerticalOverflow:(id)overflow
{
  if (self->_thumbnailTrackCanvasController != overflow)
  {
    return 0.0;
  }

  layout = [(THWGalleryRep *)self layout];

  [layout thumbnailTrackVerticalPadding];
  return result;
}

- (void)p_updateUserInteractionForController:(id)controller
{
  if (controller)
  {
    if ([(THWGalleryRep *)self p_isExpanding])
    {
      widgetInteractionEnabled = 0;
    }

    else if ([(THWGalleryRep *)self pressableHandler])
    {
      widgetInteractionEnabled = [(THWPressableRepGestureTargetHandler *)[(THWGalleryRep *)self pressableHandler] widgetInteractionEnabled];
    }

    else
    {
      widgetInteractionEnabled = 1;
    }

    [controller setUserInteractionEnabled:widgetInteractionEnabled];
  }
}

- (void)pagedCanvasController:(id)controller customizeLayerHost:(id)host
{
  if (self->_stageCanvasController == controller)
  {
    layout = [(THWGalleryRep *)self layout];
    [(THWPagedCanvasController *)self->_stageCanvasController setPageIndex:[(THWGalleryRep *)self currentPage] animated:0];
    if (([layout isExpanded] & 1) == 0)
    {
      -[THWPagedCanvasController setupImmediatePressGestureWithSimultaneousGestures:](self->_stageCanvasController, "setupImmediatePressGestureWithSimultaneousGestures:", [objc_msgSend(objc_msgSend(-[THWGalleryRep interactiveCanvasController](self "interactiveCanvasController")]);
    }

    -[THScrollView setHandleNaturally:](-[THWPagedCanvasController scrollView](self->_stageCanvasController, "scrollView"), "setHandleNaturally:", [objc_msgSend(-[THWGalleryRep interactiveCanvasController](self "interactiveCanvasController")]);
    [(THWGalleryRep *)self p_updateUserInteractionForController:self->_stageCanvasController];

    [(THWGalleryRep *)self p_updateStageCornerRadius];
  }

  else
  {
    thumbnailTrackCanvasController = self->_thumbnailTrackCanvasController;
    if (thumbnailTrackCanvasController == controller)
    {
      -[THWPagedCanvasController setPageIndex:animated:](thumbnailTrackCanvasController, "setPageIndex:animated:", [objc_msgSend(-[THWGalleryRep layout](self "layout")], 0);
      [(THWPagedCanvasController *)self->_thumbnailTrackCanvasController setupImmediatePressGesture];
      [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWPagedCanvasController interactiveCanvasController](self->_thumbnailTrackCanvasController "interactiveCanvasController")];
      -[THScrollView setHandleNaturally:](-[THWPagedCanvasController scrollView](self->_thumbnailTrackCanvasController, "scrollView"), "setHandleNaturally:", [objc_msgSend(-[THWGalleryRep interactiveCanvasController](self "interactiveCanvasController")]);
      v7 = self->_thumbnailTrackCanvasController;

      [(THWGalleryRep *)self p_updateUserInteractionForController:v7];
    }
  }
}

- (BOOL)pagedCanvasControllerIsRelatedCanvasScrolling:(id)scrolling
{
  interactiveCanvasController = [(THWGalleryRep *)self interactiveCanvasController];

  return [interactiveCanvasController currentlyScrolling];
}

- (BOOL)pagedCanvasControllerDeferViewCreation:(id)creation
{
  interactiveCanvasController = [(THWGalleryRep *)self interactiveCanvasController];

  return [interactiveCanvasController currentlyScrolling];
}

- (double)pagedCanvasControllerContentsScale:(id)scale
{
  interactiveCanvasController = [-[THWGalleryRep interactiveCanvasController](self interactiveCanvasController];

  [interactiveCanvasController contentsScale];
  return result;
}

- (double)pagedCanvasController:(id)controller adjustScale:(double)scale andFrame:(CGRect *)frame
{
  if (!frame)
  {
    return scale;
  }

  Width = CGRectGetWidth(*frame);
  if (self->_stageCanvasController == controller)
  {
    [-[THWGalleryRep layout](self layout];
  }

  else
  {
    v10 = Width;
    if (self->_thumbnailTrackCanvasController != controller)
    {
      goto LABEL_7;
    }

    [-[THWGalleryRep layout](self "layout")];
  }

  v10 = CGRectGetWidth(*&v11);
LABEL_7:
  if (v10 > 0.0)
  {
    [objc_msgSend(-[THWGalleryRep interactiveCanvasController](self "interactiveCanvasController")];
    TSDRoundedRectForScale();
    *frame = v16;
    return CGRectGetWidth(v16) / v10;
  }

  return scale;
}

- (id)pagedCanvasController:(id)controller renderedPageIndexSetFromReps:(id)reps
{
  if (self->_stageCanvasController != controller)
  {
    return 0;
  }

  layout = [(THWGalleryRep *)self layout];

  return [layout pageIndexesFromStageReps:reps];
}

- (id)p_itemAtIndex:(unint64_t)index
{
  v4 = [-[THWGalleryRep info](self "info")];
  if ([v4 count] <= index)
  {
    return 0;
  }

  return [v4 objectAtIndex:index];
}

- (CALayer)pressableAnimationLayer
{
  view = [(THWPagedCanvasController *)self->_stageCanvasController view];

  return [(UIView *)view layer];
}

- (BOOL)wantsPressAnimation
{
  pressableHandler = [(THWGalleryRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler widgetInteractionDisabledOnPage];
}

- (id)animationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]|| (result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc] freeTransformLayer]) == 0)
  {
    imageCropAnimationController = self->_imageCropAnimationController;

    return [(THWImageCropAnimationController *)imageCropAnimationController wrapperLayer];
  }

  return result;
}

- (id)shadowAnimationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    return 0;
  }

  v3 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v3 shadowLayer];
}

- (CGAffineTransform)shadowAnimationLayerDestinationTransform:(SEL)transform uniformTargetScale:(id)scale
{
  v7 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v7;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  imageCropAnimationController = self->_imageCropAnimationController;
  if (imageCropAnimationController)
  {
    [(THWImageCropAnimationController *)imageCropAnimationController sourceContentsRect];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController targetContentsRect];
    [-[THWGalleryRep shadowAnimationLayer](self "shadowAnimationLayer")];
    TSDMultiplyRectBySize();
    v31 = v10;
    v32 = v9;
    TSDMultiplyRectBySize();
    v29 = v12;
    v30 = v11;
    TSDCenterOfRect();
    TSDCenterOfRect();
    TSDRectWithSize();
    TSDCenterOfRect();
    TSDSubtractPoints();
    v14 = v13;
    v16 = v15;
    TSDSubtractPoints();
    v18 = v17;
    v20 = v19;
    CGAffineTransformMakeTranslation(retstr, v14, v16);
    CGAffineTransformMakeScale(&t2, v30 / v32, v29 / v31);
    v21 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v21;
    *&t1.tx = *&retstr->tx;
    CGAffineTransformConcat(&v35, &t1, &t2);
    v22 = *&v35.c;
    *&retstr->a = *&v35.a;
    *&retstr->c = v22;
    *&retstr->tx = *&v35.tx;
    CGAffineTransformMakeTranslation(&t2, v18, v20);
    v23 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v23;
    *&t1.tx = *&retstr->tx;
    CGAffineTransformConcat(&v35, &t1, &t2);
    v24 = *&v35.c;
    *&retstr->a = *&v35.a;
    *&retstr->c = v24;
    *&retstr->tx = *&v35.tx;
  }

  result = self->_freeTransformableHandler;
  if (result)
  {
    v26 = [(CGAffineTransform *)result ftc];
    if (v26)
    {
      [v26 originalShadowTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    v27 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v27;
    *&t1.tx = *&retstr->tx;
    result = CGAffineTransformConcat(&v35, &t1, &t2);
    v28 = *&v35.c;
    *&retstr->a = *&v35.a;
    *&retstr->c = v28;
    *&retstr->tx = *&v35.tx;
  }

  return result;
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress];
  if (result)
  {
    result = [(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc];
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
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]&& ![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc] passedThreshold])
  {
    return 0;
  }

  return [(THWGalleryRep *)self p_currentImageContentLayer];
}

- (CGRect)ftcTargetFrame
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc] completionTargetRect];
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

- (void)p_setupImageCropAnimationControllerWithDestinationRep:(id)rep
{
  p_currentImageContentLayer = [(THWGalleryRep *)self p_currentImageContentLayer];
  if (p_currentImageContentLayer && !self->_imageCropAnimationController)
  {
    v11 = p_currentImageContentLayer;
    currentItem = [(THWGalleryRep *)self currentItem];
    [(THWGalleryRep *)self p_contentsRectForItem:currentItem];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    if (rep)
    {
      [rep p_contentsRectForItem:currentItem];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
    }

    else
    {
      v26 = 1.0;
      v22 = 0.0;
      v24 = 0.0;
      v28 = 1.0;
    }

    v29 = [[THWImageCropAnimationController alloc] initWithImageContentLayer:v11];
    self->_imageCropAnimationController = v29;
    [(THWImageCropAnimationController *)v29 setSourceContentsRect:v14, v16, v18, v20];
    [-[THWGalleryRep layout](self "layout")];
    v31 = v30;
    [-[THWGalleryRep canvas](self "canvas")];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setSourceCornerRadius:v31 * v32];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetContentsRect:v22, v24, v26, v28];
    [objc_msgSend(rep "layout")];
    v34 = v33;
    [objc_msgSend(rep "canvas")];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetCornerRadius:v34 * v35];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setCropDurationScale:0.5];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setCornerRadiusDurationScale:0.5];
    imageCropAnimationController = self->_imageCropAnimationController;

    [(THWImageCropAnimationController *)imageCropAnimationController setupWrapperLayer];
  }

  else if (rep)
  {
    [rep p_contentsRectForItem:{-[THWGalleryRep currentItem](self, "currentItem")}];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetContentsRect:?];
    [objc_msgSend(rep "layout")];
    v7 = v6;
    [objc_msgSend(rep "canvas")];
    v9 = v7 * v8;
    v10 = self->_imageCropAnimationController;

    [(THWImageCropAnimationController *)v10 setTargetCornerRadius:v9];
  }
}

- (void)animationControllerSetupTarget:(id)target
{
  objc_opt_class();
  [target destination];
  v5 = TSUDynamicCast();

  [(THWGalleryRep *)self p_setupImageCropAnimationControllerWithDestinationRep:v5];
}

- (void)animationControllerTeardownTarget:(id)target
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    [(THWImageCropAnimationController *)self->_imageCropAnimationController teardownWrapperLayer];

    self->_imageCropAnimationController = 0;
  }
}

- (void)animationControllerDidAddContentAnimations:(id)animations uniformTargetScale:(double)scale
{
  imageCropAnimationController = self->_imageCropAnimationController;
  [animations animationDuration];

  [THWImageCropAnimationController addAnimationWithDuration:"addAnimationWithDuration:targetScale:" targetScale:?];
}

- (void)expandedWillStartWidgetLayoutFrameResize:(CGRect)resize
{
  height = resize.size.height;
  width = resize.size.width;
  y = resize.origin.y;
  x = resize.origin.x;
  [objc_msgSend(objc_msgSend(-[THWGalleryRep p_zoomableCanvasControlRepForItemIndex:](self p_zoomableCanvasControlRepForItemIndex:{-[THWPagedCanvasController pageIndex](self->_stageCanvasController, "pageIndex")), "zoomableCanvasController"), "interactiveCanvasController"), "viewScale"}];
  [(THWGalleryRep *)self setResizeOriginalViewScale:?];
  [(THWGalleryRep *)self setResizeOriginalLayoutFrame:x, y, width, height];
  stageCanvasController = self->_stageCanvasController;

  [(THWPagedCanvasController *)stageCanvasController setPadInfos:0];
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame
{
  height = toFrame.size.height;
  width = toFrame.size.width;
  [(THWPagedCanvasController *)self->_stageCanvasController forceStopScrollingAtCurrentPageIndex:frame.origin.x];
  v7 = [-[THWGalleryRep p_zoomableCanvasControlRepForItemIndex:](self p_zoomableCanvasControlRepForItemIndex:{-[THWPagedCanvasController pageIndex](self->_stageCanvasController, "pageIndex")), "zoomableCanvasController"}];
  [v7 setInResize:1];
  [v7 contentOffsetForAnchor:{0.5, 0.5}];
  v9 = v8;
  v11 = v10;
  layout = [(THWGalleryRep *)self layout];
  [layout invalidateFrame];
  [layout invalidateChildren];
  [-[THWGalleryRep interactiveCanvasController](self "interactiveCanvasController")];
  [(THWPagedCanvasController *)self->_stageCanvasController invalidateLayoutsAndFrames];
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] layoutIfNeeded];
  [(THWPagedCanvasController *)self->_thumbnailTrackCanvasController invalidateLayoutsAndFrames];
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_thumbnailTrackCanvasController interactiveCanvasController] layoutIfNeeded];
  if (v7)
  {
    [objc_msgSend(v7 "interactiveCanvasController")];
    [objc_msgSend(v7 "interactiveCanvasController")];
    v14 = v13;
    v15 = [(THWGalleryRep *)self p_itemAtIndex:[(THWPagedCanvasController *)self->_stageCanvasController pageIndex]];
    if (v15)
    {
      v16 = v15;
      [(THWGalleryRep *)self resizeOriginalViewScale];
      v18 = v17;
      [(THWGalleryRep *)self resizeOriginalLayoutFrame];
      v21 = v18 * THScaleNeededToFitSizeInSize(v19, v20, width, height);
      if (v21 <= 1.5)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1.5;
      }

      [-[THWGalleryRep layout](self "layout")];
      if (v23 >= v22)
      {
        v14 = v23;
      }

      else
      {
        v14 = v22;
      }
    }

    [v7 setViewScale:v14 contentOffset:v9 anchor:{v11, 0.5, 0.5}];
  }

  [v7 setInResize:0];
}

- (id)expandedZoomableInteractiveCanvasController
{
  v2 = [(THWGalleryRep *)self p_zoomableCanvasControllerForItemIndex:[(THWGalleryRep *)self currentPage]];

  return [v2 interactiveCanvasController];
}

- (void)didPresentExpanded
{
  [(THWPagedCanvasController *)self->_stageCanvasController setMinimizeInfoChange:0];
  v3 = [-[THWGalleryRep p_zoomableCanvasControllerForItemIndex:](self p_zoomableCanvasControllerForItemIndex:{-[THWPagedCanvasController pageIndex](self->_stageCanvasController, "pageIndex")), "interactiveCanvasController"}];

  [v3 setShouldSuppressRendering:0 animated:0];
}

- (void)didPresentExpandedPostCommit
{
  [(THWGalleryRep *)self p_updateUserInteractionForController:self->_stageCanvasController];
  thumbnailTrackCanvasController = self->_thumbnailTrackCanvasController;

  [(THWGalleryRep *)self p_updateUserInteractionForController:thumbnailTrackCanvasController];
}

- (BOOL)expandedAllowFreeTransform
{
  v2 = [-[THWGalleryRep p_zoomableCanvasControlRepForItemIndex:](self p_zoomableCanvasControlRepForItemIndex:{-[THWPagedCanvasController pageIndex](self->_stageCanvasController, "pageIndex")), "zoomableCanvasController"}];
  if (!v2)
  {
    return 1;
  }

  return [v2 isZoomedOut];
}

- (id)expandedRotationAnimationController
{
  v2 = [[THWGalleryExpandedRotationController alloc] initWithRep:self pagedCanvasController:self->_stageCanvasController zoomableCanvasController:[(THWGalleryRep *)self p_zoomableCanvasControllerForItem:[(THWGalleryRep *)self currentItem]]];

  return v2;
}

- (BOOL)expandedHasContentForPanel:(int)panel
{
  v3 = *&panel;
  layout = [(THWGalleryRep *)self layout];

  return [layout expandedHasContentForPanel:v3];
}

- (UIEdgeInsets)expandedStackedControlContainerInsetsForPanel:(int)panel withDefault:(UIEdgeInsets)default
{
  right = default.right;
  bottom = default.bottom;
  left = default.left;
  top = default.top;
  if (panel == 2)
  {
    [(THWGalleryRep *)self expandedHasContentForPanel:1];
  }

  else if (panel == 1)
  {
    if ([(THWGalleryRep *)self expandedHasContentForPanel:2])
    {
      [(THWGalleryRep *)self p_expandedPaddingAfterCaption];
      bottom = fmax(v9, top) - top;
    }

    if (![-[THWGalleryRep layout](self "layout")])
    {
      bottom = 0.0;
      top = 0.0;
    }
  }

  v10 = top;
  v11 = left;
  v12 = bottom;
  v13 = right;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (double)expandedMinHeightForPanel:(int)panel withDefault:(double)result
{
  v4 = result;
  if (panel == 1)
  {
    v6 = [(THWGalleryRep *)self expandedHasContentForPanel:2];
    result = 0.0;
    if ((v6 & 1) == 0)
    {
      layout = [-[THWGalleryRep layout](self layout];
      result = 0.0;
      if (layout)
      {
        return v4;
      }
    }
  }

  return result;
}

- (id)expandedLayoutGeometryForLayout:(id)layout inPanel:(int)panel withWidth:(double)width insets:(UIEdgeInsets)insets
{
  v9 = TSUProtocolCast();
  if (!v9)
  {
    return 0;
  }

  v10 = [v9 tag];
  if (v10 == &dword_4)
  {
    if ((panel - 1) <= 1)
    {
      x = CGPointZero.x;
      y = CGPointZero.y;
      v15 = 15.0;
      goto LABEL_8;
    }

    return 0;
  }

  if (v10 != (&dword_0 + 1) || (panel - 1) > 1)
  {
    return 0;
  }

  x = CGPointZero.x;
  y = CGPointZero.y;
  [-[THWGalleryRep layout](self "layout")];
  width = v13;
  v15 = v14;
LABEL_8:
  v16 = [[TSDLayoutGeometry alloc] initWithFrame:{x, y, width, v15}];

  return v16;
}

- (unsigned)expandedAlignmentForLayout:(id)layout inPanel:(int)panel
{
  v4 = TSUProtocolCast();
  if (v4 && ((v5 = v4, [v4 tag] == &dword_0 + 1) || objc_msgSend(v5, "tag") == &dword_4))
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

- (id)expandedChildInfosForPanel:(int)panel
{
  if (panel == 1)
  {
    v3 = [-[THWGalleryRep layout](self "layout")];
    if (v3)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (panel)
  {
    return 0;
  }

  v3 = [objc_msgSend(objc_msgSend(-[THWGalleryRep info](self "info")];
  if (!v3)
  {
    return 0;
  }

LABEL_4:

  return [NSArray arrayWithObject:v3];
}

- (id)expandedAdditionalChildLayoutsForPanel:(int)panel
{
  v3 = *&panel;
  layout = [(THWGalleryRep *)self layout];

  return [layout thumbnailTrackAdditionalLayoutsInExpandedPanel:v3];
}

- (void)expandedContentHandleDoubleTapZoomDirectlyAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [-[THWGalleryRep layout](self "layout")];
  v6 = v10.origin.x;
  v7 = v10.origin.y;
  v9.x = x;
  v9.y = y;
  if (CGRectContainsPoint(v10, v9))
  {

    [(THWGalleryRep *)self p_toggleCurrentItemZoomableWithStageRelativeTouch:x - v6, y - v7];
  }
}

- (double)expandedLeftRightInsetForTextLayout:(id)layout inPanel:(int)panel
{
  if (!panel)
  {
    return 10.0;
  }

  if (panel != 1)
  {
    return 0.0;
  }

  v6 = [(THWGalleryRep *)self layout:layout];

  [v6 expandedLeftRightInsetForCaption];
  return result;
}

- (double)p_expandedPaddingAfterCaption
{
  v2 = TSUPhoneUI();
  result = 28.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

- (double)expandedVerticalPaddingAfterForLayout:(id)layout inPanel:(int)panel
{
  if (panel != 1)
  {
    return 10.0;
  }

  v6 = [-[THWGalleryRep layout](self "layout")];
  if (!v6 || [layout info] != v6)
  {
    return 10.0;
  }

  [(THWGalleryRep *)self p_expandedPaddingAfterCaption];
  return result;
}

- (BOOL)expandedIsRelatedCanvasScrolling
{
  interactiveCanvasController = [(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)interactiveCanvasController currentlyScrolling];
}

- (void)p_togglePanelDescriptionExpanded
{
  [(THWGalleryRep *)self setPanelDescriptionExpanded:[(THWGalleryRep *)self panelDescriptionExpanded]^ 1];
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
  v7[2] = sub_152DC0;
  v7[3] = &unk_45AE00;
  v7[4] = self;
  return [[THWTapGestureAction alloc] initWithAction:v7];
}

- (unsigned)expandedMaxLineCountForTextLayout:(id)layout inPanel:(int)panel withDefault:(unsigned int)default
{
  if (panel == 1 && !self->_panelDescriptionExpanded)
  {
    layout = [-[THWGalleryRep layout](self layout];
    if ([layout isCompactHeight])
    {
      return 2;
    }

    else if ([layout isCompactWidth])
    {
      return 5;
    }
  }

  return default;
}

- (void)pageControl:(id)control didChangeInteractivelyFromPageIndex:(unint64_t)index toPageIndex:(unint64_t)pageIndex
{
  layout = [control layout];
  if (layout)
  {
    v9 = layout;
    if (layout == [-[THWGalleryRep layout](self "layout")])
    {
      stageCanvasController = self->_stageCanvasController;
      v11 = index - pageIndex;
      if ((index - pageIndex) < 0)
      {
        v11 = pageIndex - index;
      }

      [(THWPagedCanvasController *)stageCanvasController setPageIndex:pageIndex animated:v11 < 2];
    }

    else if (v9 == [-[THWGalleryRep layout](self "layout")])
    {
      thumbnailTrackCanvasController = self->_thumbnailTrackCanvasController;

      [(THWPagedCanvasController *)thumbnailTrackCanvasController setPageIndex:pageIndex];
    }
  }
}

- (__CTFont)pageControlCreateFont:(id)font
{
  result = [-[THWGalleryRep layout](self layout];
  if (!result)
  {

    return CTFontCreateWithName(@"LucidaGrande", 0.0, 0);
  }

  return result;
}

- (id)pageControlTextColor:(id)color
{
  result = [-[THWGalleryRep layout](self layout];
  if (!result)
  {

    return [TSUColor colorWithWhite:0.0980392173 alpha:1.0];
  }

  return result;
}

- (id)pageControl:(id)control layerForState:(int)state pageIndex:(unint64_t)index
{
  if ([objc_msgSend(control "layout")] - 3 > &dword_0 + 1)
  {
    return 0;
  }

  v7 = [-[THWGalleryRep layout](self "layout")];
  v8 = [-[THWGalleryRep layout](self "layout")];
  if (v8)
  {
    v9 = +[TSUColor whiteColor];
  }

  else
  {
    if (v7)
    {
      goto LABEL_7;
    }

    v9 = +[TSUColor blackColor];
  }

  v7 = v9;
LABEL_7:
  if (state == 1)
  {
    v10 = 0.8;
    if (!v8)
    {
      v10 = 1.0;
    }
  }

  else
  {
    if (state)
    {
      return 0;
    }

    v10 = 0.3;
    if (v8)
    {
      v10 = 0.4;
    }
  }

  v11 = [v7 colorWithAlphaComponent:v10];
  if (!v11)
  {
    return 0;
  }

  return [THWPageControlRep dotLayerUsingColor:v11 diameter:7.0];
}

- (BOOL)isExpanded
{
  layout = [(THWGalleryRep *)self layout];

  return [layout isExpanded];
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (void)p_updateToPageIndex:(unint64_t)index usingCachedImagedFromRep:(id)rep
{
  [objc_msgSend(-[THWGalleryRep layout](self "layout")];
  if (self->_stageCanvasController)
  {
    v7 = [(THWGalleryRep *)self p_itemAtIndex:index];
    [(THWPagedCanvasController *)self->_stageCanvasController setPadInfos:0];
    [(THWPagedCanvasController *)self->_stageCanvasController setPageIndex:index animated:0];
    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] setShouldSuppressRendering:1 animated:0];
    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] layoutIfNeeded];
    v8 = [(THWGalleryRep *)self p_imageRepForItem:v7];
    v9 = [rep p_imageRepForItem:v7];
    if (v8)
    {
      if (v9)
      {
        newCachedSizedImage = [v9 newCachedSizedImage];
        if (newCachedSizedImage)
        {
          v11 = newCachedSizedImage;
          [v8 useCachedSizedImage:newCachedSizedImage];
          [v8 generateSizedImageOnBackgroundThread];
        }
      }
    }

    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] setShouldSuppressRendering:0 animated:0];
    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] layoutIfNeeded];
  }

  else
  {
    self->_currentPage = index;
  }

  interactiveCanvasController = [(THWGalleryRep *)self interactiveCanvasController];

  [interactiveCanvasController layoutIfNeeded];
}

- (void)freeTransformWillBegin
{
  [-[THWGalleryRep p_currentImageRep](self "p_currentImageRep")];
  objc_opt_class();
  [(THWExpandedRepController *)self->_expandedRepController expandedRepSourceRep];
  v3 = TSUDynamicCast();
  [v3 p_updateToPageIndex:-[THWPagedCanvasController pageIndex](-[THWGalleryRep stageCanvasController](self usingCachedImagedFromRep:{"stageCanvasController"), "pageIndex"), self}];

  [(THWGalleryRep *)self p_setupImageCropAnimationControllerWithDestinationRep:v3];
}

- (id)shadowPath
{
  if (![-[THWGalleryRep currentItem](self "currentItem")])
  {
    return 0;
  }

  imageCropAnimationController = self->_imageCropAnimationController;

  return [(THWImageCropAnimationController *)imageCropAnimationController sourceShadowPath];
}

- (void)freeTransformDidEnd
{
  [(THWPagedCanvasController *)self->_stageCanvasController setPadInfos:1];
  [(THWImageCropAnimationController *)self->_imageCropAnimationController teardownWrapperLayer];

  self->_imageCropAnimationController = 0;
  p_currentImageRep = [(THWGalleryRep *)self p_currentImageRep];

  [p_currentImageRep resumeLayerUpdatesAndLayoutImmediately];
}

- (CGRect)rectForCompletion
{
  v2 = [-[THWGalleryRep p_currentImageRep](self "p_currentImageRep")];

  [v2 frameInParent];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)canHandleGesture:(id)gesture
{
  if ([(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] canHandleGesture:gesture])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    [gesture naturalLocationForRep:self];
    v7 = v6;
    v9 = v8;
    [-[THWGalleryRep layout](self "layout")];
    v13.x = v7;
    v13.y = v9;
    v5 = CGRectContainsPoint(v14, v13);
    if (v5)
    {
      pressableHandler = self->_pressableHandler;

      LOBYTE(v5) = [(THWPressableRepGestureTargetHandler *)pressableHandler canHandleGesture:gesture];
    }
  }

  return v5;
}

- (BOOL)handleGesture:(id)gesture
{
  [gesture naturalLocationForRep:self];
  v6 = v5;
  v8 = v7;
  [-[THWGalleryRep layout](self "layout")];
  v12.x = v6;
  v12.y = v8;
  if (CGRectContainsPoint(v13, v12) && [(THWPressableRepGestureTargetHandler *)self->_pressableHandler handleGesture:gesture])
  {
    return 1;
  }

  freeTransformableHandler = [(THWGalleryRep *)self freeTransformableHandler];

  return [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler handleGesture:gesture];
}

- (void)willBeginHandlingGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind == TSDFreeTransform)
  {
    freeTransformableHandler = [(THWGalleryRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler willBeginHandlingGesture:gesture];
  }
}

- (void)buttonControlWasPressed:(id)pressed
{
  layout = [pressed layout];
  if ([layout tag] == &dword_4 + 1)
  {
    index = [layout index];

    [(THWGalleryRep *)self p_goToPage:index];
  }
}

- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted
{
  layout = [control layout];
  if ([layout tag] != &dword_4 + 1)
  {
    return 0;
  }

  v7 = [-[THWGalleryRep p_itemAtIndex:](self p_itemAtIndex:{objc_msgSend(layout, "index")), "thumbnailImageData"}];
  if (!v7)
  {
    return 0;
  }

  return [TSDBitmapImageProvider TSUImageForImageData:v7];
}

- (void)buttonControl:(id)control didUpdateLayer:(id)layer
{
  layout = [control layout];
  if ([layout tag] == &dword_4 + 1)
  {
    v7 = [objc_msgSend(-[THWGalleryRep layout](self "layout")];
    if (v7 == [layout index])
    {
      [layer setBorderWidth:0.0];
      [layer bounds];
      v10 = [(THWGalleryRep *)self p_highlightLayerForThumbnailSize:v8, v9];
      v11 = v10;
      if (v10 && [v10 superlayer] != layer)
      {
        [v11 removeFromSuperlayer];
        [layer addSublayer:v11];
      }

      [(THWGalleryRep *)self p_integralScaledThumbnailHighlightWidth];

      [v11 setPosition:?];
    }

    else
    {
      [layer setBorderColor:{objc_msgSend(objc_msgSend(-[THWGalleryRep layout](self, "layout"), "thumbnailBorderColor"), "CGColor")}];

      [layer setBorderWidth:1.0];
    }
  }
}

- (void)buttonControlInteractionWillStart:(id)start
{
  layout = [start layout];
  if ([layout tag] == &dword_4 + 1)
  {
    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] setStaticLayoutAndRenderOnThread:1];
    index = [layout index];
    stageCanvasController = self->_stageCanvasController;

    [(THWPagedCanvasController *)stageCanvasController setPreloadPageIndex:index];
  }
}

- (void)buttonControlInteractionDidEnd:(id)end
{
  if ([objc_msgSend(end "layout")] == &dword_4 + 1)
  {
    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] setStaticLayoutAndRenderOnThread:0];
    [(THWPagedCanvasController *)self->_stageCanvasController setPreloadPageIndex:0x7FFFFFFFFFFFFFFFLL];
    if (([(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] currentlyScrolling]& 1) == 0 && ([(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_thumbnailTrackCanvasController interactiveCanvasController] currentlyScrolling]& 1) == 0)
    {
      stageCanvasController = self->_stageCanvasController;
      pageIndex = [(THWPagedCanvasController *)stageCanvasController pageIndex];

      [(THWGalleryRep *)self pagedCanvasController:stageCanvasController didScrollToPageIndex:pageIndex];
    }
  }
}

- (void)willReplaceContentsFromRep:(id)rep
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = [objc_msgSend(v4 "stageCanvasController")];
    [objc_msgSend(-[THWGalleryRep layout](self "layout")];
    stageCanvasController = self->_stageCanvasController;
    if (stageCanvasController)
    {
      [(THWPagedCanvasController *)stageCanvasController setPageIndex:v5 animated:0];
      interactiveCanvasController = [(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController];

      [(TSDInteractiveCanvasController *)interactiveCanvasController layoutIfNeeded];
    }

    else
    {
      self->_currentPage = v5;
    }
  }
}

- (CGSize)sizeOfCanvasForZoomableCanvasController:(id)controller
{
  layout = [(THWGalleryRep *)self layout];
  v6 = [(THWGalleryRep *)self p_itemForZoomableCanvasController:controller];

  [layout zoomableCanvasSizeForItem:v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)zoomableCanvasController:(id)controller infosToDisplayForViewport:(CGRect)viewport
{
  result = [-[THWGalleryRep p_itemForZoomableCanvasController:](self p_itemForZoomableCanvasController:{controller, viewport.origin.x, viewport.origin.y, viewport.size.width, viewport.size.height), "imageInfo"}];
  if (result)
  {

    return [NSArray arrayWithObject:result];
  }

  return result;
}

- (double)zoomableCanvasControllerContentsScale:(id)scale
{
  canvas = [(THWGalleryRep *)self canvas];

  [canvas contentsScale];
  return result;
}

- (void)zoomableCanvasControllerCustomizeLayerHost:(id)host
{
  v5 = [(THWGalleryRep *)self p_itemForZoomableCanvasController:?];
  [-[THWGalleryRep layout](self "layout")];
  v7 = v6;
  [objc_msgSend(objc_msgSend(objc_msgSend(host "interactiveCanvasController")];
  [(THWGalleryRep *)self p_updateMinMaxViewScaleForItem:v5 forceMinScale:0];
  TSDRectWithSize();
  TSDCenterOfRect();

  [host setViewScale:v7 contentOffset:v8 anchor:{v9, 0.5, 0.5}];
}

- (BOOL)zoomableCanvasControllerIsRelatedCanvasScrolling:(id)scrolling
{
  interactiveCanvasController = [(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)interactiveCanvasController currentlyScrolling];
}

- (unint64_t)p_itemIndexForZoomableCanvasController:(id)controller
{
  objc_opt_class();
  [controller instanceData];
  v4 = TSUDynamicCast();

  return [v4 unsignedIntegerValue];
}

- (id)p_itemForZoomableCanvasController:(id)controller
{
  info = [(THWGalleryRep *)self info];
  v6 = [(THWGalleryRep *)self p_itemIndexForZoomableCanvasController:controller];

  return [info itemAtIndex:v6];
}

- (void)p_updateMinMaxViewScaleForItem:(id)item forceMinScale:(BOOL)scale
{
  scaleCopy = scale;
  [-[THWGalleryRep layout](self "layout")];
  v8 = v7;
  v9 = [(THWGalleryRep *)self p_zoomableCanvasControllerForItem:item];
  v10 = [objc_msgSend(objc_msgSend(v9 "interactiveCanvasController")];
  [v10 setMinimumPinchViewScale:v8];
  [v10 setMaximumPinchViewScale:{fmax(v8, 1.5)}];
  [v10 setAllowsPinchZoom:1];
  if (scaleCopy)
  {
    interactiveCanvasController = [v9 interactiveCanvasController];

    [interactiveCanvasController setViewScale:v8];
  }
}

- (void)p_toggleCurrentItemZoomableWithStageRelativeTouch:(CGPoint)touch
{
  y = touch.y;
  x = touch.x;
  currentItem = [(THWGalleryRep *)self currentItem];
  if (currentItem)
  {
    v7 = currentItem;
    v8 = [(THWGalleryRep *)self p_zoomableCanvasControllerForItem:currentItem];
    interactiveCanvasController = [v8 interactiveCanvasController];
    layout = [(THWGalleryRep *)self layout];
    [interactiveCanvasController viewScale];
    v12 = v11;
    [layout zoomableItemMinimumViewScaleForItem:v7];
    v14 = v13;
    v15 = TSUPhoneUI();
    v16 = 1.5;
    v17 = 1.0;
    if (!v15)
    {
      v17 = 1.5;
    }

    if (v14 >= v17)
    {
      v17 = v14;
    }

    v18 = vabdd_f64(v17, v14);
    if (v17 + v17 <= 1.5)
    {
      v16 = v17 + v17;
    }

    if (v18 >= 0.00999999978)
    {
      v19 = v17;
    }

    else
    {
      v19 = v16;
    }

    [interactiveCanvasController contentOffset];
    v21 = x / v12 + v20;
    v23 = y / v12 + v22;
    if (v12 >= (v14 + v19) * 0.5)
    {
      v24 = v14;
    }

    else
    {
      v24 = v19;
    }

    [objc_msgSend(v8 "scrollView")];

    [interactiveCanvasController setViewScale:1 contentOffset:1 clampOffset:v24 animated:{v21 - v25 * 0.5 / v24, v23 - v26 * 0.5 / v24}];
  }
}

- (id)p_currentImageRep
{
  v3 = -[THWGalleryRep p_itemAtIndex:](self, "p_itemAtIndex:", [objc_msgSend(-[THWGalleryRep layout](self "layout")]);

  return [(THWGalleryRep *)self p_imageRepForItem:v3];
}

- (id)p_imageRepForItem:(id)item
{
  interactiveCanvasController = [(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController];
  v6 = [-[TSDInteractiveCanvasController layoutController](interactiveCanvasController "layoutController")];
  if (!v6)
  {
    if (![(THWGalleryRep *)self p_supportZoom])
    {
      return 0;
    }

    interactiveCanvasController = [-[THWGalleryRep p_zoomableCanvasControllerForItem:](self p_zoomableCanvasControllerForItem:{item), "interactiveCanvasController"}];
    v6 = [-[TSDInteractiveCanvasController layoutController](interactiveCanvasController "layoutController")];
    if (!v6)
    {
      return 0;
    }
  }

  v7 = v6;
  objc_opt_class();
  [-[TSDInteractiveCanvasController canvas](interactiveCanvasController "canvas")];

  return TSUDynamicCast();
}

- (id)p_layerForItem:(id)item
{
  v3 = [(THWGalleryRep *)self p_imageRepForItem:item];
  interactiveCanvasController = [v3 interactiveCanvasController];

  return [interactiveCanvasController layerForRep:v3];
}

- (id)p_currentImageContentLayer
{
  p_currentImageRep = [(THWGalleryRep *)self p_currentImageRep];

  return [p_currentImageRep contentsLayer];
}

- (CGRect)p_contentsRectForItem:(id)item
{
  if (item)
  {
    if ([-[THWGalleryRep layout](self "layout")])
    {
      v4 = 1.0;
      v5 = 0.0;
      v6 = 0.0;
      v7 = 1.0;
    }

    else
    {
      [objc_msgSend(item "imageInfo")];
      v9 = v8;
      v11 = v10;
      [item cropRect];
      v5 = v12 / v9;
      v6 = v13 / v11;
      v4 = v14 / v9;
      v7 = v15 / v11;
    }
  }

  else
  {
    v4 = 1.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 1.0;
  }

  result.size.height = v7;
  result.size.width = v4;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)p_zoomableCanvasControlRepForItemIndex:(unint64_t)index
{
  objc_opt_class();
  -[TSDInteractiveCanvasController repForLayout:](-[THWPagedCanvasController interactiveCanvasController](self->_stageCanvasController, "interactiveCanvasController"), "repForLayout:", [-[THWGalleryRep layout](self "layout")]);

  return TSUDynamicCast();
}

- (id)p_zoomableCanvasControllerForItemIndex:(unint64_t)index
{
  v3 = [(THWGalleryRep *)self p_zoomableCanvasControlRepForItemIndex:index];

  return [v3 zoomableCanvasController];
}

- (id)p_zoomableCanvasControllerForItem:(id)item
{
  v3 = -[THWGalleryRep p_zoomableCanvasControlRepForItemIndex:](self, "p_zoomableCanvasControlRepForItemIndex:", [-[THWGalleryRep info](self "info")]);

  return [v3 zoomableCanvasController];
}

- (void)p_resetViewScaleForItemsExcept:(id)except
{
  if ([(THWGalleryRep *)self p_supportZoom])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    info = [-[THWGalleryRep info](self info];
    v6 = [info countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(info);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (v10 != except)
          {
            [(THWGalleryRep *)self p_updateMinMaxViewScaleForItem:v10 forceMinScale:1];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [info countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)p_shouldSuppressRenderingDuringExpansion
{
  p_isExpanding = [(THWGalleryRep *)self p_isExpanding];
  if (p_isExpanding)
  {
    objc_opt_class();
    [(THWExpandedRepController *)self->_expandedRepController expandedRepSourceRep];
    LOBYTE(p_isExpanding) = TSUDynamicCast() != 0;
  }

  return p_isExpanding;
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

- (void)p_relaxMinimizeInfosNextFrame
{
  expandedRepController = self->_expandedRepController;
  if (!expandedRepController || [(THWExpandedRepController *)expandedRepController expandedRepControllerState]== 2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_15440C;
    v4[3] = &unk_45AE00;
    v4[4] = self;
    [-[THWGalleryRep interactiveCanvasController](self "interactiveCanvasController")];
  }
}

- (id)currentItem
{
  pageIndex = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];

  return [(THWGalleryRep *)self p_itemAtIndex:pageIndex];
}

- (CGRect)resizeOriginalLayoutFrame
{
  x = self->_resizeOriginalLayoutFrame.origin.x;
  y = self->_resizeOriginalLayoutFrame.origin.y;
  width = self->_resizeOriginalLayoutFrame.size.width;
  height = self->_resizeOriginalLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
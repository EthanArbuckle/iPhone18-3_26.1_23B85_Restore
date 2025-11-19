@interface THWGalleryRep
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)control:(id)a3 isInteractionEnabledForRep:(id)a4;
- (BOOL)expandedAllowFreeTransform;
- (BOOL)expandedHasContentForPanel:(int)a3;
- (BOOL)expandedIsRelatedCanvasScrolling;
- (BOOL)handleGesture:(id)a3;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)p_isExpanding;
- (BOOL)p_moveToNextPage;
- (BOOL)p_moveToPreviousPage;
- (BOOL)p_shouldPageOnGesture:(id)a3 toLeft:(BOOL *)a4 toRight:(BOOL *)a5;
- (BOOL)p_shouldSuppressRenderingDuringExpansion;
- (BOOL)p_supportZoom;
- (BOOL)pagedCanvasControllerDeferViewCreation:(id)a3;
- (BOOL)pagedCanvasControllerIsRelatedCanvasScrolling:(id)a3;
- (BOOL)wantsPressAnimation;
- (BOOL)zoomableCanvasControllerIsRelatedCanvasScrolling:(id)a3;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGAffineTransform)shadowAnimationLayerDestinationTransform:(SEL)a3 uniformTargetScale:(id)a4;
- (CGRect)ftcTargetFrame;
- (CGRect)p_contentsRectForItem:(id)a3;
- (CGRect)rectForCompletion;
- (CGRect)resizeOriginalLayoutFrame;
- (CGSize)sizeOfCanvasForZoomableCanvasController:(id)a3;
- (THAnimationController)animationController;
- (THWGalleryRep)initWithLayout:(id)a3 canvas:(id)a4;
- (UIEdgeInsets)expandedStackedControlContainerInsetsForPanel:(int)a3 withDefault:(UIEdgeInsets)a4;
- (__CTFont)pageControlCreateFont:(id)a3;
- (double)expandedLeftRightInsetForTextLayout:(id)a3 inPanel:(int)a4;
- (double)expandedMinHeightForPanel:(int)a3 withDefault:(double)result;
- (double)expandedVerticalPaddingAfterForLayout:(id)a3 inPanel:(int)a4;
- (double)p_expandedPaddingAfterCaption;
- (double)pagedCanvasController:(id)a3 adjustScale:(double)a4 andFrame:(CGRect *)a5;
- (double)pagedCanvasControllerContentsScale:(id)a3;
- (double)pagedCanvasControllerVerticalOverflow:(id)a3;
- (double)zoomableCanvasControllerContentsScale:(id)a3;
- (id)animationLayer;
- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5;
- (id)currentItem;
- (id)expandedAdditionalChildLayoutsForPanel:(int)a3;
- (id)expandedChildInfosForPanel:(int)a3;
- (id)expandedLayoutGeometryForLayout:(id)a3 inPanel:(int)a4 withWidth:(double)a5 insets:(UIEdgeInsets)a6;
- (id)expandedPanel:(int)a3 primaryTargetForGesture:(id)a4;
- (id)expandedRotationAnimationController;
- (id)expandedZoomableInteractiveCanvasController;
- (id)p_currentImageContentLayer;
- (id)p_currentImageRep;
- (id)p_highlightLayerForThumbnailSize:(CGSize)a3;
- (id)p_imageRepForItem:(id)a3;
- (id)p_itemAtIndex:(unint64_t)a3;
- (id)p_itemForZoomableCanvasController:(id)a3;
- (id)p_layerForItem:(id)a3;
- (id)p_zoomableCanvasControlRepForItemIndex:(unint64_t)a3;
- (id)p_zoomableCanvasControllerForItem:(id)a3;
- (id)p_zoomableCanvasControllerForItemIndex:(unint64_t)a3;
- (id)pageControl:(id)a3 layerForState:(int)a4 pageIndex:(unint64_t)a5;
- (id)pageControlTextColor:(id)a3;
- (id)pagedCanvasController:(id)a3 infosToDisplayForPageRange:(_NSRange)a4;
- (id)pagedCanvasController:(id)a3 primaryTargetForGesture:(id)a4;
- (id)pagedCanvasController:(id)a3 renderedPageIndexSetFromReps:(id)a4;
- (id)shadowAnimationLayer;
- (id)shadowPath;
- (id)targetLayer;
- (id)zoomableCanvasController:(id)a3 infosToDisplayForViewport:(CGRect)a4;
- (unint64_t)currentPage;
- (unint64_t)p_itemIndexForZoomableCanvasController:(id)a3;
- (unint64_t)pageCountForPagedCanvasController:(id)a3;
- (unsigned)expandedAlignmentForLayout:(id)a3 inPanel:(int)a4;
- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5;
- (void)animationControllerDidAddContentAnimations:(id)a3 uniformTargetScale:(double)a4;
- (void)animationControllerSetupTarget:(id)a3;
- (void)animationControllerTeardownTarget:(id)a3;
- (void)buttonControl:(id)a3 didUpdateLayer:(id)a4;
- (void)buttonControlInteractionDidEnd:(id)a3;
- (void)buttonControlInteractionWillStart:(id)a3;
- (void)buttonControlWasPressed:(id)a3;
- (void)control:(id)a3 repWasAdded:(id)a4;
- (void)control:(id)a3 repWillBeRemoved:(id)a4;
- (void)dealloc;
- (void)didPresentExpanded;
- (void)didPresentExpandedPostCommit;
- (void)expandedContentHandleDoubleTapZoomDirectlyAtPoint:(CGPoint)a3;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4;
- (void)expandedWillStartWidgetLayoutFrameResize:(CGRect)a3;
- (void)freeTransformDidEnd;
- (void)freeTransformWillBegin;
- (void)p_goToPage:(unint64_t)a3;
- (void)p_rasterizeCanvases:(BOOL)a3;
- (void)p_relaxMinimizeInfosNextFrame;
- (void)p_resetViewScaleForItemsExcept:(id)a3;
- (void)p_setupImageCropAnimationControllerWithDestinationRep:(id)a3;
- (void)p_toggleCurrentItemZoomableWithStageRelativeTouch:(CGPoint)a3;
- (void)p_togglePanelDescriptionExpanded;
- (void)p_updateMinMaxViewScaleForItem:(id)a3 forceMinScale:(BOOL)a4;
- (void)p_updateStageCornerRadius;
- (void)p_updateToPageIndex:(unint64_t)a3 usingCachedImagedFromRep:(id)a4;
- (void)p_updateUserInteractionForController:(id)a3;
- (void)pageControl:(id)a3 didChangeInteractivelyFromPageIndex:(unint64_t)a4 toPageIndex:(unint64_t)a5;
- (void)pagedCanvasController:(id)a3 customizeLayerHost:(id)a4;
- (void)pagedCanvasController:(id)a3 didScrollToPageIndex:(unint64_t)a4;
- (void)pagedCanvasController:(id)a3 mostVisiblePageChangedToPageIndex:(unint64_t)a4;
- (void)screenScaleDidChange;
- (void)viewScaleDidChange;
- (void)willBeginHandlingGesture:(id)a3;
- (void)willReplaceContentsFromRep:(id)a3;
- (void)zoomableCanvasControllerCustomizeLayerHost:(id)a3;
@end

@implementation THWGalleryRep

- (THWGalleryRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v7.receiver = self;
  v7.super_class = THWGalleryRep;
  v4 = [(THWGalleryRep *)&v7 initWithLayout:a3 canvas:a4];
  if (v4)
  {
    objc_opt_class();
    [(THWGalleryRep *)v4 interactiveCanvasController];
    v5 = [TSUDynamicCast() pressHandlerForPressableReps];
    v4->_currentPage = 0x7FFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v4->_pressableHandler = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:v4 pressHandler:v5];
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
  v2 = [(THWGalleryRep *)self layout];

  return [v2 useZoom];
}

- (void)screenScaleDidChange
{
  v3.receiver = self;
  v3.super_class = THWGalleryRep;
  [(THWGalleryRep *)&v3 screenScaleDidChange];
  [-[THWGalleryRep canvas](self "canvas")];
  [(CAShapeLayer *)self->_thumbnailHighlightLayer setContentsScale:?];
}

- (id)p_highlightLayerForThumbnailSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

  v4 = [-[THWGalleryRep layout](self layout];

  return [v4 currentPage];
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

- (BOOL)p_shouldPageOnGesture:(id)a3 toLeft:(BOOL *)a4 toRight:(BOOL *)a5
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

- (void)p_goToPage:(unint64_t)a3
{
  if ([(THWGalleryRep *)self pageCountForPagedCanvasController:self->_stageCanvasController]<= a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];
  if (v5 != a3)
  {
    v6 = v5 >= a3 ? v5 - a3 : a3 - v5;
    [(THWPagedCanvasController *)self->_stageCanvasController setMinimizeInfoChange:1];
    [(THWPagedCanvasController *)self->_stageCanvasController setPageIndex:a3 animated:v6 < 2];
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
  v3 = [(THWGalleryRep *)self p_canMoveToNextPage];
  if (v3)
  {
    [(THWGalleryRep *)self p_goToPage:[(THWPagedCanvasController *)self->_stageCanvasController pageIndex]+ 1];
  }

  return v3;
}

- (BOOL)p_moveToPreviousPage
{
  v3 = [(THWGalleryRep *)self p_canMoveToPreviousPage];
  if (v3)
  {
    [(THWGalleryRep *)self p_goToPage:[(THWPagedCanvasController *)self->_stageCanvasController pageIndex]- 1];
  }

  return v3;
}

- (void)control:(id)a3 repWasAdded:(id)a4
{
  v6 = [a3 tag];
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
      v11 = [TSUDynamicCast() pagedCanvasController];
      self->_thumbnailTrackCanvasController = v11;
      [(THWPagedCanvasController *)v11 setDelegate:self];
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
          v9 = [a3 index];
          v10 = v9 == [(THWPagedCanvasController *)self->_stageCanvasController pageIndex]&& [(THWGalleryRep *)self p_shouldSuppressRenderingDuringExpansion];

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
    v14 = [v13 layout];

    [v14 setSpacing:9.0];
  }
}

- (void)control:(id)a3 repWillBeRemoved:(id)a4
{
  if ([a3 tag] == &dword_4 + 3)
  {
    objc_opt_class();
    v4 = [TSUDynamicCast() zoomableCanvasController];

    [v4 setDelegate:0];
  }
}

- (BOOL)control:(id)a3 isInteractionEnabledForRep:(id)a4
{
  if (![(THWGalleryRep *)self pressableHandler:a3])
  {
    return 1;
  }

  v5 = [(THWGalleryRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v5 widgetInteractionEnabled];
}

- (unint64_t)pageCountForPagedCanvasController:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self->_stageCanvasController == a3)
  {
    v4 = [(THWGalleryRep *)self layout];

    return [v4 numberOfStagePages];
  }

  else
  {
    if (self->_thumbnailTrackCanvasController != a3)
    {
      return 0;
    }

    v5 = [(THWGalleryRep *)self layout];

    return [v5 numberOfThumbnailTrackPages];
  }
}

- (id)pagedCanvasController:(id)a3 infosToDisplayForPageRange:(_NSRange)a4
{
  if (!a3)
  {
    return 0;
  }

  length = a4.length;
  location = a4.location;
  if (self->_stageCanvasController == a3)
  {
    v7 = [(THWGalleryRep *)self layout];

    return [v7 infosForStagePages:{location, length}];
  }

  else
  {
    if (self->_thumbnailTrackCanvasController != a3)
    {
      return 0;
    }

    v8 = [(THWGalleryRep *)self layout];

    return [v8 infosForThumbnailTrackPages:{location, length}];
  }
}

- (void)pagedCanvasController:(id)a3 mostVisiblePageChangedToPageIndex:(unint64_t)a4
{
  if (a3 && self->_stageCanvasController == a3)
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

- (void)pagedCanvasController:(id)a3 didScrollToPageIndex:(unint64_t)a4
{
  if (a3)
  {
    v7 = [(THWGalleryRep *)self layout];
    v8 = v7;
    if (self->_stageCanvasController == a3)
    {
      [(THWGalleryRep *)self p_relaxMinimizeInfosNextFrame];
      [v8 updateCurrentItemIndex:a4];
      [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerInvalidateChildrenInPanel:1 invalidateWPAuto:0];
      if (self->_thumbnailTrackCanvasController)
      {
        -[THWPagedCanvasController setPageIndex:](self->_thumbnailTrackCanvasController, "setPageIndex:", [v8 thumbnailPageIndexForItemIndex:a4]);
        [(THWPagedCanvasController *)self->_thumbnailTrackCanvasController invalidateLayers];
      }

      v9 = [(THWGalleryRep *)self currentItem];

      [(THWGalleryRep *)self p_resetViewScaleForItemsExcept:v9];
    }

    else if (self->_thumbnailTrackCanvasController == a3)
    {
      v10 = [v7 thumbnailPageControl];

      [v10 setCurrentPage:a4];
    }
  }
}

- (id)pagedCanvasController:(id)a3 primaryTargetForGesture:(id)a4
{
  if (*(self + 40) != a3)
  {
    return 0;
  }

  return self;
}

- (void)p_rasterizeCanvases:(BOOL)a3
{
  if (a3)
  {
    [-[THWGalleryRep layout](self "layout")];
  }

  stageCanvasController = self->_stageCanvasController;

  [(THWPagedCanvasController *)stageCanvasController setRasterize:?];
}

- (double)pagedCanvasControllerVerticalOverflow:(id)a3
{
  if (self->_thumbnailTrackCanvasController != a3)
  {
    return 0.0;
  }

  v6 = [(THWGalleryRep *)self layout];

  [v6 thumbnailTrackVerticalPadding];
  return result;
}

- (void)p_updateUserInteractionForController:(id)a3
{
  if (a3)
  {
    if ([(THWGalleryRep *)self p_isExpanding])
    {
      v5 = 0;
    }

    else if ([(THWGalleryRep *)self pressableHandler])
    {
      v5 = [(THWPressableRepGestureTargetHandler *)[(THWGalleryRep *)self pressableHandler] widgetInteractionEnabled];
    }

    else
    {
      v5 = 1;
    }

    [a3 setUserInteractionEnabled:v5];
  }
}

- (void)pagedCanvasController:(id)a3 customizeLayerHost:(id)a4
{
  if (self->_stageCanvasController == a3)
  {
    v6 = [(THWGalleryRep *)self layout];
    [(THWPagedCanvasController *)self->_stageCanvasController setPageIndex:[(THWGalleryRep *)self currentPage] animated:0];
    if (([v6 isExpanded] & 1) == 0)
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
    if (thumbnailTrackCanvasController == a3)
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

- (BOOL)pagedCanvasControllerIsRelatedCanvasScrolling:(id)a3
{
  v3 = [(THWGalleryRep *)self interactiveCanvasController];

  return [v3 currentlyScrolling];
}

- (BOOL)pagedCanvasControllerDeferViewCreation:(id)a3
{
  v3 = [(THWGalleryRep *)self interactiveCanvasController];

  return [v3 currentlyScrolling];
}

- (double)pagedCanvasControllerContentsScale:(id)a3
{
  v3 = [-[THWGalleryRep interactiveCanvasController](self interactiveCanvasController];

  [v3 contentsScale];
  return result;
}

- (double)pagedCanvasController:(id)a3 adjustScale:(double)a4 andFrame:(CGRect *)a5
{
  if (!a5)
  {
    return a4;
  }

  Width = CGRectGetWidth(*a5);
  if (self->_stageCanvasController == a3)
  {
    [-[THWGalleryRep layout](self layout];
  }

  else
  {
    v10 = Width;
    if (self->_thumbnailTrackCanvasController != a3)
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
    *a5 = v16;
    return CGRectGetWidth(v16) / v10;
  }

  return a4;
}

- (id)pagedCanvasController:(id)a3 renderedPageIndexSetFromReps:(id)a4
{
  if (self->_stageCanvasController != a3)
  {
    return 0;
  }

  v7 = [(THWGalleryRep *)self layout];

  return [v7 pageIndexesFromStageReps:a4];
}

- (id)p_itemAtIndex:(unint64_t)a3
{
  v4 = [-[THWGalleryRep info](self "info")];
  if ([v4 count] <= a3)
  {
    return 0;
  }

  return [v4 objectAtIndex:a3];
}

- (CALayer)pressableAnimationLayer
{
  v2 = [(THWPagedCanvasController *)self->_stageCanvasController view];

  return [(UIView *)v2 layer];
}

- (BOOL)wantsPressAnimation
{
  v2 = [(THWGalleryRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v2 widgetInteractionDisabledOnPage];
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

- (CGAffineTransform)shadowAnimationLayerDestinationTransform:(SEL)a3 uniformTargetScale:(id)a4
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

- (void)p_setupImageCropAnimationControllerWithDestinationRep:(id)a3
{
  v5 = [(THWGalleryRep *)self p_currentImageContentLayer];
  if (v5 && !self->_imageCropAnimationController)
  {
    v11 = v5;
    v12 = [(THWGalleryRep *)self currentItem];
    [(THWGalleryRep *)self p_contentsRectForItem:v12];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    if (a3)
    {
      [a3 p_contentsRectForItem:v12];
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
    [objc_msgSend(a3 "layout")];
    v34 = v33;
    [objc_msgSend(a3 "canvas")];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetCornerRadius:v34 * v35];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setCropDurationScale:0.5];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setCornerRadiusDurationScale:0.5];
    imageCropAnimationController = self->_imageCropAnimationController;

    [(THWImageCropAnimationController *)imageCropAnimationController setupWrapperLayer];
  }

  else if (a3)
  {
    [a3 p_contentsRectForItem:{-[THWGalleryRep currentItem](self, "currentItem")}];
    [(THWImageCropAnimationController *)self->_imageCropAnimationController setTargetContentsRect:?];
    [objc_msgSend(a3 "layout")];
    v7 = v6;
    [objc_msgSend(a3 "canvas")];
    v9 = v7 * v8;
    v10 = self->_imageCropAnimationController;

    [(THWImageCropAnimationController *)v10 setTargetCornerRadius:v9];
  }
}

- (void)animationControllerSetupTarget:(id)a3
{
  objc_opt_class();
  [a3 destination];
  v5 = TSUDynamicCast();

  [(THWGalleryRep *)self p_setupImageCropAnimationControllerWithDestinationRep:v5];
}

- (void)animationControllerTeardownTarget:(id)a3
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    [(THWImageCropAnimationController *)self->_imageCropAnimationController teardownWrapperLayer];

    self->_imageCropAnimationController = 0;
  }
}

- (void)animationControllerDidAddContentAnimations:(id)a3 uniformTargetScale:(double)a4
{
  imageCropAnimationController = self->_imageCropAnimationController;
  [a3 animationDuration];

  [THWImageCropAnimationController addAnimationWithDuration:"addAnimationWithDuration:targetScale:" targetScale:?];
}

- (void)expandedWillStartWidgetLayoutFrameResize:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [objc_msgSend(objc_msgSend(-[THWGalleryRep p_zoomableCanvasControlRepForItemIndex:](self p_zoomableCanvasControlRepForItemIndex:{-[THWPagedCanvasController pageIndex](self->_stageCanvasController, "pageIndex")), "zoomableCanvasController"), "interactiveCanvasController"), "viewScale"}];
  [(THWGalleryRep *)self setResizeOriginalViewScale:?];
  [(THWGalleryRep *)self setResizeOriginalLayoutFrame:x, y, width, height];
  stageCanvasController = self->_stageCanvasController;

  [(THWPagedCanvasController *)stageCanvasController setPadInfos:0];
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  [(THWPagedCanvasController *)self->_stageCanvasController forceStopScrollingAtCurrentPageIndex:a3.origin.x];
  v7 = [-[THWGalleryRep p_zoomableCanvasControlRepForItemIndex:](self p_zoomableCanvasControlRepForItemIndex:{-[THWPagedCanvasController pageIndex](self->_stageCanvasController, "pageIndex")), "zoomableCanvasController"}];
  [v7 setInResize:1];
  [v7 contentOffsetForAnchor:{0.5, 0.5}];
  v9 = v8;
  v11 = v10;
  v12 = [(THWGalleryRep *)self layout];
  [v12 invalidateFrame];
  [v12 invalidateChildren];
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

- (BOOL)expandedHasContentForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [(THWGalleryRep *)self layout];

  return [v4 expandedHasContentForPanel:v3];
}

- (UIEdgeInsets)expandedStackedControlContainerInsetsForPanel:(int)a3 withDefault:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  if (a3 == 2)
  {
    [(THWGalleryRep *)self expandedHasContentForPanel:1];
  }

  else if (a3 == 1)
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

- (double)expandedMinHeightForPanel:(int)a3 withDefault:(double)result
{
  v4 = result;
  if (a3 == 1)
  {
    v6 = [(THWGalleryRep *)self expandedHasContentForPanel:2];
    result = 0.0;
    if ((v6 & 1) == 0)
    {
      v7 = [-[THWGalleryRep layout](self layout];
      result = 0.0;
      if (v7)
      {
        return v4;
      }
    }
  }

  return result;
}

- (id)expandedLayoutGeometryForLayout:(id)a3 inPanel:(int)a4 withWidth:(double)a5 insets:(UIEdgeInsets)a6
{
  v9 = TSUProtocolCast();
  if (!v9)
  {
    return 0;
  }

  v10 = [v9 tag];
  if (v10 == &dword_4)
  {
    if ((a4 - 1) <= 1)
    {
      x = CGPointZero.x;
      y = CGPointZero.y;
      v15 = 15.0;
      goto LABEL_8;
    }

    return 0;
  }

  if (v10 != (&dword_0 + 1) || (a4 - 1) > 1)
  {
    return 0;
  }

  x = CGPointZero.x;
  y = CGPointZero.y;
  [-[THWGalleryRep layout](self "layout")];
  a5 = v13;
  v15 = v14;
LABEL_8:
  v16 = [[TSDLayoutGeometry alloc] initWithFrame:{x, y, a5, v15}];

  return v16;
}

- (unsigned)expandedAlignmentForLayout:(id)a3 inPanel:(int)a4
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

- (id)expandedChildInfosForPanel:(int)a3
{
  if (a3 == 1)
  {
    v3 = [-[THWGalleryRep layout](self "layout")];
    if (v3)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (a3)
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

- (id)expandedAdditionalChildLayoutsForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [(THWGalleryRep *)self layout];

  return [v4 thumbnailTrackAdditionalLayoutsInExpandedPanel:v3];
}

- (void)expandedContentHandleDoubleTapZoomDirectlyAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (double)expandedLeftRightInsetForTextLayout:(id)a3 inPanel:(int)a4
{
  if (!a4)
  {
    return 10.0;
  }

  if (a4 != 1)
  {
    return 0.0;
  }

  v6 = [(THWGalleryRep *)self layout:a3];

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

- (double)expandedVerticalPaddingAfterForLayout:(id)a3 inPanel:(int)a4
{
  if (a4 != 1)
  {
    return 10.0;
  }

  v6 = [-[THWGalleryRep layout](self "layout")];
  if (!v6 || [a3 info] != v6)
  {
    return 10.0;
  }

  [(THWGalleryRep *)self p_expandedPaddingAfterCaption];
  return result;
}

- (BOOL)expandedIsRelatedCanvasScrolling
{
  v2 = [(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)v2 currentlyScrolling];
}

- (void)p_togglePanelDescriptionExpanded
{
  [(THWGalleryRep *)self setPanelDescriptionExpanded:[(THWGalleryRep *)self panelDescriptionExpanded]^ 1];
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
  v7[2] = sub_152DC0;
  v7[3] = &unk_45AE00;
  v7[4] = self;
  return [[THWTapGestureAction alloc] initWithAction:v7];
}

- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5
{
  if (a4 == 1 && !self->_panelDescriptionExpanded)
  {
    v6 = [-[THWGalleryRep layout](self layout];
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

- (void)pageControl:(id)a3 didChangeInteractivelyFromPageIndex:(unint64_t)a4 toPageIndex:(unint64_t)a5
{
  v8 = [a3 layout];
  if (v8)
  {
    v9 = v8;
    if (v8 == [-[THWGalleryRep layout](self "layout")])
    {
      stageCanvasController = self->_stageCanvasController;
      v11 = a4 - a5;
      if ((a4 - a5) < 0)
      {
        v11 = a5 - a4;
      }

      [(THWPagedCanvasController *)stageCanvasController setPageIndex:a5 animated:v11 < 2];
    }

    else if (v9 == [-[THWGalleryRep layout](self "layout")])
    {
      thumbnailTrackCanvasController = self->_thumbnailTrackCanvasController;

      [(THWPagedCanvasController *)thumbnailTrackCanvasController setPageIndex:a5];
    }
  }
}

- (__CTFont)pageControlCreateFont:(id)a3
{
  result = [-[THWGalleryRep layout](self layout];
  if (!result)
  {

    return CTFontCreateWithName(@"LucidaGrande", 0.0, 0);
  }

  return result;
}

- (id)pageControlTextColor:(id)a3
{
  result = [-[THWGalleryRep layout](self layout];
  if (!result)
  {

    return [TSUColor colorWithWhite:0.0980392173 alpha:1.0];
  }

  return result;
}

- (id)pageControl:(id)a3 layerForState:(int)a4 pageIndex:(unint64_t)a5
{
  if ([objc_msgSend(a3 "layout")] - 3 > &dword_0 + 1)
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
  if (a4 == 1)
  {
    v10 = 0.8;
    if (!v8)
    {
      v10 = 1.0;
    }
  }

  else
  {
    if (a4)
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
  v2 = [(THWGalleryRep *)self layout];

  return [v2 isExpanded];
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (void)p_updateToPageIndex:(unint64_t)a3 usingCachedImagedFromRep:(id)a4
{
  [objc_msgSend(-[THWGalleryRep layout](self "layout")];
  if (self->_stageCanvasController)
  {
    v7 = [(THWGalleryRep *)self p_itemAtIndex:a3];
    [(THWPagedCanvasController *)self->_stageCanvasController setPadInfos:0];
    [(THWPagedCanvasController *)self->_stageCanvasController setPageIndex:a3 animated:0];
    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] setShouldSuppressRendering:1 animated:0];
    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] layoutIfNeeded];
    v8 = [(THWGalleryRep *)self p_imageRepForItem:v7];
    v9 = [a4 p_imageRepForItem:v7];
    if (v8)
    {
      if (v9)
      {
        v10 = [v9 newCachedSizedImage];
        if (v10)
        {
          v11 = v10;
          [v8 useCachedSizedImage:v10];
          [v8 generateSizedImageOnBackgroundThread];
        }
      }
    }

    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] setShouldSuppressRendering:0 animated:0];
    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] layoutIfNeeded];
  }

  else
  {
    self->_currentPage = a3;
  }

  v12 = [(THWGalleryRep *)self interactiveCanvasController];

  [v12 layoutIfNeeded];
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
  v3 = [(THWGalleryRep *)self p_currentImageRep];

  [v3 resumeLayerUpdatesAndLayoutImmediately];
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

- (BOOL)canHandleGesture:(id)a3
{
  if ([(THWFreeTransformableRepGestureTargetHandler *)[(THWGalleryRep *)self freeTransformableHandler] canHandleGesture:a3])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    [a3 naturalLocationForRep:self];
    v7 = v6;
    v9 = v8;
    [-[THWGalleryRep layout](self "layout")];
    v13.x = v7;
    v13.y = v9;
    v5 = CGRectContainsPoint(v14, v13);
    if (v5)
    {
      pressableHandler = self->_pressableHandler;

      LOBYTE(v5) = [(THWPressableRepGestureTargetHandler *)pressableHandler canHandleGesture:a3];
    }
  }

  return v5;
}

- (BOOL)handleGesture:(id)a3
{
  [a3 naturalLocationForRep:self];
  v6 = v5;
  v8 = v7;
  [-[THWGalleryRep layout](self "layout")];
  v12.x = v6;
  v12.y = v8;
  if (CGRectContainsPoint(v13, v12) && [(THWPressableRepGestureTargetHandler *)self->_pressableHandler handleGesture:a3])
  {
    return 1;
  }

  v10 = [(THWGalleryRep *)self freeTransformableHandler];

  return [(THWFreeTransformableRepGestureTargetHandler *)v10 handleGesture:a3];
}

- (void)willBeginHandlingGesture:(id)a3
{
  v5 = [a3 gestureKind];
  if (v5 == TSDFreeTransform)
  {
    v6 = [(THWGalleryRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)v6 willBeginHandlingGesture:a3];
  }
}

- (void)buttonControlWasPressed:(id)a3
{
  v4 = [a3 layout];
  if ([v4 tag] == &dword_4 + 1)
  {
    v5 = [v4 index];

    [(THWGalleryRep *)self p_goToPage:v5];
  }
}

- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5
{
  v6 = [a3 layout];
  if ([v6 tag] != &dword_4 + 1)
  {
    return 0;
  }

  v7 = [-[THWGalleryRep p_itemAtIndex:](self p_itemAtIndex:{objc_msgSend(v6, "index")), "thumbnailImageData"}];
  if (!v7)
  {
    return 0;
  }

  return [TSDBitmapImageProvider TSUImageForImageData:v7];
}

- (void)buttonControl:(id)a3 didUpdateLayer:(id)a4
{
  v6 = [a3 layout];
  if ([v6 tag] == &dword_4 + 1)
  {
    v7 = [objc_msgSend(-[THWGalleryRep layout](self "layout")];
    if (v7 == [v6 index])
    {
      [a4 setBorderWidth:0.0];
      [a4 bounds];
      v10 = [(THWGalleryRep *)self p_highlightLayerForThumbnailSize:v8, v9];
      v11 = v10;
      if (v10 && [v10 superlayer] != a4)
      {
        [v11 removeFromSuperlayer];
        [a4 addSublayer:v11];
      }

      [(THWGalleryRep *)self p_integralScaledThumbnailHighlightWidth];

      [v11 setPosition:?];
    }

    else
    {
      [a4 setBorderColor:{objc_msgSend(objc_msgSend(-[THWGalleryRep layout](self, "layout"), "thumbnailBorderColor"), "CGColor")}];

      [a4 setBorderWidth:1.0];
    }
  }
}

- (void)buttonControlInteractionWillStart:(id)a3
{
  v4 = [a3 layout];
  if ([v4 tag] == &dword_4 + 1)
  {
    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] setStaticLayoutAndRenderOnThread:1];
    v5 = [v4 index];
    stageCanvasController = self->_stageCanvasController;

    [(THWPagedCanvasController *)stageCanvasController setPreloadPageIndex:v5];
  }
}

- (void)buttonControlInteractionDidEnd:(id)a3
{
  if ([objc_msgSend(a3 "layout")] == &dword_4 + 1)
  {
    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] setStaticLayoutAndRenderOnThread:0];
    [(THWPagedCanvasController *)self->_stageCanvasController setPreloadPageIndex:0x7FFFFFFFFFFFFFFFLL];
    if (([(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] currentlyScrolling]& 1) == 0 && ([(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_thumbnailTrackCanvasController interactiveCanvasController] currentlyScrolling]& 1) == 0)
    {
      stageCanvasController = self->_stageCanvasController;
      v5 = [(THWPagedCanvasController *)stageCanvasController pageIndex];

      [(THWGalleryRep *)self pagedCanvasController:stageCanvasController didScrollToPageIndex:v5];
    }
  }
}

- (void)willReplaceContentsFromRep:(id)a3
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
      v7 = [(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController];

      [(TSDInteractiveCanvasController *)v7 layoutIfNeeded];
    }

    else
    {
      self->_currentPage = v5;
    }
  }
}

- (CGSize)sizeOfCanvasForZoomableCanvasController:(id)a3
{
  v5 = [(THWGalleryRep *)self layout];
  v6 = [(THWGalleryRep *)self p_itemForZoomableCanvasController:a3];

  [v5 zoomableCanvasSizeForItem:v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)zoomableCanvasController:(id)a3 infosToDisplayForViewport:(CGRect)a4
{
  result = [-[THWGalleryRep p_itemForZoomableCanvasController:](self p_itemForZoomableCanvasController:{a3, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height), "imageInfo"}];
  if (result)
  {

    return [NSArray arrayWithObject:result];
  }

  return result;
}

- (double)zoomableCanvasControllerContentsScale:(id)a3
{
  v3 = [(THWGalleryRep *)self canvas];

  [v3 contentsScale];
  return result;
}

- (void)zoomableCanvasControllerCustomizeLayerHost:(id)a3
{
  v5 = [(THWGalleryRep *)self p_itemForZoomableCanvasController:?];
  [-[THWGalleryRep layout](self "layout")];
  v7 = v6;
  [objc_msgSend(objc_msgSend(objc_msgSend(a3 "interactiveCanvasController")];
  [(THWGalleryRep *)self p_updateMinMaxViewScaleForItem:v5 forceMinScale:0];
  TSDRectWithSize();
  TSDCenterOfRect();

  [a3 setViewScale:v7 contentOffset:v8 anchor:{v9, 0.5, 0.5}];
}

- (BOOL)zoomableCanvasControllerIsRelatedCanvasScrolling:(id)a3
{
  v3 = [(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)v3 currentlyScrolling];
}

- (unint64_t)p_itemIndexForZoomableCanvasController:(id)a3
{
  objc_opt_class();
  [a3 instanceData];
  v4 = TSUDynamicCast();

  return [v4 unsignedIntegerValue];
}

- (id)p_itemForZoomableCanvasController:(id)a3
{
  v5 = [(THWGalleryRep *)self info];
  v6 = [(THWGalleryRep *)self p_itemIndexForZoomableCanvasController:a3];

  return [v5 itemAtIndex:v6];
}

- (void)p_updateMinMaxViewScaleForItem:(id)a3 forceMinScale:(BOOL)a4
{
  v4 = a4;
  [-[THWGalleryRep layout](self "layout")];
  v8 = v7;
  v9 = [(THWGalleryRep *)self p_zoomableCanvasControllerForItem:a3];
  v10 = [objc_msgSend(objc_msgSend(v9 "interactiveCanvasController")];
  [v10 setMinimumPinchViewScale:v8];
  [v10 setMaximumPinchViewScale:{fmax(v8, 1.5)}];
  [v10 setAllowsPinchZoom:1];
  if (v4)
  {
    v11 = [v9 interactiveCanvasController];

    [v11 setViewScale:v8];
  }
}

- (void)p_toggleCurrentItemZoomableWithStageRelativeTouch:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(THWGalleryRep *)self currentItem];
  if (v6)
  {
    v7 = v6;
    v8 = [(THWGalleryRep *)self p_zoomableCanvasControllerForItem:v6];
    v9 = [v8 interactiveCanvasController];
    v10 = [(THWGalleryRep *)self layout];
    [v9 viewScale];
    v12 = v11;
    [v10 zoomableItemMinimumViewScaleForItem:v7];
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

    [v9 contentOffset];
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

    [v9 setViewScale:1 contentOffset:1 clampOffset:v24 animated:{v21 - v25 * 0.5 / v24, v23 - v26 * 0.5 / v24}];
  }
}

- (id)p_currentImageRep
{
  v3 = -[THWGalleryRep p_itemAtIndex:](self, "p_itemAtIndex:", [objc_msgSend(-[THWGalleryRep layout](self "layout")]);

  return [(THWGalleryRep *)self p_imageRepForItem:v3];
}

- (id)p_imageRepForItem:(id)a3
{
  v5 = [(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController];
  v6 = [-[TSDInteractiveCanvasController layoutController](v5 "layoutController")];
  if (!v6)
  {
    if (![(THWGalleryRep *)self p_supportZoom])
    {
      return 0;
    }

    v5 = [-[THWGalleryRep p_zoomableCanvasControllerForItem:](self p_zoomableCanvasControllerForItem:{a3), "interactiveCanvasController"}];
    v6 = [-[TSDInteractiveCanvasController layoutController](v5 "layoutController")];
    if (!v6)
    {
      return 0;
    }
  }

  v7 = v6;
  objc_opt_class();
  [-[TSDInteractiveCanvasController canvas](v5 "canvas")];

  return TSUDynamicCast();
}

- (id)p_layerForItem:(id)a3
{
  v3 = [(THWGalleryRep *)self p_imageRepForItem:a3];
  v4 = [v3 interactiveCanvasController];

  return [v4 layerForRep:v3];
}

- (id)p_currentImageContentLayer
{
  v2 = [(THWGalleryRep *)self p_currentImageRep];

  return [v2 contentsLayer];
}

- (CGRect)p_contentsRectForItem:(id)a3
{
  if (a3)
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
      [objc_msgSend(a3 "imageInfo")];
      v9 = v8;
      v11 = v10;
      [a3 cropRect];
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

- (id)p_zoomableCanvasControlRepForItemIndex:(unint64_t)a3
{
  objc_opt_class();
  -[TSDInteractiveCanvasController repForLayout:](-[THWPagedCanvasController interactiveCanvasController](self->_stageCanvasController, "interactiveCanvasController"), "repForLayout:", [-[THWGalleryRep layout](self "layout")]);

  return TSUDynamicCast();
}

- (id)p_zoomableCanvasControllerForItemIndex:(unint64_t)a3
{
  v3 = [(THWGalleryRep *)self p_zoomableCanvasControlRepForItemIndex:a3];

  return [v3 zoomableCanvasController];
}

- (id)p_zoomableCanvasControllerForItem:(id)a3
{
  v3 = -[THWGalleryRep p_zoomableCanvasControlRepForItemIndex:](self, "p_zoomableCanvasControlRepForItemIndex:", [-[THWGalleryRep info](self "info")]);

  return [v3 zoomableCanvasController];
}

- (void)p_resetViewScaleForItemsExcept:(id)a3
{
  if ([(THWGalleryRep *)self p_supportZoom])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [-[THWGalleryRep info](self info];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (v10 != a3)
          {
            [(THWGalleryRep *)self p_updateMinMaxViewScaleForItem:v10 forceMinScale:1];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)p_shouldSuppressRenderingDuringExpansion
{
  v3 = [(THWGalleryRep *)self p_isExpanding];
  if (v3)
  {
    objc_opt_class();
    [(THWExpandedRepController *)self->_expandedRepController expandedRepSourceRep];
    LOBYTE(v3) = TSUDynamicCast() != 0;
  }

  return v3;
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
  v3 = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];

  return [(THWGalleryRep *)self p_itemAtIndex:v3];
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
@interface THWGalleryExpandedRotationController
- (CGPoint)contentCenterOffset;
- (CGPoint)translate;
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (THWGalleryExpandedRotationController)initWithRep:(id)a3 pagedCanvasController:(id)a4 zoomableCanvasController:(id)a5;
- (void)dealloc;
- (void)expandedDidRotateTransitionToSize:(CGSize)a3;
- (void)expandedDidTransitionToSize:(CGSize)a3;
- (void)expandedWillAnimateRotationFromSize:(CGSize)a3 toSize:(CGSize)a4 duration:(double)a5;
- (void)expandedWillRotateTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (void)expandedWillTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (void)p_layoutWithSize:(CGSize)a3;
- (void)p_updateOtherItemLayers:(BOOL)a3;
@end

@implementation THWGalleryExpandedRotationController

- (THWGalleryExpandedRotationController)initWithRep:(id)a3 pagedCanvasController:(id)a4 zoomableCanvasController:(id)a5
{
  v13.receiver = self;
  v13.super_class = THWGalleryExpandedRotationController;
  v8 = [(THWGalleryExpandedRotationController *)&v13 init];
  if (v8)
  {
    v8->_rep = a3;
    v8->_pagedCanvasController = a4;
    v8->_zoomableCanvasController = a5;
    if (a5)
    {
      [a5 contentOffsetForAnchor:{0.5, 0.5}];
      v8->_contentCenterOffset.x = v9;
      v8->_contentCenterOffset.y = v10;
      [objc_msgSend(a5 "interactiveCanvasController")];
    }

    else
    {
      v8->_contentCenterOffset = CGPointZero;
      v11 = 1.0;
    }

    v8->_targetViewScale = v11;
    v8->_scale = 1.0;
    v8->_translate = CGPointZero;
    v8->_pageIndex = [(THWPagedCanvasController *)v8->_pagedCanvasController pageIndex];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWGalleryExpandedRotationController;
  [(THWGalleryExpandedRotationController *)&v3 dealloc];
}

- (void)p_updateOtherItemLayers:(BOOL)a3
{
  v3 = a3;
  v5 = [(THWGalleryRep *)self->_rep currentItem];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [-[THWGalleryRep info](self->_rep info];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(&v11 + 1) + 8 * v10) != v5)
        {
          [-[THWGalleryRep p_layerForItem:](self->_rep "p_layerForItem:{"setHidden:", v3}")];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  x = self->_translate.x;
  y = self->_translate.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedWillRotateTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  [(THWGalleryExpandedRotationController *)self p_updateOtherItemLayers:1, a3.width, a3.height, a4.width, a4.height];
  [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWPagedCanvasController interactiveCanvasController](self->_pagedCanvasController "interactiveCanvasController")];
  [(THScrollView *)[(THWPagedCanvasController *)self->_pagedCanvasController scrollView] setClipsToBounds:0];
  [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWZoomableCanvasController interactiveCanvasController](self->_zoomableCanvasController "interactiveCanvasController")];
  v5 = [(THWZoomableCanvasController *)self->_zoomableCanvasController scrollView];

  [(TSKScrollView *)v5 setClipsToBounds:0];
}

- (void)expandedDidRotateTransitionToSize:(CGSize)a3
{
  [(THWGalleryExpandedRotationController *)self p_layoutWithSize:a3.width, a3.height];
  [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWPagedCanvasController interactiveCanvasController](self->_pagedCanvasController "interactiveCanvasController")];
  [(THScrollView *)[(THWPagedCanvasController *)self->_pagedCanvasController scrollView] setClipsToBounds:1];
  [objc_msgSend(objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWZoomableCanvasController interactiveCanvasController](self->_zoomableCanvasController "interactiveCanvasController")];
  v4 = [(TSKScrollView *)[(THWZoomableCanvasController *)self->_zoomableCanvasController scrollView] layer];

  [v4 setMasksToBounds:1];
}

- (void)expandedWillAnimateRotationFromSize:(CGSize)a3 toSize:(CGSize)a4 duration:(double)a5
{
  height = a4.height;
  width = a4.width;
  v7 = a3.height;
  v8 = a3.width;
  [(THWPagedCanvasController *)[(THWGalleryRep *)self->_rep thumbnailTrackCanvasController:a3.width] invalidateLayoutsAndFrames];
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)[(THWGalleryRep *)self->_rep thumbnailTrackCanvasController] interactiveCanvasController] layoutIfNeeded];
  v10 = [(THWGalleryRep *)self->_rep currentItem];
  if (v10)
  {
    v27 = height;
    [objc_msgSend(v10 "imageInfo")];
    zoomableCanvasController = self->_zoomableCanvasController;
    if (zoomableCanvasController)
    {
      v12 = ![(THWZoomableCanvasController *)self->_zoomableCanvasController isZoomedOut];
      [(TSDInteractiveCanvasController *)[(THWZoomableCanvasController *)zoomableCanvasController interactiveCanvasController] viewScale];
      v14 = v13;
      TSDMultiplySizeScalar();
      v16 = v15;
      v17 = v7;
      v19 = v18;
    }

    else
    {
      TSDShrinkSizeToFitInSize();
      v16 = v20;
      v17 = v7;
      v19 = v21;
      v12 = 0;
      v14 = 1.0;
    }

    TSDShrinkSizeToFitInSize();
    v23 = v16 > width;
    if (v19 > v27)
    {
      v23 = 1;
    }

    if ((v12 & v23) != 0)
    {
      v22 = v16;
    }

    v24 = v22 / v16;
    self->_targetViewScale = v14 * v24;
    self->_scale = v24;
    [(THWZoomableCanvasController *)zoomableCanvasController clampedUnscaledContentOffset:self->_contentCenterOffset.x anchor:self->_contentCenterOffset.y viewScale:0.5 scrollViewBoundsSize:0.5, v14, v8, v17];
    [(THWZoomableCanvasController *)zoomableCanvasController clampedUnscaledContentOffset:self->_contentCenterOffset.x anchor:self->_contentCenterOffset.y viewScale:0.5 scrollViewBoundsSize:0.5, v14 * self->_scale, width, v27];
    TSDSubtractPoints();
    TSDMultiplyPointScalar();
    self->_translate.x = v25;
    self->_translate.y = v26;
  }
}

- (void)expandedWillTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  zoomableCanvasController = self->_zoomableCanvasController;
  if (!zoomableCanvasController || [(THWZoomableCanvasController *)zoomableCanvasController isZoomedOut:a3.width])
  {
    v8 = [(THWGalleryRep *)self->_rep currentItem:a3.width];
    if (v8)
    {
      [objc_msgSend(v8 "imageInfo")];
      v10 = width / v9;
      v12 = height / v11;
      if (v12 < v10)
      {
        v10 = v12;
      }

      self->_targetViewScale = fmin(v10, 1.0);
    }
  }
}

- (void)expandedDidTransitionToSize:(CGSize)a3
{
  [(THWGalleryExpandedRotationController *)self p_layoutWithSize:a3.width, a3.height];
  [(THWPagedCanvasController *)[(THWGalleryRep *)self->_rep thumbnailTrackCanvasController] invalidateLayoutsAndFrames];
  v4 = [(THWPagedCanvasController *)[(THWGalleryRep *)self->_rep thumbnailTrackCanvasController] interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v4 layoutIfNeeded];
}

- (void)p_layoutWithSize:(CGSize)a3
{
  v4 = [(THWGalleryRep *)self->_rep layout:a3.width];
  [v4 invalidateFrame];
  [v4 invalidateChildren];
  [-[THWGalleryRep interactiveCanvasController](self->_rep "interactiveCanvasController")];
  [(THWPagedCanvasController *)self->_pagedCanvasController setPageIndex:self->_pageIndex animated:0];
  [(THWPagedCanvasController *)self->_pagedCanvasController invalidateLayoutsAndFrames];
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_pagedCanvasController interactiveCanvasController] layoutIfNeeded];
  zoomableCanvasController = self->_zoomableCanvasController;
  v6 = [(THWGalleryRep *)self->_rep currentItem];
  if (zoomableCanvasController)
  {
    [(THWGalleryRep *)self->_rep p_updateMinMaxViewScaleForItem:v6 forceMinScale:0];
    [(THWZoomableCanvasController *)self->_zoomableCanvasController setViewScale:self->_targetViewScale contentOffset:self->_contentCenterOffset.x anchor:self->_contentCenterOffset.y, 0.5, 0.5];
  }

  [(THWGalleryRep *)self->_rep p_resetViewScaleForItemsExcept:v6];

  [(THWGalleryExpandedRotationController *)self p_updateOtherItemLayers:0];
}

- (CGPoint)contentCenterOffset
{
  x = self->_contentCenterOffset.x;
  y = self->_contentCenterOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)translate
{
  x = self->_translate.x;
  y = self->_translate.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
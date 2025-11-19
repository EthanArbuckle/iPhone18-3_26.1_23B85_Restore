@interface THWGalleryLayout
- (BOOL)expandedHasContentForPanel:(int)a3;
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isReflowablePresentation;
- (BOOL)p_hasIndividualCaptions;
- (BOOL)p_thumbnailsVisible;
- (BOOL)p_thumbnailsVisibleInPanel;
- (BOOL)p_thumbnailsVisibleOnMainCanvas;
- (CGPoint)galleryCaptionPosition;
- (CGRect)pageControlFrame;
- (CGRect)stageFrame;
- (CGRect)thumbnailTrackFrame;
- (CGSize)p_idealForMaxSize:(CGSize)a3;
- (CGSize)p_thumbnailSize;
- (CGSize)thumbnailTrackSizeWithPanelWidth:(double)a3;
- (CGSize)zoomableCanvasSizeForItem:(id)a3;
- (__CTFont)createFontFromCaption;
- (double)expandedLeftRightInsetForCaption;
- (double)galleryCaptionWidth;
- (double)p_margin;
- (double)p_widgetWidth;
- (double)widgetStack:(id)a3 stackedControlContainer:(id)a4 minHeightForLayout:(id)a5;
- (double)zoomableItemMinimumViewScaleForItem:(id)a3;
- (id)childrenForLayout;
- (id)colorFromCaption;
- (id)colorFromTitle;
- (id)computeLayoutGeometry;
- (id)controlContainerAdditionalChildLayouts:(id)a3;
- (id)currentCaptionStorage;
- (id)dependentLayouts;
- (id)infosForStagePages:(_NSRange)a3;
- (id)infosForThumbnailTrackPages:(_NSRange)a3;
- (id)layoutGeometryForLayout:(id)a3;
- (id)layoutGeometryFromProvider;
- (id)p_captionStorageForItemIndex:(unint64_t)a3;
- (id)p_itemAtIndex:(unint64_t)a3;
- (id)p_itemFromChildLayout:(id)a3;
- (id)p_nonEmptyCaptionStorage;
- (id)p_sharedCaptionStorage;
- (id)pageIndexesFromStageReps:(id)a3;
- (id)sharedCaptionStorage;
- (id)thumbnailBorderColor;
- (id)thumbnailTrackAdditionalLayoutsInExpandedPanel:(int)a3;
- (id)widgetStack:(id)a3 layoutGeometryForLayout:(id)a4;
- (id)widgetStackCaptionChildren:(id)a3;
- (id)widgetStackTitleChildren:(id)a3;
- (id)zoomableCanvasControlLayoutForItemIndex:(unint64_t)a3;
- (unint64_t)numberOfStagePages;
- (unint64_t)p_indexForItem:(id)a3;
- (unint64_t)p_maxNumberOfThumbnailsPerPage;
- (unint64_t)p_numberOfThumbnailPagesAndThumbnailsPerPage:(unint64_t *)a3;
- (unint64_t)p_thumbnailCountForThumbnailPageIndex:(unint64_t)a3;
- (unint64_t)p_thumbnailPageIndexForItemIndex:(unint64_t)a3;
- (unint64_t)thumbnailPageIndexForItemIndex:(unint64_t)a3;
- (void)dealloc;
- (void)p_invalidateExternal;
- (void)p_updateCaption;
- (void)p_updatePagesAndThumbnailLayouts;
- (void)pagedCanvasControlLayoutDidValidate:(id)a3;
- (void)setDelegate:(id)a3;
- (void)updateChildrenFromInfo;
- (void)updateCurrentItemIndex:(unint64_t)a3;
- (void)wasAddedToLayoutController:(id)a3;
@end

@implementation THWGalleryLayout

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWGalleryLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (void)p_invalidateExternal
{
  [(THWGalleryLayout *)self invalidateFrame];

  [(THWGalleryLayout *)self invalidateChildren];
}

- (void)setDelegate:(id)a3
{
  if (self->_delegate != a3)
  {
    self->_delegate = a3;
    [(THWGalleryLayout *)self p_invalidateExternal];
  }
}

- (void)wasAddedToLayoutController:(id)a3
{
  v4.receiver = self;
  v4.super_class = THWGalleryLayout;
  [(THWGalleryLayout *)&v4 wasAddedToLayoutController:a3];
  [(THWGalleryLayout *)self p_invalidateExternal];
}

- (BOOL)isExpanded
{
  delegate = self->_delegate;
  if (delegate)
  {
    LOBYTE(delegate) = [(THWWidgetLayoutDelegate *)delegate widgetLayoutMode:self]== 1;
  }

  return delegate;
}

- (BOOL)isCompactFlowPresentation
{
  v3 = [(THWGalleryLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  v3 = [(THWGalleryLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsReflowablePresentation:self];
}

- (CGSize)p_idealForMaxSize:(CGSize)a3
{
  [objc_msgSend(-[THWGalleryLayout info](self "info")];
  [(THWGalleryLayout *)self p_margin];
  v5 = v4 + v4;
  TSDScaleSizeWithinSize();
  TSDRoundedSize();
  v7 = v5 + v6;
  v9 = v5 + v8;
  result.height = v9;
  result.width = v7;
  return result;
}

- (double)widgetStack:(id)a3 stackedControlContainer:(id)a4 minHeightForLayout:(id)a5
{
  [a5 frame];
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  v11 = TSUDynamicCast();
  if (v11)
  {
    v12 = v11;
    if ([(THWGalleryLayout *)self individualCaptions])
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v13 = [-[THWGalleryLayout info](self "info")];
      v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v34;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v33 + 1) + 8 * i) captionStorage];
            if (v18 == [v12 info])
            {
              if (objc_opt_respondsToSelector())
              {
                v31 = 0u;
                v32 = 0u;
                v29 = 0u;
                v30 = 0u;
                v19 = [-[THWGalleryLayout info](self info];
                v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v30;
                  do
                  {
                    for (j = 0; j != v21; j = j + 1)
                    {
                      if (*v30 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = [*(*(&v29 + 1) + 8 * j) captionStorage];
                      v25 = [[TSWPStorageMeasurer alloc] initWithStorage:v24];
                      [v25 measuredSizeWithFlags:3 maxSize:a4 layoutParent:objc_msgSend(a4 styleProvider:{"styleProviderForStorage:", v24), v8, 4294967300.0}];
                      v27 = v26;

                      if (v10 < v27)
                      {
                        v10 = v27;
                      }
                    }

                    v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
                  }

                  while (v21);
                }
              }

              return v10;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return v10;
}

- (id)widgetStackTitleChildren:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = [-[THWGalleryLayout info](self "info")];
  v6 = [v5 layoutMode];
  if (v6 <= 1)
  {
    v7 = v6;
    if ([v5 titleStorage])
    {
      [v4 addObject:{objc_msgSend(v5, "titleStorage")}];
    }

    if (v7 == 1 && [(THWGalleryLayout *)self currentCaptionStorage])
    {
      [v4 addObject:{-[THWGalleryLayout currentCaptionStorage](self, "currentCaptionStorage")}];
    }
  }

  return v4;
}

- (id)widgetStackCaptionChildren:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = [-[THWGalleryLayout info](self "info")];
  v6 = [v5 layoutMode];
  if (v6)
  {
    if (v6 != 2)
    {
      goto LABEL_7;
    }

    if ([v5 titleStorage])
    {
      [v4 addObject:{objc_msgSend(v5, "titleStorage")}];
    }
  }

  if ([(THWGalleryLayout *)self currentCaptionStorage])
  {
    [v4 addObject:{-[THWGalleryLayout currentCaptionStorage](self, "currentCaptionStorage")}];
  }

LABEL_7:
  if (!-[THWGalleryLayout p_thumbnailsVisible](self, "p_thumbnailsVisible") || ([-[THWGalleryLayout layoutController](self "layoutController")] & 1) != 0 || (objc_msgSend(-[THWGalleryLayout layoutController](self, "layoutController"), "isCompactHeight") & 1) != 0)
  {
    p_pageControl = &self->_pageControl;
    if (self->_pageControl && [objc_msgSend(-[THWGalleryLayout info](self "info")] >= 2)
    {
LABEL_12:
      [v4 addObject:*p_pageControl];
    }
  }

  else
  {
    if (self->_thumbnailTrackCanvasLayout)
    {
      [v4 addObject:?];
    }

    p_pageControl = &self->_thumbnailPageControl;
    if (self->_thumbnailPageControl && [(THWGalleryLayout *)self numberOfThumbnailTrackPages]> 1)
    {
      goto LABEL_12;
    }
  }

  return v4;
}

- (id)widgetStack:(id)a3 layoutGeometryForLayout:(id)a4
{
  if (self->_thumbnailPageControl == a4 || self->_pageControl == a4)
  {
    v7 = [TSDLayoutGeometry alloc];
    [a3 widgetStackWidth];
  }

  else
  {
    if (self->_thumbnailTrackCanvasLayout != a4)
    {
      return 0;
    }

    v7 = [TSDLayoutGeometry alloc];
    [a3 widgetStackWidth];
    [(THWGalleryLayout *)self p_thumbnailSize];
  }

  TSDRectWithSize();
  v8 = [v7 initWithFrame:?];

  return v8;
}

- (CGSize)p_thumbnailSize
{
  v2 = [(THWGalleryLayout *)self isExpanded];
  v3 = 50.0;
  if (v2)
  {
    v3 = 60.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)p_margin
{
  [-[THWGalleryLayout info](self "info")];
  v4 = v3;
  v5 = [(THWGalleryLayout *)self isExpanded];
  result = 10.0;
  if ((v5 & 1) == 0)
  {
    v7 = [(THWGalleryLayout *)self isCompactFlowPresentation];
    result = 0.0;
    if (!v7)
    {
      return v4;
    }
  }

  return result;
}

- (id)p_itemFromChildLayout:(id)a3
{
  v4 = [a3 info];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [-[THWGalleryLayout info](self info];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v14;
LABEL_4:
  v10 = 0;
  while (1)
  {
    if (*v14 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v13 + 1) + 8 * v10);
    if ([v11 imageInfo] == v5 || objc_msgSend(objc_msgSend(v11, "imageInfo"), "maskInfo") == v5)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v8)
      {
        goto LABEL_4;
      }

      return v11;
    }
  }
}

- (unint64_t)p_indexForItem:(id)a3
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [-[THWGalleryLayout info](self "info")];

  return [v4 indexOfObjectIdenticalTo:a3];
}

- (BOOL)p_thumbnailsVisible
{
  v2 = [(THWGalleryLayout *)self info];

  return [v2 thumbnailsVisible];
}

- (BOOL)p_thumbnailsVisibleInPanel
{
  v3 = [-[THWGalleryLayout info](self "info")];
  if (v3)
  {

    LOBYTE(v3) = [(THWGalleryLayout *)self isExpanded];
  }

  return v3;
}

- (BOOL)p_thumbnailsVisibleOnMainCanvas
{
  v3 = [(THWGalleryLayout *)self p_thumbnailsVisible];
  if (self->_delegate)
  {
    v4 = 1;
  }

  else
  {
    v4 = !v3;
  }

  if (!v4)
  {
    LOBYTE(v3) = [0 widgetLayoutMode:self] != 1;
  }

  return v3;
}

- (double)p_widgetWidth
{
  delegate = self->_delegate;
  if (!delegate)
  {
    goto LABEL_5;
  }

  v4 = [(THWWidgetLayoutDelegate *)delegate widgetLayoutMode:self];
  if (v4 - 1 < 2)
  {
    [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutBounds];
    return v6;
  }

  else if (v4 == 3)
  {
    v7 = [-[THWGalleryLayout layoutController](self "layoutController")];

    [v7 widgetStackWidth];
  }

  else
  {
    result = 0.0;
    if (!v4)
    {
LABEL_5:
      [objc_msgSend(-[THWGalleryLayout info](self "info")];
    }
  }

  return result;
}

- (unint64_t)p_numberOfThumbnailPagesAndThumbnailsPerPage:(unint64_t *)a3
{
  if ([(THWGalleryLayout *)self p_thumbnailsVisible])
  {
    v5 = [objc_msgSend(-[THWGalleryLayout info](self "info")];
    v6 = [(THWGalleryLayout *)self p_maxNumberOfThumbnailsPerPage];
    v7 = fmaxf(ceilf(v5 / v6), 1.0);
    if (!a3)
    {
      return v7;
    }

    goto LABEL_5;
  }

  v6 = 0;
  v7 = 0;
  if (a3)
  {
LABEL_5:
    *a3 = v6;
  }

  return v7;
}

- (unint64_t)p_maxNumberOfThumbnailsPerPage
{
  [(THWGalleryLayout *)self p_widgetWidth];
  v4 = v3;
  [(THWGalleryLayout *)self p_margin];
  v6 = v4 + v5 * -2.0;
  [(THWGalleryLayout *)self p_thumbnailSize];
  if (v6 <= v7 * 2.0 + 10.0)
  {
    return 1;
  }

  else
  {
    return (floor((v6 - v7) / (v7 + 10.0)) + 1.0);
  }
}

- (unint64_t)p_thumbnailPageIndexForItemIndex:(unint64_t)a3
{
  v5 = 0;
  [(THWGalleryLayout *)self p_numberOfThumbnailPagesAndThumbnailsPerPage:&v5];
  if (v5)
  {
    return a3 / v5;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)p_thumbnailCountForThumbnailPageIndex:(unint64_t)a3
{
  v9 = 0;
  [(THWGalleryLayout *)self p_numberOfThumbnailPagesAndThumbnailsPerPage:&v9];
  v5 = v9 * a3;
  v6 = [objc_msgSend(-[THWGalleryLayout info](self "info")];
  v7 = (v9 + v5);
  if (v6 < v9 + v5)
  {
    v7 = v6;
  }

  return v7 - v5;
}

- (id)p_itemAtIndex:(unint64_t)a3
{
  v4 = [-[THWGalleryLayout info](self "info")];
  if ([v4 count] <= a3)
  {
    return 0;
  }

  return [v4 objectAtIndex:a3];
}

- (id)p_captionStorageForItemIndex:(unint64_t)a3
{
  v4 = [(THWGalleryLayout *)self p_itemAtIndex:a3];
  if (!v4 || (v5 = [v4 captionStorage]) == 0)
  {
    v5 = [(THWGalleryLayout *)self p_sharedCaptionStorage];
  }

  if ([v5 length])
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (id)p_sharedCaptionStorage
{
  v2 = [objc_msgSend(objc_msgSend(-[THWGalleryLayout info](self "info")];
  if ([v2 length])
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)thumbnailBorderColor
{
  if ([(THWGalleryLayout *)self isExpanded])
  {

    return [TSUColor colorWithWhite:1.0 alpha:0.8];
  }

  else
  {
    v4 = [objc_msgSend(-[THWGalleryLayout info](self "info")];

    return [v4 colorWithAlphaComponent:0.5];
  }
}

- (void)updateCurrentItemIndex:(unint64_t)a3
{
  [(THWGalleryCaptionLayout *)self->_captionLayout captionStorageUpdated];
  [(THWPageControlLayout *)self->_pageControl setCurrentPage:a3];
  if ([(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutMode:self]== 3)
  {
    v5 = [-[THWGalleryLayout layoutController](self "layoutController")];

    [v5 widgetStackInvalidateChildren];
  }
}

- (CGSize)zoomableCanvasSizeForItem:(id)a3
{
  if (a3)
  {
    [objc_msgSend(a3 "imageInfo")];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (double)zoomableItemMinimumViewScaleForItem:(id)a3
{
  if (!a3)
  {
    return 1.0;
  }

  [objc_msgSend(a3 "imageInfo")];
  if (v4 <= 0.0)
  {
    v4 = 1.0;
  }

  if (v5 <= 0.0)
  {
    v5 = 1.0;
  }

  result = self->_stageFrame.size.width / v4;
  v7 = self->_stageFrame.size.height / v5;
  if (result >= v7)
  {
    result = v7;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (id)currentCaptionStorage
{
  v3 = [(THWPageControlLayout *)self->_pageControl currentPage];

  return [(THWGalleryLayout *)self p_captionStorageForItemIndex:v3];
}

- (id)sharedCaptionStorage
{
  if (self->_captionLayout)
  {
    return 0;
  }

  else
  {
    return [(THWGalleryLayout *)self p_sharedCaptionStorage];
  }
}

- (double)expandedLeftRightInsetForCaption
{
  v3 = [(THWGalleryLayout *)self p_maxNumberOfThumbnailsPerPage];
  [(THWGalleryLayout *)self p_thumbnailSize];
  v5 = v4;
  [(THWGalleryLayout *)self p_widgetWidth];
  return (v6 - v5 * v3 - (10 * v3 - 10)) * 0.5 + -8.0;
}

- (BOOL)expandedHasContentForPanel:(int)a3
{
  if (a3 == 2)
  {

    return [(THWGalleryLayout *)self thumbnailsVisibleInPanel];
  }

  else
  {
    if (a3 == 1)
    {
      if ([(THWGalleryLayout *)self individualCaptions])
      {
        return 1;
      }

      v4 = [(THWGalleryLayout *)self sharedCaptionStorage];
    }

    else
    {
      if (a3)
      {
        return 0;
      }

      v4 = [objc_msgSend(-[THWGalleryLayout info](self "info")];
    }

    return v4 != 0;
  }
}

- (unint64_t)thumbnailPageIndexForItemIndex:(unint64_t)a3
{
  v5 = 0;
  [(THWGalleryLayout *)self p_numberOfThumbnailPagesAndThumbnailsPerPage:&v5];
  if (v5)
  {
    return a3 / v5;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (CGSize)thumbnailTrackSizeWithPanelWidth:(double)a3
{
  [(THWGalleryLayout *)self p_thumbnailSize];
  v5 = a3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (id)thumbnailTrackAdditionalLayoutsInExpandedPanel:(int)a3
{
  [(THWGalleryLayout *)self p_updatePagesAndThumbnailLayouts];
  [(THWGalleryLayout *)self p_updateCaption];
  if (a3 == 2)
  {
    if (self->_thumbnailTrackCanvasLayout)
    {
      thumbnailTrackCanvasLayout = self->_thumbnailTrackCanvasLayout;
      v6 = [NSArray arrayWithObjects:&thumbnailTrackCanvasLayout count:1];
    }

    else
    {
      v6 = 0;
    }

    thumbnailPageControl = self->_thumbnailPageControl;
    if (thumbnailPageControl && [(THWPageControlLayout *)thumbnailPageControl numberOfPages]>= 2)
    {
      return [(NSArray *)v6 arrayByAddingObject:self->_thumbnailPageControl];
    }
  }

  else
  {
    if (a3 == 1 && self->_captionLayout)
    {
      captionLayout = self->_captionLayout;
      return [NSArray arrayWithObjects:&captionLayout count:1];
    }

    return 0;
  }

  return v6;
}

- (id)zoomableCanvasControlLayoutForItemIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_zoomableCanvasControls count]<= a3)
  {
    return 0;
  }

  zoomableCanvasControls = self->_zoomableCanvasControls;

  return [(NSArray *)zoomableCanvasControls objectAtIndex:a3];
}

- (id)layoutGeometryFromProvider
{
  if ([(THWGalleryLayout *)self isExpanded])
  {
    [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutBounds];
    v7 = [[TSDLayoutGeometry alloc] initWithFrame:{v3, v4, v5, v6}];

    return v7;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = THWGalleryLayout;
    return [(THWGalleryLayout *)&v9 layoutGeometryFromProvider];
  }
}

- (id)computeLayoutGeometry
{
  v30.receiver = self;
  v30.super_class = THWGalleryLayout;
  v3 = [(THWGalleryLayout *)&v30 computeLayoutGeometry];
  [(THWGalleryLayout *)self p_margin];
  v5 = v4;
  v6 = [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutMode:self];
  if (v6 == 3)
  {
    [v3 size];
    [(THWGalleryLayout *)self p_idealForMaxSize:?];
    TSDRectWithSize();
    [v3 size];
    TSDRectWithSize();
    TSDCenterRectOverRect();
    self->_stageFrame.origin.x = v12;
    self->_stageFrame.origin.y = v13;
    self->_stageFrame.size.width = v14;
    self->_stageFrame.size.height = v15;
    v16 = [-[THWGalleryLayout info](self "info")];
LABEL_6:
    [v16 cornerRadius];
    goto LABEL_7;
  }

  if (v6 != 1)
  {
    v17 = [-[THWGalleryLayout info](self "info")];
    [v17 frame];
    self->_stageFrame.origin.x = v18;
    self->_stageFrame.origin.y = v19;
    self->_stageFrame.size.width = v20;
    self->_stageFrame.size.height = v21;
    v16 = v17;
    goto LABEL_6;
  }

  [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutBounds];
  self->_stageFrame.origin.x = v7;
  self->_stageFrame.origin.y = v8;
  self->_stageFrame.size.width = v9;
  self->_stageFrame.size.height = v10;
  v11 = 0.0;
LABEL_7:
  self->_stageCornerRadius = v11;
  [(THWGalleryLayout *)self p_thumbnailSize];
  v23 = v22;
  y = CGPointZero.y;
  [v3 size];
  v26 = v25;
  v28 = v27;
  if ([(THWGalleryLayout *)self p_thumbnailsVisibleOnMainCanvas])
  {
    v31.origin.x = CGPointZero.x;
    v31.origin.y = y;
    v31.size.width = v26;
    v31.size.height = v28;
    v32 = CGRectInset(v31, 0.0, v5);
    self->_thumbnailTrackFrame.origin.x = v32.origin.x;
    self->_thumbnailTrackFrame.origin.y = v32.origin.y + v32.size.height - v23;
    self->_thumbnailTrackFrame.size.width = v32.size.width;
    self->_thumbnailTrackFrame.size.height = v23;
    if ([(THWGalleryLayout *)self p_numberOfThumbnailPagesAndThumbnailsPerPage:0]>= 2)
    {
      self->_thumbnailTrackFrame.origin.y = self->_thumbnailTrackFrame.origin.y + -15.0;
    }
  }

  v33.origin.x = CGPointZero.x;
  v33.origin.y = y;
  v33.size.width = v26;
  v33.size.height = v28;
  v34 = CGRectInset(v33, v5, v5);
  self->_pageControlFrame.size.width = v34.size.width;
  self->_pageControlFrame.origin.x = v34.origin.x;
  self->_pageControlFrame.origin.y = v34.origin.y + v34.size.height + -15.0;
  self->_pageControlFrame.size.height = 25.0;
  [(THWGalleryLayout *)self p_updatePagesAndThumbnailLayouts];
  return v3;
}

- (void)updateChildrenFromInfo
{
  if (!self->_pageControl)
  {
    v3 = [(THWControlLayout *)[THWPageControlLayout alloc] initWithTag:3];
    self->_pageControl = v3;
    [(THWPageControlLayout *)v3 setCurrentPage:0];
  }

  if (!self->_thumbnailPageControl)
  {
    v4 = [(THWControlLayout *)[THWPageControlLayout alloc] initWithTag:4];
    self->_thumbnailPageControl = v4;
    [(THWPageControlLayout *)v4 setCurrentPage:0];
  }

  if (!self->_stageCanvasLayout)
  {
    self->_stageCanvasLayout = [(THWControlLayout *)[THWPagedCanvasControlLayout alloc] initWithTag:0];
  }

  if (!self->_thumbnailTrackCanvasLayout && [(THWGalleryLayout *)self p_thumbnailsVisible])
  {
    v5 = [(THWControlLayout *)[THWPagedCanvasControlLayout alloc] initWithTag:1];
    self->_thumbnailTrackCanvasLayout = v5;
    [(THWPagedCanvasControlLayout *)v5 setDelegate:self];
  }

  [(THWGalleryLayout *)self p_updatePagesAndThumbnailLayouts];
  [(THWGalleryLayout *)self p_updateCaption];
  v6.receiver = self;
  v6.super_class = THWGalleryLayout;
  [(THWContainerLayout *)&v6 updateChildrenFromInfo];
}

- (BOOL)p_hasIndividualCaptions
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [-[THWGalleryLayout info](self info];
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

        if ([objc_msgSend(*(*(&v8 + 1) + 8 * v6) "captionStorage")])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (void)p_updateCaption
{
  v3 = [(THWGalleryLayout *)self p_hasIndividualCaptions];
  captionLayout = self->_captionLayout;
  if (v3)
  {
    if (captionLayout)
    {
      return;
    }

    v5 = [[THWGalleryCaptionLayout alloc] initWithDelegate:self];
  }

  else
  {
    if (!captionLayout)
    {
      return;
    }

    v5 = 0;
  }

  self->_captionLayout = v5;
}

- (void)p_updatePagesAndThumbnailLayouts
{
  -[THWPageControlLayout setNumberOfPages:](self->_pageControl, "setNumberOfPages:", [objc_msgSend(-[THWGalleryLayout info](self "info")]);
  [(THWPageControlLayout *)self->_thumbnailPageControl setNumberOfPages:[(THWGalleryLayout *)self numberOfThumbnailTrackPages]];
  if ([(THWGalleryLayout *)self useZoom])
  {
    zoomableCanvasPages = self->_zoomableCanvasPages;
    if (!zoomableCanvasPages)
    {
      if (self->_zoomableCanvasControls)
      {
        zoomableCanvasPages = 0;
      }

      else
      {
        v11 = objc_alloc_init(NSMutableArray);
        v12 = objc_alloc_init(NSMutableArray);
        v13 = [objc_msgSend(-[THWGalleryLayout info](self "info")];
        if (v13)
        {
          v14 = v13;
          for (i = 0; i != v14; ++i)
          {
            v16 = [[THWControlContainer alloc] initWithDelegate:self];
            [(THWControlContainer *)v16 setTag:6];
            [(THWControlContainer *)v16 setIndex:i];
            [v11 addObject:v16];

            v17 = [(THWControlLayout *)[THWZoomableCanvasControlLayout alloc] initWithTag:7 index:i];
            [v12 addObject:v17];
          }
        }

        self->_zoomableCanvasPages = [v11 copy];

        self->_zoomableCanvasControls = [v12 copy];
        zoomableCanvasPages = self->_zoomableCanvasPages;
      }
    }
  }

  else
  {
    zoomableCanvasPages = self->_imageInfos;
    if (!zoomableCanvasPages)
    {
      v4 = [-[THWGalleryLayout info](self "info")];
      v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v28;
        do
        {
          for (j = 0; j != v7; j = j + 1)
          {
            if (*v28 != v8)
            {
              objc_enumerationMutation(v4);
            }

            v10 = *(*(&v27 + 1) + 8 * j);
            if ([v10 imageInfo])
            {
              [v5 addObject:{objc_msgSend(v10, "imageInfo")}];
            }
          }

          v7 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v7);
      }

      self->_imageInfos = [v5 copy];

      zoomableCanvasPages = self->_imageInfos;
    }
  }

  [(THWGalleryLayout *)self setStageInfos:zoomableCanvasPages];
  if ([(THWGalleryLayout *)self p_thumbnailsVisible])
  {
    v18 = [(THWPageControlLayout *)self->_thumbnailPageControl numberOfPages];
    v19 = [(NSArray *)self->_thumbnailControlPages count];
    if (v19 != v18)
    {

      self->_thumbnailControlPages = 0;
      if (v18)
      {
        v20 = [[NSMutableArray alloc] initWithCapacity:v18];
        for (k = 0; k != v18; ++k)
        {
          v22 = [[THWControlContainer alloc] initWithDelegate:self];
          [(THWControlContainer *)v22 setTag:2];
          [(THWControlContainer *)v22 setIndex:k];
          [v20 addObject:v22];
        }

        self->_thumbnailControlPages = [v20 copy];
      }
    }

    v23 = [objc_msgSend(-[THWGalleryLayout info](self "info")];
    if (v19 != v18 || v23 != [(NSArray *)self->_thumbnailButtons count])
    {

      self->_thumbnailButtons = 0;
      if (v23)
      {
        v24 = [[NSMutableArray alloc] initWithCapacity:v23];
        for (m = 0; m != v23; ++m)
        {
          v26 = objc_alloc_init(THWButtonControlLayout);
          [(THWControlLayout *)v26 setTag:5];
          [(THWControlLayout *)v26 setIndex:m];
          [v24 addObject:v26];
        }

        self->_thumbnailButtons = [v24 copy];
      }
    }
  }

  else
  {

    self->_thumbnailControlPages = 0;
    self->_thumbnailButtons = 0;
  }
}

- (id)dependentLayouts
{
  v6.receiver = self;
  v6.super_class = THWGalleryLayout;
  v3 = [-[THWGalleryLayout dependentLayouts](&v6 "dependentLayouts")];
  if (!v3)
  {
    v3 = +[NSMutableArray array];
  }

  [v3 addObjectsFromArray:{-[THWGalleryLayout children](self, "children")}];
  if ([(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutMode:self]!= 3)
  {
    captionLayout = self->_captionLayout;
    if (captionLayout)
    {
      [(THWGalleryCaptionLayout *)captionLayout addDescendentLayoutsToArray:v3];
    }
  }

  return v3;
}

- (id)layoutGeometryForLayout:(id)a3
{
  v5 = [(THWGalleryLayout *)self p_itemFromChildLayout:?];
  v6 = [(THWGalleryLayout *)self p_indexForItem:v5];
  result = TSUProtocolCast();
  if (!result)
  {
    if (!v5 || v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    v12 = [v5 imageInfo];
    if (v12 != [a3 info])
    {
      v13 = [objc_msgSend(v5 "imageInfo")];
      if (v13 != [a3 info])
      {
        return 0;
      }
    }

    if ([(THWGalleryLayout *)self isExpanded]&& ![(THWGalleryLayout *)self useZoom])
    {
      [objc_msgSend(v5 "imageInfo")];
      width = self->_stageFrame.size.width;
      height = self->_stageFrame.size.height;
      TSDShrinkSizeToFitInSize();
      v15 = v70;
      v17 = v71;
      v72 = [v5 imageInfo];
      if (v72 == [a3 info])
      {
        v75 = (width - v15) * 0.5;
        v76 = width * v6;
        v77 = (height - v17) * 0.5 + 0.0;
        v78 = v76 + v75;
        v10 = [TSDLayoutGeometry alloc];
        x = v78;
        v22 = v77;
      }

      else
      {
        v73 = [objc_msgSend(v5 "imageInfo")];
        if (v73 != [a3 info])
        {
          return 0;
        }

        v10 = [TSDLayoutGeometry alloc];
        x = 0.0;
        v22 = 0.0;
      }
    }

    else
    {
      if (![(THWGalleryLayout *)self isExpanded]|| ![(THWGalleryLayout *)self useZoom])
      {
        [v5 cropRect];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;
        [objc_msgSend(v5 "imageInfo")];
        v82 = v49;
        v83 = v48;
        if (v45 <= 0.0)
        {
          v50 = 1.0;
        }

        else
        {
          v50 = v45;
        }

        if (v47 <= 0.0)
        {
          v51 = 1.0;
        }

        else
        {
          v51 = v47;
        }

        p_stageFrame = &self->_stageFrame;
        v81 = CGRectGetWidth(self->_stageFrame);
        v86.origin.x = v41;
        v86.origin.y = v43;
        v86.size.width = v50;
        v86.size.height = v51;
        v80 = CGRectGetWidth(v86);
        v53 = CGRectGetHeight(self->_stageFrame);
        v87.origin.x = v41;
        v87.origin.y = v43;
        v87.size.width = v50;
        v87.size.height = v51;
        v54 = CGRectGetHeight(v87);
        v55 = CGRectGetWidth(self->_stageFrame);
        v88.origin.x = v41;
        v88.origin.y = v43;
        v88.size.width = v50;
        v88.size.height = v51;
        v56 = v41 * (v55 / CGRectGetWidth(v88));
        v57 = CGRectGetHeight(self->_stageFrame);
        v89.origin.x = v41;
        v89.origin.y = v43;
        v89.size.width = v50;
        v89.size.height = v51;
        v58 = v43 * (v57 / CGRectGetHeight(v89));
        v59 = [v5 imageInfo];
        if (v59 == [a3 info])
        {
          v29 = v82 * (v53 / v54);
          v74 = -(v56 - v6 * p_stageFrame->size.width);
          v10 = [TSDLayoutGeometry alloc];
          x = v74;
          v22 = -v58;
          v26 = v83 * (v81 / v80);
LABEL_50:
          v27 = v29;
          goto LABEL_54;
        }

        v60 = [objc_msgSend(v5 "imageInfo")];
        if (v60 == [a3 info])
        {
          v61 = p_stageFrame->size.width;
          v62 = p_stageFrame->size.height;
          v10 = [TSDLayoutGeometry alloc];
          x = v56;
          v22 = v58;
          v26 = v61;
          v27 = v62;
          goto LABEL_54;
        }

        return 0;
      }

      [objc_msgSend(v5 "imageInfo")];
      v15 = v14;
      v17 = v16;
      v18 = [v5 imageInfo];
      if (v18 != [a3 info])
      {
        v19 = [objc_msgSend(v5 "imageInfo")];
        if (v19 != [a3 info])
        {
          return 0;
        }
      }

      y = CGPointZero.y;
      v10 = [TSDLayoutGeometry alloc];
      x = CGPointZero.x;
      v22 = y;
    }

    v26 = v15;
    v27 = v17;
    goto LABEL_54;
  }

  v8 = result;
  v9 = [result tag];
  result = 0;
  if (v9 <= 2)
  {
    if (!v9)
    {
      v10 = [TSDLayoutGeometry alloc];
      v11 = 384;
      goto LABEL_32;
    }

    if (v9 != &dword_0 + 1)
    {
      if (v9 != &dword_0 + 2)
      {
        return result;
      }

      v23 = [TSDLayoutGeometry alloc];
      p_thumbnailTrackFrame = &self->_thumbnailTrackFrame;
      v25 = p_thumbnailTrackFrame->size.width;
      x = v25 * [v8 index];
      v26 = p_thumbnailTrackFrame->size.width;
      v27 = p_thumbnailTrackFrame->size.height;
      v22 = 0.0;
      v10 = v23;
      goto LABEL_54;
    }

    if ([(THWGalleryLayout *)self p_thumbnailsVisibleOnMainCanvas])
    {
      v10 = [TSDLayoutGeometry alloc];
      v11 = 416;
      goto LABEL_32;
    }

    return 0;
  }

  if (v9 <= 5)
  {
    if ((v9 - 3) < 2)
    {
      v10 = [TSDLayoutGeometry alloc];
      v11 = 448;
LABEL_32:
      v39 = &self->super.TSDContainerLayout_opaque[v11];
      x = *v39;
      v22 = v39[1];
      v26 = v39[2];
      v27 = v39[3];
      goto LABEL_54;
    }

    if (v9 != &dword_4 + 1)
    {
      return result;
    }

    [(THWGalleryLayout *)self p_thumbnailSize];
    v31 = v30;
    v33 = v32;
    v84 = 1;
    if ([(THWGalleryLayout *)self p_numberOfThumbnailPagesAndThumbnailsPerPage:&v84]== &dword_0 + 1)
    {
      v34 = [objc_msgSend(-[THWGalleryLayout info](self "info")];
      v84 = v34;
      if (!v34)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v34 = v84;
      if (!v84)
      {
LABEL_43:
        v34 = 1;
        v84 = 1;
      }
    }

    v63 = (self->_thumbnailTrackFrame.size.width - v31 * v34 - (10 * v34 - 10)) * 0.5 + 0.0;
    v64 = [v8 index];
    v65 = v63 + (v64 % v84) * (v31 + 10.0);
    v66 = floorf(v65);
    [(THWGalleryLayout *)self thumbnailTrackVerticalPadding];
    return [[TSDLayoutGeometry alloc] initWithFrame:{v66, v67, v31, v33}];
  }

  if (v9 != &dword_4 + 2)
  {
    if (v9 != &dword_4 + 3)
    {
      return result;
    }

    v28 = self->_stageFrame.size.width;
    v29 = self->_stageFrame.size.height;
    v10 = [TSDLayoutGeometry alloc];
    x = 0.0;
    v22 = 0.0;
    v26 = v28;
    goto LABEL_50;
  }

  v35 = self->_stageFrame.size.width;
  v36 = v35 * [v8 index];
  v37 = self->_stageFrame.size.width;
  v38 = self->_stageFrame.size.height;
  v10 = [TSDLayoutGeometry alloc];
  v22 = 0.0;
  x = v36;
  v26 = v37;
  v27 = v38;
LABEL_54:
  v79 = [v10 initWithFrame:{x, v22, v26, v27}];

  return v79;
}

- (id)childrenForLayout
{
  v3 = +[NSMutableArray array];
  v4 = [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutMode:self];
  if (!v4)
  {
    v5 = [-[THWGalleryLayout info](self "info")];
    if ([-[THWGalleryLayout info](self "info")])
    {
      v5 = [objc_msgSend(-[THWGalleryLayout info](self "info")];
    }

    if ([(THWGalleryLayout *)self individualCaptions])
    {
      v6 = [objc_msgSend(-[THWGalleryLayout info](self "info")];
      if (v6)
      {
        v9 = v6;
        v5 = [v5 tsu_arrayByRemovingObjectsIdenticalToObjectsInArray:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v9, 1)}];
      }
    }

    [v3 addObjectsFromArray:v5];
  }

  if (self->_stageCanvasLayout)
  {
    [v3 addObject:?];
  }

  if (!v4)
  {
    if ([(THWGalleryLayout *)self p_thumbnailsVisibleOnMainCanvas])
    {
      if (self->_thumbnailTrackCanvasLayout)
      {
        [v3 addObject:?];
      }

      if ([(THWGalleryLayout *)self numberOfThumbnailTrackPages]< 2)
      {
        goto LABEL_19;
      }

      thumbnailPageControl = self->_thumbnailPageControl;
    }

    else if ([objc_msgSend(-[THWGalleryLayout info](self "info")] < 2 || (thumbnailPageControl = self->_pageControl) == 0)
    {
LABEL_19:
      if (self->_captionLayout)
      {
        [v3 addObject:?];
      }

      return v3;
    }

    [v3 addObject:thumbnailPageControl];
    goto LABEL_19;
  }

  return v3;
}

- (unint64_t)numberOfStagePages
{
  v2 = [-[THWGalleryLayout info](self "info")];

  return [v2 count];
}

- (id)infosForThumbnailTrackPages:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (![(THWGalleryLayout *)self p_thumbnailsVisible]|| location + length > [(NSArray *)self->_thumbnailControlPages count])
  {
    return 0;
  }

  thumbnailControlPages = self->_thumbnailControlPages;

  return [(NSArray *)thumbnailControlPages subarrayWithRange:location, length];
}

- (id)infosForStagePages:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location + a3.length > [(NSArray *)self->_stageInfos count])
  {
    return 0;
  }

  stageInfos = self->_stageInfos;

  return [(NSArray *)stageInfos subarrayWithRange:location, length];
}

- (id)pageIndexesFromStageReps:(id)a3
{
  v5 = +[NSMutableIndexSet indexSet];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) info];
        stageInfos = self->_stageInfos;
        if (stageInfos)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v13 = [(NSArray *)stageInfos indexOfObjectIdenticalTo:?];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addIndex:v13];
          }
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)p_nonEmptyCaptionStorage
{
  v3 = [objc_msgSend(objc_msgSend(-[THWGalleryLayout info](self "info")];
  if (![v3 length])
  {
    v4 = [-[THWGalleryLayout info](self "info")];
    v5 = [v4 count];
    if (v5)
    {
      v5 = [v4 objectAtIndex:0];
    }

    v6 = [v5 captionStorage];
    if ([v6 length])
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

- (__CTFont)createFontFromCaption
{
  result = [(THWGalleryLayout *)self p_nonEmptyCaptionStorage];
  if (result)
  {
    v3 = result;
    [(__CTFont *)result paragraphStyleAtCharIndex:0 effectiveRange:0];
    [(__CTFont *)v3 characterStyleAtCharIndex:0 effectiveRange:0];

    return TSWPFastCreateFontForStyle();
  }

  return result;
}

- (id)colorFromCaption
{
  result = [(THWGalleryLayout *)self p_nonEmptyCaptionStorage];
  if (result)
  {
    v3 = result;
    [result paragraphStyleAtCharIndex:0 effectiveRange:0];
    [v3 characterStyleAtCharIndex:0 effectiveRange:0];

    return TSWPResolveColorForStyles();
  }

  return result;
}

- (id)colorFromTitle
{
  v2 = [-[THWGalleryLayout info](self "info")];

  return [v2 titleColor];
}

- (id)controlContainerAdditionalChildLayouts:(id)a3
{
  if ([a3 tag] == &dword_0 + 2)
  {
    v5 = [a3 index];
    v14 = 0;
    [(THWGalleryLayout *)self p_numberOfThumbnailPagesAndThumbnailsPerPage:&v14];
    v6 = [objc_msgSend(-[THWGalleryLayout info](self "info")];
    v7 = v6;
    v8 = v14;
    if (v6 >= v8 + v8 * v5)
    {
      v9 = (v14 + v14 * v5);
    }

    else
    {
      v9 = v6;
    }

    v10 = [(NSArray *)self->_thumbnailButtons count];
    result = 0;
    if (v9 <= v10)
    {
      if (v7 >= v8 * v5)
      {
        v12 = v8 * v5;
      }

      else
      {
        v12 = v7;
      }

      return [(NSArray *)self->_thumbnailButtons subarrayWithRange:v12, &v9[-v12]];
    }
  }

  else if ([a3 tag] == &dword_4 + 2 && (v13 = objc_msgSend(a3, "index"), v13 < -[NSArray count](self->_zoomableCanvasControls, "count")))
  {
    result = [(NSArray *)self->_zoomableCanvasControls objectAtIndex:v13];
    if (result)
    {

      return [NSArray arrayWithObject:result];
    }
  }

  else
  {
    return 0;
  }

  return result;
}

- (void)pagedCanvasControlLayoutDidValidate:(id)a3
{
  if (self->_thumbnailTrackCanvasLayout == a3 && [(THWGalleryLayout *)self p_thumbnailsVisibleInPanel])
  {
    [objc_msgSend(a3 "geometry")];
    self->_thumbnailTrackFrame.origin = CGPointZero;
    self->_thumbnailTrackFrame.size.width = v5;
    self->_thumbnailTrackFrame.size.height = v6;

    [(THWGalleryLayout *)self p_updatePagesAndThumbnailLayouts];
  }
}

- (CGPoint)galleryCaptionPosition
{
  v2 = [(THWGalleryLayout *)self info];

  [v2 captionPosition];
  result.y = v4;
  result.x = v3;
  return result;
}

- (double)galleryCaptionWidth
{
  if ([(THWGalleryLayout *)self isExpanded])
  {
    [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutBounds];
    return v3;
  }

  else
  {
    v5 = [(THWGalleryLayout *)self geometry];

    [v5 size];
  }

  return result;
}

- (CGRect)stageFrame
{
  x = self->_stageFrame.origin.x;
  y = self->_stageFrame.origin.y;
  width = self->_stageFrame.size.width;
  height = self->_stageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)thumbnailTrackFrame
{
  x = self->_thumbnailTrackFrame.origin.x;
  y = self->_thumbnailTrackFrame.origin.y;
  width = self->_thumbnailTrackFrame.size.width;
  height = self->_thumbnailTrackFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)pageControlFrame
{
  x = self->_pageControlFrame.origin.x;
  y = self->_pageControlFrame.origin.y;
  width = self->_pageControlFrame.size.width;
  height = self->_pageControlFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
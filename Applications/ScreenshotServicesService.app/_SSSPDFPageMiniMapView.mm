@interface _SSSPDFPageMiniMapView
+ (CGAffineTransform)_transformToConvertToRect:(SEL)rect fromRect:(CGRect)fromRect;
+ (double)adjustedTranslationForProposedRect:(CGFloat)rect originalRect:(CGFloat)originalRect scaledContentViewBounds:(double)bounds;
- (CGRect)_lastSetScrollViewRectInContentViewSpace;
- (CGRect)convertRectFromPageViewSpace:(CGRect)space toView:(id)view;
- (CGRect)convertRectToPageViewSpace:(CGRect)space fromView:(id)view;
- (CGRect)scrollViewVisibleRectInPDFView;
- (CGRect)visibleRectInPageViewSpace;
- (CGSize)lastRequestedImageSize;
- (_SSSPDFPageMiniMapView)initWithFrame:(CGRect)frame;
- (id)pageImageForSize:(CGSize)size;
- (id)pageView;
- (id)pdfPage;
- (void)_removePDFNotifications;
- (void)_setupPDFNotificationsIfPossible;
- (void)annotationsDidChange;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setNeedsPageImageUpdate;
- (void)setPageIndex:(int64_t)index;
- (void)setPdfView:(id)view;
- (void)setScrollViewVisibleRectInPDFView:(CGRect)view;
- (void)setShouldUpdate:(BOOL)update;
- (void)updatePDFViewFromVisibleRegionView;
- (void)updateVisibleRegionViewFromPDFView;
- (void)userDidPanSelectionRect:(id)rect;
- (void)visibleRegionRectDidChange;
@end

@implementation _SSSPDFPageMiniMapView

- (_SSSPDFPageMiniMapView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = _SSSPDFPageMiniMapView;
  v3 = [(_SSSPDFPageMiniMapView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (_SSScreenshotsRedesign2025Enabled())
  {
    v4 = objc_alloc_init(UIView);
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v4;

    [(UIView *)v3->_backgroundView _sss_setGlassBackground];
    [(UIView *)v3->_backgroundView _sss_setConcentricCornerMaskingConfiguration];
    layer = [(UIView *)v3->_backgroundView layer];
    [layer setCornerCurve:kCACornerCurveContinuous];

    layer2 = [(UIView *)v3->_backgroundView layer];
    [layer2 setCornerRadius:8.0];

    [(_SSSPDFPageMiniMapView *)v3 addSubview:v3->_backgroundView];
  }

  v8 = objc_alloc_init(UIImageView);
  pageImageView = v3->_pageImageView;
  v3->_pageImageView = v8;

  [(UIImageView *)v3->_pageImageView setUserInteractionEnabled:0];
  if (_SSScreenshotsRedesign2025Enabled())
  {
    layer3 = [(UIImageView *)v3->_pageImageView layer];
    [layer3 setCornerCurve:kCACornerCurveContinuous];

    layer4 = [(UIImageView *)v3->_pageImageView layer];
    [layer4 setCornerRadius:4.0];

    layer5 = [(UIImageView *)v3->_pageImageView layer];
    [layer5 setMasksToBounds:1];
  }

  [(_SSSPDFPageMiniMapView *)v3 addSubview:v3->_pageImageView];
  v13 = objc_alloc_init(_SSSPDFPageMiniMapVisibleRegionView);
  visibleRegionView = v3->_visibleRegionView;
  v3->_visibleRegionView = v13;

  [(_SSSPDFPageMiniMapVisibleRegionView *)v3->_visibleRegionView setUserInteractionEnabled:0];
  [(_SSSPDFPageMiniMapView *)v3 addSubview:v3->_visibleRegionView];
  v15 = objc_alloc_init(UIView);
  scaledScrollViewVisibleRectView = v3->_scaledScrollViewVisibleRectView;
  v3->_scaledScrollViewVisibleRectView = v15;

  [(_SSSPDFPageMiniMapView *)v3 addSubview:v3->_scaledScrollViewVisibleRectView];
  v17 = [[UIPanGestureRecognizer alloc] initWithTarget:v3 action:"userDidPanSelectionRect:"];
  panGestureRecognizer = v3->_panGestureRecognizer;
  v3->_panGestureRecognizer = v17;

  [(UIView *)v3->_scaledScrollViewVisibleRectView addGestureRecognizer:v3->_panGestureRecognizer];
  return v3;
}

- (void)dealloc
{
  updatePageImageBlock = self->_updatePageImageBlock;
  if (updatePageImageBlock)
  {
    dispatch_block_cancel(updatePageImageBlock);
    v4 = self->_updatePageImageBlock;
    self->_updatePageImageBlock = 0;
  }

  [(_SSSPDFPageMiniMapView *)self _removePDFNotifications];
  v5.receiver = self;
  v5.super_class = _SSSPDFPageMiniMapView;
  [(_SSSPDFPageMiniMapView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = _SSSPDFPageMiniMapView;
  [(_SSSPDFPageMiniMapView *)&v13 layoutSubviews];
  [(_SSSPDFPageMiniMapView *)self bounds];
  v15 = CGRectInset(v14, 10.0, 0.0);
  v3 = [(_SSSPDFPageMiniMapView *)self pageImageForSize:v15.size.width, v15.size.height];
  [v3 size];
  [v3 size];
  [(_SSSPDFPageMiniMapView *)self bounds];
  UIRectCenteredIntegralRectScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIImageView *)self->_pageImageView setFrame:0];
  [(UIImageView *)self->_pageImageView setImage:v3];
  if (_SSScreenshotsRedesign2025Enabled())
  {
    backgroundView = self->_backgroundView;
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    v17 = CGRectInset(v16, -6.0, -6.0);
    [(UIView *)backgroundView setFrame:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
  }

  [(_SSSPDFPageMiniMapVisibleRegionView *)self->_visibleRegionView setFrame:v5, v7, v9, v11];
  if ([(_SSSPDFPageMiniMapView *)self isDraggingVisibleRect])
  {
    [(_SSSPDFPageMiniMapView *)self updatePDFViewFromVisibleRegionView];
  }

  else
  {
    [(_SSSPDFPageMiniMapView *)self updateVisibleRegionViewFromPDFView];
  }
}

- (void)setPdfView:(id)view
{
  viewCopy = view;
  if (self->_pdfView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_pdfView, view);
    [(_SSSPDFPageMiniMapView *)self _setupPDFNotificationsIfPossible];
    [(_SSSPDFPageMiniMapView *)self setNeedsPageImageUpdate];
    [(_SSSPDFPageMiniMapView *)self setNeedsLayout];
    viewCopy = v6;
  }
}

- (void)setShouldUpdate:(BOOL)update
{
  if (self->_shouldUpdate != update)
  {
    self->_shouldUpdate = update;
    [(_SSSPDFPageMiniMapView *)self _setupPDFNotificationsIfPossible];
    [(_SSSPDFPageMiniMapView *)self setNeedsPageImageUpdate];

    [(_SSSPDFPageMiniMapView *)self setNeedsLayout];
  }
}

- (void)_setupPDFNotificationsIfPossible
{
  [(_SSSPDFPageMiniMapView *)self _removePDFNotifications];
  if (self->_pdfView)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    documentScrollView = [(PDFView *)self->_pdfView documentScrollView];
    [v3 addObserver:self selector:"visibleRegionRectDidChange" name:@"PDFScrollViewPageMayHaveChangedNotification" object:documentScrollView];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"annotationsDidChange" name:PDFViewAnnotationsDidChangeNotification object:self->_pdfView];

    v8 = +[NSNotificationCenter defaultCenter];
    v6 = PDFPageChangedBoundsForBoxNotification;
    pdfPage = [(_SSSPDFPageMiniMapView *)self pdfPage];
    [v8 addObserver:self selector:"setNeedsPageImageUpdate" name:v6 object:pdfPage];
  }
}

- (void)_removePDFNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"PDFScrollViewPageMayHaveChangedNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:PDFViewAnnotationsDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:PDFPageChangedBoundsForBoxNotification object:0];
}

- (void)setPageIndex:(int64_t)index
{
  if (self->_pageIndex != index)
  {
    self->_pageIndex = index;
    [(_SSSPDFPageMiniMapView *)self setNeedsPageImageUpdate];

    [(_SSSPDFPageMiniMapView *)self setNeedsLayout];
  }
}

- (void)setScrollViewVisibleRectInPDFView:(CGRect)view
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  p_scrollViewVisibleRectInPDFView = &self->_scrollViewVisibleRectInPDFView;
  if (!CGRectEqualToRect(self->_scrollViewVisibleRectInPDFView, view))
  {
    p_scrollViewVisibleRectInPDFView->origin.x = x;
    p_scrollViewVisibleRectInPDFView->origin.y = y;
    p_scrollViewVisibleRectInPDFView->size.width = width;
    p_scrollViewVisibleRectInPDFView->size.height = height;

    [(_SSSPDFPageMiniMapView *)self setNeedsLayout];
  }
}

- (void)setNeedsPageImageUpdate
{
  lastPageImage = self->_lastPageImage;
  self->_lastPageImage = 0;

  [(_SSSPDFPageMiniMapView *)self setNeedsLayout];
}

- (id)pdfPage
{
  document = [(PDFView *)self->_pdfView document];
  v4 = [document pageAtIndex:self->_pageIndex];

  return v4;
}

- (id)pageView
{
  pdfView = self->_pdfView;
  pdfPage = [(_SSSPDFPageMiniMapView *)self pdfPage];
  v4 = [(PDFView *)pdfView viewForPage:pdfPage];

  return v4;
}

- (id)pageImageForSize:(CGSize)size
{
  width = size.width;
  height = size.height;
  pdfPage = [(_SSSPDFPageMiniMapView *)self pdfPage];
  if (pdfPage)
  {
    v5 = CGSizeZero.height;

    v7 = width;
    v6 = height;
    if (width == CGSizeZero.width && height == v5)
    {
      pdfPage = 0;
    }

    else
    {
      lastPageImage = self->_lastPageImage;
      if (!lastPageImage || ((v6 = self->_lastRequestedImageSize.width, v7 = self->_lastRequestedImageSize.height, width == v6) ? (v10 = height == v7) : (v10 = 0), !v10))
      {
        v11 = [UIScreen mainScreen:v6];
        [v11 scale];
        v13 = v12;

        CGAffineTransformMakeScale(&v22, v13, v13);
        v19 = vmlaq_n_f64(vmulq_n_f64(*&v22.c, height), *&v22.a, width);
        pdfPage2 = [(_SSSPDFPageMiniMapView *)self pdfPage];
        v15 = [pdfPage2 thumbnailOfSize:1 forBox:*&v19];

        v16 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v15 CGImage], objc_msgSend(v15, "imageOrientation"), v13);
        v17 = self->_lastPageImage;
        self->_lastPageImage = v16;

        self->_lastRequestedImageSize.width = width;
        self->_lastRequestedImageSize.height = height;

        lastPageImage = self->_lastPageImage;
      }

      pdfPage = lastPageImage;
    }
  }

  return pdfPage;
}

- (void)visibleRegionRectDidChange
{
  if (![(_SSSPDFPageMiniMapView *)self isDraggingVisibleRect])
  {

    [(_SSSPDFPageMiniMapView *)self setNeedsLayout];
  }
}

- (void)annotationsDidChange
{
  updatePageImageBlock = self->_updatePageImageBlock;
  if (updatePageImageBlock)
  {
    dispatch_block_cancel(updatePageImageBlock);
    v4 = self->_updatePageImageBlock;
    self->_updatePageImageBlock = 0;
  }

  if (self->_lastPageImage)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002EF3C;
    v8[3] = &unk_1000BA2F8;
    objc_copyWeak(&v9, &location);
    v5 = dispatch_block_create(0, v8);
    v6 = self->_updatePageImageBlock;
    self->_updatePageImageBlock = v5;

    v7 = dispatch_time(0, 500000000);
    dispatch_after(v7, &_dispatch_main_q, self->_updatePageImageBlock);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {

    [(_SSSPDFPageMiniMapView *)self setNeedsPageImageUpdate];
  }
}

- (void)updateVisibleRegionViewFromPDFView
{
  documentScrollView = [(PDFView *)self->_pdfView documentScrollView];
  delegate = [documentScrollView delegate];
  v5 = [delegate viewForZoomingInScrollView:documentScrollView];

  x = self->_scrollViewVisibleRectInPDFView.origin.x;
  y = self->_scrollViewVisibleRectInPDFView.origin.y;
  width = self->_scrollViewVisibleRectInPDFView.size.width;
  height = self->_scrollViewVisibleRectInPDFView.size.height;
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  if (CGRectIsEmpty(v53))
  {
    [documentScrollView bounds];
    [documentScrollView convertRect:self->_pdfView toView:?];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  v14 = objc_opt_class();
  [(UIImageView *)self->_pageImageView bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v5 bounds];
  if (v14)
  {
    [v14 _transformToConvertToRect:v16 fromRect:{v18, v20, v22, v23, v24, v25, v26}];
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
  }

  [(PDFView *)self->_pdfView convertRect:documentScrollView toView:x, y, width, height];
  v31 = [[_SSSScrollViewLayoutRects alloc] initWithScrollView:documentScrollView visibleRectInScrollView:v27, v28, v29, v30];
  v32 = [(_SSSScrollViewLayoutRects *)v31 layoutRectsByConvertingFromView:documentScrollView toView:v5];
  v49[0] = v50;
  v49[1] = v51;
  v49[2] = v52;
  v33 = [v32 layoutRectsByApplyingTransform:v49];
  v34 = [v33 layoutRectsByConvertingFromView:self->_pageImageView toView:self];
  scaledScrollViewLayoutRectsInSelf = self->_scaledScrollViewLayoutRectsInSelf;
  self->_scaledScrollViewLayoutRectsInSelf = v34;

  [(_SSSScrollViewLayoutRects *)self->_scaledScrollViewLayoutRectsInSelf visibleRect];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [(_SSSPDFPageMiniMapVisibleRegionView *)self->_visibleRegionView frame];
  v56.origin.x = v44;
  v56.origin.y = v45;
  v56.size.width = v46;
  v56.size.height = v47;
  v54.origin.x = v37;
  v54.origin.y = v39;
  v54.size.width = v41;
  v54.size.height = v43;
  v55 = CGRectIntersection(v54, v56);
  [(_SSSPDFPageMiniMapView *)self convertRect:self->_visibleRegionView toView:v55.origin.x, v55.origin.y, v55.size.width, v55.size.height];
  [(_SSSPDFPageMiniMapVisibleRegionView *)self->_visibleRegionView setVisibleRect:?];
  scaledScrollViewVisibleRectView = self->_scaledScrollViewVisibleRectView;
  [(_SSSScrollViewLayoutRects *)self->_scaledScrollViewLayoutRectsInSelf visibleRect];
  [(UIView *)scaledScrollViewVisibleRectView setFrame:?];
}

- (void)updatePDFViewFromVisibleRegionView
{
  +[UIAnimator disableAnimation];
  documentScrollView = [(PDFView *)self->_pdfView documentScrollView];
  delegate = [documentScrollView delegate];
  v4 = [delegate viewForZoomingInScrollView:documentScrollView];

  [(_SSSScrollViewLayoutRects *)self->_inFlightScaledScrollViewLayoutRectsInSelf scrollViewRect];
  [(_SSSPDFPageMiniMapView *)self convertRect:self->_visibleRegionView toView:?];
  [(_SSSPDFPageMiniMapView *)self convertRectToPageViewSpace:self->_visibleRegionView fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  pageView = [(_SSSPDFPageMiniMapView *)self pageView];
  [v4 convertRect:pageView fromView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [documentScrollView zoomScale];
  [documentScrollView setZoomScale:v22 + 0.00000011920929];
  [documentScrollView zoomToRect:0 animated:{v15, v17, v19, v21}];
  +[UIAnimator enableAnimation];
}

+ (double)adjustedTranslationForProposedRect:(CGFloat)rect originalRect:(CGFloat)originalRect scaledContentViewBounds:(double)bounds
{
  Width = CGRectGetWidth(*&self);
  v30.origin.x = a9;
  v30.origin.y = a10;
  v30.size.width = a11;
  v30.size.height = a12;
  boundsCopy = bounds;
  if (Width < CGRectGetWidth(v30))
  {
    v31.origin.x = self;
    v31.origin.y = a2;
    v31.size.width = rect;
    v31.size.height = originalRect;
    MinX = CGRectGetMinX(v31);
    v32.origin.x = a9;
    v32.origin.y = a10;
    v32.size.width = a11;
    v32.size.height = a12;
    v23 = CGRectGetMinX(v32);
    if (MinX < v23)
    {
      MinX = v23;
    }

    v33.origin.x = a9;
    v33.origin.y = a10;
    v33.size.width = a11;
    v33.size.height = a12;
    MaxX = CGRectGetMaxX(v33);
    v34.origin.x = self;
    v34.origin.y = a2;
    v34.size.width = rect;
    v34.size.height = originalRect;
    v25 = MaxX - CGRectGetWidth(v34);
    if (MinX >= v25)
    {
      boundsCopy = v25;
    }

    else
    {
      boundsCopy = MinX;
    }
  }

  v35.origin.x = self;
  v35.origin.y = a2;
  v35.size.width = rect;
  v35.size.height = originalRect;
  Height = CGRectGetHeight(v35);
  v36.origin.x = a9;
  v36.origin.y = a10;
  v36.size.width = a11;
  v36.size.height = a12;
  if (Height < CGRectGetHeight(v36))
  {
    v37.origin.x = self;
    v37.origin.y = a2;
    v37.size.width = rect;
    v37.size.height = originalRect;
    CGRectGetMinY(v37);
    v38.origin.x = a9;
    v38.origin.y = a10;
    v38.size.width = a11;
    v38.size.height = a12;
    CGRectGetMinY(v38);
    v39.origin.x = a9;
    v39.origin.y = a10;
    v39.size.width = a11;
    v39.size.height = a12;
    CGRectGetMaxY(v39);
    v40.origin.x = self;
    v40.origin.y = a2;
    v40.size.width = rect;
    v40.size.height = originalRect;
    CGRectGetHeight(v40);
  }

  return boundsCopy - bounds;
}

- (void)userDidPanSelectionRect:(id)rect
{
  rectCopy = rect;
  state = [rectCopy state];
  if (state == 3)
  {
    objc_storeStrong(&self->_scaledScrollViewLayoutRectsInSelf, self->_inFlightScaledScrollViewLayoutRectsInSelf);
  }

  else if (state == 2)
  {
    [rectCopy translationInView:self];
    scaledScrollViewLayoutRectsInSelf = self->_scaledScrollViewLayoutRectsInSelf;
    CGAffineTransformMakeTranslation(&v49, v7, v8);
    v9 = [(_SSSScrollViewLayoutRects *)scaledScrollViewLayoutRectsInSelf layoutRectsByApplyingTransform:&v49];
    v10 = objc_opt_class();
    [v9 contentInsetRect];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(_SSSScrollViewLayoutRects *)self->_scaledScrollViewLayoutRectsInSelf contentInsetRect];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [(_SSSPDFPageMiniMapVisibleRegionView *)self->_visibleRegionView frame];
    [v10 adjustedTranslationForProposedRect:v12 originalRect:v14 scaledContentViewBounds:{v16, v18, v20, v22, v24, v26, v27, v28, v29, v30}];
    v31 = self->_scaledScrollViewLayoutRectsInSelf;
    CGAffineTransformMakeTranslation(&v49, v32, v33);
    v34 = [(_SSSScrollViewLayoutRects *)v31 layoutRectsByApplyingTransform:&v49];
    inFlightScaledScrollViewLayoutRectsInSelf = self->_inFlightScaledScrollViewLayoutRectsInSelf;
    self->_inFlightScaledScrollViewLayoutRectsInSelf = v34;

    [(_SSSScrollViewLayoutRects *)self->_inFlightScaledScrollViewLayoutRectsInSelf visibleRect];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    [(_SSSPDFPageMiniMapVisibleRegionView *)self->_visibleRegionView frame];
    v52.origin.x = v44;
    v52.origin.y = v45;
    v52.size.width = v46;
    v52.size.height = v47;
    v50.origin.x = v37;
    v50.origin.y = v39;
    v50.size.width = v41;
    v50.size.height = v43;
    v51 = CGRectIntersection(v50, v52);
    [(_SSSPDFPageMiniMapView *)self convertRect:self->_visibleRegionView toView:v51.origin.x, v51.origin.y, v51.size.width, v51.size.height];
    [(_SSSPDFPageMiniMapVisibleRegionView *)self->_visibleRegionView setVisibleRect:?];
    scaledScrollViewVisibleRectView = self->_scaledScrollViewVisibleRectView;
    [(_SSSScrollViewLayoutRects *)self->_inFlightScaledScrollViewLayoutRectsInSelf visibleRect];
    [(UIView *)scaledScrollViewVisibleRectView setFrame:?];
    [(_SSSPDFPageMiniMapView *)self setNeedsLayout];
  }
}

- (CGRect)visibleRectInPageViewSpace
{
  pageView = [(_SSSPDFPageMiniMapView *)self pageView];

  if (pageView)
  {
    pageView2 = [(_SSSPDFPageMiniMapView *)self pageView];
    [(PDFView *)self->_pdfView bounds];
    [pageView2 convertRect:self->_pdfView fromView:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    pageView3 = [(_SSSPDFPageMiniMapView *)self pageView];
    [pageView3 bounds];
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    v23 = CGRectIntersection(v22, v25);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)convertRectFromPageViewSpace:(CGRect)space toView:(id)view
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  viewCopy = view;
  pageView = [(_SSSPDFPageMiniMapView *)self pageView];

  if (viewCopy && pageView)
  {
    memset(&v34, 0, sizeof(v34));
    v11 = objc_opt_class();
    [viewCopy bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    pageView2 = [(_SSSPDFPageMiniMapView *)self pageView];
    [pageView2 bounds];
    if (v11)
    {
      [v11 _transformToConvertToRect:v13 fromRect:{v15, v17, v19, v21, v22, v23, v24}];
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
    }

    v33 = v34;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v36 = CGRectApplyAffineTransform(v35, &v33);
    v25 = v36.origin.x;
    v26 = v36.origin.y;
    v27 = v36.size.width;
    v28 = v36.size.height;
  }

  else
  {
    v25 = CGRectZero.origin.x;
    v26 = CGRectZero.origin.y;
    v27 = CGRectZero.size.width;
    v28 = CGRectZero.size.height;
  }

  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)convertRectToPageViewSpace:(CGRect)space fromView:(id)view
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  viewCopy = view;
  pageView = [(_SSSPDFPageMiniMapView *)self pageView];

  if (viewCopy && pageView)
  {
    memset(&v34, 0, sizeof(v34));
    v11 = objc_opt_class();
    pageView2 = [(_SSSPDFPageMiniMapView *)self pageView];
    [pageView2 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [viewCopy bounds];
    if (v11)
    {
      [v11 _transformToConvertToRect:v14 fromRect:{v16, v18, v20, v21, v22, v23, v24}];
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
    }

    v33 = v34;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v36 = CGRectApplyAffineTransform(v35, &v33);
    v25 = v36.origin.x;
    v26 = v36.origin.y;
    v27 = v36.size.width;
    v28 = v36.size.height;
  }

  else
  {
    v25 = CGRectZero.origin.x;
    v26 = CGRectZero.origin.y;
    v27 = CGRectZero.size.width;
    v28 = CGRectZero.size.height;
  }

  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

+ (CGAffineTransform)_transformToConvertToRect:(SEL)rect fromRect:(CGRect)fromRect
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = fromRect.size.height;
  v10 = fromRect.size.width;
  v11 = fromRect.origin.y;
  v12 = fromRect.origin.x;
  result = CGRectIsEmpty(fromRect);
  if (result & 1) != 0 || (v26.origin.x = x, v26.origin.y = y, v26.size.width = width, v26.size.height = height, result = CGRectIsEmpty(v26), (result) || (v27.origin.x = v12, v27.origin.y = v11, v27.size.width = v10, v27.size.height = v9, result = CGRectIsInfinite(v27), (result) || (v28.origin.x = x, v28.origin.y = y, v28.size.width = width, v28.size.height = height, result = CGRectIsInfinite(v28), result))
  {
    v15 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v15;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    v29.origin.x = v12;
    v29.origin.y = v11;
    v29.size.width = v10;
    v29.size.height = v9;
    v24 = CGRectGetWidth(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v25 = v24 / CGRectGetWidth(v30);
    v31.origin.x = v12;
    v31.origin.y = v11;
    v31.size.width = v10;
    v31.size.height = v9;
    v22 = CGRectGetHeight(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v23 = v22 / CGRectGetHeight(v32);
    v33.origin.x = v12;
    v33.origin.y = v11;
    v33.size.width = v10;
    v33.size.height = v9;
    v20 = CGRectGetWidth(v33);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    MinX = CGRectGetMinX(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v21 = CGRectGetMinX(v35) + v20 * MinX;
    v36.origin.x = v12;
    v36.origin.y = v11;
    v36.size.width = v10;
    v36.size.height = v9;
    v16 = CGRectGetHeight(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MinY = CGRectGetMinY(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v18 = CGRectGetMinY(v38);
    retstr->a = v25;
    retstr->b = 0.0;
    retstr->c = 0.0;
    retstr->d = v23;
    retstr->tx = v21;
    retstr->ty = v18 + v16 * MinY;
  }

  return result;
}

- (CGRect)scrollViewVisibleRectInPDFView
{
  x = self->_scrollViewVisibleRectInPDFView.origin.x;
  y = self->_scrollViewVisibleRectInPDFView.origin.y;
  width = self->_scrollViewVisibleRectInPDFView.size.width;
  height = self->_scrollViewVisibleRectInPDFView.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)lastRequestedImageSize
{
  width = self->_lastRequestedImageSize.width;
  height = self->_lastRequestedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)_lastSetScrollViewRectInContentViewSpace
{
  x = self->__lastSetScrollViewRectInContentViewSpace.origin.x;
  y = self->__lastSetScrollViewRectInContentViewSpace.origin.y;
  width = self->__lastSetScrollViewRectInContentViewSpace.size.width;
  height = self->__lastSetScrollViewRectInContentViewSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
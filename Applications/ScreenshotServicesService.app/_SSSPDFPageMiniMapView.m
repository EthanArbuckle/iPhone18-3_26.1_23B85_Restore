@interface _SSSPDFPageMiniMapView
+ (CGAffineTransform)_transformToConvertToRect:(SEL)a3 fromRect:(CGRect)a4;
+ (double)adjustedTranslationForProposedRect:(CGFloat)a3 originalRect:(CGFloat)a4 scaledContentViewBounds:(double)a5;
- (CGRect)_lastSetScrollViewRectInContentViewSpace;
- (CGRect)convertRectFromPageViewSpace:(CGRect)a3 toView:(id)a4;
- (CGRect)convertRectToPageViewSpace:(CGRect)a3 fromView:(id)a4;
- (CGRect)scrollViewVisibleRectInPDFView;
- (CGRect)visibleRectInPageViewSpace;
- (CGSize)lastRequestedImageSize;
- (_SSSPDFPageMiniMapView)initWithFrame:(CGRect)a3;
- (id)pageImageForSize:(CGSize)a3;
- (id)pageView;
- (id)pdfPage;
- (void)_removePDFNotifications;
- (void)_setupPDFNotificationsIfPossible;
- (void)annotationsDidChange;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setNeedsPageImageUpdate;
- (void)setPageIndex:(int64_t)a3;
- (void)setPdfView:(id)a3;
- (void)setScrollViewVisibleRectInPDFView:(CGRect)a3;
- (void)setShouldUpdate:(BOOL)a3;
- (void)updatePDFViewFromVisibleRegionView;
- (void)updateVisibleRegionViewFromPDFView;
- (void)userDidPanSelectionRect:(id)a3;
- (void)visibleRegionRectDidChange;
@end

@implementation _SSSPDFPageMiniMapView

- (_SSSPDFPageMiniMapView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = _SSSPDFPageMiniMapView;
  v3 = [(_SSSPDFPageMiniMapView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (_SSScreenshotsRedesign2025Enabled())
  {
    v4 = objc_alloc_init(UIView);
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v4;

    [(UIView *)v3->_backgroundView _sss_setGlassBackground];
    [(UIView *)v3->_backgroundView _sss_setConcentricCornerMaskingConfiguration];
    v6 = [(UIView *)v3->_backgroundView layer];
    [v6 setCornerCurve:kCACornerCurveContinuous];

    v7 = [(UIView *)v3->_backgroundView layer];
    [v7 setCornerRadius:8.0];

    [(_SSSPDFPageMiniMapView *)v3 addSubview:v3->_backgroundView];
  }

  v8 = objc_alloc_init(UIImageView);
  pageImageView = v3->_pageImageView;
  v3->_pageImageView = v8;

  [(UIImageView *)v3->_pageImageView setUserInteractionEnabled:0];
  if (_SSScreenshotsRedesign2025Enabled())
  {
    v10 = [(UIImageView *)v3->_pageImageView layer];
    [v10 setCornerCurve:kCACornerCurveContinuous];

    v11 = [(UIImageView *)v3->_pageImageView layer];
    [v11 setCornerRadius:4.0];

    v12 = [(UIImageView *)v3->_pageImageView layer];
    [v12 setMasksToBounds:1];
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

- (void)setPdfView:(id)a3
{
  v5 = a3;
  if (self->_pdfView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pdfView, a3);
    [(_SSSPDFPageMiniMapView *)self _setupPDFNotificationsIfPossible];
    [(_SSSPDFPageMiniMapView *)self setNeedsPageImageUpdate];
    [(_SSSPDFPageMiniMapView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setShouldUpdate:(BOOL)a3
{
  if (self->_shouldUpdate != a3)
  {
    self->_shouldUpdate = a3;
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
    v4 = [(PDFView *)self->_pdfView documentScrollView];
    [v3 addObserver:self selector:"visibleRegionRectDidChange" name:@"PDFScrollViewPageMayHaveChangedNotification" object:v4];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"annotationsDidChange" name:PDFViewAnnotationsDidChangeNotification object:self->_pdfView];

    v8 = +[NSNotificationCenter defaultCenter];
    v6 = PDFPageChangedBoundsForBoxNotification;
    v7 = [(_SSSPDFPageMiniMapView *)self pdfPage];
    [v8 addObserver:self selector:"setNeedsPageImageUpdate" name:v6 object:v7];
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

- (void)setPageIndex:(int64_t)a3
{
  if (self->_pageIndex != a3)
  {
    self->_pageIndex = a3;
    [(_SSSPDFPageMiniMapView *)self setNeedsPageImageUpdate];

    [(_SSSPDFPageMiniMapView *)self setNeedsLayout];
  }
}

- (void)setScrollViewVisibleRectInPDFView:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_scrollViewVisibleRectInPDFView = &self->_scrollViewVisibleRectInPDFView;
  if (!CGRectEqualToRect(self->_scrollViewVisibleRectInPDFView, a3))
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
  v3 = [(PDFView *)self->_pdfView document];
  v4 = [v3 pageAtIndex:self->_pageIndex];

  return v4;
}

- (id)pageView
{
  pdfView = self->_pdfView;
  v3 = [(_SSSPDFPageMiniMapView *)self pdfPage];
  v4 = [(PDFView *)pdfView viewForPage:v3];

  return v4;
}

- (id)pageImageForSize:(CGSize)a3
{
  width = a3.width;
  height = a3.height;
  v4 = [(_SSSPDFPageMiniMapView *)self pdfPage];
  if (v4)
  {
    v5 = CGSizeZero.height;

    v7 = width;
    v6 = height;
    if (width == CGSizeZero.width && height == v5)
    {
      v4 = 0;
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
        v14 = [(_SSSPDFPageMiniMapView *)self pdfPage];
        v15 = [v14 thumbnailOfSize:1 forBox:*&v19];

        v16 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v15 CGImage], objc_msgSend(v15, "imageOrientation"), v13);
        v17 = self->_lastPageImage;
        self->_lastPageImage = v16;

        self->_lastRequestedImageSize.width = width;
        self->_lastRequestedImageSize.height = height;

        lastPageImage = self->_lastPageImage;
      }

      v4 = lastPageImage;
    }
  }

  return v4;
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
  v3 = [(PDFView *)self->_pdfView documentScrollView];
  v4 = [v3 delegate];
  v5 = [v4 viewForZoomingInScrollView:v3];

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
    [v3 bounds];
    [v3 convertRect:self->_pdfView toView:?];
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

  [(PDFView *)self->_pdfView convertRect:v3 toView:x, y, width, height];
  v31 = [[_SSSScrollViewLayoutRects alloc] initWithScrollView:v3 visibleRectInScrollView:v27, v28, v29, v30];
  v32 = [(_SSSScrollViewLayoutRects *)v31 layoutRectsByConvertingFromView:v3 toView:v5];
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
  v23 = [(PDFView *)self->_pdfView documentScrollView];
  v3 = [v23 delegate];
  v4 = [v3 viewForZoomingInScrollView:v23];

  [(_SSSScrollViewLayoutRects *)self->_inFlightScaledScrollViewLayoutRectsInSelf scrollViewRect];
  [(_SSSPDFPageMiniMapView *)self convertRect:self->_visibleRegionView toView:?];
  [(_SSSPDFPageMiniMapView *)self convertRectToPageViewSpace:self->_visibleRegionView fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(_SSSPDFPageMiniMapView *)self pageView];
  [v4 convertRect:v13 fromView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v23 zoomScale];
  [v23 setZoomScale:v22 + 0.00000011920929];
  [v23 zoomToRect:0 animated:{v15, v17, v19, v21}];
  +[UIAnimator enableAnimation];
}

+ (double)adjustedTranslationForProposedRect:(CGFloat)a3 originalRect:(CGFloat)a4 scaledContentViewBounds:(double)a5
{
  Width = CGRectGetWidth(*&a1);
  v30.origin.x = a9;
  v30.origin.y = a10;
  v30.size.width = a11;
  v30.size.height = a12;
  v21 = a5;
  if (Width < CGRectGetWidth(v30))
  {
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
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
    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    v25 = MaxX - CGRectGetWidth(v34);
    if (MinX >= v25)
    {
      v21 = v25;
    }

    else
    {
      v21 = MinX;
    }
  }

  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  Height = CGRectGetHeight(v35);
  v36.origin.x = a9;
  v36.origin.y = a10;
  v36.size.width = a11;
  v36.size.height = a12;
  if (Height < CGRectGetHeight(v36))
  {
    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
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
    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    CGRectGetHeight(v40);
  }

  return v21 - a5;
}

- (void)userDidPanSelectionRect:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if (v5 == 3)
  {
    objc_storeStrong(&self->_scaledScrollViewLayoutRectsInSelf, self->_inFlightScaledScrollViewLayoutRectsInSelf);
  }

  else if (v5 == 2)
  {
    [v4 translationInView:self];
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
  v3 = [(_SSSPDFPageMiniMapView *)self pageView];

  if (v3)
  {
    v4 = [(_SSSPDFPageMiniMapView *)self pageView];
    [(PDFView *)self->_pdfView bounds];
    [v4 convertRect:self->_pdfView fromView:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [(_SSSPDFPageMiniMapView *)self pageView];
    [v13 bounds];
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

- (CGRect)convertRectFromPageViewSpace:(CGRect)a3 toView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(_SSSPDFPageMiniMapView *)self pageView];

  if (v9 && v10)
  {
    memset(&v34, 0, sizeof(v34));
    v11 = objc_opt_class();
    [v9 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(_SSSPDFPageMiniMapView *)self pageView];
    [v20 bounds];
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

- (CGRect)convertRectToPageViewSpace:(CGRect)a3 fromView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(_SSSPDFPageMiniMapView *)self pageView];

  if (v9 && v10)
  {
    memset(&v34, 0, sizeof(v34));
    v11 = objc_opt_class();
    v12 = [(_SSSPDFPageMiniMapView *)self pageView];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v9 bounds];
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

+ (CGAffineTransform)_transformToConvertToRect:(SEL)a3 fromRect:(CGRect)a4
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  result = CGRectIsEmpty(a4);
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
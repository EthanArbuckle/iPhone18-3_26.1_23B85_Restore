@interface _SSSPDFThumbnailView
- (BOOL)shouldShowThumbnailOptionView;
- (BOOL)shouldUseMiniMapView;
- (CGRect)scrollViewVisibleRectInPDFView;
- (id)_thumbnailIconsView;
- (void)_updateThumbnailBackgroundView;
- (void)createMiniMapView;
- (void)createThumbnailView;
- (void)layoutSubviews;
- (void)setPdfView:(id)a3;
- (void)setScrollViewVisibleRectInPDFView:(CGRect)a3;
@end

@implementation _SSSPDFThumbnailView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _SSSPDFThumbnailView;
  [(_SSSPDFThumbnailView *)&v5 layoutSubviews];
  miniMapView = self->_miniMapView;
  [(_SSSPDFThumbnailView *)self bounds];
  [(_SSSPDFPageMiniMapView *)miniMapView setFrame:?];
  thumbnailView = self->_thumbnailView;
  [(_SSSPDFThumbnailView *)self bounds];
  [(PDFThumbnailView *)thumbnailView setFrame:?];
  [(_SSSPDFThumbnailView *)self _updateThumbnailBackgroundView];
}

- (void)_updateThumbnailBackgroundView
{
  v10 = [(_SSSPDFThumbnailView *)self _thumbnailIconsView];
  v3 = _SSScreenshotsRedesign2025Enabled();
  v4 = v10;
  if (v3 && v10)
  {
    if (!self->_PDFThumbnailBackgroundView)
    {
      v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      PDFThumbnailBackgroundView = self->_PDFThumbnailBackgroundView;
      self->_PDFThumbnailBackgroundView = v5;

      [(UIView *)self->_PDFThumbnailBackgroundView _sss_setGlassBackground];
      [(UIView *)self->_PDFThumbnailBackgroundView _sss_setConcentricCornerMaskingConfiguration];
      v7 = [(UIView *)self->_PDFThumbnailBackgroundView layer];
      [v7 setCornerCurve:kCACornerCurveContinuous];

      v8 = [(UIView *)self->_PDFThumbnailBackgroundView layer];
      [v8 setCornerRadius:8.0];

      [(_SSSPDFThumbnailView *)self insertSubview:self->_PDFThumbnailBackgroundView belowSubview:self->_thumbnailView];
      v4 = v10;
    }

    [v4 contentRect];
    v9 = self->_PDFThumbnailBackgroundView;
    v13 = CGRectInset(v12, -6.0, -6.0);
    [(UIView *)v9 setFrame:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
  }

  _objc_release_x1();
}

- (void)setPdfView:(id)a3
{
  v5 = a3;
  if (self->_pdfView != v5 || ![(_SSSPDFThumbnailView *)self isShowingThumbnailOptionView])
  {
    objc_storeStrong(&self->_pdfView, a3);
    [(_SSSPDFPageMiniMapView *)self->_miniMapView removeFromSuperview];
    [(PDFThumbnailView *)self->_thumbnailView removeFromSuperview];
    if (self->_pdfView && [(_SSSPDFThumbnailView *)self shouldShowThumbnailOptionView])
    {
      if ([(_SSSPDFThumbnailView *)self shouldUseMiniMapView])
      {
        [(_SSSPDFThumbnailView *)self createMiniMapView];
      }

      else
      {
        [(_SSSPDFThumbnailView *)self createThumbnailView];
      }
    }

    [(_SSSPDFThumbnailView *)self setNeedsLayout];
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
    [(_SSSPDFPageMiniMapView *)self->_miniMapView setScrollViewVisibleRectInPDFView:x, y, width, height];

    [(_SSSPDFThumbnailView *)self setNeedsLayout];
  }
}

- (BOOL)shouldShowThumbnailOptionView
{
  v2 = [(PDFView *)self->_pdfView document];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)shouldUseMiniMapView
{
  v2 = [(PDFView *)self->_pdfView document];
  v3 = [v2 pageCount] == 1;

  return v3;
}

- (void)createThumbnailView
{
  v3 = objc_alloc_init(PDFThumbnailView);
  thumbnailView = self->_thumbnailView;
  self->_thumbnailView = v3;

  [(PDFThumbnailView *)self->_thumbnailView setPDFView:self->_pdfView];
  [(PDFThumbnailView *)self->_thumbnailView setThumbnailSize:45.0, 45.0];
  [(PDFThumbnailView *)self->_thumbnailView setLayoutMode:0];
  v5 = self->_thumbnailView;
  v6 = +[UIColor clearColor];
  [(PDFThumbnailView *)v5 setBackgroundColor:v6];

  v8 = [(_SSSPDFThumbnailView *)self _thumbnailIconsView];
  if (v8)
  {
    [v8 setIconScale:1.0];
    [v8 setIconConfigurationHandler:&stru_1000BADB8];
    [v8 setPrefersIconOverlaySelection:1];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_thumbnailViewDidChangeContentRectNotification:" name:@"PDFThumbnailIconsViewContentRectDidChangeNotification" object:v8];
  }

  [(_SSSPDFThumbnailView *)self addSubview:self->_thumbnailView];
}

- (void)createMiniMapView
{
  v3 = objc_alloc_init(_SSSPDFPageMiniMapView);
  miniMapView = self->_miniMapView;
  self->_miniMapView = v3;

  [(_SSSPDFPageMiniMapView *)self->_miniMapView setPdfView:self->_pdfView];
  [(_SSSPDFPageMiniMapView *)self->_miniMapView setPageIndex:0];
  [(_SSSPDFPageMiniMapView *)self->_miniMapView setScrollViewVisibleRectInPDFView:self->_scrollViewVisibleRectInPDFView.origin.x, self->_scrollViewVisibleRectInPDFView.origin.y, self->_scrollViewVisibleRectInPDFView.size.width, self->_scrollViewVisibleRectInPDFView.size.height];
  v5 = self->_miniMapView;

  [(_SSSPDFThumbnailView *)self addSubview:v5];
}

- (id)_thumbnailIconsView
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(PDFThumbnailView *)self->_thumbnailView thumbnailIconsView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

@end
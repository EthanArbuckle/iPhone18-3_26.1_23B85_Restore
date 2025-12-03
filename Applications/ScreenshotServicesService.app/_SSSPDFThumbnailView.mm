@interface _SSSPDFThumbnailView
- (BOOL)shouldShowThumbnailOptionView;
- (BOOL)shouldUseMiniMapView;
- (CGRect)scrollViewVisibleRectInPDFView;
- (id)_thumbnailIconsView;
- (void)_updateThumbnailBackgroundView;
- (void)createMiniMapView;
- (void)createThumbnailView;
- (void)layoutSubviews;
- (void)setPdfView:(id)view;
- (void)setScrollViewVisibleRectInPDFView:(CGRect)view;
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
  _thumbnailIconsView = [(_SSSPDFThumbnailView *)self _thumbnailIconsView];
  v3 = _SSScreenshotsRedesign2025Enabled();
  v4 = _thumbnailIconsView;
  if (v3 && _thumbnailIconsView)
  {
    if (!self->_PDFThumbnailBackgroundView)
    {
      v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      PDFThumbnailBackgroundView = self->_PDFThumbnailBackgroundView;
      self->_PDFThumbnailBackgroundView = v5;

      [(UIView *)self->_PDFThumbnailBackgroundView _sss_setGlassBackground];
      [(UIView *)self->_PDFThumbnailBackgroundView _sss_setConcentricCornerMaskingConfiguration];
      layer = [(UIView *)self->_PDFThumbnailBackgroundView layer];
      [layer setCornerCurve:kCACornerCurveContinuous];

      layer2 = [(UIView *)self->_PDFThumbnailBackgroundView layer];
      [layer2 setCornerRadius:8.0];

      [(_SSSPDFThumbnailView *)self insertSubview:self->_PDFThumbnailBackgroundView belowSubview:self->_thumbnailView];
      v4 = _thumbnailIconsView;
    }

    [v4 contentRect];
    v9 = self->_PDFThumbnailBackgroundView;
    v13 = CGRectInset(v12, -6.0, -6.0);
    [(UIView *)v9 setFrame:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
  }

  _objc_release_x1();
}

- (void)setPdfView:(id)view
{
  viewCopy = view;
  if (self->_pdfView != viewCopy || ![(_SSSPDFThumbnailView *)self isShowingThumbnailOptionView])
  {
    objc_storeStrong(&self->_pdfView, view);
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
    [(_SSSPDFPageMiniMapView *)self->_miniMapView setScrollViewVisibleRectInPDFView:x, y, width, height];

    [(_SSSPDFThumbnailView *)self setNeedsLayout];
  }
}

- (BOOL)shouldShowThumbnailOptionView
{
  document = [(PDFView *)self->_pdfView document];
  v3 = document != 0;

  return v3;
}

- (BOOL)shouldUseMiniMapView
{
  document = [(PDFView *)self->_pdfView document];
  v3 = [document pageCount] == 1;

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

  _thumbnailIconsView = [(_SSSPDFThumbnailView *)self _thumbnailIconsView];
  if (_thumbnailIconsView)
  {
    [_thumbnailIconsView setIconScale:1.0];
    [_thumbnailIconsView setIconConfigurationHandler:&stru_1000BADB8];
    [_thumbnailIconsView setPrefersIconOverlaySelection:1];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_thumbnailViewDidChangeContentRectNotification:" name:@"PDFThumbnailIconsViewContentRectDidChangeNotification" object:_thumbnailIconsView];
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
    thumbnailIconsView = [(PDFThumbnailView *)self->_thumbnailView thumbnailIconsView];
  }

  else
  {
    thumbnailIconsView = 0;
  }

  return thumbnailIconsView;
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
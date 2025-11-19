@interface UGCPOIEnrichmentHeaderView
- (UGCPOIEnrichmentHeaderView)initWithFrame:(CGRect)a3;
- (void)_cancelBrandIconDownload;
- (void)_refreshContent;
- (void)_setBrandIcon:(id)a3 fallbackToMapItemIcon:(BOOL)a4;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_startBrandIconDownload;
- (void)_updateIcon;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHideSummaryText:(BOOL)a3;
- (void)setMapItem:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UGCPOIEnrichmentHeaderView

- (void)_setBrandIcon:(id)a3 fallbackToMapItemIcon:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else if (v4)
  {
    mapItem = self->_mapItem;
    v9 = [(UGCPOIEnrichmentHeaderView *)self traitCollection];
    [v9 displayScale];
    v7 = [MKIconManager imageForMapItem:mapItem forScale:0 fallbackToBundleIcon:?];
  }

  else
  {
    v7 = 0;
  }

  [(UIImageView *)self->_headerImageView setImage:v7];
}

- (void)_startBrandIconDownload
{
  if (self->_brandIconURL)
  {
    if (!self->_isDownloadingBrandIcon)
    {
      objc_initWeak(&location, self);
      v3 = self->_brandIconURL;
      self->_isDownloadingBrandIcon = 1;
      [(UGCPOIEnrichmentHeaderView *)self _setBrandIcon:0 fallbackToMapItemIcon:0];
      v4 = +[MKAppImageManager sharedImageManager];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100DCD1C0;
      v6[3] = &unk_101654E60;
      objc_copyWeak(&v8, &location);
      v5 = v3;
      v7 = v5;
      [v4 loadAppImageAtURL:v5 completionHandler:v6];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_cancelBrandIconDownload
{
  if (self->_brandIconURL && self->_isDownloadingBrandIcon)
  {
    self->_isDownloadingBrandIcon = 0;
    v3 = +[MKAppImageManager sharedImageManager];
    [v3 cancelLoadAppImageAtURL:self->_brandIconURL];
  }
}

- (void)_updateIcon
{
  v3 = [(UGCPOIEnrichmentHeaderView *)self traitCollection];
  [v3 displayScale];
  v5 = v4;

  v6 = [(MKMapItem *)self->_mapItem _geoMapItem];
  obj = [v6 _bestAvatarBrandIconURLForSize:1 allowSmaller:{v5 * 40.0, v5 * 40.0}];

  brandIconURL = obj;
  if (obj != self->_brandIconURL)
  {
    if (([(NSURL *)obj isEqual:?]& 1) == 0)
    {
      [(UGCPOIEnrichmentHeaderView *)self _cancelBrandIconDownload];
      objc_storeStrong(&self->_brandIconURL, obj);
      [(UGCPOIEnrichmentHeaderView *)self _startBrandIconDownload];
    }

    brandIconURL = self->_brandIconURL;
  }

  if (!brandIconURL)
  {
    [(UGCPOIEnrichmentHeaderView *)self _setBrandIcon:0 fallbackToMapItemIcon:1];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = UGCPOIEnrichmentHeaderView;
  v4 = a3;
  [(UGCPOIEnrichmentHeaderView *)&v10 traitCollectionDidChange:v4];
  v5 = [(UGCPOIEnrichmentHeaderView *)self traitCollection:v10.receiver];
  [v5 displayScale];
  v7 = v6;
  [v4 displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    [(UGCPOIEnrichmentHeaderView *)self _refreshContent];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = UGCPOIEnrichmentHeaderView;
  [(UGCPOIEnrichmentHeaderView *)&v4 layoutSubviews];
  [(UIImageView *)self->_headerImageView setClipsToBounds:1];
  [(UIImageView *)self->_headerImageView bounds];
  [(UIImageView *)self->_headerImageView _setCornerRadius:v3 * 0.5];
}

- (void)_refreshContent
{
  mapItem = self->_mapItem;
  if (mapItem)
  {
    v4 = [(MKMapItem *)mapItem name];
    [(UILabel *)self->_titleLabel setText:v4];

    if (self->_hideSummaryText)
    {
      [(UILabel *)self->_secondaryLabel setText:0];
    }

    else
    {
      v5 = [(MKMapItem *)self->_mapItem _shortAddress];
      [(UILabel *)self->_secondaryLabel setText:v5];
    }

    [(UGCPOIEnrichmentHeaderView *)self _updateIcon];
  }
}

- (void)setHideSummaryText:(BOOL)a3
{
  if (self->_hideSummaryText != a3)
  {
    self->_hideSummaryText = a3;
    [(UGCPOIEnrichmentHeaderView *)self _refreshContent];
  }
}

- (void)setMapItem:(id)a3
{
  v5 = a3;
  if (self->_mapItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mapItem, a3);
    [(UGCPOIEnrichmentHeaderView *)self _refreshContent];
    v5 = v6;
  }
}

- (void)_setupConstraints
{
  v3 = [[MUSizeLayout alloc] initWithItem:self->_headerImageView size:{40.0, 40.0}];
  v4 = [MUStackLayout alloc];
  v5 = [(UGCPOIEnrichmentHeaderView *)self layoutMarginsGuide];
  v6 = [v4 initWithContainer:v5 axis:1];

  titleLabel = self->_titleLabel;
  v11[0] = self->_headerImageView;
  v11[1] = titleLabel;
  v11[2] = self->_secondaryLabel;
  v8 = [NSArray arrayWithObjects:v11 count:3];
  [v6 setArrangedLayoutItems:v8];

  [v6 setAlignment:2 forArrangedLayoutItem:self->_headerImageView];
  [v6 setAlignmentBoundsContent:1 forArrangedLayoutItem:self->_headerImageView];
  [v6 setPadding:self->_titleLabel forArrangedLayoutItem:{4.0, 0.0, 0.0, 0.0}];
  v10[0] = v3;
  v10[1] = v6;
  v9 = [NSArray arrayWithObjects:v10 count:2];
  [NSLayoutConstraint _mapsui_activateLayouts:v9];
}

- (void)_setupSubviews
{
  [(UGCPOIEnrichmentHeaderView *)self setDirectionalLayoutMargins:16.0, 0.0, 16.0, 0.0];
  v3 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  headerImageView = self->_headerImageView;
  self->_headerImageView = v7;

  [(UIImageView *)self->_headerImageView setAccessibilityIdentifier:@"HeaderImageView"];
  v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  v11 = +[UGCFontManager poiEnrichmentHeaderViewTitleFont];
  [(UILabel *)self->_titleLabel setFont:v11];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v12;

  v14 = +[UGCFontManager poiEnrichmentHeaderViewSecondaryTitleFont];
  [(UILabel *)self->_secondaryLabel setFont:v14];

  v15 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_secondaryLabel setTextColor:v15];

  [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
  [(UILabel *)self->_secondaryLabel setTextAlignment:1];
  [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
  [(UGCPOIEnrichmentHeaderView *)self addSubview:self->_headerImageView];
  [(UGCPOIEnrichmentHeaderView *)self addSubview:self->_titleLabel];
  v16 = self->_secondaryLabel;

  [(UGCPOIEnrichmentHeaderView *)self addSubview:v16];
}

- (void)dealloc
{
  [(UGCPOIEnrichmentHeaderView *)self _cancelBrandIconDownload];
  v3.receiver = self;
  v3.super_class = UGCPOIEnrichmentHeaderView;
  [(UGCPOIEnrichmentHeaderView *)&v3 dealloc];
}

- (UGCPOIEnrichmentHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UGCPOIEnrichmentHeaderView;
  v3 = [(UGCPOIEnrichmentHeaderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UGCPOIEnrichmentHeaderView *)v3 setAccessibilityIdentifier:@"UGCPOIEnrichmentHeader"];
    [(UGCPOIEnrichmentHeaderView *)v4 _setupSubviews];
    [(UGCPOIEnrichmentHeaderView *)v4 _setupConstraints];
  }

  return v4;
}

@end
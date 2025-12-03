@interface UGCPOIEnrichmentHeaderView
- (UGCPOIEnrichmentHeaderView)initWithFrame:(CGRect)frame;
- (void)_cancelBrandIconDownload;
- (void)_refreshContent;
- (void)_setBrandIcon:(id)icon fallbackToMapItemIcon:(BOOL)itemIcon;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_startBrandIconDownload;
- (void)_updateIcon;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHideSummaryText:(BOOL)text;
- (void)setMapItem:(id)item;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UGCPOIEnrichmentHeaderView

- (void)_setBrandIcon:(id)icon fallbackToMapItemIcon:(BOOL)itemIcon
{
  itemIconCopy = itemIcon;
  iconCopy = icon;
  v10 = iconCopy;
  if (iconCopy)
  {
    v7 = iconCopy;
  }

  else if (itemIconCopy)
  {
    mapItem = self->_mapItem;
    traitCollection = [(UGCPOIEnrichmentHeaderView *)self traitCollection];
    [traitCollection displayScale];
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
  traitCollection = [(UGCPOIEnrichmentHeaderView *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  obj = [_geoMapItem _bestAvatarBrandIconURLForSize:1 allowSmaller:{v5 * 40.0, v5 * 40.0}];

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

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = UGCPOIEnrichmentHeaderView;
  changeCopy = change;
  [(UGCPOIEnrichmentHeaderView *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(UGCPOIEnrichmentHeaderView *)self traitCollection:v10.receiver];
  [v5 displayScale];
  v7 = v6;
  [changeCopy displayScale];
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
    name = [(MKMapItem *)mapItem name];
    [(UILabel *)self->_titleLabel setText:name];

    if (self->_hideSummaryText)
    {
      [(UILabel *)self->_secondaryLabel setText:0];
    }

    else
    {
      _shortAddress = [(MKMapItem *)self->_mapItem _shortAddress];
      [(UILabel *)self->_secondaryLabel setText:_shortAddress];
    }

    [(UGCPOIEnrichmentHeaderView *)self _updateIcon];
  }
}

- (void)setHideSummaryText:(BOOL)text
{
  if (self->_hideSummaryText != text)
  {
    self->_hideSummaryText = text;
    [(UGCPOIEnrichmentHeaderView *)self _refreshContent];
  }
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  if (self->_mapItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_mapItem, item);
    [(UGCPOIEnrichmentHeaderView *)self _refreshContent];
    itemCopy = v6;
  }
}

- (void)_setupConstraints
{
  v3 = [[MUSizeLayout alloc] initWithItem:self->_headerImageView size:{40.0, 40.0}];
  v4 = [MUStackLayout alloc];
  layoutMarginsGuide = [(UGCPOIEnrichmentHeaderView *)self layoutMarginsGuide];
  v6 = [v4 initWithContainer:layoutMarginsGuide axis:1];

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

- (UGCPOIEnrichmentHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UGCPOIEnrichmentHeaderView;
  v3 = [(UGCPOIEnrichmentHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
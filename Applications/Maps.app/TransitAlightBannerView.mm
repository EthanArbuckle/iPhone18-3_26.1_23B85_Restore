@interface TransitAlightBannerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (TransitAlightBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation;
- (void)updateFromBannerItem;
@end

@implementation TransitAlightBannerView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  cachedHeight = self->_cachedHeight;
  if (cachedHeight == -1.0 || self->_calculatedWidth != fits.width)
  {
    [(TransitAlightBannerView *)self _maps_compressedSizeForWidth:0 withBlock:fits.width];
    v8 = v7;
    if ([(MapsBannerView *)self aperturePresentation])
    {
      contentView = [(MapsBannerView *)self contentView];
      [contentView _maps_compressedSizeForWidth:0 withBlock:width];
      v8 = v10 + 17.0;
    }

    if (v8 <= height)
    {
      self->_cachedHeight = v8;
      self->_calculatedWidth = width;
      cachedHeight = self->_cachedHeight;
    }

    else
    {
      v11 = sub_100032C3C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        item = [(MapsBannerView *)self item];
        v21.width = width;
        v21.height = height;
        v13 = NSStringFromCGSize(v21);
        v15 = 138412802;
        v16 = item;
        v17 = 2112;
        v18 = v13;
        v19 = 2048;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Banner: %@ wasn't able to draw correctly in the provided space: %@ desired height: %f", &v15, 0x20u);
      }

      cachedHeight = height;
    }
  }

  v14 = width;
  result.height = cachedHeight;
  result.width = v14;
  return result;
}

- (void)updateFromBannerItem
{
  item = [(MapsBannerView *)self item];
  v4 = +[MNNavigationService sharedService];
  route = [v4 route];

  alightMessage = [item alightMessage];
  v28 = route;
  v7 = [route stepAtIndex:{objc_msgSend(alightMessage, "stepIndex")}];

  v27 = v7;
  nextAlightingStep = [v7 nextAlightingStep];
  artwork = [item artwork];
  v10 = artwork;
  if (artwork)
  {
    alternateArtwork = artwork;
  }

  else
  {
    transitLine = [nextAlightingStep transitLine];
    artwork2 = [transitLine artwork];
    v14 = artwork2;
    if (artwork2)
    {
      alternateArtwork = artwork2;
    }

    else
    {
      transitLine2 = [nextAlightingStep transitLine];
      alternateArtwork = [transitLine2 alternateArtwork];
    }
  }

  v16 = [[MKSizedTransitArtwork alloc] initWithArtwork:alternateArtwork shieldSize:7 artworkCache:0];
  [(MKArtworkImageView *)self->_imageView setImageSource:v16];

  title = [item title];
  v31 = NSFontAttributeName;
  font = [(UILabel *)self->_titleLabel font];
  v32 = font;
  v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v20 = [NSAttributedString _mapkit_attributedStringForComposedString:title defaultAttributes:v19];
  [(UILabel *)self->_titleLabel setAttributedText:v20];

  subtitle = [item subtitle];
  v29 = NSFontAttributeName;
  font2 = [(UILabel *)self->_descriptionLabel font];
  v30 = font2;
  v23 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v24 = [NSAttributedString _mapkit_attributedStringForComposedString:subtitle defaultAttributes:v23];
  [(UILabel *)self->_descriptionLabel setAttributedText:v24];

  attributedText = [(UILabel *)self->_descriptionLabel attributedText];
  v26 = [attributedText length] == 0;

  [(UILabel *)self->_descriptionLabel setHidden:v26];
  self->_cachedHeight = -1.0;
}

- (TransitAlightBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  v37.receiver = self;
  v37.super_class = TransitAlightBannerView;
  v6 = [(MapsBannerView *)&v37 initWithTarget:target item:item aperturePresentation:?];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(TransitAlightBannerView *)v6 setAccessibilityIdentifier:v8];

    [(TransitAlightBannerView *)v6 setOverrideUserInterfaceStyle:2];
    v9 = objc_opt_new();
    imageView = v6->_imageView;
    v6->_imageView = v9;

    [(MKArtworkImageView *)v6->_imageView setAccessibilityIdentifier:@"ImageView"];
    [(MKArtworkImageView *)v6->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKArtworkImageView *)v6->_imageView setContentMode:1];
    v11 = objc_opt_new();
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v11;

    [(UILabel *)v6->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(UILabel *)v6->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v6->_titleLabel setNumberOfLines:2];
    v13 = +[UIColor labelColor];
    v14 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
    v15 = [v13 resolvedColorWithTraitCollection:v14];
    [(UILabel *)v6->_titleLabel setTextColor:v15];

    v16 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle2 weight:UIFontWeightBold];
    [(UILabel *)v6->_titleLabel setFont:v16];

    v17 = objc_opt_new();
    descriptionLabel = v6->_descriptionLabel;
    v6->_descriptionLabel = v17;

    [(UILabel *)v6->_descriptionLabel setAccessibilityIdentifier:@"DescriptionLabel"];
    [(UILabel *)v6->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v6->_descriptionLabel setNumberOfLines:4];
    v19 = +[UIColor secondaryLabelColor];
    v20 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
    v21 = [v19 resolvedColorWithTraitCollection:v20];
    [(UILabel *)v6->_descriptionLabel setTextColor:v21];

    v22 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle2 weight:UIFontWeightMedium];
    [(UILabel *)v6->_descriptionLabel setFont:v22];

    widthAnchor = [(MKArtworkImageView *)v6->_imageView widthAnchor];
    v24 = [widthAnchor constraintGreaterThanOrEqualToConstant:36.0];
    v38[0] = v24;
    heightAnchor = [(MKArtworkImageView *)v6->_imageView heightAnchor];
    v26 = [heightAnchor constraintEqualToConstant:36.0];
    v38[1] = v26;
    v27 = [NSArray arrayWithObjects:v38 count:2];
    [NSLayoutConstraint activateConstraints:v27];

    v28 = [[MapsBannerContent alloc] initWithHeaderView:0 iconView:v6->_imageView leadingTopView:v6->_titleLabel trailingTopView:0 bottomView:v6->_descriptionLabel footerView:0];
    contentView = [(MapsBannerView *)v6 contentView];
    [contentView setContent:v28];

    if (presentationCopy)
    {
      _tightBoundingBoxLayoutGuide = [(UILabel *)v6->_titleLabel _tightBoundingBoxLayoutGuide];
      topAnchor = [_tightBoundingBoxLayoutGuide topAnchor];
      sBUISA_systemApertureObstructedAreaLayoutGuide = [(TransitAlightBannerView *)v6 SBUISA_systemApertureObstructedAreaLayoutGuide];
      bottomAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide bottomAnchor];
      v34 = [topAnchor constraintEqualToAnchor:bottomAnchor];

      LODWORD(v35) = 1144750080;
      [v34 setPriority:v35];
      [v34 setActive:1];
    }

    [(TransitAlightBannerView *)v6 updateFromBannerItem];
    v6->_cachedHeight = -1.0;
    v6->_calculatedWidth = -1.0;
  }

  return v6;
}

@end
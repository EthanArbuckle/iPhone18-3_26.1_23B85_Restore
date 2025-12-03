@interface TrafficAlertBannerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (TrafficAlertBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation;
- (void)updateFromBannerItem;
@end

@implementation TrafficAlertBannerView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  cachedHeight = self->_cachedHeight;
  if (cachedHeight == -1.0 || self->_calculatedWidth != fits.width)
  {
    if ([(MapsBannerView *)self aperturePresentation])
    {
      sBUISA_systemApertureObstructedAreaLayoutGuide = [(TrafficAlertBannerView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
      [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
      MaxY = CGRectGetMaxY(v25);
      contentView = [(MapsBannerView *)self contentView];
      [contentView _maps_compressedSizeForWidth:0 withBlock:width];
      v11 = v10 + 17.0 + MaxY;
    }

    else
    {
      [(TrafficAlertBannerView *)self _maps_compressedSizeForWidth:0 withBlock:width];
      v11 = v12;
    }

    if (v11 <= height)
    {
      self->_cachedHeight = v11;
      self->_calculatedWidth = width;
      cachedHeight = self->_cachedHeight;
    }

    else
    {
      v13 = sub_100032C3C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        item = [(MapsBannerView *)self item];
        v23.width = width;
        v23.height = height;
        v15 = NSStringFromCGSize(v23);
        v17 = 138412802;
        v18 = item;
        v19 = 2112;
        v20 = v15;
        v21 = 2048;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Banner: %@ wasn't able to draw correctly in the provided space: %@ desired height: %f", &v17, 0x20u);
      }

      cachedHeight = height;
    }
  }

  v16 = width;
  result.height = cachedHeight;
  result.width = v16;
  return result;
}

- (void)updateFromBannerItem
{
  item = [(MapsBannerView *)self item];
  text = [(UILabel *)self->_titleLabel text];
  title = [item title];
  icon3 = text;
  v6 = title;
  v7 = &OBJC_IVAR___RidesharingConfirmedRideViewController__feedbackHeaderView;
  if (icon3 | v6)
  {
    v8 = [icon3 isEqual:v6];

    if (!v8)
    {
      goto LABEL_10;
    }
  }

  text2 = [(UILabel *)self->_descriptionLabel text];
  subtitle = [item subtitle];
  v11 = text2;
  v12 = subtitle;
  if (v11 | v12)
  {
    v13 = [v11 isEqual:v12];

    if (!v13)
    {

LABEL_10:
      goto LABEL_11;
    }
  }

  image = [(MKArtworkImageView *)self->_artworkImageView image];
  icon = [item icon];
  v16 = image;
  v17 = icon;
  if (!(v16 | v17))
  {

LABEL_18:
    goto LABEL_19;
  }

  v18 = v17;
  v19 = [v16 isEqual:v17];

  v7 = &OBJC_IVAR___RidesharingConfirmedRideViewController__feedbackHeaderView;
  if ((v19 & 1) == 0)
  {
LABEL_11:
    title2 = [item title];
    [(UILabel *)self->_titleLabel setText:title2];

    title3 = [item title];
    if (title3)
    {
      title4 = [item title];
      -[UILabel setHidden:](self->_titleLabel, "setHidden:", [title4 length] == 0);
    }

    else
    {
      [(UILabel *)self->_titleLabel setHidden:1];
    }

    subtitle2 = [item subtitle];
    [(UILabel *)self->_descriptionLabel setText:subtitle2];

    subtitle3 = [item subtitle];
    if (subtitle3)
    {
      subtitle4 = [item subtitle];
      -[UILabel setHidden:](self->_descriptionLabel, "setHidden:", [subtitle4 length] == 0);
    }

    else
    {
      [(UILabel *)self->_descriptionLabel setHidden:1];
    }

    self->_cachedHeight = -1.0;
    icon2 = [item icon];
    v27 = v7[876];
    [*(&self->super.super.super.super.isa + v27) setImageSource:icon2];

    icon3 = [item icon];
    [*(&self->super.super.super.super.isa + v27) setHidden:icon3 == 0];
    goto LABEL_18;
  }

LABEL_19:
}

- (TrafficAlertBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  v37.receiver = self;
  v37.super_class = TrafficAlertBannerView;
  v6 = [(MapsBannerView *)&v37 initWithTarget:target item:item aperturePresentation:?];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(TrafficAlertBannerView *)v6 setAccessibilityIdentifier:v8];

    v9 = objc_alloc_init(MKArtworkImageView);
    artworkImageView = v6->_artworkImageView;
    v6->_artworkImageView = v9;

    [(MKArtworkImageView *)v6->_artworkImageView setAccessibilityIdentifier:@"ArtworkImageView"];
    [(MKArtworkImageView *)v6->_artworkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKArtworkImageView *)v6->_artworkImageView setContentMode:1];
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

    v16 = [UIFont systemFontOfSize:26.0 weight:UIFontWeightHeavy];
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

    v22 = [UIFont systemFontOfSize:26.0 weight:UIFontWeightMedium];
    [(UILabel *)v6->_descriptionLabel setFont:v22];

    widthAnchor = [(MKArtworkImageView *)v6->_artworkImageView widthAnchor];
    v24 = [widthAnchor constraintEqualToConstant:46.0];
    v38[0] = v24;
    heightAnchor = [(MKArtworkImageView *)v6->_artworkImageView heightAnchor];
    v26 = [heightAnchor constraintEqualToConstant:46.0];
    v38[1] = v26;
    v27 = [NSArray arrayWithObjects:v38 count:2];
    [NSLayoutConstraint activateConstraints:v27];

    v28 = [[MapsBannerContent alloc] initWithHeaderView:0 iconView:v6->_artworkImageView leadingTopView:v6->_titleLabel trailingTopView:0 bottomView:v6->_descriptionLabel footerView:0];
    contentView = [(MapsBannerView *)v6 contentView];
    [contentView setContent:v28];

    if (presentationCopy)
    {
      _tightBoundingBoxLayoutGuide = [(UILabel *)v6->_titleLabel _tightBoundingBoxLayoutGuide];
      topAnchor = [_tightBoundingBoxLayoutGuide topAnchor];
      sBUISA_systemApertureObstructedAreaLayoutGuide = [(TrafficAlertBannerView *)v6 SBUISA_systemApertureObstructedAreaLayoutGuide];
      bottomAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide bottomAnchor];
      v34 = [topAnchor constraintEqualToAnchor:bottomAnchor];

      LODWORD(v35) = 1144750080;
      [v34 setPriority:v35];
      [v34 setActive:1];
    }

    [(TrafficAlertBannerView *)v6 updateFromBannerItem];
    v6->_cachedHeight = -1.0;
    v6->_calculatedWidth = -1.0;
  }

  return v6;
}

@end
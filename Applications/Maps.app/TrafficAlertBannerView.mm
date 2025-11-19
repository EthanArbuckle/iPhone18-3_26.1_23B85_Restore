@interface TrafficAlertBannerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (TrafficAlertBannerView)initWithTarget:(id)a3 item:(id)a4 aperturePresentation:(BOOL)a5;
- (void)updateFromBannerItem;
@end

@implementation TrafficAlertBannerView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  cachedHeight = self->_cachedHeight;
  if (cachedHeight == -1.0 || self->_calculatedWidth != a3.width)
  {
    if ([(MapsBannerView *)self aperturePresentation])
    {
      v7 = [(TrafficAlertBannerView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
      [v7 layoutFrame];
      MaxY = CGRectGetMaxY(v25);
      v9 = [(MapsBannerView *)self contentView];
      [v9 _maps_compressedSizeForWidth:0 withBlock:width];
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
        v14 = [(MapsBannerView *)self item];
        v23.width = width;
        v23.height = height;
        v15 = NSStringFromCGSize(v23);
        v17 = 138412802;
        v18 = v14;
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
  v28 = [(MapsBannerView *)self item];
  v3 = [(UILabel *)self->_titleLabel text];
  v4 = [v28 title];
  v5 = v3;
  v6 = v4;
  v7 = &OBJC_IVAR___RidesharingConfirmedRideViewController__feedbackHeaderView;
  if (v5 | v6)
  {
    v8 = [v5 isEqual:v6];

    if (!v8)
    {
      goto LABEL_10;
    }
  }

  v9 = [(UILabel *)self->_descriptionLabel text];
  v10 = [v28 subtitle];
  v11 = v9;
  v12 = v10;
  if (v11 | v12)
  {
    v13 = [v11 isEqual:v12];

    if (!v13)
    {

LABEL_10:
      goto LABEL_11;
    }
  }

  v14 = [(MKArtworkImageView *)self->_artworkImageView image];
  v15 = [v28 icon];
  v16 = v14;
  v17 = v15;
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
    v20 = [v28 title];
    [(UILabel *)self->_titleLabel setText:v20];

    v21 = [v28 title];
    if (v21)
    {
      v22 = [v28 title];
      -[UILabel setHidden:](self->_titleLabel, "setHidden:", [v22 length] == 0);
    }

    else
    {
      [(UILabel *)self->_titleLabel setHidden:1];
    }

    v23 = [v28 subtitle];
    [(UILabel *)self->_descriptionLabel setText:v23];

    v24 = [v28 subtitle];
    if (v24)
    {
      v25 = [v28 subtitle];
      -[UILabel setHidden:](self->_descriptionLabel, "setHidden:", [v25 length] == 0);
    }

    else
    {
      [(UILabel *)self->_descriptionLabel setHidden:1];
    }

    self->_cachedHeight = -1.0;
    v26 = [v28 icon];
    v27 = v7[876];
    [*(&self->super.super.super.super.isa + v27) setImageSource:v26];

    v5 = [v28 icon];
    [*(&self->super.super.super.super.isa + v27) setHidden:v5 == 0];
    goto LABEL_18;
  }

LABEL_19:
}

- (TrafficAlertBannerView)initWithTarget:(id)a3 item:(id)a4 aperturePresentation:(BOOL)a5
{
  v5 = a5;
  v37.receiver = self;
  v37.super_class = TrafficAlertBannerView;
  v6 = [(MapsBannerView *)&v37 initWithTarget:a3 item:a4 aperturePresentation:?];
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

    v23 = [(MKArtworkImageView *)v6->_artworkImageView widthAnchor];
    v24 = [v23 constraintEqualToConstant:46.0];
    v38[0] = v24;
    v25 = [(MKArtworkImageView *)v6->_artworkImageView heightAnchor];
    v26 = [v25 constraintEqualToConstant:46.0];
    v38[1] = v26;
    v27 = [NSArray arrayWithObjects:v38 count:2];
    [NSLayoutConstraint activateConstraints:v27];

    v28 = [[MapsBannerContent alloc] initWithHeaderView:0 iconView:v6->_artworkImageView leadingTopView:v6->_titleLabel trailingTopView:0 bottomView:v6->_descriptionLabel footerView:0];
    v29 = [(MapsBannerView *)v6 contentView];
    [v29 setContent:v28];

    if (v5)
    {
      v30 = [(UILabel *)v6->_titleLabel _tightBoundingBoxLayoutGuide];
      v31 = [v30 topAnchor];
      v32 = [(TrafficAlertBannerView *)v6 SBUISA_systemApertureObstructedAreaLayoutGuide];
      v33 = [v32 bottomAnchor];
      v34 = [v31 constraintEqualToAnchor:v33];

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
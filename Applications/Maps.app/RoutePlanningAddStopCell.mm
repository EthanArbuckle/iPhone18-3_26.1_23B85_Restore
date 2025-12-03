@interface RoutePlanningAddStopCell
- (RoutePlanningAddStopCell)init;
- (void)_setEnabled:(BOOL)enabled;
- (void)_updateConstraints;
- (void)_updateFonts;
- (void)_updateIconImage;
- (void)setEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RoutePlanningAddStopCell

- (void)_updateIconImage
{
  v5 = +[GEOFeatureStyleAttributes addStopStyleAttributes];
  traitCollection = [(RoutePlanningAddStopCell *)self traitCollection];
  [traitCollection displayScale];
  v4 = [MKIconManager imageForStyle:v5 size:0 forScale:0 format:?];
  [(UIImageView *)self->_iconView setImage:v4];
}

- (void)_updateConstraints
{
  traitCollection = [(RoutePlanningAddStopCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryExtraExtraExtraLarge);

  v6 = sub_10000FA08(self);
  v7 = 30.0;
  if (v5 == NSOrderedAscending)
  {
    v7 = 20.0;
  }

  if (v6 == 5)
  {
    v8 = 16.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = _UISolariumEnabled();
  v10 = sub_10000FA08(self);
  v11 = 10.0;
  if (v10 == 5)
  {
    v12 = 9.0;
  }

  else
  {
    v11 = 16.0;
    v12 = 14.0;
  }

  if (v9)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = _UISolariumEnabled();
  v15 = sub_10000FA08(self);
  v16 = 12.0;
  if (v15 == 5)
  {
    v16 = 8.0;
    v17 = 9.0;
  }

  else
  {
    v17 = 14.0;
  }

  if (!v14)
  {
    v16 = v17;
  }

  [(NSLayoutConstraint *)self->_imageContainerViewWidthConstraint setConstant:v13 + v16 + v8];
  [(NSLayoutConstraint *)self->_iconViewWidthConstraint setConstant:v8];
  iconViewHeightConstraint = self->_iconViewHeightConstraint;

  [(NSLayoutConstraint *)iconViewHeightConstraint setConstant:v8];
}

- (void)_updateFonts
{
  if (_UISolariumEnabled())
  {
    v3 = sub_10000FA08(self);
    v4 = &UIFontWeightSemibold;
    if (v3 != 5)
    {
      v4 = &UIFontWeightMedium;
    }

    v5 = *v4;
    traitCollection = [(RoutePlanningAddStopCell *)self traitCollection];
    v6 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v6];
    v8 = [v7 _mapkit_fontWithWeight:v5];
    [(UILabel *)self->_titleLabel setFont:v8];
  }

  else
  {
    traitCollection = [(RoutePlanningAddStopCell *)self traitCollection];
    v6 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v6];
    [(UILabel *)self->_titleLabel setFont:v7];
  }
}

- (void)_setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  if (enabled)
  {
    v4 = +[UIColor systemBlueColor];
    [(UIImageView *)self->_iconView setTintColor:v4];

    +[UIColor systemBlueColor];
  }

  else
  {
    v5 = +[UIColor tertiaryLabelColor];
    [(UIImageView *)self->_iconView setTintColor:v5];

    +[UIColor tertiaryLabelColor];
  }
  v6 = ;
  [(UILabel *)self->_titleLabel setTextColor:v6];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    [(RoutePlanningAddStopCell *)self _setEnabled:?];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = RoutePlanningAddStopCell;
  [(RoutePlanningAddStopCell *)&v13 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  traitCollection = [(RoutePlanningAddStopCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(RoutePlanningAddStopCell *)self _updateFonts];
    [(RoutePlanningAddStopCell *)self _updateConstraints];
  }

  [changeCopy displayScale];
  v9 = v8;
  traitCollection2 = [(RoutePlanningAddStopCell *)self traitCollection];
  [traitCollection2 displayScale];
  v12 = vabdd_f64(v9, v11);

  if (v12 > 2.22044605e-16)
  {
    [(RoutePlanningAddStopCell *)self _updateIconImage];
  }
}

- (RoutePlanningAddStopCell)init
{
  v74.receiver = self;
  v74.super_class = RoutePlanningAddStopCell;
  v2 = [(RoutePlanningAddStopCell *)&v74 initWithStyle:0 reuseIdentifier:0];
  if (v2)
  {
    if (_UISolariumEnabled())
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor tertiarySystemFillColor];
    }
    v3 = ;
    [(RoutePlanningAddStopCell *)v2 setBackgroundColor:v3];

    [(RoutePlanningAddStopCell *)v2 setAccessibilityIdentifier:@"RoutePlanningAddStopCell"];
    v4 = objc_opt_new();
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(RoutePlanningAddStopCell *)v2 contentView];
    [contentView addSubview:v4];

    v6 = objc_opt_new();
    iconView = v2->_iconView;
    v2->_iconView = v6;

    [(UIImageView *)v2->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v2->_iconView setContentMode:1];
    traitCollection = [(RoutePlanningAddStopCell *)v2 traitCollection];
    v9 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle2 weight:traitCollection compatibleWithTraitCollection:UIFontWeightBold];
    v10 = [UIImageSymbolConfiguration configurationWithFont:v9];
    [(UIImageView *)v2->_iconView setPreferredSymbolConfiguration:v10];

    [(UIImageView *)v2->_iconView setAccessibilityIdentifier:@"RoutePlanningAddStopCellIconView"];
    [v4 addSubview:v2->_iconView];
    v11 = objc_opt_new();
    titleLabel = v2->_titleLabel;
    v2->_titleLabel = v11;

    [(UILabel *)v2->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v2->_titleLabel setAccessibilityIdentifier:@"RoutePlanningAddStopCellTitleLabel"];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"[RoutePlanning] Add Stop" value:@"localized string not found" table:0];
    [(UILabel *)v2->_titleLabel setText:v14];

    [(RoutePlanningAddStopCell *)v2 _updateFonts];
    contentView2 = [(RoutePlanningAddStopCell *)v2 contentView];
    [contentView2 addSubview:v2->_titleLabel];

    if (sub_10000FA08(v2) == 5)
    {
      v16 = 16.0;
    }

    else
    {
      v16 = 20.0;
    }

    v17 = _UISolariumEnabled();
    v18 = sub_10000FA08(v2);
    v19 = 10.0;
    if (v18 == 5)
    {
      v20 = 9.0;
    }

    else
    {
      v19 = 16.0;
      v20 = 14.0;
    }

    if (v17)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v22 = _UISolariumEnabled();
    v23 = sub_10000FA08(v2);
    v24 = 12.0;
    if (v23 == 5)
    {
      v24 = 8.0;
      v25 = 9.0;
    }

    else
    {
      v25 = 14.0;
    }

    if (!v22)
    {
      v24 = v25;
    }

    v26 = v21 + v16 + v24;
    widthAnchor = [v4 widthAnchor];
    v28 = [widthAnchor constraintEqualToConstant:v26];
    imageContainerViewWidthConstraint = v2->_imageContainerViewWidthConstraint;
    v2->_imageContainerViewWidthConstraint = v28;

    widthAnchor2 = [(UIImageView *)v2->_iconView widthAnchor];
    v31 = [widthAnchor2 constraintEqualToConstant:v16];
    iconViewWidthConstraint = v2->_iconViewWidthConstraint;
    v2->_iconViewWidthConstraint = v31;

    heightAnchor = [(UIImageView *)v2->_iconView heightAnchor];
    v34 = [heightAnchor constraintEqualToConstant:v16];
    iconViewHeightConstraint = v2->_iconViewHeightConstraint;
    v2->_iconViewHeightConstraint = v34;

    leadingAnchor = [v4 leadingAnchor];
    contentView3 = [(RoutePlanningAddStopCell *)v2 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v68 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v75[0] = v68;
    topAnchor = [v4 topAnchor];
    contentView4 = [(RoutePlanningAddStopCell *)v2 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v63 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v75[1] = v63;
    bottomAnchor = [v4 bottomAnchor];
    contentView5 = [(RoutePlanningAddStopCell *)v2 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v59 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v75[2] = v59;
    v75[3] = v2->_imageContainerViewWidthConstraint;
    leadingAnchor3 = [(UIImageView *)v2->_iconView leadingAnchor];
    leadingAnchor4 = [v4 leadingAnchor];
    v56 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v21];
    v75[4] = v56;
    centerYAnchor = [(UIImageView *)v2->_iconView centerYAnchor];
    v64 = v4;
    centerYAnchor2 = [v4 centerYAnchor];
    v53 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v75[5] = v53;
    v75[6] = v2->_iconViewWidthConstraint;
    v75[7] = v2->_iconViewHeightConstraint;
    leadingAnchor5 = [(UILabel *)v2->_titleLabel leadingAnchor];
    trailingAnchor = [v4 trailingAnchor];
    v50 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor];
    v75[8] = v50;
    topAnchor3 = [(UILabel *)v2->_titleLabel topAnchor];
    contentView6 = [(RoutePlanningAddStopCell *)v2 contentView];
    topAnchor4 = [contentView6 topAnchor];
    v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v75[9] = v46;
    bottomAnchor3 = [(UILabel *)v2->_titleLabel bottomAnchor];
    contentView7 = [(RoutePlanningAddStopCell *)v2 contentView];
    bottomAnchor4 = [contentView7 bottomAnchor];
    v39 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v75[10] = v39;
    trailingAnchor2 = [(UILabel *)v2->_titleLabel trailingAnchor];
    contentView8 = [(RoutePlanningAddStopCell *)v2 contentView];
    trailingAnchor3 = [contentView8 trailingAnchor];
    v43 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-10.0];
    v75[11] = v43;
    v44 = [NSArray arrayWithObjects:v75 count:12];
    [NSLayoutConstraint activateConstraints:v44];

    [(RoutePlanningAddStopCell *)v2 _setEnabled:1];
    [(RoutePlanningAddStopCell *)v2 _updateConstraints];
    [(RoutePlanningAddStopCell *)v2 _updateIconImage];
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_100CC07BC;
    v72[3] = &unk_101661B18;
    v73 = v2;
    [UIView performWithoutAnimation:v72];
  }

  return v2;
}

@end
@interface RoutePlanningAddStopCell
- (RoutePlanningAddStopCell)init;
- (void)_setEnabled:(BOOL)a3;
- (void)_updateConstraints;
- (void)_updateFonts;
- (void)_updateIconImage;
- (void)setEnabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RoutePlanningAddStopCell

- (void)_updateIconImage
{
  v5 = +[GEOFeatureStyleAttributes addStopStyleAttributes];
  v3 = [(RoutePlanningAddStopCell *)self traitCollection];
  [v3 displayScale];
  v4 = [MKIconManager imageForStyle:v5 size:0 forScale:0 format:?];
  [(UIImageView *)self->_iconView setImage:v4];
}

- (void)_updateConstraints
{
  v3 = [(RoutePlanningAddStopCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(v4, UIContentSizeCategoryExtraExtraExtraLarge);

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
    v9 = [(RoutePlanningAddStopCell *)self traitCollection];
    v6 = [v9 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v6];
    v8 = [v7 _mapkit_fontWithWeight:v5];
    [(UILabel *)self->_titleLabel setFont:v8];
  }

  else
  {
    v9 = [(RoutePlanningAddStopCell *)self traitCollection];
    v6 = [v9 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v6];
    [(UILabel *)self->_titleLabel setFont:v7];
  }
}

- (void)_setEnabled:(BOOL)a3
{
  self->_enabled = a3;
  if (a3)
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

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    [(RoutePlanningAddStopCell *)self _setEnabled:?];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RoutePlanningAddStopCell;
  [(RoutePlanningAddStopCell *)&v13 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [(RoutePlanningAddStopCell *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 != v7)
  {
    [(RoutePlanningAddStopCell *)self _updateFonts];
    [(RoutePlanningAddStopCell *)self _updateConstraints];
  }

  [v4 displayScale];
  v9 = v8;
  v10 = [(RoutePlanningAddStopCell *)self traitCollection];
  [v10 displayScale];
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
    v5 = [(RoutePlanningAddStopCell *)v2 contentView];
    [v5 addSubview:v4];

    v6 = objc_opt_new();
    iconView = v2->_iconView;
    v2->_iconView = v6;

    [(UIImageView *)v2->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v2->_iconView setContentMode:1];
    v8 = [(RoutePlanningAddStopCell *)v2 traitCollection];
    v9 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle2 weight:v8 compatibleWithTraitCollection:UIFontWeightBold];
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
    v15 = [(RoutePlanningAddStopCell *)v2 contentView];
    [v15 addSubview:v2->_titleLabel];

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
    v27 = [v4 widthAnchor];
    v28 = [v27 constraintEqualToConstant:v26];
    imageContainerViewWidthConstraint = v2->_imageContainerViewWidthConstraint;
    v2->_imageContainerViewWidthConstraint = v28;

    v30 = [(UIImageView *)v2->_iconView widthAnchor];
    v31 = [v30 constraintEqualToConstant:v16];
    iconViewWidthConstraint = v2->_iconViewWidthConstraint;
    v2->_iconViewWidthConstraint = v31;

    v33 = [(UIImageView *)v2->_iconView heightAnchor];
    v34 = [v33 constraintEqualToConstant:v16];
    iconViewHeightConstraint = v2->_iconViewHeightConstraint;
    v2->_iconViewHeightConstraint = v34;

    v70 = [v4 leadingAnchor];
    v71 = [(RoutePlanningAddStopCell *)v2 contentView];
    v69 = [v71 leadingAnchor];
    v68 = [v70 constraintEqualToAnchor:v69];
    v75[0] = v68;
    v66 = [v4 topAnchor];
    v67 = [(RoutePlanningAddStopCell *)v2 contentView];
    v65 = [v67 topAnchor];
    v63 = [v66 constraintEqualToAnchor:v65];
    v75[1] = v63;
    v61 = [v4 bottomAnchor];
    v62 = [(RoutePlanningAddStopCell *)v2 contentView];
    v60 = [v62 bottomAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v75[2] = v59;
    v75[3] = v2->_imageContainerViewWidthConstraint;
    v58 = [(UIImageView *)v2->_iconView leadingAnchor];
    v57 = [v4 leadingAnchor];
    v56 = [v58 constraintEqualToAnchor:v57 constant:v21];
    v75[4] = v56;
    v55 = [(UIImageView *)v2->_iconView centerYAnchor];
    v64 = v4;
    v54 = [v4 centerYAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v75[5] = v53;
    v75[6] = v2->_iconViewWidthConstraint;
    v75[7] = v2->_iconViewHeightConstraint;
    v52 = [(UILabel *)v2->_titleLabel leadingAnchor];
    v51 = [v4 trailingAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v75[8] = v50;
    v48 = [(UILabel *)v2->_titleLabel topAnchor];
    v49 = [(RoutePlanningAddStopCell *)v2 contentView];
    v47 = [v49 topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v75[9] = v46;
    v36 = [(UILabel *)v2->_titleLabel bottomAnchor];
    v37 = [(RoutePlanningAddStopCell *)v2 contentView];
    v38 = [v37 bottomAnchor];
    v39 = [v36 constraintEqualToAnchor:v38];
    v75[10] = v39;
    v40 = [(UILabel *)v2->_titleLabel trailingAnchor];
    v41 = [(RoutePlanningAddStopCell *)v2 contentView];
    v42 = [v41 trailingAnchor];
    v43 = [v40 constraintEqualToAnchor:v42 constant:-10.0];
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
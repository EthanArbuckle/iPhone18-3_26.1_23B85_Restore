@interface SafariExportProfilePicker
- (SafariExportProfilePicker)init;
- (id)_profileSymbolImageConfiguration;
- (void)updateMenuStateWithSelectedAction:(id)action;
@end

@implementation SafariExportProfilePicker

- (id)_profileSymbolImageConfiguration
{
  v2 = [UIFont _preferredFontForTextStyle:UIFontTextStyleHeadline weight:UIFontWeightRegular];
  v3 = [UIImageSymbolConfiguration configurationWithFont:v2 scale:1];

  return v3;
}

- (SafariExportProfilePicker)init
{
  v42.receiver = self;
  v42.super_class = SafariExportProfilePicker;
  v2 = [(SafariExportProfilePicker *)&v42 init];
  v3 = v2;
  if (v2)
  {
    [(SafariExportProfilePicker *)v2 setShowsMenuAsPrimaryAction:1];
    v4 = objc_alloc_init(UIStackView);
    profilePickerStackView = v3->_profilePickerStackView;
    v3->_profilePickerStackView = v4;

    [(UIStackView *)v3->_profilePickerStackView setSpacing:8.0];
    [(UIStackView *)v3->_profilePickerStackView setAxis:0];
    [(UIStackView *)v3->_profilePickerStackView setAlignment:3];
    [(UIStackView *)v3->_profilePickerStackView setDistribution:0];
    [(UIStackView *)v3->_profilePickerStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SafariExportProfilePicker *)v3 addSubview:v3->_profilePickerStackView];
    topAnchor = [(UIStackView *)v3->_profilePickerStackView topAnchor];
    layoutMarginsGuide = [(SafariExportProfilePicker *)v3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v43[0] = v38;
    bottomAnchor = [(UIStackView *)v3->_profilePickerStackView bottomAnchor];
    layoutMarginsGuide2 = [(SafariExportProfilePicker *)v3 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v43[1] = v34;
    centerXAnchor = [(UIStackView *)v3->_profilePickerStackView centerXAnchor];
    layoutMarginsGuide3 = [(SafariExportProfilePicker *)v3 layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide3 centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v43[2] = v8;
    widthAnchor = [(UIStackView *)v3->_profilePickerStackView widthAnchor];
    layoutMarginsGuide4 = [(SafariExportProfilePicker *)v3 layoutMarginsGuide];
    widthAnchor2 = [layoutMarginsGuide4 widthAnchor];
    v12 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:0.75];
    v43[3] = v12;
    v13 = [NSArray arrayWithObjects:v43 count:4];
    [NSLayoutConstraint activateConstraints:v13];

    v14 = objc_alloc_init(UILabel);
    profilePickerTitleLabel = v3->_profilePickerTitleLabel;
    v3->_profilePickerTitleLabel = v14;

    v16 = _WBSLocalizedString();
    [(UILabel *)v3->_profilePickerTitleLabel setText:v16];

    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [(UILabel *)v3->_profilePickerTitleLabel setFont:v17];

    [(UIStackView *)v3->_profilePickerStackView addArrangedSubview:v3->_profilePickerTitleLabel];
    v18 = [[UIImageView alloc] initWithImage:0];
    profileSymbolImageView = v3->_profileSymbolImageView;
    v3->_profileSymbolImageView = v18;

    v20 = +[UIColor systemGrayColor];
    [(UIImageView *)v3->_profileSymbolImageView setTintColor:v20];

    [(UIStackView *)v3->_profilePickerStackView addArrangedSubview:v3->_profileSymbolImageView];
    [(UIStackView *)v3->_profilePickerStackView setCustomSpacing:v3->_profileSymbolImageView afterView:5.0];
    v21 = objc_alloc_init(UILabel);
    profilePickerNameLabel = v3->_profilePickerNameLabel;
    v3->_profilePickerNameLabel = v21;

    v23 = [UIFont _preferredFontForTextStyle:UIFontTextStyleHeadline weight:UIFontWeightRegular];
    [(UILabel *)v3->_profilePickerNameLabel setFont:v23];

    v24 = +[UIColor systemGrayColor];
    [(UILabel *)v3->_profilePickerNameLabel setTextColor:v24];

    LODWORD(v25) = 1132068864;
    [(UILabel *)v3->_profilePickerNameLabel setContentCompressionResistancePriority:0 forAxis:v25];
    [(UIStackView *)v3->_profilePickerStackView addArrangedSubview:v3->_profilePickerNameLabel];
    v26 = [UIFont _preferredFontForTextStyle:UIFontTextStyleHeadline weight:UIFontWeightRegular];
    v27 = [UIImageSymbolConfiguration configurationWithFont:v26 scale:1];
    v28 = [UIImage systemImageNamed:@"chevron.up.chevron.down" withConfiguration:v27];

    v29 = [[UIImageView alloc] initWithImage:v28];
    v30 = +[UIColor systemGray2Color];
    [v29 setTintColor:v30];

    [(UIStackView *)v3->_profilePickerStackView addArrangedSubview:v29];
    v31 = v3;
  }

  return v3;
}

- (void)updateMenuStateWithSelectedAction:(id)action
{
  actionCopy = action;
  menu = [(SafariExportProfilePicker *)self menu];
  children = [menu children];
  v6 = [children mutableCopy];

  v7 = 0;
  if ([v6 count])
  {
    while (1)
    {
      firstObject = [v6 firstObject];
      [v6 removeObjectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = firstObject;
        v14 = v13;
        if (!v7)
        {
          v7 = v13;
        }

        [v14 setState:WBSIsEqual()];
        goto LABEL_9;
      }

LABEL_10:

      if (![v6 count])
      {
        goto LABEL_11;
      }
    }

    v9 = firstObject;
    if ([v9 options])
    {
      children2 = [v9 children];
      children3 = [v9 children];
      v12 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [children3 count]);
      [v6 insertObjects:children2 atIndexes:v12];
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_11:
  v15 = actionCopy;
  if (!actionCopy)
  {
    [v7 setState:1];
    v15 = 0;
  }

  image = [v15 image];
  _profileSymbolImageConfiguration = [(SafariExportProfilePicker *)self _profileSymbolImageConfiguration];
  v18 = [image imageWithConfiguration:_profileSymbolImageConfiguration];
  [(UIImageView *)self->_profileSymbolImageView setImage:v18];

  title = [actionCopy title];
  [(UILabel *)self->_profilePickerNameLabel setText:title];

  profilePickerStackView = self->_profilePickerStackView;
  image2 = [actionCopy image];
  v22 = 12.0;
  if (!image2)
  {
    v22 = 8.0;
  }

  [(UIStackView *)profilePickerStackView setCustomSpacing:self->_profilePickerTitleLabel afterView:v22];
}

@end
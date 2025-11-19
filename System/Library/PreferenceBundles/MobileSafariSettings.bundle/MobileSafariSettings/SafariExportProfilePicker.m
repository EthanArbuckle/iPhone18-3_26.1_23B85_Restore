@interface SafariExportProfilePicker
- (SafariExportProfilePicker)init;
- (id)_profileSymbolImageConfiguration;
- (void)updateMenuStateWithSelectedAction:(id)a3;
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
    v40 = [(UIStackView *)v3->_profilePickerStackView topAnchor];
    v41 = [(SafariExportProfilePicker *)v3 layoutMarginsGuide];
    v39 = [v41 topAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v43[0] = v38;
    v36 = [(UIStackView *)v3->_profilePickerStackView bottomAnchor];
    v37 = [(SafariExportProfilePicker *)v3 layoutMarginsGuide];
    v35 = [v37 bottomAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v43[1] = v34;
    v33 = [(UIStackView *)v3->_profilePickerStackView centerXAnchor];
    v6 = [(SafariExportProfilePicker *)v3 layoutMarginsGuide];
    v7 = [v6 centerXAnchor];
    v8 = [v33 constraintEqualToAnchor:v7];
    v43[2] = v8;
    v9 = [(UIStackView *)v3->_profilePickerStackView widthAnchor];
    v10 = [(SafariExportProfilePicker *)v3 layoutMarginsGuide];
    v11 = [v10 widthAnchor];
    v12 = [v9 constraintLessThanOrEqualToAnchor:v11 multiplier:0.75];
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

- (void)updateMenuStateWithSelectedAction:(id)a3
{
  v23 = a3;
  v4 = [(SafariExportProfilePicker *)self menu];
  v5 = [v4 children];
  v6 = [v5 mutableCopy];

  v7 = 0;
  if ([v6 count])
  {
    while (1)
    {
      v8 = [v6 firstObject];
      [v6 removeObjectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v8;
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

    v9 = v8;
    if ([v9 options])
    {
      v10 = [v9 children];
      v11 = [v9 children];
      v12 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v11 count]);
      [v6 insertObjects:v10 atIndexes:v12];
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_11:
  v15 = v23;
  if (!v23)
  {
    [v7 setState:1];
    v15 = 0;
  }

  v16 = [v15 image];
  v17 = [(SafariExportProfilePicker *)self _profileSymbolImageConfiguration];
  v18 = [v16 imageWithConfiguration:v17];
  [(UIImageView *)self->_profileSymbolImageView setImage:v18];

  v19 = [v23 title];
  [(UILabel *)self->_profilePickerNameLabel setText:v19];

  profilePickerStackView = self->_profilePickerStackView;
  v21 = [v23 image];
  v22 = 12.0;
  if (!v21)
  {
    v22 = 8.0;
  }

  [(UIStackView *)profilePickerStackView setCustomSpacing:self->_profilePickerTitleLabel afterView:v22];
}

@end
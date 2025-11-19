@interface SafariImportConflictView
+ (id)extensionsImportConflictViewWithNumberOfSuccessfullyImportedExtensions:(unint64_t)a3 numberOfExtensionsFailedToImport:(unint64_t)a4 lockupViews:(id)a5;
+ (id)passwordsImportConflictViewWithNumberOfSuccessfullyImportedPasswords:(unint64_t)a3 numberOfPasswordsFailedToImport:(unint64_t)a4;
- (SafariImportConflictView)initWithTitleText:(id)a3 iconName:(id)a4 detailText:(id)a5 needsDivider:(BOOL)a6;
- (id)horizontalDivider;
@end

@implementation SafariImportConflictView

+ (id)passwordsImportConflictViewWithNumberOfSuccessfullyImportedPasswords:(unint64_t)a3 numberOfPasswordsFailedToImport:(unint64_t)a4
{
  v5 = _WBSLocalizedString();
  v6 = [WBSBrowsingDataImportController localizedStringForPasswordsConflictViewWithNumberOfPasswordsFailedToImport:a4];
  v7 = [[SafariImportConflictView alloc] initWithTitleText:v5 iconName:@"exclamationmark.triangle" detailText:v6 needsDivider:0];

  return v7;
}

+ (id)extensionsImportConflictViewWithNumberOfSuccessfullyImportedExtensions:(unint64_t)a3 numberOfExtensionsFailedToImport:(unint64_t)a4 lockupViews:(id)a5
{
  v6 = a5;
  v7 = _WBSLocalizedString();
  v35 = +[WBSBrowsingDataImportController localizedStringForExtensionsConflictViewWithNumberOfFailedExtensionsFailedToImport:appsCount:](WBSBrowsingDataImportController, "localizedStringForExtensionsConflictViewWithNumberOfFailedExtensionsFailedToImport:appsCount:", a4, [v6 count]);
  v36 = v7;
  v8 = [[SafariImportConflictView alloc] initWithTitleText:v7 iconName:@"puzzlepiece.extension" detailText:v35 needsDivider:1];
  v9 = objc_alloc_init(UIStackView);
  [v9 setAxis:1];
  [v9 setAlignment:3];
  [v9 setDistribution:0];
  [v9 setSpacing:15.0];
  [v9 setLayoutMarginsRelativeArrangement:1];
  [v9 setLayoutMargins:{5.0, 0.0, 10.0, 0.0}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SafariImportConflictView *)v8 addArrangedSubview:v9];
  v39 = v9;
  v10 = [v9 widthAnchor];
  v37 = v8;
  v11 = [(SafariImportConflictView *)v8 layoutMarginsGuide];
  v12 = [v11 widthAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  if ([v6 count])
  {
    v14 = 0;
    v38 = v6;
    do
    {
      v15 = [v6 objectAtIndexedSubscript:v14];
      [v39 addArrangedSubview:v15];
      v16 = [v15 leadingAnchor];
      v17 = [v39 layoutMarginsGuide];
      v18 = [v17 leadingAnchor];
      v19 = [v16 constraintEqualToAnchor:v18 constant:15.0];
      v43[0] = v19;
      v41 = v15;
      v20 = [v15 trailingAnchor];
      v21 = [v39 layoutMarginsGuide];
      v22 = [v21 trailingAnchor];
      v23 = [v20 constraintEqualToAnchor:v22 constant:-15.0];
      v43[1] = v23;
      v24 = [NSArray arrayWithObjects:v43 count:2];
      [NSLayoutConstraint activateConstraints:v24];

      v6 = v38;
      if (v14 != [v38 count] - 1)
      {
        v25 = [(SafariImportConflictView *)v37 horizontalDivider];
        [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v39 addArrangedSubview:v25];
        v40 = [v25 leadingAnchor];
        v26 = [v39 layoutMarginsGuide];
        v27 = [v26 leadingAnchor];
        v28 = [v40 constraintEqualToAnchor:v27 constant:15.0];
        v42[0] = v28;
        v29 = [v25 trailingAnchor];
        v30 = [v39 layoutMarginsGuide];
        v31 = [v30 trailingAnchor];
        v32 = [v29 constraintEqualToAnchor:v31];
        v42[1] = v32;
        v33 = [NSArray arrayWithObjects:v42 count:2];
        [NSLayoutConstraint activateConstraints:v33];

        v6 = v38;
      }

      ++v14;
    }

    while (v14 < [v6 count]);
  }

  return v37;
}

- (SafariImportConflictView)initWithTitleText:(id)a3 iconName:(id)a4 detailText:(id)a5 needsDivider:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v73.receiver = self;
  v73.super_class = SafariImportConflictView;
  v13 = [(SafariImportConflictView *)&v73 init];
  if (v13)
  {
    if (v6)
    {
      v14 = 9.0;
    }

    else
    {
      v14 = 15.0;
    }

    v71 = v11;
    v70 = v12;
    v69 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 weight:UIFontWeightBold];
    v68 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v67 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle3];
    v66 = +[UIColor labelColor];
    v15 = +[UIColor systemGray5Color];
    [(SafariImportConflictView *)v13 setBackgroundColor:v15];

    v16 = [(SafariImportConflictView *)v13 layer];
    [v16 setCornerRadius:8.0];

    [(SafariImportConflictView *)v13 setAxis:1];
    [(SafariImportConflictView *)v13 setAlignment:3];
    [(SafariImportConflictView *)v13 setDistribution:0];
    [(SafariImportConflictView *)v13 setLayoutMarginsRelativeArrangement:1];
    [(SafariImportConflictView *)v13 setLayoutMargins:15.0, 0.0, v14, 0.0];
    v17 = objc_alloc_init(UIStackView);
    iconAndTitleLabelStackView = v13->_iconAndTitleLabelStackView;
    v13->_iconAndTitleLabelStackView = v17;

    [(UIStackView *)v13->_iconAndTitleLabelStackView setAxis:0];
    [(UIStackView *)v13->_iconAndTitleLabelStackView setAlignment:0];
    [(UIStackView *)v13->_iconAndTitleLabelStackView setDistribution:0];
    [(UIStackView *)v13->_iconAndTitleLabelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SafariImportConflictView *)v13 addArrangedSubview:v13->_iconAndTitleLabelStackView];
    v64 = [(UIStackView *)v13->_iconAndTitleLabelStackView leadingAnchor];
    v19 = [(SafariImportConflictView *)v13 layoutMarginsGuide];
    [v19 leadingAnchor];
    v20 = v72 = v10;
    [v64 constraintEqualToAnchor:v20 constant:15.0];
    v21 = v59 = v6;
    v80[0] = v21;
    v22 = [(UIStackView *)v13->_iconAndTitleLabelStackView trailingAnchor];
    v23 = [(SafariImportConflictView *)v13 layoutMarginsGuide];
    v24 = [v23 trailingAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:-15.0];
    v80[1] = v25;
    v26 = [NSArray arrayWithObjects:v80 count:2];
    [NSLayoutConstraint activateConstraints:v26];

    [(SafariImportConflictView *)v13 setCustomSpacing:v13->_iconAndTitleLabelStackView afterView:5.0];
    v65 = [UIImage systemImageNamed:v11 withConfiguration:v67];
    v27 = [[UIImageView alloc] initWithImage:v65];
    [v27 setTintColor:v66];
    v28 = objc_alloc_init(NSMutableAttributedString);
    v61 = [[NSAttributedString alloc] initWithString:v72];
    [v28 appendAttributedString:?];
    v78 = NSFontAttributeName;
    v79 = v69;
    v29 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    [v28 addAttributes:v29 range:{0, objc_msgSend(v28, "length")}];

    [(UIStackView *)v13->_iconAndTitleLabelStackView addArrangedSubview:v27];
    v63 = v27;
    [(UIStackView *)v13->_iconAndTitleLabelStackView setCustomSpacing:v27 afterView:5.0];
    v30 = objc_alloc_init(UILabel);
    v62 = v28;
    [v30 setAttributedText:v28];
    v58 = v30;
    [(UIStackView *)v13->_iconAndTitleLabelStackView addArrangedSubview:v30];
    v31 = v13->_iconAndTitleLabelStackView;
    v32 = objc_alloc_init(UIView);
    [(UIStackView *)v31 addArrangedSubview:v32];

    v33 = [NSMutableAttributedString alloc];
    v76 = NSFontAttributeName;
    v77 = v68;
    v34 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v35 = [v33 initWithString:v70 attributes:v34];

    v36 = objc_alloc_init(UILabel);
    [v36 setNumberOfLines:0];
    v57 = v35;
    [v36 setAttributedText:v35];
    [(SafariImportConflictView *)v13 addArrangedSubview:v36];
    v55 = [v36 leadingAnchor];
    v37 = [(SafariImportConflictView *)v13 layoutMarginsGuide];
    v38 = [v37 leadingAnchor];
    v39 = [v55 constraintEqualToAnchor:v38 constant:15.0];
    v75[0] = v39;
    v40 = [v36 trailingAnchor];
    v41 = [(SafariImportConflictView *)v13 layoutMarginsGuide];
    v42 = [v41 trailingAnchor];
    v43 = [v40 constraintEqualToAnchor:v42 constant:-15.0];
    v75[1] = v43;
    v44 = [NSArray arrayWithObjects:v75 count:2];
    [NSLayoutConstraint activateConstraints:v44];

    [(SafariImportConflictView *)v13 setCustomSpacing:v36 afterView:15.0];
    if (v59)
    {
      v45 = [(SafariImportConflictView *)v13 horizontalDivider];
      [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(SafariImportConflictView *)v13 addArrangedSubview:v45];
      [(SafariImportConflictView *)v13 setCustomSpacing:v45 afterView:9.0];
      v56 = [v45 leadingAnchor];
      v60 = [(SafariImportConflictView *)v13 layoutMarginsGuide];
      v46 = [v60 leadingAnchor];
      v47 = [v56 constraintEqualToAnchor:v46 constant:15.0];
      v74[0] = v47;
      v48 = [v45 trailingAnchor];
      v49 = [(SafariImportConflictView *)v13 layoutMarginsGuide];
      v50 = [v49 trailingAnchor];
      v51 = [v48 constraintEqualToAnchor:v50];
      v74[1] = v51;
      v52 = [NSArray arrayWithObjects:v74 count:2];
      [NSLayoutConstraint activateConstraints:v52];
    }

    v53 = v13;

    v11 = v71;
    v10 = v72;
    v12 = v70;
  }

  return v13;
}

- (id)horizontalDivider
{
  v2 = objc_alloc_init(UIView);
  v3 = +[UIColor systemGrayColor];
  [v2 setBackgroundColor:v3];

  v4 = [v2 heightAnchor];
  _SFOnePixel();
  v5 = [v4 constraintEqualToConstant:?];
  [v5 setActive:1];

  return v2;
}

@end
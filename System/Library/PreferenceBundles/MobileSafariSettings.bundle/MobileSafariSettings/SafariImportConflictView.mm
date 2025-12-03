@interface SafariImportConflictView
+ (id)extensionsImportConflictViewWithNumberOfSuccessfullyImportedExtensions:(unint64_t)extensions numberOfExtensionsFailedToImport:(unint64_t)import lockupViews:(id)views;
+ (id)passwordsImportConflictViewWithNumberOfSuccessfullyImportedPasswords:(unint64_t)passwords numberOfPasswordsFailedToImport:(unint64_t)import;
- (SafariImportConflictView)initWithTitleText:(id)text iconName:(id)name detailText:(id)detailText needsDivider:(BOOL)divider;
- (id)horizontalDivider;
@end

@implementation SafariImportConflictView

+ (id)passwordsImportConflictViewWithNumberOfSuccessfullyImportedPasswords:(unint64_t)passwords numberOfPasswordsFailedToImport:(unint64_t)import
{
  v5 = _WBSLocalizedString();
  v6 = [WBSBrowsingDataImportController localizedStringForPasswordsConflictViewWithNumberOfPasswordsFailedToImport:import];
  v7 = [[SafariImportConflictView alloc] initWithTitleText:v5 iconName:@"exclamationmark.triangle" detailText:v6 needsDivider:0];

  return v7;
}

+ (id)extensionsImportConflictViewWithNumberOfSuccessfullyImportedExtensions:(unint64_t)extensions numberOfExtensionsFailedToImport:(unint64_t)import lockupViews:(id)views
{
  viewsCopy = views;
  v7 = _WBSLocalizedString();
  v35 = +[WBSBrowsingDataImportController localizedStringForExtensionsConflictViewWithNumberOfFailedExtensionsFailedToImport:appsCount:](WBSBrowsingDataImportController, "localizedStringForExtensionsConflictViewWithNumberOfFailedExtensionsFailedToImport:appsCount:", import, [viewsCopy count]);
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
  widthAnchor = [v9 widthAnchor];
  v37 = v8;
  layoutMarginsGuide = [(SafariImportConflictView *)v8 layoutMarginsGuide];
  widthAnchor2 = [layoutMarginsGuide widthAnchor];
  v13 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v13 setActive:1];

  if ([viewsCopy count])
  {
    v14 = 0;
    v38 = viewsCopy;
    do
    {
      v15 = [viewsCopy objectAtIndexedSubscript:v14];
      [v39 addArrangedSubview:v15];
      leadingAnchor = [v15 leadingAnchor];
      layoutMarginsGuide2 = [v39 layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
      v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
      v43[0] = v19;
      v41 = v15;
      trailingAnchor = [v15 trailingAnchor];
      layoutMarginsGuide3 = [v39 layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
      v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
      v43[1] = v23;
      v24 = [NSArray arrayWithObjects:v43 count:2];
      [NSLayoutConstraint activateConstraints:v24];

      viewsCopy = v38;
      if (v14 != [v38 count] - 1)
      {
        horizontalDivider = [(SafariImportConflictView *)v37 horizontalDivider];
        [horizontalDivider setTranslatesAutoresizingMaskIntoConstraints:0];
        [v39 addArrangedSubview:horizontalDivider];
        leadingAnchor3 = [horizontalDivider leadingAnchor];
        layoutMarginsGuide4 = [v39 layoutMarginsGuide];
        leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
        v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:15.0];
        v42[0] = v28;
        trailingAnchor3 = [horizontalDivider trailingAnchor];
        layoutMarginsGuide5 = [v39 layoutMarginsGuide];
        trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
        v32 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v42[1] = v32;
        v33 = [NSArray arrayWithObjects:v42 count:2];
        [NSLayoutConstraint activateConstraints:v33];

        viewsCopy = v38;
      }

      ++v14;
    }

    while (v14 < [viewsCopy count]);
  }

  return v37;
}

- (SafariImportConflictView)initWithTitleText:(id)text iconName:(id)name detailText:(id)detailText needsDivider:(BOOL)divider
{
  dividerCopy = divider;
  textCopy = text;
  nameCopy = name;
  detailTextCopy = detailText;
  v73.receiver = self;
  v73.super_class = SafariImportConflictView;
  v13 = [(SafariImportConflictView *)&v73 init];
  if (v13)
  {
    if (dividerCopy)
    {
      v14 = 9.0;
    }

    else
    {
      v14 = 15.0;
    }

    v71 = nameCopy;
    v70 = detailTextCopy;
    v69 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 weight:UIFontWeightBold];
    v68 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v67 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle3];
    v66 = +[UIColor labelColor];
    v15 = +[UIColor systemGray5Color];
    [(SafariImportConflictView *)v13 setBackgroundColor:v15];

    layer = [(SafariImportConflictView *)v13 layer];
    [layer setCornerRadius:8.0];

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
    leadingAnchor = [(UIStackView *)v13->_iconAndTitleLabelStackView leadingAnchor];
    layoutMarginsGuide = [(SafariImportConflictView *)v13 layoutMarginsGuide];
    [layoutMarginsGuide leadingAnchor];
    v20 = v72 = textCopy;
    [leadingAnchor constraintEqualToAnchor:v20 constant:15.0];
    v21 = v59 = dividerCopy;
    v80[0] = v21;
    trailingAnchor = [(UIStackView *)v13->_iconAndTitleLabelStackView trailingAnchor];
    layoutMarginsGuide2 = [(SafariImportConflictView *)v13 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
    v80[1] = v25;
    v26 = [NSArray arrayWithObjects:v80 count:2];
    [NSLayoutConstraint activateConstraints:v26];

    [(SafariImportConflictView *)v13 setCustomSpacing:v13->_iconAndTitleLabelStackView afterView:5.0];
    v65 = [UIImage systemImageNamed:nameCopy withConfiguration:v67];
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
    leadingAnchor2 = [v36 leadingAnchor];
    layoutMarginsGuide3 = [(SafariImportConflictView *)v13 layoutMarginsGuide];
    leadingAnchor3 = [layoutMarginsGuide3 leadingAnchor];
    v39 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:15.0];
    v75[0] = v39;
    trailingAnchor3 = [v36 trailingAnchor];
    layoutMarginsGuide4 = [(SafariImportConflictView *)v13 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
    v43 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-15.0];
    v75[1] = v43;
    v44 = [NSArray arrayWithObjects:v75 count:2];
    [NSLayoutConstraint activateConstraints:v44];

    [(SafariImportConflictView *)v13 setCustomSpacing:v36 afterView:15.0];
    if (v59)
    {
      horizontalDivider = [(SafariImportConflictView *)v13 horizontalDivider];
      [horizontalDivider setTranslatesAutoresizingMaskIntoConstraints:0];
      [(SafariImportConflictView *)v13 addArrangedSubview:horizontalDivider];
      [(SafariImportConflictView *)v13 setCustomSpacing:horizontalDivider afterView:9.0];
      leadingAnchor4 = [horizontalDivider leadingAnchor];
      layoutMarginsGuide5 = [(SafariImportConflictView *)v13 layoutMarginsGuide];
      leadingAnchor5 = [layoutMarginsGuide5 leadingAnchor];
      v47 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:15.0];
      v74[0] = v47;
      trailingAnchor5 = [horizontalDivider trailingAnchor];
      layoutMarginsGuide6 = [(SafariImportConflictView *)v13 layoutMarginsGuide];
      trailingAnchor6 = [layoutMarginsGuide6 trailingAnchor];
      v51 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v74[1] = v51;
      v52 = [NSArray arrayWithObjects:v74 count:2];
      [NSLayoutConstraint activateConstraints:v52];
    }

    v53 = v13;

    nameCopy = v71;
    textCopy = v72;
    detailTextCopy = v70;
  }

  return v13;
}

- (id)horizontalDivider
{
  v2 = objc_alloc_init(UIView);
  v3 = +[UIColor systemGrayColor];
  [v2 setBackgroundColor:v3];

  heightAnchor = [v2 heightAnchor];
  _SFOnePixel();
  v5 = [heightAnchor constraintEqualToConstant:?];
  [v5 setActive:1];

  return v2;
}

@end
@interface ExternalHangTracerLoadingHeader
- (ExternalHangTracerLoadingHeader)initWithSpecifier:(id)specifier;
@end

@implementation ExternalHangTracerLoadingHeader

- (ExternalHangTracerLoadingHeader)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v65.receiver = self;
  v65.super_class = ExternalHangTracerLoadingHeader;
  v4 = [(ExternalHangTracerLoadingHeader *)&v65 init];
  if (v4)
  {
    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    headerLabel = v4->_headerLabel;
    v4->_headerLabel = v5;

    [(UILabel *)v4->_headerLabel setNumberOfLines:0];
    v7 = [UITableViewHeaderFooterView _defaultFontForTableViewStyle:1 isSectionHeader:1];
    [(UILabel *)v4->_headerLabel setFont:v7];

    v8 = [UITableViewHeaderFooterView _defaultTextColorForTableViewStyle:1 isSectionHeader:1];
    [(UILabel *)v4->_headerLabel setTextColor:v8];

    name = [specifierCopy name];
    [(UILabel *)v4->_headerLabel setText:name];

    [(UILabel *)v4->_headerLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v10) = 1148846080;
    [(UILabel *)v4->_headerLabel setContentCompressionResistancePriority:0 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [(UILabel *)v4->_headerLabel setContentCompressionResistancePriority:1 forAxis:v11];
    LODWORD(v12) = 1144750080;
    [(UILabel *)v4->_headerLabel setContentHuggingPriority:0 forAxis:v12];
    LODWORD(v13) = 1144750080;
    [(UILabel *)v4->_headerLabel setContentHuggingPriority:1 forAxis:v13];
    [(ExternalHangTracerLoadingHeader *)v4 addSubview:v4->_headerLabel];
    v14 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinnerView = v4->_spinnerView;
    v4->_spinnerView = v14;

    [(UIActivityIndicatorView *)v4->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ExternalHangTracerLoadingHeader *)v4 addSubview:v4->_spinnerView];
    v16 = [UIStackView alloc];
    v68[0] = v4->_headerLabel;
    v68[1] = v4->_spinnerView;
    v17 = [NSArray arrayWithObjects:v68 count:2];
    v18 = [v16 initWithArrangedSubviews:v17];

    traitCollection = [(ExternalHangTracerLoadingHeader *)v4 traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    [v18 setAxis:IsAccessibilityCategory];
    [v18 setSpacing:8.0];
    [v18 setAlignment:3];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1148846080;
    [v18 setContentHuggingPriority:0 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [v18 setContentHuggingPriority:1 forAxis:v22];
    [(ExternalHangTracerLoadingHeader *)v4 addSubview:v18];
    centerYAnchor = [(UIActivityIndicatorView *)v4->_spinnerView centerYAnchor];
    centerYAnchor2 = [(UILabel *)v4->_headerLabel centerYAnchor];
    v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    labelAlignmentConstraint = v4->_labelAlignmentConstraint;
    v4->_labelAlignmentConstraint = v25;

    [(NSLayoutConstraint *)v4->_labelAlignmentConstraint setActive:!IsAccessibilityCategory];
    heightAnchor = [(UIActivityIndicatorView *)v4->_spinnerView heightAnchor];
    heightAnchor2 = [(UILabel *)v4->_headerLabel heightAnchor];
    v29 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    labelHeightConstraint = v4->_labelHeightConstraint;
    v4->_labelHeightConstraint = v29;

    [(NSLayoutConstraint *)v4->_labelHeightConstraint setActive:!IsAccessibilityCategory];
    heightAnchor3 = [v18 heightAnchor];
    heightAnchor4 = [(UILabel *)v4->_headerLabel heightAnchor];
    v33 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    stackViewConstraint = v4->_stackViewConstraint;
    v4->_stackViewConstraint = v33;

    [(NSLayoutConstraint *)v4->_stackViewConstraint setActive:!IsAccessibilityCategory];
    widthAnchor = [(UIActivityIndicatorView *)v4->_spinnerView widthAnchor];
    v57 = [widthAnchor constraintGreaterThanOrEqualToConstant:20.0];
    v67[0] = v57;
    leadingAnchor = [v18 leadingAnchor];
    layoutMarginsGuide = [(ExternalHangTracerLoadingHeader *)v4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v53 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v67[1] = v53;
    trailingAnchor = [v18 trailingAnchor];
    layoutMarginsGuide2 = [(ExternalHangTracerLoadingHeader *)v4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v49 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-12.0];
    v67[2] = v49;
    topAnchor = [v18 topAnchor];
    topAnchor2 = [(ExternalHangTracerLoadingHeader *)v4 topAnchor];
    v37 = [specifierCopy objectForKeyedSubscript:@"top-margin"];
    [v37 doubleValue];
    if (v38 == 0.0)
    {
      v38 = 10.0;
    }

    v39 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v38];
    v67[3] = v39;
    bottomAnchor = [v18 bottomAnchor];
    bottomAnchor2 = [(ExternalHangTracerLoadingHeader *)v4 bottomAnchor];
    v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
    v67[4] = v42;
    v43 = [NSArray arrayWithObjects:v67 count:5];
    [NSLayoutConstraint activateConstraints:v43];

    [(ExternalHangTracerLoadingHeader *)v4 startAnimating];
    objc_initWeak(&location, v4);
    v44 = objc_opt_self();
    v66[0] = v44;
    v45 = objc_opt_self();
    v66[1] = v45;
    v46 = [NSArray arrayWithObjects:v66 count:2];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_8E48;
    v61[3] = &unk_3D338;
    objc_copyWeak(&v62, &location);
    v63 = IsAccessibilityCategory;
    v47 = [(ExternalHangTracerLoadingHeader *)v4 registerForTraitChanges:v46 withHandler:v61];

    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }

  return v4;
}

@end
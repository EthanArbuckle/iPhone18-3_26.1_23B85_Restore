@interface ExternalHangTracerLoadingHeader
- (ExternalHangTracerLoadingHeader)initWithSpecifier:(id)a3;
@end

@implementation ExternalHangTracerLoadingHeader

- (ExternalHangTracerLoadingHeader)initWithSpecifier:(id)a3
{
  v59 = a3;
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

    v9 = [v59 name];
    [(UILabel *)v4->_headerLabel setText:v9];

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

    v19 = [(ExternalHangTracerLoadingHeader *)v4 traitCollection];
    v20 = [v19 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v20);

    [v18 setAxis:IsAccessibilityCategory];
    [v18 setSpacing:8.0];
    [v18 setAlignment:3];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1148846080;
    [v18 setContentHuggingPriority:0 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [v18 setContentHuggingPriority:1 forAxis:v22];
    [(ExternalHangTracerLoadingHeader *)v4 addSubview:v18];
    v23 = [(UIActivityIndicatorView *)v4->_spinnerView centerYAnchor];
    v24 = [(UILabel *)v4->_headerLabel centerYAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    labelAlignmentConstraint = v4->_labelAlignmentConstraint;
    v4->_labelAlignmentConstraint = v25;

    [(NSLayoutConstraint *)v4->_labelAlignmentConstraint setActive:!IsAccessibilityCategory];
    v27 = [(UIActivityIndicatorView *)v4->_spinnerView heightAnchor];
    v28 = [(UILabel *)v4->_headerLabel heightAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    labelHeightConstraint = v4->_labelHeightConstraint;
    v4->_labelHeightConstraint = v29;

    [(NSLayoutConstraint *)v4->_labelHeightConstraint setActive:!IsAccessibilityCategory];
    v31 = [v18 heightAnchor];
    v32 = [(UILabel *)v4->_headerLabel heightAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    stackViewConstraint = v4->_stackViewConstraint;
    v4->_stackViewConstraint = v33;

    [(NSLayoutConstraint *)v4->_stackViewConstraint setActive:!IsAccessibilityCategory];
    v58 = [(UIActivityIndicatorView *)v4->_spinnerView widthAnchor];
    v57 = [v58 constraintGreaterThanOrEqualToConstant:20.0];
    v67[0] = v57;
    v55 = [v18 leadingAnchor];
    v56 = [(ExternalHangTracerLoadingHeader *)v4 layoutMarginsGuide];
    v54 = [v56 leadingAnchor];
    v53 = [v55 constraintEqualToAnchor:v54 constant:12.0];
    v67[1] = v53;
    v51 = [v18 trailingAnchor];
    v52 = [(ExternalHangTracerLoadingHeader *)v4 layoutMarginsGuide];
    v50 = [v52 trailingAnchor];
    v49 = [v51 constraintLessThanOrEqualToAnchor:v50 constant:-12.0];
    v67[2] = v49;
    v35 = [v18 topAnchor];
    v36 = [(ExternalHangTracerLoadingHeader *)v4 topAnchor];
    v37 = [v59 objectForKeyedSubscript:@"top-margin"];
    [v37 doubleValue];
    if (v38 == 0.0)
    {
      v38 = 10.0;
    }

    v39 = [v35 constraintEqualToAnchor:v36 constant:v38];
    v67[3] = v39;
    v40 = [v18 bottomAnchor];
    v41 = [(ExternalHangTracerLoadingHeader *)v4 bottomAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:-8.0];
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
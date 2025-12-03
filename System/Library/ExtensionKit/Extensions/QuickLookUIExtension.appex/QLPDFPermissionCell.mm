@interface QLPDFPermissionCell
- (BOOL)_isLargeTextTraitCollection:(id)collection;
- (QLPDFPermissionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UILabel)label;
- (UITextField)textField;
- (void)installConstraintsWithWidth:(double)width;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation QLPDFPermissionCell

- (QLPDFPermissionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v20.receiver = self;
  v20.super_class = QLPDFPermissionCell;
  v4 = [(QLPDFPermissionCell *)&v20 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v6 = objc_opt_new();
    [v6 setFont:v5];
    v7 = objc_opt_new();
    [v7 setFont:v5];
    [v7 setSecureTextEntry:1];
    [v7 setKeyboardType:1];
    objc_storeWeak(&v4->_label, v6);
    objc_storeWeak(&v4->_textField, v7);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_opt_new();
    [(QLPDFPermissionCell *)v4 setStackView:v8];

    stackView = [(QLPDFPermissionCell *)v4 stackView];
    [stackView setAxis:0];

    stackView2 = [(QLPDFPermissionCell *)v4 stackView];
    [stackView2 setSpacing:20.0];

    stackView3 = [(QLPDFPermissionCell *)v4 stackView];
    [stackView3 setAlignment:0];

    stackView4 = [(QLPDFPermissionCell *)v4 stackView];
    [stackView4 setDistribution:0];

    stackView5 = [(QLPDFPermissionCell *)v4 stackView];
    [stackView5 addArrangedSubview:v6];

    stackView6 = [(QLPDFPermissionCell *)v4 stackView];
    [stackView6 addArrangedSubview:v7];

    stackView7 = [(QLPDFPermissionCell *)v4 stackView];
    [stackView7 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(QLPDFPermissionCell *)v4 contentView];
    stackView8 = [(QLPDFPermissionCell *)v4 stackView];
    [contentView addSubview:stackView8];

    LODWORD(v18) = 1132134400;
    [v6 setContentHuggingPriority:0 forAxis:v18];
    [(QLPDFPermissionCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  preferredContentSizeCategory = [change preferredContentSizeCategory];
  traitCollection = [(QLPDFPermissionCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v7 & 1) == 0)
  {
    traitCollection2 = [(QLPDFPermissionCell *)self traitCollection];
    v9 = [(QLPDFPermissionCell *)self _isLargeTextTraitCollection:traitCollection2];

    [(UIStackView *)self->_stackView setAxis:v9];
    traitCollection3 = [(QLPDFPermissionCell *)self traitCollection];
    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:traitCollection3];

    label = [(QLPDFPermissionCell *)self label];
    [label setFont:v13];

    textField = [(QLPDFPermissionCell *)self textField];
    [textField setFont:v13];
  }
}

- (BOOL)_isLargeTextTraitCollection:(id)collection
{
  v8 = UIContentSizeCategoryAccessibilityLarge;
  v9 = UIContentSizeCategoryAccessibilityExtraLarge;
  v10 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v11 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v12 = UIContentSizeCategoryExtraExtraExtraLarge;
  collectionCopy = collection;
  v4 = [NSArray arrayWithObjects:&v8 count:5];
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];

  v6 = [v4 containsObject:preferredContentSizeCategory];
  return v6;
}

- (void)installConstraintsWithWidth:(double)width
{
  constraints = [(QLPDFPermissionCell *)self constraints];

  if (constraints)
  {
    constraints2 = [(QLPDFPermissionCell *)self constraints];
    [NSLayoutConstraint deactivateConstraints:constraints2];
  }

  textField = [(QLPDFPermissionCell *)self textField];
  widthAnchor = [textField widthAnchor];
  v36 = [widthAnchor constraintGreaterThanOrEqualToConstant:width];
  v39[0] = v36;
  label = [(QLPDFPermissionCell *)self label];
  widthAnchor2 = [label widthAnchor];
  v33 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:width];
  v39[1] = v33;
  stackView = [(QLPDFPermissionCell *)self stackView];
  leadingAnchor = [stackView leadingAnchor];
  contentView = [(QLPDFPermissionCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[2] = v27;
  contentView2 = [(QLPDFPermissionCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide2 bottomAnchor];
  stackView2 = [(QLPDFPermissionCell *)self stackView];
  bottomAnchor2 = [stackView2 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.5];
  v39[3] = v21;
  contentView3 = [(QLPDFPermissionCell *)self contentView];
  layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide3 trailingAnchor];
  stackView3 = [(QLPDFPermissionCell *)self stackView];
  trailingAnchor2 = [stackView3 trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:8.0];
  v39[4] = v8;
  stackView4 = [(QLPDFPermissionCell *)self stackView];
  topAnchor = [stackView4 topAnchor];
  contentView4 = [(QLPDFPermissionCell *)self contentView];
  layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide4 topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.5];
  v39[5] = v14;
  v15 = [NSArray arrayWithObjects:v39 count:6];
  [(QLPDFPermissionCell *)self setConstraints:v15];

  constraints3 = [(QLPDFPermissionCell *)self constraints];
  [NSLayoutConstraint activateConstraints:constraints3];
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

- (UITextField)textField
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

@end
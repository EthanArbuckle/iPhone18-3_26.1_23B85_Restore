@interface VMMessageRestrictedView
- (double)titleLabelBaselineAnchorLayoutConstraintConstant;
- (void)_updateTextColor;
- (void)commonInit;
- (void)loadView;
- (void)setLocalizedAttributedRestrictedAlertTitle:(id)a3;
- (void)tintColorDidChange;
@end

@implementation VMMessageRestrictedView

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = VMMessageRestrictedView;
  [(VMMessageRestrictedView *)&v3 commonInit];
  [(VMMessageRestrictedView *)self loadView];
}

- (void)loadView
{
  v3 = objc_alloc_init(UILabel);
  [(VMMessageRestrictedView *)self setTitleLabel:v3];

  v4 = +[UIFont telephonyUISubheadlineShortFont];
  v5 = [(VMMessageRestrictedView *)self titleLabel];
  [v5 setFont:v4];

  v6 = [(VMMessageRestrictedView *)self titleLabel];
  [v6 setNumberOfLines:0];

  v7 = [(VMMessageRestrictedView *)self titleLabel];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(VMMessageRestrictedView *)self _updateTextColor];
  v8 = [(VMMessageRestrictedView *)self titleLabel];
  [(VMMessageRestrictedView *)self addSubview:v8];

  v9 = [(VMMessageRestrictedView *)self titleLabel];
  v10 = [v9 firstBaselineAnchor];
  v11 = [(VMMessageRestrictedView *)self topAnchor];
  [(VMMessageRestrictedView *)self titleLabelBaselineAnchorLayoutConstraintConstant];
  v12 = [v10 constraintEqualToAnchor:v11 constant:?];
  [(VMMessageRestrictedView *)self setTitleLabelFirstBaselineAnchorLayoutConstraint:v12];

  v13 = [(VMMessageRestrictedView *)self titleLabel];
  v14 = [v13 lastBaselineAnchor];
  v15 = [(VMMessageRestrictedView *)self bottomAnchor];
  [(VMMessageRestrictedView *)self titleLabelBaselineAnchorLayoutConstraintConstant];
  v17 = [v14 constraintEqualToAnchor:v15 constant:-v16];
  [(VMMessageRestrictedView *)self setTitleLabelLastBaselineAnchorLayoutConstraint:v17];

  v28 = [(VMMessageRestrictedView *)self titleLabel];
  v18 = [v28 leadingAnchor];
  v19 = [(VMMessageRestrictedView *)self leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v29[0] = v20;
  v21 = [(VMMessageRestrictedView *)self titleLabel];
  v22 = [v21 trailingAnchor];
  v23 = [(VMMessageRestrictedView *)self trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v29[1] = v24;
  v25 = [(VMMessageRestrictedView *)self titleLabelFirstBaselineAnchorLayoutConstraint];
  v29[2] = v25;
  v26 = [(VMMessageRestrictedView *)self titleLabelLastBaselineAnchorLayoutConstraint];
  v29[3] = v26;
  v27 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v27];
}

- (void)setLocalizedAttributedRestrictedAlertTitle:(id)a3
{
  v5 = a3;
  if (self->_localizedAttributedRestrictedAlertTitle != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_localizedAttributedRestrictedAlertTitle, a3);
    v6 = [(VMMessageRestrictedView *)self titleLabel];
    [v6 setAttributedText:v7];

    v5 = v7;
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = VMMessageRestrictedView;
  [(VMMessageRestrictedView *)&v3 tintColorDidChange];
  [(VMMessageRestrictedView *)self _updateTextColor];
}

- (void)_updateTextColor
{
  v5 = +[UIColor dynamicSecondaryLabelColor];
  v3 = [(VMMessageRestrictedView *)self _accessibilityHigherContrastTintColorForColor:v5];
  v4 = [(VMMessageRestrictedView *)self titleLabel];
  [v4 setTextColor:v3];
}

- (double)titleLabelBaselineAnchorLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUISubheadlineShortFont];
  [v2 _scaledValueForValue:20.0];
  v4 = ceil(v3);

  return v4;
}

@end
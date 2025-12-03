@interface VMMessageRestrictedView
- (double)titleLabelBaselineAnchorLayoutConstraintConstant;
- (void)_updateTextColor;
- (void)commonInit;
- (void)loadView;
- (void)setLocalizedAttributedRestrictedAlertTitle:(id)title;
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
  titleLabel = [(VMMessageRestrictedView *)self titleLabel];
  [titleLabel setFont:v4];

  titleLabel2 = [(VMMessageRestrictedView *)self titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [(VMMessageRestrictedView *)self titleLabel];
  [titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(VMMessageRestrictedView *)self _updateTextColor];
  titleLabel4 = [(VMMessageRestrictedView *)self titleLabel];
  [(VMMessageRestrictedView *)self addSubview:titleLabel4];

  titleLabel5 = [(VMMessageRestrictedView *)self titleLabel];
  firstBaselineAnchor = [titleLabel5 firstBaselineAnchor];
  topAnchor = [(VMMessageRestrictedView *)self topAnchor];
  [(VMMessageRestrictedView *)self titleLabelBaselineAnchorLayoutConstraintConstant];
  v12 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [(VMMessageRestrictedView *)self setTitleLabelFirstBaselineAnchorLayoutConstraint:v12];

  titleLabel6 = [(VMMessageRestrictedView *)self titleLabel];
  lastBaselineAnchor = [titleLabel6 lastBaselineAnchor];
  bottomAnchor = [(VMMessageRestrictedView *)self bottomAnchor];
  [(VMMessageRestrictedView *)self titleLabelBaselineAnchorLayoutConstraintConstant];
  v17 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-v16];
  [(VMMessageRestrictedView *)self setTitleLabelLastBaselineAnchorLayoutConstraint:v17];

  titleLabel7 = [(VMMessageRestrictedView *)self titleLabel];
  leadingAnchor = [titleLabel7 leadingAnchor];
  leadingAnchor2 = [(VMMessageRestrictedView *)self leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v20;
  titleLabel8 = [(VMMessageRestrictedView *)self titleLabel];
  trailingAnchor = [titleLabel8 trailingAnchor];
  trailingAnchor2 = [(VMMessageRestrictedView *)self trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[1] = v24;
  titleLabelFirstBaselineAnchorLayoutConstraint = [(VMMessageRestrictedView *)self titleLabelFirstBaselineAnchorLayoutConstraint];
  v29[2] = titleLabelFirstBaselineAnchorLayoutConstraint;
  titleLabelLastBaselineAnchorLayoutConstraint = [(VMMessageRestrictedView *)self titleLabelLastBaselineAnchorLayoutConstraint];
  v29[3] = titleLabelLastBaselineAnchorLayoutConstraint;
  v27 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v27];
}

- (void)setLocalizedAttributedRestrictedAlertTitle:(id)title
{
  titleCopy = title;
  if (self->_localizedAttributedRestrictedAlertTitle != titleCopy)
  {
    v7 = titleCopy;
    objc_storeStrong(&self->_localizedAttributedRestrictedAlertTitle, title);
    titleLabel = [(VMMessageRestrictedView *)self titleLabel];
    [titleLabel setAttributedText:v7];

    titleCopy = v7;
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
  titleLabel = [(VMMessageRestrictedView *)self titleLabel];
  [titleLabel setTextColor:v3];
}

- (double)titleLabelBaselineAnchorLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUISubheadlineShortFont];
  [v2 _scaledValueForValue:20.0];
  v4 = ceil(v3);

  return v4;
}

@end
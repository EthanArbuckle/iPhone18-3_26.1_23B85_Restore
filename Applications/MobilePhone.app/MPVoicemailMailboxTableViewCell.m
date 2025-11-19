@interface MPVoicemailMailboxTableViewCell
+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3;
- (double)subtitleLabelLastBaselineLayoutConstraintConstant;
- (double)titleLabelFirstBaselineLayoutConstraintConstant;
- (void)_updateTextColor;
- (void)commonInit;
- (void)loadConstraints;
- (void)loadContentView;
- (void)tintColorDidChange;
- (void)unloadConstraints;
- (void)updateConstraints;
- (void)updateFonts;
@end

@implementation MPVoicemailMailboxTableViewCell

+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3
{
  [a1 titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:a3];
  v4 = v3;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v3 commonInit];
  [(MPVoicemailMailboxTableViewCell *)self setAccessoryType:1];
}

- (void)loadContentView
{
  v13.receiver = self;
  v13.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v13 loadContentView];
  v3 = objc_alloc_init(UILabel);
  [(MPVoicemailMailboxTableViewCell *)self setTitleLabel:v3];

  v4 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  [v4 setTextAlignment:4];

  v5 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(MPVoicemailMailboxTableViewCell *)self contentView];
  v7 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  [v6 addSubview:v7];

  v8 = objc_alloc_init(UILabel);
  [(MPVoicemailMailboxTableViewCell *)self setCountLabel:v8];

  v9 = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  [v9 setTextAlignment:4];

  v10 = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(MPVoicemailMailboxTableViewCell *)self contentView];
  v12 = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  [v11 addSubview:v12];

  [(MPVoicemailMailboxTableViewCell *)self _updateTextColor];
}

- (void)loadConstraints
{
  v35.receiver = self;
  v35.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v35 loadConstraints];
  v34 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  v32 = [v34 leadingAnchor];
  v33 = [(MPVoicemailMailboxTableViewCell *)self contentView];
  v31 = [v33 leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31 constant:34.0];
  v36[0] = v30;
  v29 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  v27 = [v29 trailingAnchor];
  v28 = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  v26 = [v28 leadingAnchor];
  v25 = [v27 constraintLessThanOrEqualToAnchor:v26];
  v36[1] = v25;
  v24 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  v22 = [v24 centerYAnchor];
  v23 = [(MPVoicemailMailboxTableViewCell *)self contentView];
  v21 = [v23 centerYAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v36[2] = v20;
  v19 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  v17 = [v19 firstBaselineAnchor];
  v18 = [(MPVoicemailMailboxTableViewCell *)self contentView];
  v16 = [v18 topAnchor];
  [(MPVoicemailMailboxTableViewCell *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v15 = [v17 constraintEqualToAnchor:v16 constant:?];
  v36[3] = v15;
  v14 = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  v13 = [v14 trailingAnchor];
  v3 = [(MPVoicemailMailboxTableViewCell *)self contentView];
  v4 = [v3 trailingAnchor];
  v5 = [v13 constraintEqualToAnchor:v4 constant:-16.0];
  v36[4] = v5;
  v6 = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  v7 = [v6 centerYAnchor];
  v8 = [(MPVoicemailMailboxTableViewCell *)self contentView];
  v9 = [v8 centerYAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v36[5] = v10;
  v11 = [NSArray arrayWithObjects:v36 count:6];
  [(MPVoicemailMailboxTableViewCell *)self setAllConstraints:v11];

  v12 = [(MPVoicemailMailboxTableViewCell *)self allConstraints];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)unloadConstraints
{
  v4.receiver = self;
  v4.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v4 unloadConstraints];
  v3 = [(MPVoicemailMailboxTableViewCell *)self allConstraints];
  [NSLayoutConstraint deactivateConstraints:v3];
}

- (void)updateFonts
{
  v9.receiver = self;
  v9.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v9 updateFonts];
  if ([(MPVoicemailMailboxTableViewCell *)self isAccessiblityConstraintsEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  [v4 setNumberOfLines:v3];

  v5 = +[UIFont telephonyUISubheadlineShortFont];
  v6 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  [v6 setFont:v5];

  v7 = +[UIFont telephonyUISubheadlineShortFont];
  v8 = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  [v8 setFont:v7];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v3 updateConstraints];
  [(MPVoicemailMailboxTableViewCell *)self updateFonts];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v3 tintColorDidChange];
  [(MPVoicemailMailboxTableViewCell *)self _updateTextColor];
}

- (void)_updateTextColor
{
  v5 = +[UIColor systemGrayColor];
  v3 = [(MPVoicemailMailboxTableViewCell *)self _accessibilityHigherContrastTintColorForColor:v5];
  v4 = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  [v4 setTextColor:v3];
}

- (double)titleLabelFirstBaselineLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortEmphasizedFont];
  [v2 _scaledValueForValue:27.0];
  v4 = ceil(v3);

  return v4;
}

- (double)subtitleLabelLastBaselineLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUISubheadlineShortFont];
  [v2 _scaledValueForValue:13.0];
  v4 = ceil(v3);

  return v4;
}

@end
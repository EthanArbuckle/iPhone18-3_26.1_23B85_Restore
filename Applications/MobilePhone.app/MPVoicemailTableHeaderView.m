@interface MPVoicemailTableHeaderView
- (MPVoicemailTableHeaderView)initWithCoder:(id)a3;
- (double)messageLabelFirstBaselineLayoutConstraintConstant;
- (double)messageLabelLastBaselineLayoutConstraintConstant;
- (double)titleLabelFirstBaselineLayoutConstraintConstant;
- (void)commonInit;
- (void)loadConstraints;
- (void)loadView;
- (void)updateConstraintsConstants;
- (void)updateFonts;
- (void)updateLabels;
@end

@implementation MPVoicemailTableHeaderView

- (MPVoicemailTableHeaderView)initWithCoder:(id)a3
{
  [(MPVoicemailTableHeaderView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = MPVoicemailTableHeaderView;
  [(MPVoicemailTableHeaderView *)&v3 commonInit];
  [(MPVoicemailTableHeaderView *)self loadView];
}

- (void)loadView
{
  v3 = +[UIColor systemMidGrayColor];
  v4 = [v3 colorWithAlphaComponent:0.600000024];
  [(MPVoicemailTableHeaderView *)self setBackgroundColor:v4];

  [(MPVoicemailTableHeaderView *)self setClipsToBounds:1];
  v5 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v5;

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1148846080;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:0 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v10];
  [(MPVoicemailTableHeaderView *)self addSubview:self->_titleLabel];
  v11 = objc_alloc_init(UILabel);
  messageLabel = self->_messageLabel;
  self->_messageLabel = v11;

  [(UILabel *)self->_messageLabel setLineBreakMode:0];
  [(UILabel *)self->_messageLabel setNumberOfLines:0];
  [(UILabel *)self->_messageLabel setTextAlignment:1];
  [(UILabel *)self->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1148846080;
  [(UILabel *)self->_messageLabel setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [(UILabel *)self->_messageLabel setContentCompressionResistancePriority:1 forAxis:v14];
  LODWORD(v15) = 1144750080;
  [(UILabel *)self->_messageLabel setContentHuggingPriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [(UILabel *)self->_messageLabel setContentHuggingPriority:1 forAxis:v16];
  v17 = self->_messageLabel;

  [(MPVoicemailTableHeaderView *)self addSubview:v17];
}

- (void)loadConstraints
{
  v3 = [(MPVoicemailTableHeaderView *)self titleLabel];
  v4 = [v3 centerXAnchor];
  v5 = [(MPVoicemailTableHeaderView *)self centerXAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  v7 = NSStringFromSelector("titleLabelCenterXAnchorLayoutConstraint");
  [v6 setIdentifier:v7];

  [v6 setActive:1];
  [(MPVoicemailTableHeaderView *)self setTitleLabelCenterXAnchorLayoutConstraint:v6];
  v8 = [(MPVoicemailTableHeaderView *)self titleLabel];
  v9 = [v8 leadingAnchor];
  v10 = [(MPVoicemailTableHeaderView *)self leadingAnchor];
  [(MPVoicemailTableHeaderView *)self titleLabelLeadingLayoutConstraintConstant];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10 constant:?];

  v12 = NSStringFromSelector("titleLabelLeadingLayoutConstraint");
  [v11 setIdentifier:v12];

  LODWORD(v13) = 1148829696;
  [v11 setPriority:v13];
  [v11 setActive:1];
  [(MPVoicemailTableHeaderView *)self setTitleLabelLeadingLayoutConstraint:v11];
  v14 = [(MPVoicemailTableHeaderView *)self trailingAnchor];
  v15 = [(MPVoicemailTableHeaderView *)self titleLabel];
  v16 = [v15 trailingAnchor];
  [(MPVoicemailTableHeaderView *)self titleLabelTrailingLayoutConstraintConstant];
  v17 = [v14 constraintGreaterThanOrEqualToAnchor:v16 constant:?];

  v18 = NSStringFromSelector("titleLabelTrailingLayoutConstraint");
  [v17 setIdentifier:v18];

  LODWORD(v19) = 1148829696;
  [v17 setPriority:v19];
  [v17 setActive:1];
  [(MPVoicemailTableHeaderView *)self setTitleLabelTrailingLayoutConstraint:v17];
  v20 = [(MPVoicemailTableHeaderView *)self titleLabel];
  v21 = [v20 firstBaselineAnchor];
  v22 = [(MPVoicemailTableHeaderView *)self topAnchor];
  [(MPVoicemailTableHeaderView *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v23 = [v21 constraintEqualToAnchor:v22 constant:?];

  v24 = NSStringFromSelector("titleLabelLeadingLayoutConstraint");
  [v23 setIdentifier:v24];

  [v23 setActive:1];
  [(MPVoicemailTableHeaderView *)self setTitleLabelFirstBaselineLayoutConstraint:v23];
  v25 = [(MPVoicemailTableHeaderView *)self messageLabelFirstBaselineLayoutConstraint];
  [(MPVoicemailTableHeaderView *)self setTitleLabelLastBaselineLayoutConstraint:v25];

  v26 = [(MPVoicemailTableHeaderView *)self messageLabel];
  v27 = [v26 centerXAnchor];
  v28 = [(MPVoicemailTableHeaderView *)self titleLabel];
  v29 = [v28 centerXAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];

  v31 = NSStringFromSelector("messageLabelCenterXAnchorLayoutConstraint");
  [v30 setIdentifier:v31];

  [v30 setActive:1];
  [(MPVoicemailTableHeaderView *)self setMessageLabelCenterXAnchorLayoutConstraint:v30];
  v32 = [(MPVoicemailTableHeaderView *)self messageLabel];
  v33 = [v32 leadingAnchor];
  v34 = [(MPVoicemailTableHeaderView *)self leadingAnchor];
  [(MPVoicemailTableHeaderView *)self messageLabelLeadingLayoutConstraintConstant];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34 constant:?];

  v36 = NSStringFromSelector("messageLabelLeadingLayoutConstraint");
  [v35 setIdentifier:v36];

  LODWORD(v37) = 1148829696;
  [v35 setPriority:v37];
  [v35 setActive:1];
  [(MPVoicemailTableHeaderView *)self setMessageLabelLeadingLayoutConstraint:v35];
  v38 = [(MPVoicemailTableHeaderView *)self trailingAnchor];
  v39 = [(MPVoicemailTableHeaderView *)self messageLabel];
  v40 = [v39 trailingAnchor];
  [(MPVoicemailTableHeaderView *)self messageLabelTrailingLayoutConstraintConstant];
  v41 = [v38 constraintGreaterThanOrEqualToAnchor:v40 constant:?];

  v42 = NSStringFromSelector("messageLabelTrailingLayoutConstraint");
  [v41 setIdentifier:v42];

  LODWORD(v43) = 1148829696;
  [v41 setPriority:v43];
  [v41 setActive:1];
  [(MPVoicemailTableHeaderView *)self setMessageLabelTrailingLayoutConstraint:v41];
  v44 = [(MPVoicemailTableHeaderView *)self messageLabel];
  v45 = [v44 firstBaselineAnchor];
  v46 = [(MPVoicemailTableHeaderView *)self titleLabel];
  v47 = [v46 lastBaselineAnchor];
  [(MPVoicemailTableHeaderView *)self messageLabelFirstBaselineLayoutConstraintConstant];
  v48 = [v45 constraintEqualToAnchor:v47 constant:?];

  v49 = NSStringFromSelector("messageLabelFirstBaselineLayoutConstraint");
  [v48 setIdentifier:v49];

  [v48 setActive:1];
  [(MPVoicemailTableHeaderView *)self setMessageLabelFirstBaselineLayoutConstraint:v48];
  v50 = [(MPVoicemailTableHeaderView *)self bottomAnchor];
  v51 = [(MPVoicemailTableHeaderView *)self messageLabel];
  v52 = [v51 lastBaselineAnchor];
  [(MPVoicemailTableHeaderView *)self messageLabelLastBaselineLayoutConstraintConstant];
  v53 = [v50 constraintEqualToAnchor:v52 constant:?];

  v54 = NSStringFromSelector("messageLabelLastBaselineLayoutConstraint");
  [v53 setIdentifier:v54];

  [v53 setActive:1];
  [(MPVoicemailTableHeaderView *)self setMessageLabelLastBaselineLayoutConstraint:v53];
  [(MPVoicemailTableHeaderView *)self updateLabels];
  v55.receiver = self;
  v55.super_class = MPVoicemailTableHeaderView;
  [(MPVoicemailTableHeaderView *)&v55 loadConstraints];
}

- (void)updateConstraintsConstants
{
  v27.receiver = self;
  v27.super_class = MPVoicemailTableHeaderView;
  [(MPVoicemailTableHeaderView *)&v27 updateConstraintsConstants];
  [(MPVoicemailTableHeaderView *)self messageLabelFirstBaselineLayoutConstraintConstant];
  v4 = v3;
  v5 = [(MPVoicemailTableHeaderView *)self messageLabelFirstBaselineLayoutConstraint];
  [v5 setConstant:v4];

  [(MPVoicemailTableHeaderView *)self messageLabelLastBaselineLayoutConstraintConstant];
  v7 = v6;
  v8 = [(MPVoicemailTableHeaderView *)self messageLabelLastBaselineLayoutConstraint];
  [v8 setConstant:v7];

  [(MPVoicemailTableHeaderView *)self messageLabelLeadingLayoutConstraintConstant];
  v10 = v9;
  v11 = [(MPVoicemailTableHeaderView *)self messageLabelLeadingLayoutConstraint];
  [v11 setConstant:v10];

  [(MPVoicemailTableHeaderView *)self messageLabelTrailingLayoutConstraintConstant];
  v13 = v12;
  v14 = [(MPVoicemailTableHeaderView *)self messageLabelTrailingLayoutConstraint];
  [v14 setConstant:v13];

  [(MPVoicemailTableHeaderView *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v16 = v15;
  v17 = [(MPVoicemailTableHeaderView *)self titleLabelFirstBaselineLayoutConstraint];
  [v17 setConstant:v16];

  [(MPVoicemailTableHeaderView *)self titleLabelLastBaselineLayoutConstraintConstant];
  v19 = v18;
  v20 = [(MPVoicemailTableHeaderView *)self titleLabelLastBaselineLayoutConstraint];
  [v20 setConstant:v19];

  [(MPVoicemailTableHeaderView *)self titleLabelLeadingLayoutConstraintConstant];
  v22 = v21;
  v23 = [(MPVoicemailTableHeaderView *)self titleLabelLeadingLayoutConstraint];
  [v23 setConstant:v22];

  [(MPVoicemailTableHeaderView *)self titleLabelTrailingLayoutConstraintConstant];
  v25 = v24;
  v26 = [(MPVoicemailTableHeaderView *)self titleLabelTrailingLayoutConstraint];
  [v26 setConstant:v25];

  [(MPVoicemailTableHeaderView *)self updateLabels];
}

- (void)updateFonts
{
  v5.receiver = self;
  v5.super_class = MPVoicemailTableHeaderView;
  [(MPVoicemailTableHeaderView *)&v5 updateFonts];
  v3 = +[UIFont telephonyUIBodyShortEmphasizedFont];
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = +[UIFont telephonyUISubheadlineShortFont];
  [(UILabel *)self->_messageLabel setFont:v4];
}

- (void)updateLabels
{
  [(MPVoicemailTableHeaderView *)self bounds];
  Width = CGRectGetWidth(v16);
  [(MPVoicemailTableHeaderView *)self messageLabelLeadingLayoutConstraintConstant];
  v5 = Width - v4;
  [(MPVoicemailTableHeaderView *)self messageLabelTrailingLayoutConstraintConstant];
  v7 = v5 - v6;
  v8 = [(MPVoicemailTableHeaderView *)self messageLabel];
  [v8 setPreferredMaxLayoutWidth:v7];

  [(MPVoicemailTableHeaderView *)self bounds];
  v9 = CGRectGetWidth(v17);
  [(MPVoicemailTableHeaderView *)self titleLabelLeadingLayoutConstraintConstant];
  v11 = v9 - v10;
  [(MPVoicemailTableHeaderView *)self titleLabelTrailingLayoutConstraintConstant];
  v13 = v11 - v12;
  v14 = [(MPVoicemailTableHeaderView *)self titleLabel];
  [v14 setPreferredMaxLayoutWidth:v13];
}

- (double)messageLabelFirstBaselineLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUISubheadlineShortFont];
  v3 = [v2 fontDescriptor];
  v4 = [v3 objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v4)
  {
    v5 = [UIFontMetrics metricsForTextStyle:v4];
    [v5 scaledValueForValue:20.0];
    v7 = ceil(v6);
  }

  else
  {
    v7 = 20.0;
  }

  return v7;
}

- (double)messageLabelLastBaselineLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortFont];
  v3 = [v2 fontDescriptor];
  v4 = [v3 objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v4)
  {
    v5 = [UIFontMetrics metricsForTextStyle:v4];
    [v5 scaledValueForValue:13.0];
    v7 = ceil(v6);
  }

  else
  {
    v7 = 13.0;
  }

  return v7;
}

- (double)titleLabelFirstBaselineLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortEmphasizedFont];
  v3 = [v2 fontDescriptor];
  v4 = [v3 objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v4)
  {
    v5 = [UIFontMetrics metricsForTextStyle:v4];
    [v5 scaledValueForValue:27.0];
    v7 = ceil(v6);
  }

  else
  {
    v7 = 27.0;
  }

  return v7;
}

@end
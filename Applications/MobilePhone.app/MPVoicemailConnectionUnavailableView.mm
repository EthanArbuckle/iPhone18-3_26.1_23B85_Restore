@interface MPVoicemailConnectionUnavailableView
- (BOOL)isButtonHidden;
- (double)buttonTitleLabelFirstBaselineLayoutConstraintConstant;
- (double)buttonTitleLabelLastBaselineLayoutConstraintConstant;
- (double)titleLabelFirstBaselineLayoutConstraintConstant;
- (double)titleLabelLastBaselineLayoutConstraintConstant;
- (void)loadConstraints;
- (void)loadView;
- (void)setButtonHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)updateConstraintsConstants;
- (void)updateFonts;
@end

@implementation MPVoicemailConnectionUnavailableView

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = MPVoicemailConnectionUnavailableView;
  [(MPVoicemailTableHeaderView *)&v12 loadView];
  v3 = [(MPVoicemailTableHeaderView *)self messageLabel];
  [v3 setHidden:1];
  v4 = [(MPVoicemailTableHeaderView *)self titleLabel];
  [v4 setLineBreakMode:0];
  [v4 setNumberOfLines:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"VOICEMAIL_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];
  [v4 setText:v6];

  [v4 setTextAlignment:1];
  v7 = [UIButton buttonWithType:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"CALL_VOICEMAIL" value:&stru_10028F310 table:@"Voicemail"];
  [v7 setTitle:v9 forState:0];

  LODWORD(v10) = 1148846080;
  [v7 setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v11];
  [(MPVoicemailConnectionUnavailableView *)self addSubview:v7];
  [(MPVoicemailConnectionUnavailableView *)self setButton:v7];
}

- (void)loadConstraints
{
  v48.receiver = self;
  v48.super_class = MPVoicemailConnectionUnavailableView;
  [(MPVoicemailTableHeaderView *)&v48 loadConstraints];
  v3 = [(MPVoicemailTableHeaderView *)self messageLabelCenterXAnchorLayoutConstraint];
  [v3 setActive:0];

  v4 = [(MPVoicemailTableHeaderView *)self messageLabelLeadingLayoutConstraint];
  [v4 setActive:0];

  v5 = [(MPVoicemailTableHeaderView *)self messageLabelTrailingLayoutConstraint];
  [v5 setActive:0];

  v6 = [(MPVoicemailTableHeaderView *)self messageLabelFirstBaselineLayoutConstraint];
  [v6 setActive:0];

  v7 = [(MPVoicemailTableHeaderView *)self messageLabelLastBaselineLayoutConstraint];
  [v7 setActive:0];

  v8 = [(MPVoicemailConnectionUnavailableView *)self bottomAnchor];
  v9 = [(MPVoicemailTableHeaderView *)self titleLabel];
  v10 = [v9 lastBaselineAnchor];
  [(MPVoicemailConnectionUnavailableView *)self titleLabelLastBaselineLayoutConstraintConstant];
  v11 = [v8 constraintGreaterThanOrEqualToAnchor:v10 constant:?];

  v12 = [(MPVoicemailConnectionUnavailableView *)self button];
  if ([v12 isHidden])
  {
    *&v13 = 999.0;
  }

  else
  {
    *&v13 = 1.0;
  }

  [v11 setPriority:v13];

  v14 = NSStringFromSelector("titleLabelLastBaselineLayoutConstraint");
  [v11 setIdentifier:v14];

  [v11 setActive:1];
  [(MPVoicemailTableHeaderView *)self setTitleLabelLastBaselineLayoutConstraint:v11];
  v15 = [(MPVoicemailConnectionUnavailableView *)self button];
  v16 = [v15 centerXAnchor];
  v17 = [(MPVoicemailTableHeaderView *)self titleLabel];
  v18 = [v17 centerXAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];

  v20 = NSStringFromSelector("buttonCenterXLayoutConstraint");
  [v19 setIdentifier:v20];

  [v19 setActive:1];
  [(MPVoicemailConnectionUnavailableView *)self setButtonCenterXLayoutConstraint:v19];
  v21 = [(MPVoicemailConnectionUnavailableView *)self button];
  v22 = [v21 leadingAnchor];
  v23 = [(MPVoicemailConnectionUnavailableView *)self leadingAnchor];
  v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23];

  LODWORD(v25) = 1148829696;
  [v24 setPriority:v25];
  v26 = NSStringFromSelector("buttonLeadingLayoutConstraint");
  [v24 setIdentifier:v26];

  [v24 setActive:1];
  [(MPVoicemailConnectionUnavailableView *)self setButtonLeadingLayoutConstraint:v24];
  v27 = [(MPVoicemailConnectionUnavailableView *)self trailingAnchor];
  v28 = [(MPVoicemailConnectionUnavailableView *)self button];
  v29 = [v28 trailingAnchor];
  v30 = [v27 constraintGreaterThanOrEqualToAnchor:v29];

  LODWORD(v31) = 1148829696;
  [v30 setPriority:v31];
  v32 = NSStringFromSelector("buttonTrailingLayoutConstraint");
  [v30 setIdentifier:v32];

  [v30 setActive:1];
  [(MPVoicemailConnectionUnavailableView *)self setButtonTrailingLayoutConstraint:v30];
  v33 = [(MPVoicemailConnectionUnavailableView *)self button];
  v34 = [v33 titleLabel];
  v35 = [v34 firstBaselineAnchor];
  v36 = [(MPVoicemailTableHeaderView *)self titleLabel];
  v37 = [v36 lastBaselineAnchor];
  [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelFirstBaselineLayoutConstraintConstant];
  v38 = [v35 constraintEqualToAnchor:v37 constant:?];

  v39 = NSStringFromSelector("buttonTitleLabelFirstBaselineLayoutConstraint");
  [v38 setIdentifier:v39];

  [v38 setActive:1];
  [(MPVoicemailConnectionUnavailableView *)self setButtonTitleLabelFirstBaselineLayoutConstraint:v38];
  v40 = [(MPVoicemailConnectionUnavailableView *)self bottomAnchor];
  v41 = [(MPVoicemailConnectionUnavailableView *)self button];
  v42 = [v41 titleLabel];
  v43 = [v42 lastBaselineAnchor];
  [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelLastBaselineLayoutConstraintConstant];
  v44 = [v40 constraintGreaterThanOrEqualToAnchor:v43 constant:?];

  v45 = [(MPVoicemailConnectionUnavailableView *)self button];
  if ([v45 isHidden])
  {
    *&v46 = 1.0;
  }

  else
  {
    *&v46 = 999.0;
  }

  [v44 setPriority:v46];

  v47 = NSStringFromSelector("buttonTitleLabelLastBaselineLayoutConstraint");
  [v44 setIdentifier:v47];

  [v44 setActive:1];
  [(MPVoicemailConnectionUnavailableView *)self setButtonTitleLabelLastBaselineLayoutConstraint:v44];
}

- (void)updateConstraintsConstants
{
  v9.receiver = self;
  v9.super_class = MPVoicemailConnectionUnavailableView;
  [(MPVoicemailTableHeaderView *)&v9 updateConstraintsConstants];
  [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelFirstBaselineLayoutConstraintConstant];
  v4 = v3;
  v5 = [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelFirstBaselineLayoutConstraint];
  [v5 setConstant:v4];

  [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelLastBaselineLayoutConstraintConstant];
  v7 = v6;
  v8 = [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelLastBaselineLayoutConstraint];
  [v8 setConstant:v7];
}

- (void)updateFonts
{
  v6.receiver = self;
  v6.super_class = MPVoicemailConnectionUnavailableView;
  [(MPVoicemailTableHeaderView *)&v6 updateFonts];
  v3 = +[UIFont telephonyUIBodyShortEmphasizedFont];
  v4 = [(MPVoicemailConnectionUnavailableView *)self button];
  v5 = [v4 titleLabel];
  [v5 setFont:v3];
}

- (BOOL)isButtonHidden
{
  v2 = [(MPVoicemailConnectionUnavailableView *)self button];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setButtonHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(MPVoicemailConnectionUnavailableView *)self button];
  v10 = [v9 isHidden];

  if (v10 != v6)
  {
    [(MPVoicemailConnectionUnavailableView *)self layoutIfNeeded];
    v11 = [(MPVoicemailConnectionUnavailableView *)self button];
    [v11 setHidden:v6];

    v12 = [(MPVoicemailTableHeaderView *)self titleLabelLastBaselineLayoutConstraint];
    v14 = v12;
    if (v6)
    {
      *&v13 = 999.0;
    }

    else
    {
      *&v13 = 1.0;
    }

    if (v6)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 999.0;
    }

    [v12 setPriority:v13];

    v16 = [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelLastBaselineLayoutConstraint];
    *&v17 = v15;
    [v16 setPriority:v17];

    [(MPVoicemailConnectionUnavailableView *)self setNeedsUpdateConstraints];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __76__MPVoicemailConnectionUnavailableView_setButtonHidden_animated_completion___block_invoke;
    v20[3] = &unk_100284FD0;
    v20[4] = self;
    v18 = objc_retainBlock(v20);
    v19 = 0.300000012;
    if (!v5)
    {
      v19 = 0.0;
    }

    [UIView animateWithDuration:v18 animations:v8 completion:v19];
  }
}

- (double)buttonTitleLabelFirstBaselineLayoutConstraintConstant
{
  v2 = [(MPVoicemailTableHeaderView *)self titleLabel];
  v3 = [v2 font];
  [v3 _scaledValueForValue:24.0];
  v5 = ceil(v4);

  return v5;
}

- (double)buttonTitleLabelLastBaselineLayoutConstraintConstant
{
  v2 = [(MPVoicemailTableHeaderView *)self titleLabel];
  v3 = [v2 font];
  [v3 _scaledValueForValue:13.0];
  v5 = ceil(v4);

  return v5;
}

- (double)titleLabelFirstBaselineLayoutConstraintConstant
{
  v3 = [(MPVoicemailConnectionUnavailableView *)self button];
  if ([v3 isHidden])
  {
    v4 = [(MPVoicemailTableHeaderView *)self titleLabel];
    v5 = [v4 font];
    [v5 _scaledValueForValue:36.0];
    v7 = ceil(v6);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MPVoicemailConnectionUnavailableView;
    [(MPVoicemailTableHeaderView *)&v10 titleLabelFirstBaselineLayoutConstraintConstant];
    v7 = v8;
  }

  return v7;
}

- (double)titleLabelLastBaselineLayoutConstraintConstant
{
  v2 = [(MPVoicemailTableHeaderView *)self titleLabel];
  v3 = [v2 font];
  [v3 _scaledValueForValue:24.0];
  v5 = ceil(v4);

  return v5;
}

@end
@interface MPVoicemailConnectionUnavailableView
- (BOOL)isButtonHidden;
- (double)buttonTitleLabelFirstBaselineLayoutConstraintConstant;
- (double)buttonTitleLabelLastBaselineLayoutConstraintConstant;
- (double)titleLabelFirstBaselineLayoutConstraintConstant;
- (double)titleLabelLastBaselineLayoutConstraintConstant;
- (void)loadConstraints;
- (void)loadView;
- (void)setButtonHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)updateConstraintsConstants;
- (void)updateFonts;
@end

@implementation MPVoicemailConnectionUnavailableView

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = MPVoicemailConnectionUnavailableView;
  [(MPVoicemailTableHeaderView *)&v12 loadView];
  messageLabel = [(MPVoicemailTableHeaderView *)self messageLabel];
  [messageLabel setHidden:1];
  titleLabel = [(MPVoicemailTableHeaderView *)self titleLabel];
  [titleLabel setLineBreakMode:0];
  [titleLabel setNumberOfLines:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"VOICEMAIL_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];
  [titleLabel setText:v6];

  [titleLabel setTextAlignment:1];
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
  messageLabelCenterXAnchorLayoutConstraint = [(MPVoicemailTableHeaderView *)self messageLabelCenterXAnchorLayoutConstraint];
  [messageLabelCenterXAnchorLayoutConstraint setActive:0];

  messageLabelLeadingLayoutConstraint = [(MPVoicemailTableHeaderView *)self messageLabelLeadingLayoutConstraint];
  [messageLabelLeadingLayoutConstraint setActive:0];

  messageLabelTrailingLayoutConstraint = [(MPVoicemailTableHeaderView *)self messageLabelTrailingLayoutConstraint];
  [messageLabelTrailingLayoutConstraint setActive:0];

  messageLabelFirstBaselineLayoutConstraint = [(MPVoicemailTableHeaderView *)self messageLabelFirstBaselineLayoutConstraint];
  [messageLabelFirstBaselineLayoutConstraint setActive:0];

  messageLabelLastBaselineLayoutConstraint = [(MPVoicemailTableHeaderView *)self messageLabelLastBaselineLayoutConstraint];
  [messageLabelLastBaselineLayoutConstraint setActive:0];

  bottomAnchor = [(MPVoicemailConnectionUnavailableView *)self bottomAnchor];
  titleLabel = [(MPVoicemailTableHeaderView *)self titleLabel];
  lastBaselineAnchor = [titleLabel lastBaselineAnchor];
  [(MPVoicemailConnectionUnavailableView *)self titleLabelLastBaselineLayoutConstraintConstant];
  v11 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor constant:?];

  button = [(MPVoicemailConnectionUnavailableView *)self button];
  if ([button isHidden])
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
  button2 = [(MPVoicemailConnectionUnavailableView *)self button];
  centerXAnchor = [button2 centerXAnchor];
  titleLabel2 = [(MPVoicemailTableHeaderView *)self titleLabel];
  centerXAnchor2 = [titleLabel2 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  v20 = NSStringFromSelector("buttonCenterXLayoutConstraint");
  [v19 setIdentifier:v20];

  [v19 setActive:1];
  [(MPVoicemailConnectionUnavailableView *)self setButtonCenterXLayoutConstraint:v19];
  button3 = [(MPVoicemailConnectionUnavailableView *)self button];
  leadingAnchor = [button3 leadingAnchor];
  leadingAnchor2 = [(MPVoicemailConnectionUnavailableView *)self leadingAnchor];
  v24 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];

  LODWORD(v25) = 1148829696;
  [v24 setPriority:v25];
  v26 = NSStringFromSelector("buttonLeadingLayoutConstraint");
  [v24 setIdentifier:v26];

  [v24 setActive:1];
  [(MPVoicemailConnectionUnavailableView *)self setButtonLeadingLayoutConstraint:v24];
  trailingAnchor = [(MPVoicemailConnectionUnavailableView *)self trailingAnchor];
  button4 = [(MPVoicemailConnectionUnavailableView *)self button];
  trailingAnchor2 = [button4 trailingAnchor];
  v30 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];

  LODWORD(v31) = 1148829696;
  [v30 setPriority:v31];
  v32 = NSStringFromSelector("buttonTrailingLayoutConstraint");
  [v30 setIdentifier:v32];

  [v30 setActive:1];
  [(MPVoicemailConnectionUnavailableView *)self setButtonTrailingLayoutConstraint:v30];
  button5 = [(MPVoicemailConnectionUnavailableView *)self button];
  titleLabel3 = [button5 titleLabel];
  firstBaselineAnchor = [titleLabel3 firstBaselineAnchor];
  titleLabel4 = [(MPVoicemailTableHeaderView *)self titleLabel];
  lastBaselineAnchor2 = [titleLabel4 lastBaselineAnchor];
  [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelFirstBaselineLayoutConstraintConstant];
  v38 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:?];

  v39 = NSStringFromSelector("buttonTitleLabelFirstBaselineLayoutConstraint");
  [v38 setIdentifier:v39];

  [v38 setActive:1];
  [(MPVoicemailConnectionUnavailableView *)self setButtonTitleLabelFirstBaselineLayoutConstraint:v38];
  bottomAnchor2 = [(MPVoicemailConnectionUnavailableView *)self bottomAnchor];
  button6 = [(MPVoicemailConnectionUnavailableView *)self button];
  titleLabel5 = [button6 titleLabel];
  lastBaselineAnchor3 = [titleLabel5 lastBaselineAnchor];
  [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelLastBaselineLayoutConstraintConstant];
  v44 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor3 constant:?];

  button7 = [(MPVoicemailConnectionUnavailableView *)self button];
  if ([button7 isHidden])
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
  buttonTitleLabelFirstBaselineLayoutConstraint = [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelFirstBaselineLayoutConstraint];
  [buttonTitleLabelFirstBaselineLayoutConstraint setConstant:v4];

  [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelLastBaselineLayoutConstraintConstant];
  v7 = v6;
  buttonTitleLabelLastBaselineLayoutConstraint = [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelLastBaselineLayoutConstraint];
  [buttonTitleLabelLastBaselineLayoutConstraint setConstant:v7];
}

- (void)updateFonts
{
  v6.receiver = self;
  v6.super_class = MPVoicemailConnectionUnavailableView;
  [(MPVoicemailTableHeaderView *)&v6 updateFonts];
  v3 = +[UIFont telephonyUIBodyShortEmphasizedFont];
  button = [(MPVoicemailConnectionUnavailableView *)self button];
  titleLabel = [button titleLabel];
  [titleLabel setFont:v3];
}

- (BOOL)isButtonHidden
{
  button = [(MPVoicemailConnectionUnavailableView *)self button];
  isHidden = [button isHidden];

  return isHidden;
}

- (void)setButtonHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  button = [(MPVoicemailConnectionUnavailableView *)self button];
  isHidden = [button isHidden];

  if (isHidden != hiddenCopy)
  {
    [(MPVoicemailConnectionUnavailableView *)self layoutIfNeeded];
    button2 = [(MPVoicemailConnectionUnavailableView *)self button];
    [button2 setHidden:hiddenCopy];

    titleLabelLastBaselineLayoutConstraint = [(MPVoicemailTableHeaderView *)self titleLabelLastBaselineLayoutConstraint];
    v14 = titleLabelLastBaselineLayoutConstraint;
    if (hiddenCopy)
    {
      *&v13 = 999.0;
    }

    else
    {
      *&v13 = 1.0;
    }

    if (hiddenCopy)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 999.0;
    }

    [titleLabelLastBaselineLayoutConstraint setPriority:v13];

    buttonTitleLabelLastBaselineLayoutConstraint = [(MPVoicemailConnectionUnavailableView *)self buttonTitleLabelLastBaselineLayoutConstraint];
    *&v17 = v15;
    [buttonTitleLabelLastBaselineLayoutConstraint setPriority:v17];

    [(MPVoicemailConnectionUnavailableView *)self setNeedsUpdateConstraints];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __76__MPVoicemailConnectionUnavailableView_setButtonHidden_animated_completion___block_invoke;
    v20[3] = &unk_100284FD0;
    v20[4] = self;
    v18 = objc_retainBlock(v20);
    v19 = 0.300000012;
    if (!animatedCopy)
    {
      v19 = 0.0;
    }

    [UIView animateWithDuration:v18 animations:completionCopy completion:v19];
  }
}

- (double)buttonTitleLabelFirstBaselineLayoutConstraintConstant
{
  titleLabel = [(MPVoicemailTableHeaderView *)self titleLabel];
  font = [titleLabel font];
  [font _scaledValueForValue:24.0];
  v5 = ceil(v4);

  return v5;
}

- (double)buttonTitleLabelLastBaselineLayoutConstraintConstant
{
  titleLabel = [(MPVoicemailTableHeaderView *)self titleLabel];
  font = [titleLabel font];
  [font _scaledValueForValue:13.0];
  v5 = ceil(v4);

  return v5;
}

- (double)titleLabelFirstBaselineLayoutConstraintConstant
{
  button = [(MPVoicemailConnectionUnavailableView *)self button];
  if ([button isHidden])
  {
    titleLabel = [(MPVoicemailTableHeaderView *)self titleLabel];
    font = [titleLabel font];
    [font _scaledValueForValue:36.0];
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
  titleLabel = [(MPVoicemailTableHeaderView *)self titleLabel];
  font = [titleLabel font];
  [font _scaledValueForValue:24.0];
  v5 = ceil(v4);

  return v5;
}

@end
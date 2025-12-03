@interface RCPlatterTimeView
- (CGRect)_currentTimeLabelTightFrame;
- (NSLayoutXAxisAnchor)trailingCustomConcentricLayoutAnchor;
- (RCPlatterTimeView)initWithPresentationStyle:(unint64_t)style;
- (RCPlatterTimeViewDelegate)delegate;
- (id)_createCurrentTimeLabel;
- (id)_createStopButton;
- (id)_labelFontForState:(unint64_t)state presentationStyle:(unint64_t)style;
- (id)_labelTextColorForState:(unint64_t)state presentationStyle:(unint64_t)style;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (void)_constrainTimeLabelTopToObstructedAreaBottomIfNeeded;
- (void)_hideStopButton;
- (void)_hideTimeLabel;
- (void)_setupSubviews;
- (void)_showStopButton;
- (void)_showTimeLabel;
- (void)_updateLabelFont;
- (void)didTapOnStopButton:(id)button;
- (void)layoutSubviews;
- (void)setState:(unint64_t)state;
- (void)updateTime:(double)time;
@end

@implementation RCPlatterTimeView

- (RCPlatterTimeView)initWithPresentationStyle:(unint64_t)style
{
  v10.receiver = self;
  v10.super_class = RCPlatterTimeView;
  v4 = [(RCPlatterTimeView *)&v10 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    [(RCPlatterTimeView *)v4 setPresentationStyle:style];
    [(RCPlatterTimeView *)v5 _setupSubviews];
    v6 = objc_opt_self();
    v11 = v6;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8 = [(RCPlatterTimeView *)v5 registerForTraitChanges:v7 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = RCPlatterTimeView;
  [(RCPlatterTimeView *)&v3 layoutSubviews];
  [(RCPlatterTimeView *)self _constrainTimeLabelTopToObstructedAreaBottomIfNeeded];
}

- (void)setState:(unint64_t)state
{
  if (self->_state == state)
  {
    return;
  }

  v19 = v3;
  self->_state = state;
  switch(state)
  {
    case 2uLL:
      if (![(RCPlatterTimeView *)self presentationStyle])
      {
        [(RCPlatterTimeView *)self _hideTimeLabel];
      }

      v14 = [(RCPlatterTimeView *)self systemApertureElementContext:v10];
      transitionContext = [v14 transitionContext];

      if (transitionContext && [transitionContext fromLayoutMode] == 4)
      {
        v15 = +[RCRecorderStyleProvider sharedStyleProvider];
        [v15 platterEmptyViewToCheckmarkTransitionDuration];
        v17 = v16;

        stopButton = [(RCPlatterTimeView *)self stopButton];
        [stopButton transitionToState:2 viaState:0 transitionDuration:v17];
      }

      else
      {
        stopButton = [(RCPlatterTimeView *)self stopButton];
        [stopButton setState:2];
      }

      [(RCPlatterTimeView *)self _showStopButton];
      goto LABEL_14;
    case 1uLL:
      [(RCPlatterTimeView *)self _showTimeLabel];
      stopButton2 = [(RCPlatterTimeView *)self stopButton];
      [stopButton2 setState:1];

      [(RCPlatterTimeView *)self _showStopButton];
      break;
    case 0uLL:
      [(RCPlatterTimeView *)self _showTimeLabel];
      [(RCPlatterTimeView *)self _hideStopButton];
      transitionContext = [(RCPlatterTimeView *)self stopButton];
      [transitionContext setState:0];
LABEL_14:

      break;
  }

  [(RCPlatterTimeView *)self _updateLabelFont];
}

- (void)updateTime:(double)time
{
  [(RCPlatterTimeView *)self shouldHideTimeComponents];
  v4 = RCLocalizedDurationWithHiddenComponents();
  currentTimeLabel = [(RCPlatterTimeView *)self currentTimeLabel];
  [currentTimeLabel setText:v4];

  v12 = UIAXTimeStringForDuration();
  v6 = AXLocalizeDurationTime();
  currentTimeLabel2 = [(RCPlatterTimeView *)self currentTimeLabel];
  accessibilityValue = [currentTimeLabel2 accessibilityValue];
  v9 = [v6 isEqualToString:accessibilityValue];

  if ((v9 & 1) == 0)
  {
    currentTimeLabel3 = [(RCPlatterTimeView *)self currentTimeLabel];
    [currentTimeLabel3 setAccessibilityValue:v6];

    delegate = [(RCPlatterTimeView *)self delegate];
    [delegate accessibilityValueDidChange];
  }
}

- (void)_setupSubviews
{
  _createCurrentTimeLabel = [(RCPlatterTimeView *)self _createCurrentTimeLabel];
  [(RCPlatterTimeView *)self setCurrentTimeLabel:_createCurrentTimeLabel];
  LODWORD(v4) = 1144750080;
  [_createCurrentTimeLabel setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [_createCurrentTimeLabel setContentCompressionResistancePriority:0 forAxis:v5];
  _createStopButton = [(RCPlatterTimeView *)self _createStopButton];
  [(RCPlatterTimeView *)self setStopButton:_createStopButton];
  [(RCPlatterTimeView *)self addSubview:_createStopButton];
  [_createStopButton setTranslatesAutoresizingMaskIntoConstraints:0];
  trailingAnchor = [_createStopButton trailingAnchor];
  trailingAnchor2 = [(RCPlatterTimeView *)self trailingAnchor];
  v55 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  centerYAnchor = [_createStopButton centerYAnchor];
  centerYAnchor2 = [(RCPlatterTimeView *)self centerYAnchor];
  v53 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  topAnchor = [_createStopButton topAnchor];
  topAnchor2 = [(RCPlatterTimeView *)self topAnchor];
  v52 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];

  leadingAnchor = [_createStopButton leadingAnchor];
  leadingAnchor2 = [(RCPlatterTimeView *)self leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(RCPlatterTimeView *)self setStopButtonToLeadingConstraint:v15];

  heightAnchor = [_createStopButton heightAnchor];
  v17 = [heightAnchor constraintEqualToConstant:0.0];
  [(RCPlatterTimeView *)self setStopButtonHeightConstraint:v17];

  v54 = _createStopButton;
  widthAnchor = [_createStopButton widthAnchor];
  v19 = [widthAnchor constraintEqualToConstant:0.0];
  [(RCPlatterTimeView *)self setStopButtonWidthConstraint:v19];

  stopButton = [(RCPlatterTimeView *)self stopButton];
  [stopButton setAlpha:0.0];

  [(RCPlatterTimeView *)self addSubview:_createCurrentTimeLabel];
  [_createCurrentTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  _tightBoundingBoxLayoutGuide = [_createCurrentTimeLabel _tightBoundingBoxLayoutGuide];
  leadingAnchor3 = [_tightBoundingBoxLayoutGuide leadingAnchor];
  leadingAnchor4 = [(RCPlatterTimeView *)self leadingAnchor];
  v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [(RCPlatterTimeView *)self setTimeLabelToLeadingConstraint:v24];

  timeLabelToLeadingConstraint = [(RCPlatterTimeView *)self timeLabelToLeadingConstraint];
  LODWORD(v26) = 1148846080;
  [timeLabelToLeadingConstraint setPriority:v26];

  topAnchor3 = [_createCurrentTimeLabel topAnchor];
  topAnchor4 = [(RCPlatterTimeView *)self topAnchor];
  v29 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  [(RCPlatterTimeView *)self setTimeLabelTopToTopConstraint:v29];

  _tightBoundingBoxLayoutGuide2 = [_createCurrentTimeLabel _tightBoundingBoxLayoutGuide];
  topAnchor5 = [_tightBoundingBoxLayoutGuide2 topAnchor];
  sBUISA_systemApertureObstructedAreaLayoutGuide = [(RCPlatterTimeView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
  bottomAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide bottomAnchor];
  v34 = [topAnchor5 constraintEqualToAnchor:bottomAnchor];
  [(RCPlatterTimeView *)self setTimeLabelTopToObstructedAreaBottomConstraint:v34];

  centerYAnchor3 = [_createCurrentTimeLabel centerYAnchor];
  centerYAnchor4 = [(RCPlatterTimeView *)self centerYAnchor];
  v37 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [(RCPlatterTimeView *)self setTimeLabelCenterYConstraint:v37];

  heightAnchor2 = [_createCurrentTimeLabel heightAnchor];
  heightAnchor3 = [(RCPlatterTimeView *)self heightAnchor];
  v40 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];

  LODWORD(v41) = 1132003328;
  [v40 setPriority:v41];
  leadingAnchor5 = [_createStopButton leadingAnchor];
  trailingAnchor3 = [_createCurrentTimeLabel trailingAnchor];
  v44 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:0.0];
  [(RCPlatterTimeView *)self setTimeLabelToStopButtonConstraint:v44];

  v56[0] = v55;
  v56[1] = v53;
  v56[2] = v52;
  stopButtonHeightConstraint = [(RCPlatterTimeView *)self stopButtonHeightConstraint];
  v56[3] = stopButtonHeightConstraint;
  stopButtonWidthConstraint = [(RCPlatterTimeView *)self stopButtonWidthConstraint];
  v56[4] = stopButtonWidthConstraint;
  timeLabelToLeadingConstraint2 = [(RCPlatterTimeView *)self timeLabelToLeadingConstraint];
  v56[5] = timeLabelToLeadingConstraint2;
  timeLabelTopToTopConstraint = [(RCPlatterTimeView *)self timeLabelTopToTopConstraint];
  v56[6] = timeLabelTopToTopConstraint;
  timeLabelCenterYConstraint = [(RCPlatterTimeView *)self timeLabelCenterYConstraint];
  v56[7] = timeLabelCenterYConstraint;
  v56[8] = v40;
  timeLabelToStopButtonConstraint = [(RCPlatterTimeView *)self timeLabelToStopButtonConstraint];
  v56[9] = timeLabelToStopButtonConstraint;
  v51 = [NSArray arrayWithObjects:v56 count:10];
  [NSLayoutConstraint activateConstraints:v51];
}

- (NSLayoutXAxisAnchor)trailingCustomConcentricLayoutAnchor
{
  stopButton = [(RCPlatterTimeView *)self stopButton];
  centerXAnchor = [stopButton centerXAnchor];

  return centerXAnchor;
}

- (id)_createCurrentTimeLabel
{
  v3 = objc_alloc_init(RCTimeLabel);
  v4 = [(RCPlatterTimeView *)self _labelFontForState:[(RCPlatterTimeView *)self state] presentationStyle:[(RCPlatterTimeView *)self presentationStyle]];
  [(RCTimeLabel *)v3 setFont:v4];

  v5 = [(RCPlatterTimeView *)self _labelTextColorForState:[(RCPlatterTimeView *)self state] presentationStyle:[(RCPlatterTimeView *)self presentationStyle]];
  [(RCTimeLabel *)v3 setTextColor:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"CURRENT_POSITION" value:&stru_100295BB8 table:0];
  [(RCTimeLabel *)v3 setAccessibilityLabel:v7];

  layer = [(RCTimeLabel *)v3 layer];
  [layer setAllowsHitTesting:0];

  return v3;
}

- (id)_createStopButton
{
  v3 = [[RCPlatterStopButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(RCPlatterStopButton *)v3 setDelegate:self];

  return v3;
}

- (void)_updateLabelFont
{
  v3 = [(RCPlatterTimeView *)self _labelFontForState:[(RCPlatterTimeView *)self state] presentationStyle:[(RCPlatterTimeView *)self presentationStyle]];
  currentTimeLabel = [(RCPlatterTimeView *)self currentTimeLabel];
  [currentTimeLabel setFont:v3];

  v6 = [(RCPlatterTimeView *)self _labelTextColorForState:[(RCPlatterTimeView *)self state] presentationStyle:[(RCPlatterTimeView *)self presentationStyle]];
  currentTimeLabel2 = [(RCPlatterTimeView *)self currentTimeLabel];
  [currentTimeLabel2 setTextColor:v6];
}

- (id)_labelFontForState:(unint64_t)state presentationStyle:(unint64_t)style
{
  traitCollection = [(RCPlatterTimeView *)self traitCollection];
  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  v8 = v7;
  if (state == 1 || state == 2 && style == 1)
  {
    v9 = [v7 platterTimeLabelCustomModeFontForTraitCollection:traitCollection];
  }

  else
  {
    v9 = [v7 platterTimeLabelCompactModeFontForTraitCollection:traitCollection];
  }

  v10 = v9;

  return v10;
}

- (id)_labelTextColorForState:(unint64_t)state presentationStyle:(unint64_t)style
{
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  v7 = v6;
  if (state == 2 && style == 1)
  {
    platterStatusMessageStateTimeLabelColor = [v6 platterStatusMessageStateTimeLabelColor];
  }

  else
  {
    platterStatusMessageStateTimeLabelColor = [v6 platterDefaultTimeLabelColor];
  }

  v9 = platterStatusMessageStateTimeLabelColor;

  return v9;
}

- (void)_showStopButton
{
  v17 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v17 platterStopButtonHeight];
  v4 = v3;
  [(RCPlatterTimeView *)self SBUISA_standardInteritemPadding];
  v6 = v5;
  if ([(RCPlatterTimeView *)self state]== 2)
  {
    sBUISA_systemApertureObstructedAreaLayoutGuide = [(RCPlatterTimeView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
    [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
    IsEmpty = CGRectIsEmpty(v19);

    if (!IsEmpty)
    {
      [v17 platterCheckmarkHeightMultiplier];
      v10 = v9;
      sBUISA_systemApertureObstructedAreaLayoutGuide2 = [(RCPlatterTimeView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
      [sBUISA_systemApertureObstructedAreaLayoutGuide2 layoutFrame];
      v4 = v10 * v12;

      v6 = 0.0;
    }
  }

  stopButtonWidthConstraint = [(RCPlatterTimeView *)self stopButtonWidthConstraint];
  [stopButtonWidthConstraint setConstant:v4];

  stopButtonHeightConstraint = [(RCPlatterTimeView *)self stopButtonHeightConstraint];
  [stopButtonHeightConstraint setConstant:v4];

  timeLabelToStopButtonConstraint = [(RCPlatterTimeView *)self timeLabelToStopButtonConstraint];
  [timeLabelToStopButtonConstraint setConstant:v6];

  stopButton = [(RCPlatterTimeView *)self stopButton];
  [stopButton setAlpha:1.0];
}

- (void)_hideStopButton
{
  stopButtonWidthConstraint = [(RCPlatterTimeView *)self stopButtonWidthConstraint];
  [stopButtonWidthConstraint setConstant:0.0];

  stopButtonHeightConstraint = [(RCPlatterTimeView *)self stopButtonHeightConstraint];
  [stopButtonHeightConstraint setConstant:0.0];

  timeLabelToStopButtonConstraint = [(RCPlatterTimeView *)self timeLabelToStopButtonConstraint];
  [timeLabelToStopButtonConstraint setConstant:0.0];

  stopButton = [(RCPlatterTimeView *)self stopButton];
  [stopButton setAlpha:0.0];
}

- (void)_showTimeLabel
{
  currentTimeLabel = [(RCPlatterTimeView *)self currentTimeLabel];
  isHidden = [currentTimeLabel isHidden];

  if (isHidden)
  {
    currentTimeLabel2 = [(RCPlatterTimeView *)self currentTimeLabel];
    [currentTimeLabel2 setHidden:0];

    timeLabelToLeadingConstraint = [(RCPlatterTimeView *)self timeLabelToLeadingConstraint];
    [timeLabelToLeadingConstraint setActive:1];

    stopButtonToLeadingConstraint = [(RCPlatterTimeView *)self stopButtonToLeadingConstraint];
    [stopButtonToLeadingConstraint setActive:0];
  }
}

- (void)_hideTimeLabel
{
  currentTimeLabel = [(RCPlatterTimeView *)self currentTimeLabel];
  isHidden = [currentTimeLabel isHidden];

  if ((isHidden & 1) == 0)
  {
    currentTimeLabel2 = [(RCPlatterTimeView *)self currentTimeLabel];
    [currentTimeLabel2 setHidden:1];

    timeLabelToLeadingConstraint = [(RCPlatterTimeView *)self timeLabelToLeadingConstraint];
    [timeLabelToLeadingConstraint setActive:0];

    stopButtonToLeadingConstraint = [(RCPlatterTimeView *)self stopButtonToLeadingConstraint];
    [stopButtonToLeadingConstraint setActive:1];
  }
}

- (void)_constrainTimeLabelTopToObstructedAreaBottomIfNeeded
{
  currentTimeLabel = [(RCPlatterTimeView *)self currentTimeLabel];
  isHidden = [currentTimeLabel isHidden];

  if ((isHidden & 1) == 0)
  {
    [(RCPlatterTimeView *)self _currentTimeLabelTightFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    sBUISA_systemApertureObstructedAreaLayoutGuide = [(RCPlatterTimeView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
    [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v29.origin.x = v6;
    v29.origin.y = v8;
    v29.size.width = v10;
    v29.size.height = v12;
    v31.origin.x = v15;
    v31.origin.y = v17;
    v31.size.width = v19;
    v31.size.height = v21;
    v30 = CGRectIntersection(v29, v31);
    width = v30.size.width;
    v23 = [(RCPlatterTimeView *)self state:v30.origin.x];
    v25 = width > 0.0 && v23 == 1;
    timeLabelTopToObstructedAreaBottomConstraint = [(RCPlatterTimeView *)self timeLabelTopToObstructedAreaBottomConstraint];
    [timeLabelTopToObstructedAreaBottomConstraint setActive:v25];

    timeLabelCenterYConstraint = [(RCPlatterTimeView *)self timeLabelCenterYConstraint];
    [timeLabelCenterYConstraint setActive:v25 ^ 1];
  }
}

- (CGRect)_currentTimeLabelTightFrame
{
  currentTimeLabel = [(RCPlatterTimeView *)self currentTimeLabel];
  _tightBoundingBoxLayoutGuide = [currentTimeLabel _tightBoundingBoxLayoutGuide];
  [_tightBoundingBoxLayoutGuide layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  currentTimeLabel2 = [(RCPlatterTimeView *)self currentTimeLabel];
  [currentTimeLabel2 convertRect:self toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)didTapOnStopButton:(id)button
{
  delegate = [(RCPlatterTimeView *)self delegate];
  [delegate didTapStopRecordingButton];
}

- (id)accessibilityLabel
{
  if ([(RCPlatterTimeView *)self state])
  {
    v9.receiver = self;
    v9.super_class = RCPlatterTimeView;
    accessibilityLabel = [(RCPlatterTimeView *)&v9 accessibilityLabel];
  }

  else
  {
    currentTimeLabel = [(RCPlatterTimeView *)self currentTimeLabel];
    accessibilityLabel2 = [currentTimeLabel accessibilityLabel];
    currentTimeLabel2 = [(RCPlatterTimeView *)self currentTimeLabel];
    accessibilityValue = [currentTimeLabel2 accessibilityValue];
    accessibilityLabel = [NSString stringWithFormat:@"%@, %@", accessibilityLabel2, accessibilityValue];
  }

  return accessibilityLabel;
}

- (id)accessibilityElements
{
  currentTimeLabel = [(RCPlatterTimeView *)self currentTimeLabel];
  v7[0] = currentTimeLabel;
  stopButton = [(RCPlatterTimeView *)self stopButton];
  v7[1] = stopButton;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (RCPlatterTimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
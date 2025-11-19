@interface RCPlatterTimeView
- (CGRect)_currentTimeLabelTightFrame;
- (NSLayoutXAxisAnchor)trailingCustomConcentricLayoutAnchor;
- (RCPlatterTimeView)initWithPresentationStyle:(unint64_t)a3;
- (RCPlatterTimeViewDelegate)delegate;
- (id)_createCurrentTimeLabel;
- (id)_createStopButton;
- (id)_labelFontForState:(unint64_t)a3 presentationStyle:(unint64_t)a4;
- (id)_labelTextColorForState:(unint64_t)a3 presentationStyle:(unint64_t)a4;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (void)_constrainTimeLabelTopToObstructedAreaBottomIfNeeded;
- (void)_hideStopButton;
- (void)_hideTimeLabel;
- (void)_setupSubviews;
- (void)_showStopButton;
- (void)_showTimeLabel;
- (void)_updateLabelFont;
- (void)didTapOnStopButton:(id)a3;
- (void)layoutSubviews;
- (void)setState:(unint64_t)a3;
- (void)updateTime:(double)a3;
@end

@implementation RCPlatterTimeView

- (RCPlatterTimeView)initWithPresentationStyle:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = RCPlatterTimeView;
  v4 = [(RCPlatterTimeView *)&v10 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    [(RCPlatterTimeView *)v4 setPresentationStyle:a3];
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

- (void)setState:(unint64_t)a3
{
  if (self->_state == a3)
  {
    return;
  }

  v19 = v3;
  self->_state = a3;
  switch(a3)
  {
    case 2uLL:
      if (![(RCPlatterTimeView *)self presentationStyle])
      {
        [(RCPlatterTimeView *)self _hideTimeLabel];
      }

      v14 = [(RCPlatterTimeView *)self systemApertureElementContext:v10];
      v12 = [v14 transitionContext];

      if (v12 && [v12 fromLayoutMode] == 4)
      {
        v15 = +[RCRecorderStyleProvider sharedStyleProvider];
        [v15 platterEmptyViewToCheckmarkTransitionDuration];
        v17 = v16;

        v18 = [(RCPlatterTimeView *)self stopButton];
        [v18 transitionToState:2 viaState:0 transitionDuration:v17];
      }

      else
      {
        v18 = [(RCPlatterTimeView *)self stopButton];
        [v18 setState:2];
      }

      [(RCPlatterTimeView *)self _showStopButton];
      goto LABEL_14;
    case 1uLL:
      [(RCPlatterTimeView *)self _showTimeLabel];
      v13 = [(RCPlatterTimeView *)self stopButton];
      [v13 setState:1];

      [(RCPlatterTimeView *)self _showStopButton];
      break;
    case 0uLL:
      [(RCPlatterTimeView *)self _showTimeLabel];
      [(RCPlatterTimeView *)self _hideStopButton];
      v12 = [(RCPlatterTimeView *)self stopButton];
      [v12 setState:0];
LABEL_14:

      break;
  }

  [(RCPlatterTimeView *)self _updateLabelFont];
}

- (void)updateTime:(double)a3
{
  [(RCPlatterTimeView *)self shouldHideTimeComponents];
  v4 = RCLocalizedDurationWithHiddenComponents();
  v5 = [(RCPlatterTimeView *)self currentTimeLabel];
  [v5 setText:v4];

  v12 = UIAXTimeStringForDuration();
  v6 = AXLocalizeDurationTime();
  v7 = [(RCPlatterTimeView *)self currentTimeLabel];
  v8 = [v7 accessibilityValue];
  v9 = [v6 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [(RCPlatterTimeView *)self currentTimeLabel];
    [v10 setAccessibilityValue:v6];

    v11 = [(RCPlatterTimeView *)self delegate];
    [v11 accessibilityValueDidChange];
  }
}

- (void)_setupSubviews
{
  v3 = [(RCPlatterTimeView *)self _createCurrentTimeLabel];
  [(RCPlatterTimeView *)self setCurrentTimeLabel:v3];
  LODWORD(v4) = 1144750080;
  [v3 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];
  v6 = [(RCPlatterTimeView *)self _createStopButton];
  [(RCPlatterTimeView *)self setStopButton:v6];
  [(RCPlatterTimeView *)self addSubview:v6];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 trailingAnchor];
  v8 = [(RCPlatterTimeView *)self trailingAnchor];
  v55 = [v7 constraintEqualToAnchor:v8];

  v9 = [v6 centerYAnchor];
  v10 = [(RCPlatterTimeView *)self centerYAnchor];
  v53 = [v9 constraintEqualToAnchor:v10];

  v11 = [v6 topAnchor];
  v12 = [(RCPlatterTimeView *)self topAnchor];
  v52 = [v11 constraintGreaterThanOrEqualToAnchor:v12];

  v13 = [v6 leadingAnchor];
  v14 = [(RCPlatterTimeView *)self leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [(RCPlatterTimeView *)self setStopButtonToLeadingConstraint:v15];

  v16 = [v6 heightAnchor];
  v17 = [v16 constraintEqualToConstant:0.0];
  [(RCPlatterTimeView *)self setStopButtonHeightConstraint:v17];

  v54 = v6;
  v18 = [v6 widthAnchor];
  v19 = [v18 constraintEqualToConstant:0.0];
  [(RCPlatterTimeView *)self setStopButtonWidthConstraint:v19];

  v20 = [(RCPlatterTimeView *)self stopButton];
  [v20 setAlpha:0.0];

  [(RCPlatterTimeView *)self addSubview:v3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v3 _tightBoundingBoxLayoutGuide];
  v22 = [v21 leadingAnchor];
  v23 = [(RCPlatterTimeView *)self leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [(RCPlatterTimeView *)self setTimeLabelToLeadingConstraint:v24];

  v25 = [(RCPlatterTimeView *)self timeLabelToLeadingConstraint];
  LODWORD(v26) = 1148846080;
  [v25 setPriority:v26];

  v27 = [v3 topAnchor];
  v28 = [(RCPlatterTimeView *)self topAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28];
  [(RCPlatterTimeView *)self setTimeLabelTopToTopConstraint:v29];

  v30 = [v3 _tightBoundingBoxLayoutGuide];
  v31 = [v30 topAnchor];
  v32 = [(RCPlatterTimeView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
  v33 = [v32 bottomAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  [(RCPlatterTimeView *)self setTimeLabelTopToObstructedAreaBottomConstraint:v34];

  v35 = [v3 centerYAnchor];
  v36 = [(RCPlatterTimeView *)self centerYAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [(RCPlatterTimeView *)self setTimeLabelCenterYConstraint:v37];

  v38 = [v3 heightAnchor];
  v39 = [(RCPlatterTimeView *)self heightAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  LODWORD(v41) = 1132003328;
  [v40 setPriority:v41];
  v42 = [v6 leadingAnchor];
  v43 = [v3 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:0.0];
  [(RCPlatterTimeView *)self setTimeLabelToStopButtonConstraint:v44];

  v56[0] = v55;
  v56[1] = v53;
  v56[2] = v52;
  v45 = [(RCPlatterTimeView *)self stopButtonHeightConstraint];
  v56[3] = v45;
  v46 = [(RCPlatterTimeView *)self stopButtonWidthConstraint];
  v56[4] = v46;
  v47 = [(RCPlatterTimeView *)self timeLabelToLeadingConstraint];
  v56[5] = v47;
  v48 = [(RCPlatterTimeView *)self timeLabelTopToTopConstraint];
  v56[6] = v48;
  v49 = [(RCPlatterTimeView *)self timeLabelCenterYConstraint];
  v56[7] = v49;
  v56[8] = v40;
  v50 = [(RCPlatterTimeView *)self timeLabelToStopButtonConstraint];
  v56[9] = v50;
  v51 = [NSArray arrayWithObjects:v56 count:10];
  [NSLayoutConstraint activateConstraints:v51];
}

- (NSLayoutXAxisAnchor)trailingCustomConcentricLayoutAnchor
{
  v2 = [(RCPlatterTimeView *)self stopButton];
  v3 = [v2 centerXAnchor];

  return v3;
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

  v8 = [(RCTimeLabel *)v3 layer];
  [v8 setAllowsHitTesting:0];

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
  v4 = [(RCPlatterTimeView *)self currentTimeLabel];
  [v4 setFont:v3];

  v6 = [(RCPlatterTimeView *)self _labelTextColorForState:[(RCPlatterTimeView *)self state] presentationStyle:[(RCPlatterTimeView *)self presentationStyle]];
  v5 = [(RCPlatterTimeView *)self currentTimeLabel];
  [v5 setTextColor:v6];
}

- (id)_labelFontForState:(unint64_t)a3 presentationStyle:(unint64_t)a4
{
  v6 = [(RCPlatterTimeView *)self traitCollection];
  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  v8 = v7;
  if (a3 == 1 || a3 == 2 && a4 == 1)
  {
    v9 = [v7 platterTimeLabelCustomModeFontForTraitCollection:v6];
  }

  else
  {
    v9 = [v7 platterTimeLabelCompactModeFontForTraitCollection:v6];
  }

  v10 = v9;

  return v10;
}

- (id)_labelTextColorForState:(unint64_t)a3 presentationStyle:(unint64_t)a4
{
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  v7 = v6;
  if (a3 == 2 && a4 == 1)
  {
    v8 = [v6 platterStatusMessageStateTimeLabelColor];
  }

  else
  {
    v8 = [v6 platterDefaultTimeLabelColor];
  }

  v9 = v8;

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
    v7 = [(RCPlatterTimeView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
    [v7 layoutFrame];
    IsEmpty = CGRectIsEmpty(v19);

    if (!IsEmpty)
    {
      [v17 platterCheckmarkHeightMultiplier];
      v10 = v9;
      v11 = [(RCPlatterTimeView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
      [v11 layoutFrame];
      v4 = v10 * v12;

      v6 = 0.0;
    }
  }

  v13 = [(RCPlatterTimeView *)self stopButtonWidthConstraint];
  [v13 setConstant:v4];

  v14 = [(RCPlatterTimeView *)self stopButtonHeightConstraint];
  [v14 setConstant:v4];

  v15 = [(RCPlatterTimeView *)self timeLabelToStopButtonConstraint];
  [v15 setConstant:v6];

  v16 = [(RCPlatterTimeView *)self stopButton];
  [v16 setAlpha:1.0];
}

- (void)_hideStopButton
{
  v3 = [(RCPlatterTimeView *)self stopButtonWidthConstraint];
  [v3 setConstant:0.0];

  v4 = [(RCPlatterTimeView *)self stopButtonHeightConstraint];
  [v4 setConstant:0.0];

  v5 = [(RCPlatterTimeView *)self timeLabelToStopButtonConstraint];
  [v5 setConstant:0.0];

  v6 = [(RCPlatterTimeView *)self stopButton];
  [v6 setAlpha:0.0];
}

- (void)_showTimeLabel
{
  v3 = [(RCPlatterTimeView *)self currentTimeLabel];
  v4 = [v3 isHidden];

  if (v4)
  {
    v5 = [(RCPlatterTimeView *)self currentTimeLabel];
    [v5 setHidden:0];

    v6 = [(RCPlatterTimeView *)self timeLabelToLeadingConstraint];
    [v6 setActive:1];

    v7 = [(RCPlatterTimeView *)self stopButtonToLeadingConstraint];
    [v7 setActive:0];
  }
}

- (void)_hideTimeLabel
{
  v3 = [(RCPlatterTimeView *)self currentTimeLabel];
  v4 = [v3 isHidden];

  if ((v4 & 1) == 0)
  {
    v5 = [(RCPlatterTimeView *)self currentTimeLabel];
    [v5 setHidden:1];

    v6 = [(RCPlatterTimeView *)self timeLabelToLeadingConstraint];
    [v6 setActive:0];

    v7 = [(RCPlatterTimeView *)self stopButtonToLeadingConstraint];
    [v7 setActive:1];
  }
}

- (void)_constrainTimeLabelTopToObstructedAreaBottomIfNeeded
{
  v3 = [(RCPlatterTimeView *)self currentTimeLabel];
  v4 = [v3 isHidden];

  if ((v4 & 1) == 0)
  {
    [(RCPlatterTimeView *)self _currentTimeLabelTightFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(RCPlatterTimeView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
    [v13 layoutFrame];
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
    v26 = [(RCPlatterTimeView *)self timeLabelTopToObstructedAreaBottomConstraint];
    [v26 setActive:v25];

    v27 = [(RCPlatterTimeView *)self timeLabelCenterYConstraint];
    [v27 setActive:v25 ^ 1];
  }
}

- (CGRect)_currentTimeLabelTightFrame
{
  v3 = [(RCPlatterTimeView *)self currentTimeLabel];
  v4 = [v3 _tightBoundingBoxLayoutGuide];
  [v4 layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(RCPlatterTimeView *)self currentTimeLabel];
  [v13 convertRect:self toView:{v6, v8, v10, v12}];
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

- (void)didTapOnStopButton:(id)a3
{
  v3 = [(RCPlatterTimeView *)self delegate];
  [v3 didTapStopRecordingButton];
}

- (id)accessibilityLabel
{
  if ([(RCPlatterTimeView *)self state])
  {
    v9.receiver = self;
    v9.super_class = RCPlatterTimeView;
    v3 = [(RCPlatterTimeView *)&v9 accessibilityLabel];
  }

  else
  {
    v4 = [(RCPlatterTimeView *)self currentTimeLabel];
    v5 = [v4 accessibilityLabel];
    v6 = [(RCPlatterTimeView *)self currentTimeLabel];
    v7 = [v6 accessibilityValue];
    v3 = [NSString stringWithFormat:@"%@, %@", v5, v7];
  }

  return v3;
}

- (id)accessibilityElements
{
  v3 = [(RCPlatterTimeView *)self currentTimeLabel];
  v7[0] = v3;
  v4 = [(RCPlatterTimeView *)self stopButton];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (RCPlatterTimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
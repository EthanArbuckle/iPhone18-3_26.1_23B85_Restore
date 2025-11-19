@interface RCPlatterViewController
- (NSDictionary)stateAndLayoutModeToConstraints;
- (RCActivityWaveformProcessor)activityWaveformProcessor;
- (RCPlatterViewController)initWithPresentationStyle:(unint64_t)a3;
- (RCPlatterViewControllerDelegate)delegate;
- (RCTimeController)activeTimeController;
- (UIColor)keyColor;
- (id)_constraintsForCollapsedModeWithState:(unint64_t)a3;
- (id)_constraintsForExpandedModeInBanner;
- (id)_constraintsForExpandedModeInDynamicIsland;
- (id)_constraintsForExpandedModeWithPresentationStyle:(unint64_t)a3;
- (id)_constraintsForMinimalModeCheckmarkState;
- (id)_constraintsForMinimalModeWaveformState;
- (id)_constraintsForMinimalModeWithState:(unint64_t)a3;
- (id)_createConstraintsForLayoutMode:(unint64_t)a3 platterState:(unint64_t)a4;
- (id)_minimalModeBaseConstraintsWithHeight:(double)a3;
- (id)_timelinesForDateInterval:(id)a3;
- (id)constraintsForLayoutMode:(unint64_t)a3 platterState:(unint64_t)a4;
- (int64_t)maximumLayoutMode;
- (unint64_t)platterLayoutModeForSystemApertureLayoutMode:(int64_t)a3;
- (void)_addAppLaunchTapGestureRecognizerIfNeeded;
- (void)_addViewsAsSubviewsIfNeeded;
- (void)_setPriorityToDefaultHighForConstraints:(id)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateMinimalViewContainer;
- (void)_updatePlatterViewElementStateForLayoutMode:(unint64_t)a3;
- (void)_updateTime:(double)a3;
- (void)_updateTimeViewElementStateForLayoutMode:(unint64_t)a3;
- (void)_updateViewHiddenStateForLayoutMode:(unint64_t)a3;
- (void)_updateViewsForLayoutMode:(unint64_t)a3 platterState:(unint64_t)a4;
- (void)_updateWithFrameSpecifier:(id)a3;
- (void)accessibilityValueDidChange;
- (void)activateConstraints:(id)a3;
- (void)didTapStopRecordingButton;
- (void)displayRecordingSavedStatusMessage;
- (void)setActiveTimeController:(id)a3;
- (void)timeController:(id)a3 didChangeCurrentTime:(double)a4 didChangeDuration:(double)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation RCPlatterViewController

- (RCPlatterViewController)initWithPresentationStyle:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = RCPlatterViewController;
  v4 = [(RCPlatterViewController *)&v7 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(RCPlatterViewController *)v4 setPresentationStyle:a3];
  }

  return v5;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = RCPlatterViewController;
  [(RCPlatterViewController *)&v31 viewDidLoad];
  [(RCPlatterViewController *)self setActiveLayoutMode:0];
  [(RCPlatterViewController *)self setPlatterState:0];
  v3 = [(RCPlatterViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [RCActivityWaveformDataProvider alloc];
  v5 = [(RCPlatterViewController *)self activityWaveformProcessor];
  v6 = [(RCActivityWaveformDataProvider *)v4 initWithWaveformProcessor:v5];
  [(RCPlatterViewController *)self setWaveformDataProvider:v6];

  v7 = [RCPlatterLeadingWaveformView alloc];
  v8 = [(RCPlatterViewController *)self waveformDataProvider];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v12 = [(RCPlatterWaveformView *)v7 initWithFrame:v8 dataProvider:CGRectZero.origin.x, y, width, height];
  [(RCPlatterViewController *)self setLeadingPlatterWaveformView:v12];

  v13 = [(RCPlatterViewController *)self leadingPlatterWaveformView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [RCPlatterMinimalWaveformView alloc];
  v15 = [(RCPlatterViewController *)self waveformDataProvider];
  v16 = [(RCPlatterWaveformView *)v14 initWithFrame:v15 dataProvider:CGRectZero.origin.x, y, width, height];
  [(RCPlatterViewController *)self setMinimalPlatterWaveformView:v16];

  v17 = [(RCPlatterWaveformView *)[RCPlatterMinimalAndromedaWaveformView alloc] initWithFrame:0 dataProvider:CGRectZero.origin.x, y, width, height];
  [(RCPlatterViewController *)self setMinimalAndromedaPlatterWaveformView:v17];

  v18 = [RCPlatterMinimalViewContainer alloc];
  v19 = [(RCPlatterViewController *)self minimalPlatterWaveformView];
  v20 = [(RCPlatterMinimalViewContainer *)v18 initWithFrame:v19 childView:CGRectZero.origin.x, y, width, height];
  [(RCPlatterViewController *)self setMinimalViewContainer:v20];

  v21 = [(RCPlatterViewController *)self minimalViewContainer];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [[RCPlatterTimeView alloc] initWithPresentationStyle:self->_presentationStyle];
  [(RCPlatterViewController *)self setTimeView:v22];

  v23 = [(RCPlatterViewController *)self timeView];
  [v23 setDelegate:self];

  v24 = [(RCPlatterViewController *)self timeView];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [[RCPlatterCheckmarkView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(RCPlatterViewController *)self setMinimalCheckmarkView:v25];

  v26 = [(RCPlatterViewController *)self minimalCheckmarkView];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);
  [WeakRetained currentTime];
  [(RCPlatterViewController *)self _updateTime:?];

  [(RCPlatterViewController *)self _addAppLaunchTapGestureRecognizerIfNeeded];
  v28 = objc_opt_self();
  v32 = v28;
  v29 = [NSArray arrayWithObjects:&v32 count:1];
  v30 = [(RCPlatterViewController *)self registerForTraitChanges:v29 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RCPlatterViewController;
  [(RCPlatterViewController *)&v4 viewWillAppear:a3];
  if ([(RCPlatterViewController *)self presentationStyle]== 1)
  {
    [(RCPlatterViewController *)self _updateViewsForLayoutMode:3 platterState:[(RCPlatterViewController *)self platterState]];
  }
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v19 = a4;
  v5 = [(RCPlatterViewController *)self traitCollection];
  v6 = [v5 _backlightLuminance];
  v7 = [v19 _backlightLuminance];

  if (v6 != v7)
  {
    v8 = [(RCPlatterViewController *)self traitCollection];
    v9 = [v8 isInAndromeda];

    if (v9 != [v19 isInAndromeda])
    {
      [(RCPlatterViewController *)self _updateMinimalViewContainer];
      v10 = [(RCPlatterViewController *)self timeView];
      [v10 setShouldHideTimeComponents:v9];

      if (v9)
      {
        v11 = [RCTimelineGenerator alloc];
        v12 = [(RCPlatterViewController *)self delegate];
        v13 = [v12 recordingStartTimeInfo];
        v14 = [(RCPlatterViewController *)self elapsedRecordingTimeInfo];
        v15 = [(RCTimelineGenerator *)v11 initWithRecordingStartTimeInfo:v13 elapsedRecordingTimeInfo:v14];
        [(RCPlatterViewController *)self setTimelineGenerator:v15];

        v16 = [(RCPlatterViewController *)self leadingPlatterWaveformView];
        v17 = +[RCRecorderStyleProvider sharedStyleProvider];
        v18 = [v17 platterWaveformInactiveSliceColor];
        [v16 setSliceColor:v18];
      }

      else
      {
        [(RCPlatterViewController *)self setTimelineGenerator:0];
        v16 = [(RCPlatterViewController *)self leadingPlatterWaveformView];
        [v16 resetSliceColor];
      }
    }
  }
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(RCPlatterViewController *)self activeLayoutMode];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C06F8;
  v7[3] = &unk_10028C440;
  v7[4] = self;
  v7[5] = [(RCPlatterViewController *)self platterLayoutModeForSystemApertureLayoutMode:v5];
  v7[6] = [(RCPlatterViewController *)self platterState];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C0708;
  v6[3] = &unk_10028C760;
  v6[4] = self;
  v6[5] = v5;
  [v4 animateAlongsideTransition:v7 completion:v6];
}

- (void)_updateViewsForLayoutMode:(unint64_t)a3 platterState:(unint64_t)a4
{
  v10 = [RCPlatterViewController constraintsForLayoutMode:"constraintsForLayoutMode:platterState:" platterState:?];
  [(RCPlatterViewController *)self _addViewsAsSubviewsIfNeeded];
  [(RCPlatterViewController *)self _updateMinimalViewContainer];
  [(RCPlatterViewController *)self _updateViewHiddenStateForLayoutMode:a3];
  [(RCPlatterViewController *)self _updateTimeViewElementStateForLayoutMode:a3];
  [(RCPlatterViewController *)self _updatePlatterViewElementStateForLayoutMode:a3];
  [(RCPlatterViewController *)self activateConstraints:v10];
  if (a4 == 1)
  {
    v7 = +[RCRecorderStyleProvider sharedStyleProvider];
    v8 = [v7 platterWaveformStatusMessageSliceColor];

    v9 = [(RCPlatterViewController *)self leadingPlatterWaveformView];
    [v9 setSliceColor:v8];
  }
}

- (void)setActiveTimeController:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_activeTimeController, v4);
  [v4 currentTime];
  v6 = v5;

  [(RCPlatterViewController *)self _updateTime:v6];
}

- (void)displayRecordingSavedStatusMessage
{
  [(RCPlatterViewController *)self setPlatterState:1];
  if ([(RCPlatterViewController *)self presentationStyle]== 1)
  {
    v3 = [(RCPlatterViewController *)self platterState];

    [(RCPlatterViewController *)self _updateViewsForLayoutMode:3 platterState:v3];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C09EC;
    block[3] = &unk_10028A3B8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_updateTimeViewElementStateForLayoutMode:(unint64_t)a3
{
  if ([(RCPlatterViewController *)self platterState])
  {
    if ([(RCPlatterViewController *)self platterState]!= 1)
    {
      return;
    }

    v5 = [(RCPlatterViewController *)self timeView];
    v7 = v5;
    v6 = 2;
  }

  else
  {
    v5 = [(RCPlatterViewController *)self timeView];
    v7 = v5;
    v6 = a3 == 3;
  }

  [v5 setState:v6];
}

- (void)_updatePlatterViewElementStateForLayoutMode:(unint64_t)a3
{
  v3 = a3 == 3;
  v4 = [(RCPlatterViewController *)self leadingPlatterWaveformView];
  [v4 setStyle:v3];
}

- (void)_addViewsAsSubviewsIfNeeded
{
  v3 = [(RCPlatterViewController *)self leadingPlatterWaveformView];
  v4 = [v3 superview];

  if (!v4)
  {
    v5 = [(RCPlatterViewController *)self view];
    v6 = [(RCPlatterViewController *)self leadingPlatterWaveformView];
    [v5 addSubview:v6];
  }

  v7 = [(RCPlatterViewController *)self timeView];
  v8 = [v7 superview];

  if (!v8)
  {
    v9 = [(RCPlatterViewController *)self view];
    v10 = [(RCPlatterViewController *)self timeView];
    [v9 addSubview:v10];
  }

  v11 = [(RCPlatterViewController *)self minimalViewContainer];
  v12 = [v11 superview];

  if (!v12)
  {
    v14 = [(RCPlatterViewController *)self view];
    v13 = [(RCPlatterViewController *)self minimalViewContainer];
    [v14 addSubview:v13];
  }
}

- (void)_updateViewHiddenStateForLayoutMode:(unint64_t)a3
{
  v4 = a3 != 1;
  v5 = a3 == 1;
  v6 = [(RCPlatterViewController *)self leadingView];
  [v6 setHidden:v5];

  v7 = [(RCPlatterViewController *)self trailingView];
  [v7 setHidden:v5];

  v8 = [(RCPlatterViewController *)self minimalView];
  [v8 setHidden:v4];
}

- (void)_updateMinimalViewContainer
{
  if ([(RCPlatterViewController *)self _platterStateNeedsMinimalCheckmarkView])
  {
    v9 = [(RCPlatterViewController *)self minimalViewContainer];
    v3 = [(RCPlatterViewController *)self minimalCheckmarkView];
    v4 = v9;
    v5 = v3;
  }

  else
  {
    v9 = [(RCPlatterViewController *)self minimalPlatterWaveformView];
    v6 = [(RCPlatterViewController *)self traitCollection];
    v7 = [v6 isInAndromeda];

    if (v7)
    {
      v8 = [(RCPlatterViewController *)self minimalAndromedaPlatterWaveformView];

      v9 = v8;
    }

    v4 = [(RCPlatterViewController *)self minimalViewContainer];
    v3 = v4;
    v5 = v9;
  }

  [v4 setChildView:v5];
}

- (void)activateConstraints:(id)a3
{
  v5 = a3;
  if (([(NSArray *)self->_activeConstraints isEqual:?]& 1) == 0)
  {
    [NSLayoutConstraint deactivateConstraints:self->_activeConstraints];
    objc_storeStrong(&self->_activeConstraints, a3);
    [NSLayoutConstraint activateConstraints:self->_activeConstraints];
  }
}

- (id)constraintsForLayoutMode:(unint64_t)a3 platterState:(unint64_t)a4
{
  v6 = [(RCPlatterViewController *)self stateAndLayoutModeToConstraints];
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [NSNumber numberWithUnsignedInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  return v10;
}

- (NSDictionary)stateAndLayoutModeToConstraints
{
  stateAndLayoutModeToConstraints = self->_stateAndLayoutModeToConstraints;
  if (!stateAndLayoutModeToConstraints)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = +[NSMutableDictionary dictionary];
      for (i = 0; i != 4; ++i)
      {
        v10 = [(RCPlatterViewController *)self _createConstraintsForLayoutMode:i platterState:v5];
        v11 = [NSNumber numberWithUnsignedInteger:i];
        [v8 setObject:v10 forKey:v11];
      }

      v12 = [NSNumber numberWithUnsignedInteger:v5];
      [v4 setObject:v8 forKey:v12];

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
    v13 = [v4 copy];
    v14 = self->_stateAndLayoutModeToConstraints;
    self->_stateAndLayoutModeToConstraints = v13;

    stateAndLayoutModeToConstraints = self->_stateAndLayoutModeToConstraints;
  }

  return stateAndLayoutModeToConstraints;
}

- (id)_createConstraintsForLayoutMode:(unint64_t)a3 platterState:(unint64_t)a4
{
  switch(a3)
  {
    case 1uLL:
      v5 = [(RCPlatterViewController *)self _constraintsForMinimalModeWithState:a4];
      goto LABEL_7;
    case 2uLL:
      v5 = [(RCPlatterViewController *)self _constraintsForCollapsedModeWithState:a4];
      goto LABEL_7;
    case 3uLL:
      v5 = [(RCPlatterViewController *)self _constraintsForExpandedModeWithPresentationStyle:[(RCPlatterViewController *)self presentationStyle:3]];
LABEL_7:
      v6 = v5;
      goto LABEL_9;
  }

  v17 = [(RCPlatterViewController *)self leadingView:a3];
  v7 = [v17 leadingAnchor];
  v8 = [(RCPlatterViewController *)self view];
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v18[0] = v10;
  v11 = [(RCPlatterViewController *)self trailingView];
  v12 = [v11 trailingAnchor];
  v13 = [(RCPlatterViewController *)self view];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v18[1] = v15;
  v6 = [NSArray arrayWithObjects:v18 count:2];

LABEL_9:

  return v6;
}

- (id)_constraintsForCollapsedModeWithState:(unint64_t)a3
{
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v4 platterCompactLeadingViewHeightMultiplier];
  v6 = v5;
  v34 = v4;
  [v4 platterWaveformWidthCompact];
  v8 = v7;
  v31 = [(RCPlatterViewController *)self leadingView];
  v29 = [v31 leadingAnchor];
  v30 = [(RCPlatterViewController *)self view];
  v28 = [v30 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
  v27 = [v28 leadingAnchor];
  v9 = [v29 constraintEqualToAnchor:v27];
  v35[0] = v9;
  v10 = [(RCPlatterViewController *)self leadingView];
  v11 = [v10 heightAnchor];
  v12 = [(RCPlatterViewController *)self view];
  v13 = [v12 heightAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 multiplier:v6];
  v35[1] = v14;
  v15 = [(RCPlatterViewController *)self leadingView];
  v16 = [v15 widthAnchor];
  v17 = [v16 constraintEqualToConstant:v8];
  v35[2] = v17;
  v33 = [NSArray arrayWithObjects:v35 count:3];

  v18 = +[NSMutableArray array];
  if (a3)
  {
    v19 = [(RCPlatterViewController *)self timeView];
    v20 = [v19 trailingCustomConcentricLayoutAnchor];
    v21 = [(RCPlatterViewController *)self view];
    v22 = [v21 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
    [v22 centerXAnchor];
  }

  else
  {
    v19 = [(RCPlatterViewController *)self trailingView];
    v20 = [v19 trailingAnchor];
    v21 = [(RCPlatterViewController *)self view];
    v22 = [v21 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
    [v22 trailingAnchor];
  }
  v23 = ;
  v24 = [v20 constraintEqualToAnchor:v23];
  [v18 addObject:v24];

  v25 = [v33 arrayByAddingObjectsFromArray:v18];
  [(RCPlatterViewController *)self _setPriorityToDefaultHighForConstraints:v25];

  return v25;
}

- (id)_constraintsForExpandedModeWithPresentationStyle:(unint64_t)a3
{
  if (a3 == 1)
  {
    [(RCPlatterViewController *)self _constraintsForExpandedModeInBanner];
  }

  else
  {
    [(RCPlatterViewController *)self _constraintsForExpandedModeInDynamicIsland];
  }
  v3 = ;

  return v3;
}

- (id)_constraintsForExpandedModeInDynamicIsland
{
  v65 = +[RCRecorderStyleProvider sharedStyleProvider];
  v61 = [(RCPlatterViewController *)self view];
  v55 = [v61 widthAnchor];
  v58 = [(RCPlatterViewController *)self view];
  v52 = [v58 window];
  v3 = [v52 widthAnchor];
  v4 = [v55 constraintEqualToAnchor:v3];
  v68[0] = v4;
  v5 = [(RCPlatterViewController *)self view];
  v6 = [v5 bottomAnchor];
  v7 = [(RCPlatterViewController *)self view];
  v8 = [v7 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
  v9 = [v8 bottomAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];
  v68[1] = v10;
  v11 = [NSArray arrayWithObjects:v68 count:2];
  v64 = [NSMutableArray arrayWithArray:v11];

  [v65 platterCustomLeadingViewLeadingPadding];
  v13 = v12;
  [v65 platterCustomLeadingViewHeightMultiplier];
  v15 = v14;
  v62 = [(RCPlatterViewController *)self leadingView];
  v56 = [v62 leadingAnchor];
  v59 = [(RCPlatterViewController *)self view];
  v53 = [v59 leadingAnchor];
  v50 = [v56 constraintEqualToAnchor:v53 constant:v13];
  v67[0] = v50;
  v49 = [(RCPlatterViewController *)self leadingView];
  v47 = [v49 heightAnchor];
  v48 = [(RCPlatterViewController *)self view];
  v46 = [v48 heightAnchor];
  v45 = [v47 constraintEqualToAnchor:v46 multiplier:v15];
  v67[1] = v45;
  v44 = [(RCPlatterViewController *)self leadingView];
  v42 = [v44 centerYAnchor];
  v43 = [(RCPlatterViewController *)self trailingView];
  v16 = [v43 centerYAnchor];
  v17 = [v42 constraintEqualToAnchor:v16];
  v67[2] = v17;
  v18 = [(RCPlatterViewController *)self leadingView];
  v19 = [v18 trailingAnchor];
  v20 = [(RCPlatterViewController *)self view];
  v21 = [v20 SBUISA_systemApertureObstructedAreaLayoutGuide];
  v22 = [v21 centerXAnchor];
  v23 = [v19 constraintEqualToAnchor:v22];
  v67[3] = v23;
  v24 = [NSArray arrayWithObjects:v67 count:4];
  [v64 addObjectsFromArray:v24];

  v63 = [(RCPlatterViewController *)self timeView];
  v57 = [v63 trailingCustomConcentricLayoutAnchor];
  v60 = [(RCPlatterViewController *)self view];
  v54 = [v60 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
  v51 = [v54 centerXAnchor];
  v25 = [v57 constraintEqualToAnchor:v51];
  v66[0] = v25;
  v26 = [(RCPlatterViewController *)self trailingView];
  v27 = [v26 centerYAnchor];
  v28 = [(RCPlatterViewController *)self view];
  v29 = [v28 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
  v30 = [v29 centerYAnchor];
  v31 = [v27 constraintEqualToAnchor:v30];
  v66[1] = v31;
  v32 = [NSArray arrayWithObjects:v66 count:2];
  [v64 addObjectsFromArray:v32];

  [(RCPlatterViewController *)self _setPriorityToDefaultHighForConstraints:v64];
  [v65 platterCustomLeadingViewToTrailingViewMinimumPadding];
  v34 = v33;
  v35 = [(RCPlatterViewController *)self leadingView];
  v36 = [v35 trailingAnchor];
  v37 = [(RCPlatterViewController *)self trailingView];
  v38 = [v37 leadingAnchor];
  v39 = [v36 constraintLessThanOrEqualToAnchor:v38 constant:v34];

  LODWORD(v40) = 1148846080;
  [v39 setPriority:v40];
  [v64 addObject:v39];

  return v64;
}

- (id)_constraintsForExpandedModeInBanner
{
  v48 = +[RCRecorderStyleProvider sharedStyleProvider];
  v49 = +[NSMutableArray array];
  [v48 platterCustomLeadingViewLeadingPadding];
  v4 = v3;
  [v48 platterCustomLeadingViewHeightMultiplier];
  v6 = v5;
  v46 = [(RCPlatterViewController *)self leadingView];
  v42 = [v46 leadingAnchor];
  v44 = [(RCPlatterViewController *)self view];
  v41 = [v44 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41 constant:v4];
  v51[0] = v40;
  v39 = [(RCPlatterViewController *)self leadingView];
  v37 = [v39 heightAnchor];
  v38 = [(RCPlatterViewController *)self view];
  v36 = [v38 heightAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 multiplier:v6];
  v51[1] = v35;
  v34 = [(RCPlatterViewController *)self leadingView];
  v33 = [v34 centerYAnchor];
  v7 = [(RCPlatterViewController *)self trailingView];
  v8 = [v7 centerYAnchor];
  v9 = [v33 constraintEqualToAnchor:v8];
  v51[2] = v9;
  v10 = [(RCPlatterViewController *)self leadingView];
  v11 = [v10 trailingAnchor];
  v12 = [(RCPlatterViewController *)self view];
  v13 = [v12 centerXAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v51[3] = v14;
  v15 = [NSArray arrayWithObjects:v51 count:4];
  [v49 addObjectsFromArray:v15];

  v47 = [(RCPlatterViewController *)self timeView];
  v43 = [v47 trailingAnchor];
  v45 = [(RCPlatterViewController *)self view];
  v16 = [v45 trailingAnchor];
  v17 = [v43 constraintEqualToAnchor:v16 constant:-v4];
  v50[0] = v17;
  v18 = [(RCPlatterViewController *)self trailingView];
  v19 = [v18 centerYAnchor];
  v20 = [(RCPlatterViewController *)self view];
  v21 = [v20 centerYAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  v50[1] = v22;
  v23 = [NSArray arrayWithObjects:v50 count:2];
  [v49 addObjectsFromArray:v23];

  [(RCPlatterViewController *)self _setPriorityToDefaultHighForConstraints:v49];
  [v48 platterCustomLeadingViewToTrailingViewMinimumPadding];
  v25 = v24;
  v26 = [(RCPlatterViewController *)self leadingView];
  v27 = [v26 trailingAnchor];
  v28 = [(RCPlatterViewController *)self trailingView];
  v29 = [v28 leadingAnchor];
  v30 = [v27 constraintLessThanOrEqualToAnchor:v29 constant:v25];

  LODWORD(v31) = 1148846080;
  [v30 setPriority:v31];
  [v49 addObject:v30];

  return v49;
}

- (id)_constraintsForMinimalModeWithState:(unint64_t)a3
{
  if (a3 == 1)
  {
    [(RCPlatterViewController *)self _constraintsForMinimalModeCheckmarkState];
  }

  else
  {
    [(RCPlatterViewController *)self _constraintsForMinimalModeWaveformState];
  }
  v3 = ;

  return v3;
}

- (id)_constraintsForMinimalModeWaveformState
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 platterMinimalWaveformViewHeight];
  v5 = v4;

  return [(RCPlatterViewController *)self _minimalModeBaseConstraintsWithHeight:v5];
}

- (id)_constraintsForMinimalModeCheckmarkState
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 platterCheckmarkHeightMultiplier];
  v5 = v4;
  v6 = [(RCPlatterViewController *)self view];
  v7 = [v6 SBUISA_systemApertureObstructedAreaLayoutGuide];
  [v7 layoutFrame];
  v9 = v5 * v8;

  v10 = [(RCPlatterViewController *)self _minimalModeBaseConstraintsWithHeight:v9];
  [v3 platterMinimalViewWidth];
  v12 = v11;
  v13 = [(RCPlatterViewController *)self minimalCheckmarkView];
  v14 = [v13 widthAnchor];
  v15 = [v14 constraintEqualToConstant:v12];
  v19 = v15;
  v16 = [NSArray arrayWithObjects:&v19 count:1];

  [(RCPlatterViewController *)self _setPriorityToDefaultHighForConstraints:v16];
  v17 = [v10 arrayByAddingObjectsFromArray:v16];

  return v17;
}

- (id)_minimalModeBaseConstraintsWithHeight:(double)a3
{
  v21 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v21 platterMinimalViewWidth];
  v6 = v5;
  v20 = [(RCPlatterViewController *)self minimalViewContainer];
  v19 = [v20 heightAnchor];
  v18 = [v19 constraintEqualToConstant:a3];
  v22[0] = v18;
  v17 = [(RCPlatterViewController *)self minimalViewContainer];
  v7 = [v17 widthAnchor];
  v8 = [v7 constraintEqualToConstant:v6];
  v22[1] = v8;
  v9 = [(RCPlatterViewController *)self minimalViewContainer];
  v10 = [v9 centerXAnchor];
  v11 = [(RCPlatterViewController *)self view];
  v12 = [v11 centerXAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v22[2] = v13;
  v14 = [NSArray arrayWithObjects:v22 count:3];
  v15 = [NSMutableArray arrayWithArray:v14];

  [(RCPlatterViewController *)self _setPriorityToDefaultHighForConstraints:v15];

  return v15;
}

- (void)_setPriorityToDefaultHighForConstraints:(id)a3
{
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        LODWORD(v5) = 1144750080;
        [*(*(&v9 + 1) + 8 * v8) setPriority:v5];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_addAppLaunchTapGestureRecognizerIfNeeded
{
  if ([(RCPlatterViewController *)self presentationStyle]== 1)
  {
    v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_launchApp:"];
    v3 = [(RCPlatterViewController *)self view];
    [v3 addGestureRecognizer:v6];

    v4 = [(RCPlatterViewController *)self view];
    v5 = [v4 layer];
    [v5 setHitTestsAsOpaque:1];
  }
}

- (void)timeController:(id)a3 didChangeCurrentTime:(double)a4 didChangeDuration:(double)a5
{
  if ([a3 timeControllerState] == 2)
  {

    [(RCPlatterViewController *)self _updateTime:a4];
  }
}

- (void)_updateTime:(double)a3
{
  v5 = [(RCPlatterViewController *)self timeView];
  [v5 updateTime:a3];

  v6 = [(RCPlatterViewController *)self leadingPlatterWaveformView];
  [v6 updateSliceFramesForRecordingTime:a3];

  v7 = [(RCPlatterViewController *)self minimalPlatterWaveformView];
  [v7 updateSliceFramesForRecordingTime:a3];

  v8 = [(RCPlatterViewController *)self minimalAndromedaPlatterWaveformView];
  [v8 updateSliceFramesForRecordingTime:a3];

  v9 = [(RCPlatterViewController *)self elapsedRecordingTimeInfo];

  if (!v9)
  {
    v10 = objc_alloc_init(RCElapsedRecordingTimeInfo);
    [(RCPlatterViewController *)self setElapsedRecordingTimeInfo:v10];
  }

  v11 = mach_absolute_time();
  v12 = [(RCPlatterViewController *)self elapsedRecordingTimeInfo];
  [v12 setMachElapsedRecordingTime:v11];

  v16 = [(RCPlatterViewController *)self activeTimeController];
  [v16 currentTime];
  v14 = v13;
  v15 = [(RCPlatterViewController *)self elapsedRecordingTimeInfo];
  [v15 setElapsedRecordingTime:v14];
}

- (void)didTapStopRecordingButton
{
  v3 = [(RCPlatterViewController *)self delegate];
  [v3 stopCapturingForPlatterViewController:self];
}

- (void)accessibilityValueDidChange
{
  if ([(RCPlatterViewController *)self activeLayoutMode]!= 1 && [(RCPlatterViewController *)self activeLayoutMode])
  {
    v3 = [(RCPlatterViewController *)self systemApertureElementContext];
    [v3 setElementNeedsUpdate];
  }
}

- (int64_t)maximumLayoutMode
{
  if ([(RCPlatterViewController *)self platterState]== 1)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

- (UIColor)keyColor
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 platterKeyColor];

  return v3;
}

- (id)_timelinesForDateInterval:(id)a3
{
  v4 = a3;
  if ([(RCPlatterViewController *)self platterState])
  {
    v5 = [RCTimelineGenerator emptyTimelineWithIdentifier:@"RCJindoAlwaysOnEmptyIdentifier"];
  }

  else
  {
    v6 = [(RCPlatterViewController *)self timelineGenerator];

    if (!v6)
    {
      v7 = [RCTimelineGenerator alloc];
      v8 = [(RCPlatterViewController *)self delegate];
      v9 = [v8 recordingStartTimeInfo];
      v10 = [(RCPlatterViewController *)self elapsedRecordingTimeInfo];
      v11 = [(RCTimelineGenerator *)v7 initWithRecordingStartTimeInfo:v9 elapsedRecordingTimeInfo:v10];
      [(RCPlatterViewController *)self setTimelineGenerator:v11];
    }

    v12 = [(RCPlatterViewController *)self timelineGenerator];
    v13 = [(RCPlatterViewController *)self elapsedRecordingTimeInfo];
    [v13 elapsedRecordingTime];
    v5 = [v12 timelinesForDateInterval:v4 displayedRecordingTime:@"RCJindoAlwaysOnIdentifier" timelineIdentifier:?];
  }

  return v5;
}

- (void)_updateWithFrameSpecifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 entrySpecifierForTimelineIdentifier:@"RCJindoAlwaysOnIdentifier"];
    v7 = [(RCPlatterViewController *)self timelineGenerator];
    v8 = v7;
    if (v6 && v7)
    {
      v9 = [v6 timelineEntry];
      v10 = [v9 userObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = [v9 userObject];
        [v12 currentTime];
        v14 = v13;
      }

      else
      {
        v15 = [(RCPlatterViewController *)self delegate];
        v12 = [v15 recordingStartTimeInfo];

        [v12 recordingTimeAtStartTime];
        v17 = v16;
        v18 = [v6 timelineEntry];
        v19 = [v18 presentationTime];

        v20 = [v8 recordingStartTime];
        [v19 timeIntervalSinceDate:v20];
        v22 = v21;

        v14 = v17 + v22;
      }

      v23 = [(RCPlatterViewController *)self timeView];
      [v23 updateTime:v14];

      if (RCSupportsDebugAODLogs())
      {
        v24 = OSLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v30 = [v5 presentationInterval];
          v25 = [v30 bls_shortLoggingString];
          v26 = [v6 timelineEntry];
          v27 = [v26 presentationTime];
          v28 = [v27 bls_shortLoggingString];
          v29 = RCDebugStringForTimeInterval();
          *buf = 136315906;
          v32 = "[RCPlatterViewController _updateWithFrameSpecifier:]";
          v33 = 2112;
          v34 = v25;
          v35 = 2112;
          v36 = v28;
          v37 = 2112;
          v38 = v29;
          _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s -- presentationInterval = %@    presentationTime = %@    elapsedTime = %@", buf, 0x2Au);
        }
      }
    }
  }
}

- (unint64_t)platterLayoutModeForSystemApertureLayoutMode:(int64_t)a3
{
  if ((a3 - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return a3 - 1;
  }
}

- (RCPlatterViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (RCTimeController)activeTimeController
{
  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);

  return WeakRetained;
}

- (RCActivityWaveformProcessor)activityWaveformProcessor
{
  WeakRetained = objc_loadWeakRetained(&self->_activityWaveformProcessor);

  return WeakRetained;
}

@end
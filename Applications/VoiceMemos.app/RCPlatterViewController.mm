@interface RCPlatterViewController
- (NSDictionary)stateAndLayoutModeToConstraints;
- (RCActivityWaveformProcessor)activityWaveformProcessor;
- (RCPlatterViewController)initWithPresentationStyle:(unint64_t)style;
- (RCPlatterViewControllerDelegate)delegate;
- (RCTimeController)activeTimeController;
- (UIColor)keyColor;
- (id)_constraintsForCollapsedModeWithState:(unint64_t)state;
- (id)_constraintsForExpandedModeInBanner;
- (id)_constraintsForExpandedModeInDynamicIsland;
- (id)_constraintsForExpandedModeWithPresentationStyle:(unint64_t)style;
- (id)_constraintsForMinimalModeCheckmarkState;
- (id)_constraintsForMinimalModeWaveformState;
- (id)_constraintsForMinimalModeWithState:(unint64_t)state;
- (id)_createConstraintsForLayoutMode:(unint64_t)mode platterState:(unint64_t)state;
- (id)_minimalModeBaseConstraintsWithHeight:(double)height;
- (id)_timelinesForDateInterval:(id)interval;
- (id)constraintsForLayoutMode:(unint64_t)mode platterState:(unint64_t)state;
- (int64_t)maximumLayoutMode;
- (unint64_t)platterLayoutModeForSystemApertureLayoutMode:(int64_t)mode;
- (void)_addAppLaunchTapGestureRecognizerIfNeeded;
- (void)_addViewsAsSubviewsIfNeeded;
- (void)_setPriorityToDefaultHighForConstraints:(id)constraints;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateMinimalViewContainer;
- (void)_updatePlatterViewElementStateForLayoutMode:(unint64_t)mode;
- (void)_updateTime:(double)time;
- (void)_updateTimeViewElementStateForLayoutMode:(unint64_t)mode;
- (void)_updateViewHiddenStateForLayoutMode:(unint64_t)mode;
- (void)_updateViewsForLayoutMode:(unint64_t)mode platterState:(unint64_t)state;
- (void)_updateWithFrameSpecifier:(id)specifier;
- (void)accessibilityValueDidChange;
- (void)activateConstraints:(id)constraints;
- (void)didTapStopRecordingButton;
- (void)displayRecordingSavedStatusMessage;
- (void)setActiveTimeController:(id)controller;
- (void)timeController:(id)controller didChangeCurrentTime:(double)time didChangeDuration:(double)duration;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation RCPlatterViewController

- (RCPlatterViewController)initWithPresentationStyle:(unint64_t)style
{
  v7.receiver = self;
  v7.super_class = RCPlatterViewController;
  v4 = [(RCPlatterViewController *)&v7 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(RCPlatterViewController *)v4 setPresentationStyle:style];
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
  view = [(RCPlatterViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [RCActivityWaveformDataProvider alloc];
  activityWaveformProcessor = [(RCPlatterViewController *)self activityWaveformProcessor];
  v6 = [(RCActivityWaveformDataProvider *)v4 initWithWaveformProcessor:activityWaveformProcessor];
  [(RCPlatterViewController *)self setWaveformDataProvider:v6];

  v7 = [RCPlatterLeadingWaveformView alloc];
  waveformDataProvider = [(RCPlatterViewController *)self waveformDataProvider];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(RCPlatterWaveformView *)v7 initWithFrame:waveformDataProvider dataProvider:CGRectZero.origin.x, y, width, height];
  [(RCPlatterViewController *)self setLeadingPlatterWaveformView:height];

  leadingPlatterWaveformView = [(RCPlatterViewController *)self leadingPlatterWaveformView];
  [leadingPlatterWaveformView setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [RCPlatterMinimalWaveformView alloc];
  waveformDataProvider2 = [(RCPlatterViewController *)self waveformDataProvider];
  height2 = [(RCPlatterWaveformView *)v14 initWithFrame:waveformDataProvider2 dataProvider:CGRectZero.origin.x, y, width, height];
  [(RCPlatterViewController *)self setMinimalPlatterWaveformView:height2];

  height3 = [(RCPlatterWaveformView *)[RCPlatterMinimalAndromedaWaveformView alloc] initWithFrame:0 dataProvider:CGRectZero.origin.x, y, width, height];
  [(RCPlatterViewController *)self setMinimalAndromedaPlatterWaveformView:height3];

  v18 = [RCPlatterMinimalViewContainer alloc];
  minimalPlatterWaveformView = [(RCPlatterViewController *)self minimalPlatterWaveformView];
  height4 = [(RCPlatterMinimalViewContainer *)v18 initWithFrame:minimalPlatterWaveformView childView:CGRectZero.origin.x, y, width, height];
  [(RCPlatterViewController *)self setMinimalViewContainer:height4];

  minimalViewContainer = [(RCPlatterViewController *)self minimalViewContainer];
  [minimalViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [[RCPlatterTimeView alloc] initWithPresentationStyle:self->_presentationStyle];
  [(RCPlatterViewController *)self setTimeView:v22];

  timeView = [(RCPlatterViewController *)self timeView];
  [timeView setDelegate:self];

  timeView2 = [(RCPlatterViewController *)self timeView];
  [timeView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  height5 = [[RCPlatterCheckmarkView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(RCPlatterViewController *)self setMinimalCheckmarkView:height5];

  minimalCheckmarkView = [(RCPlatterViewController *)self minimalCheckmarkView];
  [minimalCheckmarkView setTranslatesAutoresizingMaskIntoConstraints:0];

  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);
  [WeakRetained currentTime];
  [(RCPlatterViewController *)self _updateTime:?];

  [(RCPlatterViewController *)self _addAppLaunchTapGestureRecognizerIfNeeded];
  v28 = objc_opt_self();
  v32 = v28;
  v29 = [NSArray arrayWithObjects:&v32 count:1];
  v30 = [(RCPlatterViewController *)self registerForTraitChanges:v29 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RCPlatterViewController;
  [(RCPlatterViewController *)&v4 viewWillAppear:appear];
  if ([(RCPlatterViewController *)self presentationStyle]== 1)
  {
    [(RCPlatterViewController *)self _updateViewsForLayoutMode:3 platterState:[(RCPlatterViewController *)self platterState]];
  }
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(RCPlatterViewController *)self traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];
  _backlightLuminance2 = [collectionCopy _backlightLuminance];

  if (_backlightLuminance != _backlightLuminance2)
  {
    traitCollection2 = [(RCPlatterViewController *)self traitCollection];
    isInAndromeda = [traitCollection2 isInAndromeda];

    if (isInAndromeda != [collectionCopy isInAndromeda])
    {
      [(RCPlatterViewController *)self _updateMinimalViewContainer];
      timeView = [(RCPlatterViewController *)self timeView];
      [timeView setShouldHideTimeComponents:isInAndromeda];

      if (isInAndromeda)
      {
        v11 = [RCTimelineGenerator alloc];
        delegate = [(RCPlatterViewController *)self delegate];
        recordingStartTimeInfo = [delegate recordingStartTimeInfo];
        elapsedRecordingTimeInfo = [(RCPlatterViewController *)self elapsedRecordingTimeInfo];
        v15 = [(RCTimelineGenerator *)v11 initWithRecordingStartTimeInfo:recordingStartTimeInfo elapsedRecordingTimeInfo:elapsedRecordingTimeInfo];
        [(RCPlatterViewController *)self setTimelineGenerator:v15];

        leadingPlatterWaveformView = [(RCPlatterViewController *)self leadingPlatterWaveformView];
        v17 = +[RCRecorderStyleProvider sharedStyleProvider];
        platterWaveformInactiveSliceColor = [v17 platterWaveformInactiveSliceColor];
        [leadingPlatterWaveformView setSliceColor:platterWaveformInactiveSliceColor];
      }

      else
      {
        [(RCPlatterViewController *)self setTimelineGenerator:0];
        leadingPlatterWaveformView = [(RCPlatterViewController *)self leadingPlatterWaveformView];
        [leadingPlatterWaveformView resetSliceColor];
      }
    }
  }
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  activeLayoutMode = [(RCPlatterViewController *)self activeLayoutMode];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C06F8;
  v7[3] = &unk_10028C440;
  v7[4] = self;
  v7[5] = [(RCPlatterViewController *)self platterLayoutModeForSystemApertureLayoutMode:activeLayoutMode];
  v7[6] = [(RCPlatterViewController *)self platterState];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C0708;
  v6[3] = &unk_10028C760;
  v6[4] = self;
  v6[5] = activeLayoutMode;
  [coordinatorCopy animateAlongsideTransition:v7 completion:v6];
}

- (void)_updateViewsForLayoutMode:(unint64_t)mode platterState:(unint64_t)state
{
  v10 = [RCPlatterViewController constraintsForLayoutMode:"constraintsForLayoutMode:platterState:" platterState:?];
  [(RCPlatterViewController *)self _addViewsAsSubviewsIfNeeded];
  [(RCPlatterViewController *)self _updateMinimalViewContainer];
  [(RCPlatterViewController *)self _updateViewHiddenStateForLayoutMode:mode];
  [(RCPlatterViewController *)self _updateTimeViewElementStateForLayoutMode:mode];
  [(RCPlatterViewController *)self _updatePlatterViewElementStateForLayoutMode:mode];
  [(RCPlatterViewController *)self activateConstraints:v10];
  if (state == 1)
  {
    v7 = +[RCRecorderStyleProvider sharedStyleProvider];
    platterWaveformStatusMessageSliceColor = [v7 platterWaveformStatusMessageSliceColor];

    leadingPlatterWaveformView = [(RCPlatterViewController *)self leadingPlatterWaveformView];
    [leadingPlatterWaveformView setSliceColor:platterWaveformStatusMessageSliceColor];
  }
}

- (void)setActiveTimeController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_activeTimeController, controllerCopy);
  [controllerCopy currentTime];
  v6 = v5;

  [(RCPlatterViewController *)self _updateTime:v6];
}

- (void)displayRecordingSavedStatusMessage
{
  [(RCPlatterViewController *)self setPlatterState:1];
  if ([(RCPlatterViewController *)self presentationStyle]== 1)
  {
    platterState = [(RCPlatterViewController *)self platterState];

    [(RCPlatterViewController *)self _updateViewsForLayoutMode:3 platterState:platterState];
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

- (void)_updateTimeViewElementStateForLayoutMode:(unint64_t)mode
{
  if ([(RCPlatterViewController *)self platterState])
  {
    if ([(RCPlatterViewController *)self platterState]!= 1)
    {
      return;
    }

    timeView = [(RCPlatterViewController *)self timeView];
    v7 = timeView;
    v6 = 2;
  }

  else
  {
    timeView = [(RCPlatterViewController *)self timeView];
    v7 = timeView;
    v6 = mode == 3;
  }

  [timeView setState:v6];
}

- (void)_updatePlatterViewElementStateForLayoutMode:(unint64_t)mode
{
  v3 = mode == 3;
  leadingPlatterWaveformView = [(RCPlatterViewController *)self leadingPlatterWaveformView];
  [leadingPlatterWaveformView setStyle:v3];
}

- (void)_addViewsAsSubviewsIfNeeded
{
  leadingPlatterWaveformView = [(RCPlatterViewController *)self leadingPlatterWaveformView];
  superview = [leadingPlatterWaveformView superview];

  if (!superview)
  {
    view = [(RCPlatterViewController *)self view];
    leadingPlatterWaveformView2 = [(RCPlatterViewController *)self leadingPlatterWaveformView];
    [view addSubview:leadingPlatterWaveformView2];
  }

  timeView = [(RCPlatterViewController *)self timeView];
  superview2 = [timeView superview];

  if (!superview2)
  {
    view2 = [(RCPlatterViewController *)self view];
    timeView2 = [(RCPlatterViewController *)self timeView];
    [view2 addSubview:timeView2];
  }

  minimalViewContainer = [(RCPlatterViewController *)self minimalViewContainer];
  superview3 = [minimalViewContainer superview];

  if (!superview3)
  {
    view3 = [(RCPlatterViewController *)self view];
    minimalViewContainer2 = [(RCPlatterViewController *)self minimalViewContainer];
    [view3 addSubview:minimalViewContainer2];
  }
}

- (void)_updateViewHiddenStateForLayoutMode:(unint64_t)mode
{
  v4 = mode != 1;
  v5 = mode == 1;
  leadingView = [(RCPlatterViewController *)self leadingView];
  [leadingView setHidden:v5];

  trailingView = [(RCPlatterViewController *)self trailingView];
  [trailingView setHidden:v5];

  minimalView = [(RCPlatterViewController *)self minimalView];
  [minimalView setHidden:v4];
}

- (void)_updateMinimalViewContainer
{
  if ([(RCPlatterViewController *)self _platterStateNeedsMinimalCheckmarkView])
  {
    minimalViewContainer = [(RCPlatterViewController *)self minimalViewContainer];
    minimalCheckmarkView = [(RCPlatterViewController *)self minimalCheckmarkView];
    minimalViewContainer2 = minimalViewContainer;
    v5 = minimalCheckmarkView;
  }

  else
  {
    minimalViewContainer = [(RCPlatterViewController *)self minimalPlatterWaveformView];
    traitCollection = [(RCPlatterViewController *)self traitCollection];
    isInAndromeda = [traitCollection isInAndromeda];

    if (isInAndromeda)
    {
      minimalAndromedaPlatterWaveformView = [(RCPlatterViewController *)self minimalAndromedaPlatterWaveformView];

      minimalViewContainer = minimalAndromedaPlatterWaveformView;
    }

    minimalViewContainer2 = [(RCPlatterViewController *)self minimalViewContainer];
    minimalCheckmarkView = minimalViewContainer2;
    v5 = minimalViewContainer;
  }

  [minimalViewContainer2 setChildView:v5];
}

- (void)activateConstraints:(id)constraints
{
  constraintsCopy = constraints;
  if (([(NSArray *)self->_activeConstraints isEqual:?]& 1) == 0)
  {
    [NSLayoutConstraint deactivateConstraints:self->_activeConstraints];
    objc_storeStrong(&self->_activeConstraints, constraints);
    [NSLayoutConstraint activateConstraints:self->_activeConstraints];
  }
}

- (id)constraintsForLayoutMode:(unint64_t)mode platterState:(unint64_t)state
{
  stateAndLayoutModeToConstraints = [(RCPlatterViewController *)self stateAndLayoutModeToConstraints];
  v7 = [NSNumber numberWithUnsignedInteger:state];
  v8 = [stateAndLayoutModeToConstraints objectForKeyedSubscript:v7];

  v9 = [NSNumber numberWithUnsignedInteger:mode];
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

- (id)_createConstraintsForLayoutMode:(unint64_t)mode platterState:(unint64_t)state
{
  switch(mode)
  {
    case 1uLL:
      v5 = [(RCPlatterViewController *)self _constraintsForMinimalModeWithState:state];
      goto LABEL_7;
    case 2uLL:
      v5 = [(RCPlatterViewController *)self _constraintsForCollapsedModeWithState:state];
      goto LABEL_7;
    case 3uLL:
      v5 = [(RCPlatterViewController *)self _constraintsForExpandedModeWithPresentationStyle:[(RCPlatterViewController *)self presentationStyle:3]];
LABEL_7:
      v6 = v5;
      goto LABEL_9;
  }

  v17 = [(RCPlatterViewController *)self leadingView:mode];
  leadingAnchor = [v17 leadingAnchor];
  view = [(RCPlatterViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v18[0] = v10;
  trailingView = [(RCPlatterViewController *)self trailingView];
  trailingAnchor = [trailingView trailingAnchor];
  view2 = [(RCPlatterViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v18[1] = v15;
  v6 = [NSArray arrayWithObjects:v18 count:2];

LABEL_9:

  return v6;
}

- (id)_constraintsForCollapsedModeWithState:(unint64_t)state
{
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v4 platterCompactLeadingViewHeightMultiplier];
  v6 = v5;
  v34 = v4;
  [v4 platterWaveformWidthCompact];
  v8 = v7;
  leadingView = [(RCPlatterViewController *)self leadingView];
  leadingAnchor = [leadingView leadingAnchor];
  view = [(RCPlatterViewController *)self view];
  sBUISA_systemApertureLegibleContentLayoutMarginsGuide = [view SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
  leadingAnchor2 = [sBUISA_systemApertureLegibleContentLayoutMarginsGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v35[0] = v9;
  leadingView2 = [(RCPlatterViewController *)self leadingView];
  heightAnchor = [leadingView2 heightAnchor];
  view2 = [(RCPlatterViewController *)self view];
  heightAnchor2 = [view2 heightAnchor];
  v14 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:v6];
  v35[1] = v14;
  leadingView3 = [(RCPlatterViewController *)self leadingView];
  widthAnchor = [leadingView3 widthAnchor];
  v17 = [widthAnchor constraintEqualToConstant:v8];
  v35[2] = v17;
  v33 = [NSArray arrayWithObjects:v35 count:3];

  v18 = +[NSMutableArray array];
  if (state)
  {
    timeView = [(RCPlatterViewController *)self timeView];
    trailingCustomConcentricLayoutAnchor = [timeView trailingCustomConcentricLayoutAnchor];
    view3 = [(RCPlatterViewController *)self view];
    sBUISA_systemApertureTrailingConcentricContentLayoutGuide = [view3 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
    [sBUISA_systemApertureTrailingConcentricContentLayoutGuide centerXAnchor];
  }

  else
  {
    timeView = [(RCPlatterViewController *)self trailingView];
    trailingCustomConcentricLayoutAnchor = [timeView trailingAnchor];
    view3 = [(RCPlatterViewController *)self view];
    sBUISA_systemApertureTrailingConcentricContentLayoutGuide = [view3 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
    [sBUISA_systemApertureTrailingConcentricContentLayoutGuide trailingAnchor];
  }
  v23 = ;
  v24 = [trailingCustomConcentricLayoutAnchor constraintEqualToAnchor:v23];
  [v18 addObject:v24];

  v25 = [v33 arrayByAddingObjectsFromArray:v18];
  [(RCPlatterViewController *)self _setPriorityToDefaultHighForConstraints:v25];

  return v25;
}

- (id)_constraintsForExpandedModeWithPresentationStyle:(unint64_t)style
{
  if (style == 1)
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
  view = [(RCPlatterViewController *)self view];
  widthAnchor = [view widthAnchor];
  view2 = [(RCPlatterViewController *)self view];
  window = [view2 window];
  widthAnchor2 = [window widthAnchor];
  v4 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v68[0] = v4;
  view3 = [(RCPlatterViewController *)self view];
  bottomAnchor = [view3 bottomAnchor];
  view4 = [(RCPlatterViewController *)self view];
  sBUISA_systemApertureTrailingConcentricContentLayoutGuide = [view4 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
  bottomAnchor2 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v68[1] = v10;
  v11 = [NSArray arrayWithObjects:v68 count:2];
  v64 = [NSMutableArray arrayWithArray:v11];

  [v65 platterCustomLeadingViewLeadingPadding];
  v13 = v12;
  [v65 platterCustomLeadingViewHeightMultiplier];
  v15 = v14;
  leadingView = [(RCPlatterViewController *)self leadingView];
  leadingAnchor = [leadingView leadingAnchor];
  view5 = [(RCPlatterViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v13];
  v67[0] = v50;
  leadingView2 = [(RCPlatterViewController *)self leadingView];
  heightAnchor = [leadingView2 heightAnchor];
  view6 = [(RCPlatterViewController *)self view];
  heightAnchor2 = [view6 heightAnchor];
  v45 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:v15];
  v67[1] = v45;
  leadingView3 = [(RCPlatterViewController *)self leadingView];
  centerYAnchor = [leadingView3 centerYAnchor];
  trailingView = [(RCPlatterViewController *)self trailingView];
  centerYAnchor2 = [trailingView centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v67[2] = v17;
  leadingView4 = [(RCPlatterViewController *)self leadingView];
  trailingAnchor = [leadingView4 trailingAnchor];
  view7 = [(RCPlatterViewController *)self view];
  sBUISA_systemApertureObstructedAreaLayoutGuide = [view7 SBUISA_systemApertureObstructedAreaLayoutGuide];
  centerXAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide centerXAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:centerXAnchor];
  v67[3] = v23;
  v24 = [NSArray arrayWithObjects:v67 count:4];
  [v64 addObjectsFromArray:v24];

  timeView = [(RCPlatterViewController *)self timeView];
  trailingCustomConcentricLayoutAnchor = [timeView trailingCustomConcentricLayoutAnchor];
  view8 = [(RCPlatterViewController *)self view];
  sBUISA_systemApertureTrailingConcentricContentLayoutGuide2 = [view8 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
  centerXAnchor2 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide2 centerXAnchor];
  v25 = [trailingCustomConcentricLayoutAnchor constraintEqualToAnchor:centerXAnchor2];
  v66[0] = v25;
  trailingView2 = [(RCPlatterViewController *)self trailingView];
  centerYAnchor3 = [trailingView2 centerYAnchor];
  view9 = [(RCPlatterViewController *)self view];
  sBUISA_systemApertureTrailingConcentricContentLayoutGuide3 = [view9 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
  centerYAnchor4 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide3 centerYAnchor];
  v31 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v66[1] = v31;
  v32 = [NSArray arrayWithObjects:v66 count:2];
  [v64 addObjectsFromArray:v32];

  [(RCPlatterViewController *)self _setPriorityToDefaultHighForConstraints:v64];
  [v65 platterCustomLeadingViewToTrailingViewMinimumPadding];
  v34 = v33;
  leadingView5 = [(RCPlatterViewController *)self leadingView];
  trailingAnchor2 = [leadingView5 trailingAnchor];
  trailingView3 = [(RCPlatterViewController *)self trailingView];
  leadingAnchor3 = [trailingView3 leadingAnchor];
  v39 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor3 constant:v34];

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
  leadingView = [(RCPlatterViewController *)self leadingView];
  leadingAnchor = [leadingView leadingAnchor];
  view = [(RCPlatterViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v4];
  v51[0] = v40;
  leadingView2 = [(RCPlatterViewController *)self leadingView];
  heightAnchor = [leadingView2 heightAnchor];
  view2 = [(RCPlatterViewController *)self view];
  heightAnchor2 = [view2 heightAnchor];
  v35 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:v6];
  v51[1] = v35;
  leadingView3 = [(RCPlatterViewController *)self leadingView];
  centerYAnchor = [leadingView3 centerYAnchor];
  trailingView = [(RCPlatterViewController *)self trailingView];
  centerYAnchor2 = [trailingView centerYAnchor];
  v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v51[2] = v9;
  leadingView4 = [(RCPlatterViewController *)self leadingView];
  trailingAnchor = [leadingView4 trailingAnchor];
  view3 = [(RCPlatterViewController *)self view];
  centerXAnchor = [view3 centerXAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:centerXAnchor];
  v51[3] = v14;
  v15 = [NSArray arrayWithObjects:v51 count:4];
  [v49 addObjectsFromArray:v15];

  timeView = [(RCPlatterViewController *)self timeView];
  trailingAnchor2 = [timeView trailingAnchor];
  view4 = [(RCPlatterViewController *)self view];
  trailingAnchor3 = [view4 trailingAnchor];
  v17 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-v4];
  v50[0] = v17;
  trailingView2 = [(RCPlatterViewController *)self trailingView];
  centerYAnchor3 = [trailingView2 centerYAnchor];
  view5 = [(RCPlatterViewController *)self view];
  centerYAnchor4 = [view5 centerYAnchor];
  v22 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v50[1] = v22;
  v23 = [NSArray arrayWithObjects:v50 count:2];
  [v49 addObjectsFromArray:v23];

  [(RCPlatterViewController *)self _setPriorityToDefaultHighForConstraints:v49];
  [v48 platterCustomLeadingViewToTrailingViewMinimumPadding];
  v25 = v24;
  leadingView5 = [(RCPlatterViewController *)self leadingView];
  trailingAnchor4 = [leadingView5 trailingAnchor];
  trailingView3 = [(RCPlatterViewController *)self trailingView];
  leadingAnchor3 = [trailingView3 leadingAnchor];
  v30 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:leadingAnchor3 constant:v25];

  LODWORD(v31) = 1148846080;
  [v30 setPriority:v31];
  [v49 addObject:v30];

  return v49;
}

- (id)_constraintsForMinimalModeWithState:(unint64_t)state
{
  if (state == 1)
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
  view = [(RCPlatterViewController *)self view];
  sBUISA_systemApertureObstructedAreaLayoutGuide = [view SBUISA_systemApertureObstructedAreaLayoutGuide];
  [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
  v9 = v5 * v8;

  v10 = [(RCPlatterViewController *)self _minimalModeBaseConstraintsWithHeight:v9];
  [v3 platterMinimalViewWidth];
  v12 = v11;
  minimalCheckmarkView = [(RCPlatterViewController *)self minimalCheckmarkView];
  widthAnchor = [minimalCheckmarkView widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:v12];
  v19 = v15;
  v16 = [NSArray arrayWithObjects:&v19 count:1];

  [(RCPlatterViewController *)self _setPriorityToDefaultHighForConstraints:v16];
  v17 = [v10 arrayByAddingObjectsFromArray:v16];

  return v17;
}

- (id)_minimalModeBaseConstraintsWithHeight:(double)height
{
  v21 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v21 platterMinimalViewWidth];
  v6 = v5;
  minimalViewContainer = [(RCPlatterViewController *)self minimalViewContainer];
  heightAnchor = [minimalViewContainer heightAnchor];
  v18 = [heightAnchor constraintEqualToConstant:height];
  v22[0] = v18;
  minimalViewContainer2 = [(RCPlatterViewController *)self minimalViewContainer];
  widthAnchor = [minimalViewContainer2 widthAnchor];
  v8 = [widthAnchor constraintEqualToConstant:v6];
  v22[1] = v8;
  minimalViewContainer3 = [(RCPlatterViewController *)self minimalViewContainer];
  centerXAnchor = [minimalViewContainer3 centerXAnchor];
  view = [(RCPlatterViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v22[2] = v13;
  v14 = [NSArray arrayWithObjects:v22 count:3];
  v15 = [NSMutableArray arrayWithArray:v14];

  [(RCPlatterViewController *)self _setPriorityToDefaultHighForConstraints:v15];

  return v15;
}

- (void)_setPriorityToDefaultHighForConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [constraintsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(constraintsCopy);
        }

        LODWORD(v5) = 1144750080;
        [*(*(&v9 + 1) + 8 * v8) setPriority:v5];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [constraintsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_addAppLaunchTapGestureRecognizerIfNeeded
{
  if ([(RCPlatterViewController *)self presentationStyle]== 1)
  {
    v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_launchApp:"];
    view = [(RCPlatterViewController *)self view];
    [view addGestureRecognizer:v6];

    view2 = [(RCPlatterViewController *)self view];
    layer = [view2 layer];
    [layer setHitTestsAsOpaque:1];
  }
}

- (void)timeController:(id)controller didChangeCurrentTime:(double)time didChangeDuration:(double)duration
{
  if ([controller timeControllerState] == 2)
  {

    [(RCPlatterViewController *)self _updateTime:time];
  }
}

- (void)_updateTime:(double)time
{
  timeView = [(RCPlatterViewController *)self timeView];
  [timeView updateTime:time];

  leadingPlatterWaveformView = [(RCPlatterViewController *)self leadingPlatterWaveformView];
  [leadingPlatterWaveformView updateSliceFramesForRecordingTime:time];

  minimalPlatterWaveformView = [(RCPlatterViewController *)self minimalPlatterWaveformView];
  [minimalPlatterWaveformView updateSliceFramesForRecordingTime:time];

  minimalAndromedaPlatterWaveformView = [(RCPlatterViewController *)self minimalAndromedaPlatterWaveformView];
  [minimalAndromedaPlatterWaveformView updateSliceFramesForRecordingTime:time];

  elapsedRecordingTimeInfo = [(RCPlatterViewController *)self elapsedRecordingTimeInfo];

  if (!elapsedRecordingTimeInfo)
  {
    v10 = objc_alloc_init(RCElapsedRecordingTimeInfo);
    [(RCPlatterViewController *)self setElapsedRecordingTimeInfo:v10];
  }

  v11 = mach_absolute_time();
  elapsedRecordingTimeInfo2 = [(RCPlatterViewController *)self elapsedRecordingTimeInfo];
  [elapsedRecordingTimeInfo2 setMachElapsedRecordingTime:v11];

  activeTimeController = [(RCPlatterViewController *)self activeTimeController];
  [activeTimeController currentTime];
  v14 = v13;
  elapsedRecordingTimeInfo3 = [(RCPlatterViewController *)self elapsedRecordingTimeInfo];
  [elapsedRecordingTimeInfo3 setElapsedRecordingTime:v14];
}

- (void)didTapStopRecordingButton
{
  delegate = [(RCPlatterViewController *)self delegate];
  [delegate stopCapturingForPlatterViewController:self];
}

- (void)accessibilityValueDidChange
{
  if ([(RCPlatterViewController *)self activeLayoutMode]!= 1 && [(RCPlatterViewController *)self activeLayoutMode])
  {
    systemApertureElementContext = [(RCPlatterViewController *)self systemApertureElementContext];
    [systemApertureElementContext setElementNeedsUpdate];
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
  platterKeyColor = [v2 platterKeyColor];

  return platterKeyColor;
}

- (id)_timelinesForDateInterval:(id)interval
{
  intervalCopy = interval;
  if ([(RCPlatterViewController *)self platterState])
  {
    v5 = [RCTimelineGenerator emptyTimelineWithIdentifier:@"RCJindoAlwaysOnEmptyIdentifier"];
  }

  else
  {
    timelineGenerator = [(RCPlatterViewController *)self timelineGenerator];

    if (!timelineGenerator)
    {
      v7 = [RCTimelineGenerator alloc];
      delegate = [(RCPlatterViewController *)self delegate];
      recordingStartTimeInfo = [delegate recordingStartTimeInfo];
      elapsedRecordingTimeInfo = [(RCPlatterViewController *)self elapsedRecordingTimeInfo];
      v11 = [(RCTimelineGenerator *)v7 initWithRecordingStartTimeInfo:recordingStartTimeInfo elapsedRecordingTimeInfo:elapsedRecordingTimeInfo];
      [(RCPlatterViewController *)self setTimelineGenerator:v11];
    }

    timelineGenerator2 = [(RCPlatterViewController *)self timelineGenerator];
    elapsedRecordingTimeInfo2 = [(RCPlatterViewController *)self elapsedRecordingTimeInfo];
    [elapsedRecordingTimeInfo2 elapsedRecordingTime];
    v5 = [timelineGenerator2 timelinesForDateInterval:intervalCopy displayedRecordingTime:@"RCJindoAlwaysOnIdentifier" timelineIdentifier:?];
  }

  return v5;
}

- (void)_updateWithFrameSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy)
  {
    v6 = [specifierCopy entrySpecifierForTimelineIdentifier:@"RCJindoAlwaysOnIdentifier"];
    timelineGenerator = [(RCPlatterViewController *)self timelineGenerator];
    v8 = timelineGenerator;
    if (v6 && timelineGenerator)
    {
      timelineEntry = [v6 timelineEntry];
      userObject = [timelineEntry userObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        userObject2 = [timelineEntry userObject];
        [userObject2 currentTime];
        v14 = v13;
      }

      else
      {
        delegate = [(RCPlatterViewController *)self delegate];
        userObject2 = [delegate recordingStartTimeInfo];

        [userObject2 recordingTimeAtStartTime];
        v17 = v16;
        timelineEntry2 = [v6 timelineEntry];
        presentationTime = [timelineEntry2 presentationTime];

        recordingStartTime = [v8 recordingStartTime];
        [presentationTime timeIntervalSinceDate:recordingStartTime];
        v22 = v21;

        v14 = v17 + v22;
      }

      timeView = [(RCPlatterViewController *)self timeView];
      [timeView updateTime:v14];

      if (RCSupportsDebugAODLogs())
      {
        v24 = OSLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          presentationInterval = [v5 presentationInterval];
          bls_shortLoggingString = [presentationInterval bls_shortLoggingString];
          timelineEntry3 = [v6 timelineEntry];
          presentationTime2 = [timelineEntry3 presentationTime];
          bls_shortLoggingString2 = [presentationTime2 bls_shortLoggingString];
          v29 = RCDebugStringForTimeInterval();
          *buf = 136315906;
          v32 = "[RCPlatterViewController _updateWithFrameSpecifier:]";
          v33 = 2112;
          v34 = bls_shortLoggingString;
          v35 = 2112;
          v36 = bls_shortLoggingString2;
          v37 = 2112;
          v38 = v29;
          _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s -- presentationInterval = %@    presentationTime = %@    elapsedTime = %@", buf, 0x2Au);
        }
      }
    }
  }
}

- (unint64_t)platterLayoutModeForSystemApertureLayoutMode:(int64_t)mode
{
  if ((mode - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return mode - 1;
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
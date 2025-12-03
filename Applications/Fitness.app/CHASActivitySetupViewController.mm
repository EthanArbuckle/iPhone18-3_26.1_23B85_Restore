@interface CHASActivitySetupViewController
- (BOOL)_currentPageHasGoalSchedule;
- (BOOL)_isGoalSchedule:(id)schedule theSameAs:(id)as;
- (BOOL)_isStandalonePhoneFitnessMode;
- (BOOL)_shouldShowChangeGoalFooter;
- (BOOL)shouldAccountForHeaderHeight;
- (BPSBuddyControllerDelegate)delegate;
- (CHASActivitySetupViewController)initWithPresentationContext:(int64_t)context;
- (CHASActivitySetupViewController)initWithPresentationContext:(int64_t)context goalType:(int64_t)type editTodayOnly:(BOOL)only;
- (id)_activityLevelView;
- (id)_createGoalViewWithFrame:(CGRect)frame configuration:(id)configuration;
- (id)_exerciseGoalViewConfiguration;
- (id)_exerciseQuantityForToday;
- (id)_existingActivityGoalScheduleForCurrentPage;
- (id)_formattingManager;
- (id)_moveGoalViewConfiguration;
- (id)_moveQuantityForToday;
- (id)_standGoalViewConfiguration;
- (id)_standQuantityForToday;
- (id)_unitManager;
- (id)activityLevelForSegmentedControlIndex:(int64_t)index;
- (id)advanceGoalHeaderTitle;
- (id)continueButtonTitle;
- (id)healthStore;
- (id)tapToRadarMetadata;
- (int64_t)_activityGoalTypeForCurrentPage;
- (void)_activityLevelPresetChanged:(id)changed;
- (void)_displayExerciseGoalViewAnimated:(BOOL)animated;
- (void)_displayStandGoalViewAnimated:(BOOL)animated;
- (void)_fetchActiveExerciseGoalSampleWithCompletion:(id)completion;
- (void)_fetchActiveMoveGoalSampleWithCompletion:(id)completion;
- (void)_fetchActiveSampleForQuantityType:(id)type completion:(id)completion;
- (void)_fetchActiveStandGoalSampleWithCompletion:(id)completion;
- (void)_fetchMostRecentDailyExerciseGoalSampleWithCompletion:(id)completion;
- (void)_fetchMostRecentDailyGoalSampleForQuantityType:(id)type completion:(id)completion;
- (void)_fetchMostRecentDailyMoveGoalSampleWithCompletion:(id)completion;
- (void)_fetchMostRecentDailyStandGoalSampleWithCompletion:(id)completion;
- (void)_fetchMostRecentGoalSchedulesWithCompletion:(id)completion;
- (void)_loadExerciseAndStandGoalViews;
- (void)_loadMoveGoalView;
- (void)_removeAdvancedView;
- (void)_removeGoalsOfType:(id)type after:(id)after;
- (void)_saveGoalsAndDismiss;
- (void)_setGoalQuantity:(id)quantity goalView:(id)view;
- (void)_setGoalQuantityForGoalView:(id)view;
- (void)_setGoalSchedules:(id)schedules;
- (void)_showAdvancedViewForCurrentGoalPage;
- (void)_showAdvancedViewIfNeeded;
- (void)_storeGoals;
- (void)_toggleAdvancedMode;
- (void)_updateAdvanceViewButton:(id)button;
- (void)_updateGoalSchedule;
- (void)alignGoalViews;
- (void)computeMaxYForGoalViews;
- (void)generateHeaders;
- (void)setActivityLevels:(id)levels activityMoveMode:(int64_t)mode;
- (void)tappedContinue:(id)continue;
- (void)updateContinueButton;
- (void)updateHeaderViewContent;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CHASActivitySetupViewController

- (CHASActivitySetupViewController)initWithPresentationContext:(int64_t)context
{
  v5.receiver = self;
  v5.super_class = CHASActivitySetupViewController;
  result = [(CHASActivitySetupViewController *)&v5 initWithTitle:&stru_1008680E8 detailText:0 icon:0];
  if (result)
  {
    result->_goalType = -1;
    result->_presentationContext = context;
  }

  return result;
}

- (CHASActivitySetupViewController)initWithPresentationContext:(int64_t)context goalType:(int64_t)type editTodayOnly:(BOOL)only
{
  v9.receiver = self;
  v9.super_class = CHASActivitySetupViewController;
  result = [(CHASActivitySetupViewController *)&v9 initWithTitle:&stru_1008680E8 detailText:0 icon:0];
  if (result)
  {
    result->_goalType = type;
    result->_editTodayOnly = only;
    result->_presentationContext = context;
  }

  return result;
}

- (id)advanceGoalHeaderTitle
{
  _activityGoalTypeForCurrentPage = [(CHASActivitySetupViewController *)self _activityGoalTypeForCurrentPage];
  if (_activityGoalTypeForCurrentPage < 2)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"CUSTOM_MOVE_GOAL";
  }

  else if (_activityGoalTypeForCurrentPage == 2)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"CUSTOM_EXERCISE_GOAL";
  }

  else
  {
    if (_activityGoalTypeForCurrentPage != 3)
    {
      goto LABEL_10;
    }

    isWheelchairUser = self->_isWheelchairUser;
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v6;
    if (isWheelchairUser)
    {
      v8 = @"CUSTOM_ROLL_GOAL";
    }

    else
    {
      v8 = @"CUSTOM_STAND_GOAL";
    }
  }

  v2 = [v6 localizedStringForKey:v8 value:&stru_1008680E8 table:@"ActivitySetup"];

LABEL_10:

  return v2;
}

- (void)generateHeaders
{
  v3 = [[NSMutableArray alloc] initWithCapacity:3];
  v4 = [[NSMutableArray alloc] initWithCapacity:3];
  if (self->_editTodayOnly)
  {
    v5 = @"_FOR_TODAY";
  }

  else
  {
    v5 = &stru_1008680E8;
  }

  v48 = v3;
  v49 = v5;
  if (self->_recommendedMoveGoal)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"RECOMMENDED_MOVE_GOAL" value:&stru_1008680E8 table:@"ActivitySetup"];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"RECOMMENDED_MOVE_GOAL_DESCRIPTION" value:&stru_1008680E8 table:@"ActivitySetup"];
  }

  else if (self->_isTinkerPaired)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    setupFlowUserInfo = [WeakRetained setupFlowUserInfo];
    v8 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowFamilyMember];

    firstName = [v8 firstName];
    localizedCapitalizedString = [firstName localizedCapitalizedString];

    v46 = [NSString stringWithFormat:@"SET_UP_MOVE_GOAL%@", v49];
    if (localizedCapitalizedString)
    {
      v14 = [NSString stringWithFormat:@"DAILY_MOVE_GOAL_DESCRIPTION_FITNESS_JR_TINKER%@_%@", v49, @"%@"];
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v44 = v14;
      [v15 localizedStringForKey:v14 value:&stru_1008680E8 table:@"ActivitySetup"];
      v17 = v16 = v4;
      v9 = [NSString stringWithFormat:v17, localizedCapitalizedString];

      v4 = v16;
      v3 = v48;
    }

    else
    {
      v23 = [NSString stringWithFormat:@"DAILY_MOVE_GOAL_DESCRIPTION_FITNESS_JR_TINKER%@", v49];
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v44 = v23;
      v9 = [v15 localizedStringForKey:v23 value:&stru_1008680E8 table:@"ActivitySetup"];
    }

    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v24 localizedStringForKey:v46 value:&stru_1008680E8 table:@"ActivitySetup"];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"SET_UP_MOVE_GOAL%@", v49];
    v18 = [NSString stringWithFormat:@"DAILY_MOVE_GOAL_DESCRIPTION%@", v49];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:v8 value:&stru_1008680E8 table:@"ActivitySetup"];

    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:v18 value:&stru_1008680E8 table:@"ActivitySetup"];

    v7 = v20;
    v9 = v22;
  }

  v47 = v7;
  [(NSArray *)v3 setObject:v7 atIndexedSubscript:0];
  v45 = v9;
  [(NSArray *)v4 setObject:v9 atIndexedSubscript:0];
  if (self->_isTinkerPaired)
  {
    v25 = @"_FITNESS_JR_TINKER";
  }

  else
  {
    v25 = @"_FITNESS_JR";
  }

  v41 = v4;
  if (self->_activityMoveMode != 2)
  {
    if (self->_isWheelchairUser)
    {
      v25 = @"_WHEELCHAIR";
    }

    else
    {
      v25 = &stru_1008680E8;
    }
  }

  v43 = [NSString stringWithFormat:@"SET_UP_EXERCISE_GOAL%@", v49];
  v42 = [NSString stringWithFormat:@"DAILY_EXERCISE_GOAL_DESCRIPTION%@%@", v25, v49];
  v26 = [NSBundle bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:v43 value:&stru_1008680E8 table:@"ActivitySetup"];
  [(NSArray *)v48 setObject:v27 atIndexedSubscript:1];

  v28 = [NSBundle bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:v42 value:&stru_1008680E8 table:@"ActivitySetup"];
  [(NSArray *)v41 setObject:v29 atIndexedSubscript:1];

  if (self->_isWheelchairUser)
  {
    v30 = @"ROLL";
  }

  else
  {
    v30 = @"STAND";
  }

  v31 = v30;
  v32 = [NSString stringWithFormat:@"SET_UP_%@_GOAL%@", v31, v49];
  v33 = [NSString stringWithFormat:@"DAILY_%@_GOAL_DESCRIPTION%@", v31, v49];

  v34 = [NSBundle bundleForClass:objc_opt_class()];
  v35 = [v34 localizedStringForKey:v32 value:&stru_1008680E8 table:@"ActivitySetup"];
  [(NSArray *)v48 setObject:v35 atIndexedSubscript:2];

  v36 = [NSBundle bundleForClass:objc_opt_class()];
  v37 = [v36 localizedStringForKey:v33 value:&stru_1008680E8 table:@"ActivitySetup"];
  [(NSArray *)v41 setObject:v37 atIndexedSubscript:2];

  pageTitles = self->_pageTitles;
  self->_pageTitles = v48;
  v39 = v48;

  pageDetailTexts = self->_pageDetailTexts;
  self->_pageDetailTexts = v41;
}

- (void)viewDidLoad
{
  v136.receiver = self;
  v136.super_class = CHASActivitySetupViewController;
  [(CHASActivitySetupViewController *)&v136 viewDidLoad];
  if (self->_presentationContext == 6)
  {
    v3 = _UISolariumEnabled();
    v4 = [UIBarButtonItem alloc];
    v5 = v4;
    if (v3)
    {
      v6 = [v4 initWithBarButtonSystemItem:1 target:self action:"_dismiss:"];
      navigationItem = [(CHASActivitySetupViewController *)self navigationItem];
      [navigationItem setLeftBarButtonItem:v6];
    }

    else
    {
      v6 = FIUIBundle();
      navigationItem = [v6 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_1008680E8 table:@"Localizable"];
      v8 = [v5 initWithTitle:navigationItem style:0 target:self action:"_dismiss:"];
      navigationItem2 = [(CHASActivitySetupViewController *)self navigationItem];
      [navigationItem2 setLeftBarButtonItem:v8];
    }
  }

  v10 = [FIActivitySettingsController alloc];
  healthStore = [(CHASActivitySetupViewController *)self healthStore];
  v122 = [v10 initWithHealthStore:healthStore];

  [v122 populateExistingCharacteristics];
  self->_activityMoveMode = 1;
  self->_isWheelchairUser = [v122 wheelchairUse] == 2;
  healthStore = self->_healthStore;
  v135 = 0;
  v118 = [(HKHealthStore *)healthStore _activityMoveModeWithError:&v135];
  v115 = v135;
  if (v115)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069B600();
    }
  }

  if (v118)
  {
    integerValue = [v118 integerValue];
  }

  else
  {
    dateOfBirth = [v122 dateOfBirth];
    if (!dateOfBirth)
    {
      goto LABEL_12;
    }

    isWheelchairUser = self->_isWheelchairUser;

    if (isWheelchairUser)
    {
      goto LABEL_12;
    }

    dateOfBirth2 = [v122 dateOfBirth];
    FIAgeInYearsForDateOfBirth();

    integerValue = FIDefaultActivityMoveModeWithAge();
  }

  self->_activityMoveMode = integerValue;
LABEL_12:
  self->_isRTL = FIUILocaleIsRightToLeft();
  delegate = [(CHASActivitySetupViewController *)self delegate];
  activePairingDevice = [delegate activePairingDevice];
  v16 = activePairingDevice;
  if (activePairingDevice)
  {
    v117 = activePairingDevice;
  }

  else
  {
    v117 = FIGetActivePairedDevice();
  }

  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v20 = qword_1008F99A0;
  v140 = qword_1008F99A0;
  if (!qword_1008F99A0)
  {
    location[0] = _NSConcreteStackBlock;
    location[1] = 3221225472;
    *&v124 = sub_1000C1CEC;
    *(&v124 + 1) = &unk_10083A998;
    *&v125 = &v137;
    sub_1000C1CEC(location);
    v20 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v20)
  {
    sub_10069B458();
    __break(1u);
  }

  v21 = *v20;
  v22 = [v117 valueForProperty:v21];
  self->_isTinkerPaired = [v22 BOOLValue];

  self->_currentPageIndex = 0;
  [(CHASActivitySetupViewController *)self generateHeaders];
  LODWORD(v22) = self->_activityMoveMode == 2;
  [v122 biologicalSex];
  [v122 weight];
  if (v22)
    v23 = {;
    v24 = [HKUnit gramUnitWithMetricPrefix:9];
    [v23 doubleValueForUnit:v24];

    height = [v122 height];
    v26 = [HKUnit meterUnitWithMetricPrefix:7];
    [height doubleValueForUnit:v26];

    dateOfBirth3 = [v122 dateOfBirth];
    FIAgeInYearsForDateOfBirth();

    [v122 wheelchairUse];
    FICMotionConditionForWheelchairUse();
    [(CHASActivitySetupViewController *)self _isStandalonePhoneFitnessMode];
    _formattingManager = [(CHASActivitySetupViewController *)self _formattingManager];
    FIUIActivityLevelsForFitnessJrAndIsStandalonePhoneFitnessMode();
  }

  else
    v29 = {;
    leanBodyMass = [v122 leanBodyMass];
    height2 = [v122 height];
    dateOfBirth4 = [v122 dateOfBirth];
    [v122 wheelchairUse];
    FIUICalculateBMR();

    [(CHASActivitySetupViewController *)self _isStandalonePhoneFitnessMode];
    _formattingManager = [(CHASActivitySetupViewController *)self _formattingManager];
    FIUIActivityLevelsForBMRAndIsStandalonePhoneFitnessMode();
  }
  v116 = ;

  v33 = objc_alloc_init(UIScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v33;

  [(UIScrollView *)self->_scrollView setPagingEnabled:0];
  [(UIScrollView *)self->_scrollView setScrollEnabled:0];
  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setUserInteractionEnabled:1];
  [(UIScrollView *)self->_scrollView setExclusiveTouch:0];
  [(UIScrollView *)self->_scrollView setCanCancelContentTouches:1];
  contentView = [(CHASActivitySetupViewController *)self contentView];
  [contentView addSubview:self->_scrollView];

  contentView2 = [(CHASActivitySetupViewController *)self contentView];
  topAnchor = [contentView2 topAnchor];
  topAnchor2 = [(UIScrollView *)self->_scrollView topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v39 setActive:1];

  contentView3 = [(CHASActivitySetupViewController *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];
  bottomAnchor2 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v43 setActive:1];

  [(CHASActivitySetupViewController *)self _loadMoveGoalView];
  [(CHASActivitySetupViewController *)self setActivityLevels:v116 activityMoveMode:self->_activityMoveMode];
  v44 = +[_HKBehavior sharedBehavior];
  features = [v44 features];
  LODWORD(bottomAnchor) = [features scheduledGoals];

  if (bottomAnchor)
  {
    v46 = +[UIButtonConfiguration plainButtonConfiguration];
    v120 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleCaption1];
    v47 = [UIImageSymbolConfiguration configurationWithFont:v120];
    v48 = [UIImage systemImageNamed:@"calendar" withConfiguration:v47];
    [v46 setImage:v48];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v49 = [NSBundle bundleForClass:objc_opt_class()];
      v50 = [v49 localizedStringForKey:@"SCHEDULE" value:&stru_1008680E8 table:@"ActivitySetup"];
      [v46 setTitle:v50];

      [v46 setImagePadding:3.0];
    }

    objc_initWeak(location, self);
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 3221225472;
    v133[2] = sub_1000BB954;
    v133[3] = &unk_10083AB00;
    objc_copyWeak(&v134, location);
    v51 = [UIAction actionWithHandler:v133];
    v52 = [UIButton buttonWithConfiguration:v46 primaryAction:v51];
    advancedButton = self->_advancedButton;
    self->_advancedButton = v52;

    [(UIButton *)self->_advancedButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v54 = self->_advancedButton;
    v131[0] = _NSConcreteStackBlock;
    v131[1] = 3221225472;
    v131[2] = sub_1000BB994;
    v131[3] = &unk_10083AB28;
    objc_copyWeak(&v132, location);
    [(UIButton *)v54 setConfigurationUpdateHandler:v131];
    if (!self->_editTodayOnly)
    {
      v55 = [[UIBarButtonItem alloc] initWithCustomView:self->_advancedButton];
      navigationItem3 = [(CHASActivitySetupViewController *)self navigationItem];
      [navigationItem3 setRightBarButtonItem:v55];
    }

    v129[0] = _NSConcreteStackBlock;
    v129[1] = 3221225472;
    v129[2] = sub_1000BB9F0;
    v129[3] = &unk_10083AB78;
    objc_copyWeak(&v130, location);
    [(CHASActivitySetupViewController *)self _fetchMostRecentGoalSchedulesWithCompletion:v129];
    objc_destroyWeak(&v130);
    objc_destroyWeak(&v132);

    objc_destroyWeak(&v134);
    objc_destroyWeak(location);
  }

  if (self->_recommendedMoveGoal)
  {
    if (self->_activityMoveMode == 2)
    {
      userActiveEnergyBurnedUnit = +[HKUnit minuteUnit];
    }

    else
    {
      unitManager = [(FIUIFormattingManager *)self->_formattingManager unitManager];
      userActiveEnergyBurnedUnit = [unitManager userActiveEnergyBurnedUnit];
    }

    [(NSNumber *)self->_recommendedMoveGoal doubleValue];
    v59 = [HKQuantity quantityWithUnit:userActiveEnergyBurnedUnit doubleValue:?];
    [(CHASActivitySetupViewController *)self _setGoalQuantity:v59 goalView:self->_moveGoalView];
  }

  else
  {
    objc_initWeak(location, self);
    v127[0] = _NSConcreteStackBlock;
    v127[1] = 3221225472;
    v127[2] = sub_1000BBB1C;
    v127[3] = &unk_10083ABF0;
    objc_copyWeak(&v128, location);
    [(CHASActivitySetupViewController *)self _fetchMostRecentDailyMoveGoalSampleWithCompletion:v127];
    objc_destroyWeak(&v128);
    objc_destroyWeak(location);
  }

  [(CHASActivitySetupViewController *)self _loadExerciseAndStandGoalViews];
  _activityLevelView = [(CHASActivitySetupViewController *)self _activityLevelView];
  [(UIScrollView *)self->_scrollView addSubview:_activityLevelView];
  [_activityLevelView setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor3 = [_activityLevelView topAnchor];
  contentView4 = [(CHASActivitySetupViewController *)self contentView];
  topAnchor4 = [contentView4 topAnchor];
  *location = 0u;
  v124 = 0u;
  __asm { FMOV            V0.2D, #16.0 }

  v125 = _Q0;
  v126 = _Q0;
  BPSScreenValueGetRelevantValue();
  v68 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
  [v68 setActive:1];

  centerXAnchor = [_activityLevelView centerXAnchor];
  contentView5 = [(CHASActivitySetupViewController *)self contentView];
  centerXAnchor2 = [contentView5 centerXAnchor];
  v72 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v72 setActive:1];

  leadingAnchor = [_activityLevelView leadingAnchor];
  contentView6 = [(CHASActivitySetupViewController *)self contentView];
  leadingAnchor2 = [contentView6 leadingAnchor];
  v76 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v76 setActive:1];

  trailingAnchor = [_activityLevelView trailingAnchor];
  contentView7 = [(CHASActivitySetupViewController *)self contentView];
  trailingAnchor2 = [contentView7 trailingAnchor];
  v80 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v80 setActive:1];

  v81 = +[OBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v81;

  [(OBBoldTrayButton *)self->_continueButton addTarget:self action:"tappedContinue:" forControlEvents:64];
  v83 = self->_continueButton;
  v84 = BPSPillSelectedColor();
  [(OBBoldTrayButton *)v83 setTintColor:v84];

  configuration = [(OBBoldTrayButton *)self->_continueButton configuration];
  v85 = +[ARUIMetricColors keyColors];
  nonGradientTextColor = [v85 nonGradientTextColor];
  [configuration setBaseForegroundColor:nonGradientTextColor];

  continueButtonTitle = [(CHASActivitySetupViewController *)self continueButtonTitle];
  [configuration setTitle:continueButtonTitle];

  [(OBBoldTrayButton *)self->_continueButton setConfiguration:configuration];
  buttonTray = [(CHASActivitySetupViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

  v89 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  footerLabel = self->_footerLabel;
  self->_footerLabel = v89;

  [(UILabel *)self->_footerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_footerLabel setNumberOfLines:0];
  v91 = [UIFont defaultFontForTextStyle:UIFontTextStyleFootnote];
  [(UILabel *)self->_footerLabel setFont:v91];

  v92 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_footerLabel setTextColor:v92];

  v93 = [NSBundle bundleForClass:objc_opt_class()];
  v94 = [v93 localizedStringForKey:@"CHANGE_GOAL_FOOTER" value:&stru_1008680E8 table:@"ActivitySetup"];
  [(UILabel *)self->_footerLabel setText:v94];

  [(UILabel *)self->_footerLabel setTextAlignment:4];
  if ([(CHASActivitySetupViewController *)self _shouldShowChangeGoalFooter])
  {
    buttonTray2 = [(CHASActivitySetupViewController *)self buttonTray];
    [buttonTray2 addSubview:self->_footerLabel];

    bottomAnchor3 = [(UILabel *)self->_footerLabel bottomAnchor];
    topAnchor5 = [(OBBoldTrayButton *)self->_continueButton topAnchor];
    v96 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5 constant:-15.0];
    v141[0] = v96;
    leadingAnchor3 = [(UILabel *)self->_footerLabel leadingAnchor];
    leadingAnchor4 = [(OBBoldTrayButton *)self->_continueButton leadingAnchor];
    v99 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v141[1] = v99;
    trailingAnchor3 = [(UILabel *)self->_footerLabel trailingAnchor];
    trailingAnchor4 = [(OBBoldTrayButton *)self->_continueButton trailingAnchor];
    v102 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v141[2] = v102;
    v103 = [NSArray arrayWithObjects:v141 count:3];
    [NSLayoutConstraint activateConstraints:v103];
  }

  if (self->_recommendedMoveGoal)
  {
    [(CHASActivitySetupLevelView *)self->_activityLevelView setAlpha:0.0];
    v104 = self->_continueButton;
    v105 = [NSBundle bundleForClass:objc_opt_class()];
    v106 = [v105 localizedStringForKey:@"CHANGE_MOVE_GOAL" value:&stru_1008680E8 table:@"ActivitySetup"];
    [(OBBoldTrayButton *)v104 setTitle:v106 forState:0];

    v107 = +[OBLinkTrayButton linkButton];
    notNowButton = self->_notNowButton;
    self->_notNowButton = v107;

    [(OBLinkTrayButton *)self->_notNowButton addTarget:self action:"_dismiss:" forControlEvents:64];
    v109 = self->_notNowButton;
    v110 = [NSBundle bundleForClass:objc_opt_class()];
    v111 = [v110 localizedStringForKey:@"SKIP_LABEL" value:&stru_1008680E8 table:@"ActivitySetup"];
    [(OBLinkTrayButton *)v109 setTitle:v111 forState:0];

    buttonTray3 = [(CHASActivitySetupViewController *)self buttonTray];
    [buttonTray3 addButton:self->_notNowButton];
  }
}

- (void)_updateAdvanceViewButton:(id)button
{
  buttonCopy = button;
  configuration = [buttonCopy configuration];
  advancedGoalView = self->_advancedGoalView;
  v6 = _UISolariumEnabled();
  if (advancedGoalView)
  {
    v7 = @"calendar.badge.ring.closed";
  }

  else
  {
    v7 = @"checklist.unchecked.note";
  }

  if ((v6 & 1) == 0)
  {
    if (advancedGoalView)
    {
      v8 = @"DAILY";
    }

    else
    {
      v8 = @"SCHEDULE";
    }

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_1008680E8 table:@"ActivitySetup"];
    [configuration setTitle:v10];
  }

  if (_UISolariumEnabled())
  {
    v11 = [UIImage _systemImageNamed:v7];
    [configuration setImage:v11];
  }

  else
  {
    v11 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleCaption1];
    v12 = [UIImageSymbolConfiguration configurationWithFont:v11];
    v13 = [UIImage _systemImageNamed:v7 withConfiguration:v12];
    [configuration setImage:v13];
  }

  [buttonCopy setConfiguration:configuration];
}

- (void)viewWillAppear:(BOOL)appear
{
  goalType = self->_goalType;
  if (goalType == 2)
  {
    if (self->_currentlyPresentedView != self->_standGoalView)
    {
      [(CHASActivitySetupViewController *)self _displayStandGoalViewAnimated:0];
    }
  }

  else if (goalType == 1 && self->_currentlyPresentedView != self->_exerciseGoalView)
  {
    [(CHASActivitySetupViewController *)self _displayExerciseGoalViewAnimated:0];
  }
}

- (void)viewWillLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = CHASActivitySetupViewController;
  [(CHASActivitySetupViewController *)&v40 viewWillLayoutSubviews];
  view = [(CHASActivitySetupViewController *)self view];
  [view bounds];
  v5 = v4;

  goalType = self->_goalType;
  if (goalType == 2)
  {
    scrollView = self->_scrollView;
    if (self->_isRTL)
    {
      v8 = v5 * -2.0;
      goto LABEL_7;
    }

    v9 = v5 + v5;
  }

  else
  {
    if (goalType != 1)
    {
      goto LABEL_11;
    }

    scrollView = self->_scrollView;
    if (self->_isRTL)
    {
      v8 = -v5;
LABEL_7:
      [(UIScrollView *)scrollView setContentOffset:0 animated:v8, 0.0];
      [(UIScrollView *)self->_scrollView setContentInset:0.0, v5, 0.0, v5];
      goto LABEL_11;
    }

    v9 = v5;
  }

  [(UIScrollView *)scrollView setContentOffset:0 animated:v9, 0.0];
LABEL_11:
  [(CHASActivitySetupViewController *)self computeMaxYForGoalViews];
  headerHeights = self->_headerHeights;
  if (headerHeights)
  {
    v11 = headerHeights[self->_currentPageIndex];
  }

  else
  {
    v11 = 0.0;
  }

  [(CHASActivitySetupGoalView *)self->_moveGoalView intrinsicContentSize];
  v13 = v12;
  __asm { FMOV            V0.2D, #16.0 }

  v38 = _Q0;
  v39 = _Q0;
  BPSScreenValueGetRelevantValue();
  v20 = v19 + 30.0;
  [(CHASActivitySetupLevelView *)self->_activityLevelView frame:0];
  v22 = v20 + v21;
  if ([(CHASActivitySetupViewController *)self shouldAccountForHeaderHeight])
  {
    v22 = v22 + self->_maxHeaderViewHeight - v11;
  }

  contentView = [(CHASActivitySetupViewController *)self contentView];
  [contentView frame];
  v25 = v13 + v22 + v24;
  view2 = [(CHASActivitySetupViewController *)self view];
  [view2 frame];
  MidY = CGRectGetMidY(v41);

  if (v25 < MidY)
  {
    view3 = [(CHASActivitySetupViewController *)self view];
    [view3 frame];
    v29 = CGRectGetMidY(v42);
    contentView2 = [(CHASActivitySetupViewController *)self contentView];
    [contentView2 frame];
    v22 = v22 + v29 - (v13 + v22 + v31);
  }

  v32 = self->_scrollView;
  view4 = [(CHASActivitySetupViewController *)self view];
  [view4 bounds];
  [(UIScrollView *)v32 setFrame:0.0, 0.0];

  contentView3 = [(CHASActivitySetupViewController *)self contentView];
  [contentView3 bounds];
  v36 = v35 * 3.0;
  [(CHASActivitySetupGoalView *)self->_moveGoalView intrinsicContentSize];
  [(UIScrollView *)self->_scrollView setContentSize:v36, v22 + v37];

  [(CHASActivitySetupViewController *)self alignGoalViews];
}

- (void)computeMaxYForGoalViews
{
  headerView = [(CHASActivitySetupViewController *)self headerView];
  [headerView bounds];
  v5 = v4;

  self->_headerHeights = malloc_type_malloc(0x18uLL, 0x100004000313F17uLL);
  if ([(NSArray *)self->_pageTitles count])
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      headerView2 = [(CHASActivitySetupViewController *)self headerView];
      v9 = [(NSArray *)self->_pageTitles objectAtIndexedSubscript:v6];
      [headerView2 setTitle:v9];

      headerView3 = [(CHASActivitySetupViewController *)self headerView];
      v11 = [(NSArray *)self->_pageDetailTexts objectAtIndexedSubscript:v6];
      [headerView3 setDetailText:v11];

      headerView4 = [(CHASActivitySetupViewController *)self headerView];
      LODWORD(v13) = 1148846080;
      LODWORD(v14) = 1112014848;
      [headerView4 _systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v13, v14}];
      v16 = v15;

      headerView5 = [(CHASActivitySetupViewController *)self headerView];
      [headerView5 frame];
      v19 = v16 + v18;

      if (v19 > v7)
      {
        v7 = v19;
      }

      self->_headerHeights[v6++] = v19;
    }

    while ([(NSArray *)self->_pageTitles count]> v6);
  }

  else
  {
    v7 = 0.0;
  }

  self->_maxHeaderViewHeight = v7;
  [(CHASActivitySetupViewController *)self updateHeaderViewContent];

  [(CHASActivitySetupViewController *)self updateContinueButton];
}

- (void)updateHeaderViewContent
{
  advancedGoalView = self->_advancedGoalView;
  headerView = [(CHASActivitySetupViewController *)self headerView];
  if (advancedGoalView)
  {
    [(CHASActivitySetupViewController *)self advanceGoalHeaderTitle];
  }

  else
  {
    [(NSArray *)self->_pageTitles objectAtIndexedSubscript:self->_currentPageIndex];
  }
  v5 = ;
  [headerView setTitle:v5];

  headerView2 = [(CHASActivitySetupViewController *)self headerView];
  v6 = [(NSArray *)self->_pageDetailTexts objectAtIndexedSubscript:self->_currentPageIndex];
  [headerView2 setDetailText:v6];
}

- (id)continueButtonTitle
{
  _activityGoalTypeForCurrentPage = [(CHASActivitySetupViewController *)self _activityGoalTypeForCurrentPage];
  if (!self->_advancedGoalView)
  {
    if (_activityGoalTypeForCurrentPage < 2)
    {
      if (!self->_defaultDailyMoveGoalQuantity)
      {
        v6 = @"SET_MOVE_GOAL";
        goto LABEL_45;
      }

      if (self->_editTodayOnly)
      {
        v11 = @"_FOR_TODAY";
      }

      else
      {
        v11 = &stru_1008680E8;
      }

      [NSString stringWithFormat:@"CHANGE_MOVE_GOAL%@", v11, v18];
    }

    else if (_activityGoalTypeForCurrentPage == 2)
    {
      if (!self->_defaultDailyExerciseGoalQuantity)
      {
        v6 = @"SET_EXERCISE_GOAL";
        goto LABEL_45;
      }

      if (self->_editTodayOnly)
      {
        v13 = @"_FOR_TODAY";
      }

      else
      {
        v13 = &stru_1008680E8;
      }

      [NSString stringWithFormat:@"CHANGE_EXERCISE_GOAL%@", v13, v18];
    }

    else
    {
      if (_activityGoalTypeForCurrentPage != 3)
      {
        v6 = 0;
        goto LABEL_45;
      }

      if (!self->_defaultDailyStandGoalQuantity)
      {
        if (self->_isWheelchairUser)
        {
          v15 = @"SET_ROLL_GOAL";
        }

        else
        {
          v15 = @"SET_STAND_GOAL";
        }

        v14 = v15;
        goto LABEL_34;
      }

      if (self->_isWheelchairUser)
      {
        v8 = @"ROLL";
      }

      else
      {
        v8 = @"STAND";
      }

      if (self->_editTodayOnly)
      {
        v9 = @"_FOR_TODAY";
      }

      else
      {
        v9 = &stru_1008680E8;
      }

      [NSString stringWithFormat:@"CHANGE_%@_GOAL%@", v8, v9];
    }
    v14 = ;
LABEL_34:
    v6 = v14;
LABEL_45:
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v2 = [v16 localizedStringForKey:v6 value:&stru_1008680E8 table:@"ActivitySetup"];

    goto LABEL_46;
  }

  if (_activityGoalTypeForCurrentPage < 2)
  {
    hasMoveGoalSchedule = self->_hasMoveGoalSchedule;
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    if (hasMoveGoalSchedule)
    {
      v7 = @"CHANGE_MOVE_GOAL_SCHEDULE";
    }

    else
    {
      v7 = @"SET_MOVE_GOAL_SCHEDULE";
    }
  }

  else if (_activityGoalTypeForCurrentPage == 2)
  {
    hasExerciseGoalSchedule = self->_hasExerciseGoalSchedule;
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    if (hasExerciseGoalSchedule)
    {
      v7 = @"CHANGE_EXERCISE_GOAL_SCHEDULE";
    }

    else
    {
      v7 = @"SET_EXERCISE_GOAL_SCHEDULE";
    }
  }

  else
  {
    if (_activityGoalTypeForCurrentPage != 3)
    {
      goto LABEL_47;
    }

    isWheelchairUser = self->_isWheelchairUser;
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    if (isWheelchairUser)
    {
      v7 = @"CHANGE_ROLL_GOAL_SCHEDULE";
    }

    else
    {
      v7 = @"SET_STAND_GOAL_SCHEDULE";
    }
  }

  v2 = [(__CFString *)v6 localizedStringForKey:v7 value:&stru_1008680E8 table:@"ActivitySetup"];
LABEL_46:

LABEL_47:

  return v2;
}

- (void)updateContinueButton
{
  configuration = [(OBBoldTrayButton *)self->_continueButton configuration];
  continueButtonTitle = [(CHASActivitySetupViewController *)self continueButtonTitle];
  [configuration setTitle:continueButtonTitle];

  [(OBBoldTrayButton *)self->_continueButton setConfiguration:configuration];
  advancedGoalView = self->_advancedGoalView;
  v5 = advancedGoalView == 0;
  if (advancedGoalView)
  {
    v6 = &selRef_tappedContinue_;
  }

  else
  {
    v6 = &selRef__updateGoalSchedule;
  }

  if (v5)
  {
    v7 = &selRef_tappedContinue_;
  }

  else
  {
    v7 = &selRef__updateGoalSchedule;
  }

  [(OBBoldTrayButton *)self->_continueButton removeTarget:self action:*v6 forControlEvents:64];
  [(OBBoldTrayButton *)self->_continueButton addTarget:self action:*v7 forControlEvents:64];
}

- (BOOL)shouldAccountForHeaderHeight
{
  headerView = [(CHASActivitySetupViewController *)self headerView];
  [headerView frame];
  v5 = v4;
  headerView2 = [(CHASActivitySetupViewController *)self headerView];
  [headerView2 bounds];
  v8 = v5 + v7;
  contentView = [(CHASActivitySetupViewController *)self contentView];
  [contentView bounds];
  v11 = v8 + v10;
  buttonTray = [(CHASActivitySetupViewController *)self buttonTray];
  [buttonTray bounds];
  v14 = v11 + v13;
  view = [(CHASActivitySetupViewController *)self view];
  [view bounds];
  v17 = v14 < v16;

  return v17;
}

- (void)alignGoalViews
{
  view = [(CHASActivitySetupViewController *)self view];
  [view bounds];
  v5 = v4;

  [(CHASActivitySetupGoalView *)self->_moveGoalView intrinsicContentSize];
  v7 = v6;
  if (self->_isRTL)
  {
    v8 = -v5;
  }

  else
  {
    v8 = v5;
  }

  [(UIScrollView *)self->_scrollView bounds];
  v10 = v9 - v7;
  [(CHASActivitySetupGoalView *)self->_moveGoalView setFrame:0.0, v9 - v7, v5, v7];
  [(CHASActivitySetupGoalView *)self->_exerciseGoalView setFrame:v8, v10, v5, v7];
  standGoalView = self->_standGoalView;

  [(CHASActivitySetupGoalView *)standGoalView setFrame:v8 + v8, v10, v5, v7];
}

- (void)_loadMoveGoalView
{
  moveGoalView = self->_moveGoalView;
  if (moveGoalView)
  {
    [(CHASActivitySetupGoalView *)moveGoalView removeFromSuperview];
  }

  _moveGoalViewConfiguration = [(CHASActivitySetupViewController *)self _moveGoalViewConfiguration];
  v4 = [(CHASActivitySetupViewController *)self _createGoalViewWithFrame:_moveGoalViewConfiguration configuration:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = self->_moveGoalView;
  self->_moveGoalView = v4;

  objc_storeStrong(&self->_currentlyPresentedView, self->_moveGoalView);
}

- (id)_createGoalViewWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  height = [[CHASActivitySetupGoalView alloc] initWithFrame:configurationCopy configuration:x, y, width, height];

  [(UIScrollView *)self->_scrollView addSubview:height];

  return height;
}

- (void)_removeGoalsOfType:(id)type after:(id)after
{
  typeCopy = type;
  after = [NSPredicate predicateWithFormat:@"startDate > %@", after];
  healthStore = [(CHASActivitySetupViewController *)self healthStore];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BCD14;
  v10[3] = &unk_10083AC18;
  v11 = typeCopy;
  v9 = typeCopy;
  [healthStore deleteObjectsOfType:v9 predicate:after withCompletion:v10];
}

- (void)_storeGoals
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = UICollectionViewCompositionalLayout_ptr;
  v5 = +[NSCalendar hk_gregorianCalendar];
  v6 = +[NSDate date];
  v7 = [v5 dateByAddingUnit:16 value:1 toDate:v6 options:0];
  v50 = v5;
  v51 = [v5 startOfDayForDate:v7];

  hasMoveGoalSchedule = self->_hasMoveGoalSchedule;
  if (!self->_hasMoveGoalSchedule || self->_editTodayOnly)
  {
    if (self->_newDailyMoveGoal)
    {
      if (self->_activityMoveMode == 2)
      {
        +[HKObjectType moveMinuteGoal];
      }

      else
      {
        +[HKObjectType calorieGoal];
      }
      v9 = ;
      newDailyMoveGoal = self->_newDailyMoveGoal;
      if (self->_editTodayOnly)
      {
        v66 = @"_HKPrivateTodayOnlyGoal";
        v67 = &__kCFBooleanTrue;
        v11 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v12 = [HKQuantitySample quantitySampleWithType:v9 quantity:newDailyMoveGoal startDate:v6 endDate:v6 metadata:v11];
      }

      else
      {
        v12 = [HKQuantitySample quantitySampleWithType:v9 quantity:self->_newDailyMoveGoal startDate:v6 endDate:v6 metadata:0];
      }

      [v3 addObject:v12];
      [(CHASActivitySetupViewController *)self _removeGoalsOfType:v9 after:v6];

      hasMoveGoalSchedule = self->_hasMoveGoalSchedule;
    }

    if (!hasMoveGoalSchedule && self->_editTodayOnly && self->_defaultDailyMoveGoalQuantity)
    {
      if (self->_activityMoveMode == 2)
      {
        +[HKObjectType moveMinuteGoal];
      }

      else
      {
        +[HKObjectType calorieGoal];
      }
      v13 = ;
      v14 = [HKQuantitySample quantitySampleWithType:v13 quantity:self->_defaultDailyMoveGoalQuantity startDate:v51 endDate:v51];
      [v3 addObject:v14];
    }
  }

  hasExerciseGoalSchedule = self->_hasExerciseGoalSchedule;
  if (!self->_hasExerciseGoalSchedule || self->_editTodayOnly)
  {
    if (self->_newDailyExerciseGoal)
    {
      v16 = +[HKObjectType exerciseGoal];
      newDailyExerciseGoal = self->_newDailyExerciseGoal;
      if (self->_editTodayOnly)
      {
        v64 = @"_HKPrivateTodayOnlyGoal";
        v65 = &__kCFBooleanTrue;
        v18 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v19 = [HKQuantitySample quantitySampleWithType:v16 quantity:newDailyExerciseGoal startDate:v6 endDate:v6 metadata:v18];

        v4 = UICollectionViewCompositionalLayout_ptr;
      }

      else
      {
        v19 = [HKQuantitySample quantitySampleWithType:v16 quantity:newDailyExerciseGoal startDate:v6 endDate:v6 metadata:0];
      }

      [v3 addObject:v19];
      v20 = +[HKObjectType exerciseGoal];
      [(CHASActivitySetupViewController *)self _removeGoalsOfType:v20 after:v6];

      hasExerciseGoalSchedule = self->_hasExerciseGoalSchedule;
    }

    if (!hasExerciseGoalSchedule && self->_editTodayOnly && self->_defaultDailyExerciseGoalQuantity)
    {
      v21 = +[HKObjectType exerciseGoal];
      v22 = [HKQuantitySample quantitySampleWithType:v21 quantity:self->_defaultDailyExerciseGoalQuantity startDate:v51 endDate:v51];

      [v3 addObject:v22];
    }
  }

  hasStandGoalSchedule = self->_hasStandGoalSchedule;
  if (!self->_hasStandGoalSchedule || self->_editTodayOnly)
  {
    if (self->_newDailyStandGoal)
    {
      v24 = ARUIRingsViewRenderer_ptr;
      v25 = +[HKObjectType standGoal];
      newDailyStandGoal = self->_newDailyStandGoal;
      if (self->_editTodayOnly)
      {
        v62 = @"_HKPrivateTodayOnlyGoal";
        v63 = &__kCFBooleanTrue;
        v27 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v28 = [HKQuantitySample quantitySampleWithType:v25 quantity:newDailyStandGoal startDate:v6 endDate:v6 metadata:v27];

        v24 = ARUIRingsViewRenderer_ptr;
      }

      else
      {
        v28 = [HKQuantitySample quantitySampleWithType:v25 quantity:newDailyStandGoal startDate:v6 endDate:v6 metadata:0];
      }

      [v3 addObject:v28];
      standGoal = [v24[406] standGoal];
      [(CHASActivitySetupViewController *)self _removeGoalsOfType:standGoal after:v6];

      hasStandGoalSchedule = self->_hasStandGoalSchedule;
    }

    if (!hasStandGoalSchedule && self->_editTodayOnly && self->_defaultDailyStandGoalQuantity)
    {
      v30 = +[HKObjectType standGoal];
      v31 = [HKQuantitySample quantitySampleWithType:v30 quantity:self->_defaultDailyStandGoalQuantity startDate:v51 endDate:v51];

      [v3 addObject:v31];
    }
  }

  if (self->_activityMoveMode == 2)
  {
    currentCalendar = [v4[379] currentCalendar];
    v33 = +[NSDate date];
    v34 = [currentCalendar startOfDayForDate:v33];

    currentCalendar2 = [v4[379] currentCalendar];
    v36 = [currentCalendar2 components:_HKRequiredCalendarUnitsForCacheIndexDateComponents fromDate:v34];

    v37 = [NSDate dateWithTimeIntervalSinceReferenceDate:_HKCacheIndexFromDateComponents()];
    v38 = [HKObjectType categoryTypeForIdentifier:_HKCategoryTypeIdentifierActivityMoveModeChange];
    v39 = [HKCategorySample categorySampleWithType:v38 value:2 startDate:v37 endDate:v37];
    [v3 addObject:v39];
  }

  v40 = dispatch_semaphore_create(0);
  healthStore = [(CHASActivitySetupViewController *)self healthStore];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000BD630;
  v52[3] = &unk_10083AC40;
  v42 = v40;
  v53 = v42;
  [healthStore saveObjects:v3 withCompletion:v52];

  v43 = dispatch_time(0, 5000000000);
  v44 = dispatch_semaphore_wait(v42, v43);
  _HKInitializeLogging();
  v45 = HKLogActivity;
  if (v44)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_FAULT))
    {
      sub_10069B6D0(v45);
    }
  }

  else if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v46 = self->_newDailyMoveGoal;
    v47 = self->_newDailyExerciseGoal;
    v48 = self->_newDailyStandGoal;
    activityMoveMode = self->_activityMoveMode;
    *buf = 138413058;
    v55 = v46;
    v56 = 2112;
    v57 = v47;
    v58 = 2112;
    v59 = v48;
    v60 = 2048;
    v61 = activityMoveMode;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Successfully saved first daily goals: %@, %@, and %@ with activity move mode: %ld.", buf, 0x2Au);
  }

  FIUISetNeedsActivityRingExplanation();
}

- (id)_unitManager
{
  unitManager = self->_unitManager;
  if (!unitManager)
  {
    v4 = [FIUIUnitManager alloc];
    healthStore = [(CHASActivitySetupViewController *)self healthStore];
    v6 = [v4 initWithHealthStore:healthStore];
    v7 = self->_unitManager;
    self->_unitManager = v6;

    unitManager = self->_unitManager;
  }

  return unitManager;
}

- (id)_formattingManager
{
  formattingManager = self->_formattingManager;
  if (!formattingManager)
  {
    v4 = [FIUIFormattingManager alloc];
    _unitManager = [(CHASActivitySetupViewController *)self _unitManager];
    v6 = [v4 initWithUnitManager:_unitManager];
    v7 = self->_formattingManager;
    self->_formattingManager = v6;

    formattingManager = self->_formattingManager;
  }

  return formattingManager;
}

- (id)healthStore
{
  healthStore = self->_healthStore;
  if (!healthStore)
  {
    delegate = [(CHASActivitySetupViewController *)self delegate];
    activePairingDevice = [delegate activePairingDevice];

    v6 = FIUIHealthStoreForDevice();
    v7 = self->_healthStore;
    self->_healthStore = v6;

    healthStore = self->_healthStore;
  }

  return healthStore;
}

- (void)_displayExerciseGoalViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  scrollView = self->_scrollView;
  contentView = [(CHASActivitySetupViewController *)self contentView];
  LOBYTE(scrollView) = [(UIScrollView *)scrollView isDescendantOfView:contentView];

  if ((scrollView & 1) == 0)
  {
    contentView2 = [(CHASActivitySetupViewController *)self contentView];
    [contentView2 addSubview:self->_scrollView];

    contentView3 = [(CHASActivitySetupViewController *)self contentView];
    topAnchor = [contentView3 topAnchor];
    topAnchor2 = [(UIScrollView *)self->_scrollView topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v11 setActive:1];

    contentView4 = [(CHASActivitySetupViewController *)self contentView];
    bottomAnchor = [contentView4 bottomAnchor];
    bottomAnchor2 = [(UIScrollView *)self->_scrollView bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v15 setActive:1];
  }

  view = [(CHASActivitySetupViewController *)self view];
  [view bounds];
  v18 = v17;

  [(CHASActivitySetupGoalView *)self->_exerciseGoalView becomeFirstResponder];
  v19 = self->_scrollView;
  if (self->_isRTL)
  {
    [(UIScrollView *)v19 setContentOffset:animatedCopy animated:-v18, 0.0];
    [(UIScrollView *)self->_scrollView setContentInset:0.0, v18, 0.0, v18];
  }

  else
  {
    [(UIScrollView *)v19 setContentOffset:animatedCopy animated:v18, 0.0];
  }

  self->_currentPageIndex = 1;
  [(CHASActivitySetupViewController *)self updateHeaderViewContent];
  [(CHASActivitySetupViewController *)self updateContinueButton];
  [(CHASActivitySetupLevelView *)self->_activityLevelView setHidden:1];
  activityMoveMode = self->_activityMoveMode;
  v21 = +[HKUnit minuteUnit];
  v22 = &_HKDefaultTinkerDailyBriskMinutesGoal;
  if (activityMoveMode != 2)
  {
    v22 = &_HKDefaultDailyBriskMinutesGoal;
  }

  v23 = [HKQuantity quantityWithUnit:v21 doubleValue:*v22];

  [(CHASActivitySetupViewController *)self _setGoalQuantity:v23 goalView:self->_exerciseGoalView];
  objc_initWeak(&location, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000BDAE8;
  v24[3] = &unk_10083ABF0;
  objc_copyWeak(&v25, &location);
  [(CHASActivitySetupViewController *)self _fetchMostRecentDailyExerciseGoalSampleWithCompletion:v24];
  objc_storeStrong(&self->_currentlyPresentedView, self->_exerciseGoalView);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)_displayStandGoalViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  scrollView = self->_scrollView;
  contentView = [(CHASActivitySetupViewController *)self contentView];
  LOBYTE(scrollView) = [(UIScrollView *)scrollView isDescendantOfView:contentView];

  if ((scrollView & 1) == 0)
  {
    contentView2 = [(CHASActivitySetupViewController *)self contentView];
    [contentView2 addSubview:self->_scrollView];

    contentView3 = [(CHASActivitySetupViewController *)self contentView];
    topAnchor = [contentView3 topAnchor];
    topAnchor2 = [(UIScrollView *)self->_scrollView topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v11 setActive:1];

    contentView4 = [(CHASActivitySetupViewController *)self contentView];
    bottomAnchor = [contentView4 bottomAnchor];
    bottomAnchor2 = [(UIScrollView *)self->_scrollView bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v15 setActive:1];
  }

  view = [(CHASActivitySetupViewController *)self view];
  [view bounds];
  v18 = v17;

  [(CHASActivitySetupGoalView *)self->_standGoalView becomeFirstResponder];
  v19 = self->_scrollView;
  if (self->_isRTL)
  {
    [(UIScrollView *)v19 setContentOffset:animatedCopy animated:v18 * -2.0, 0.0];
    [(UIScrollView *)self->_scrollView setContentInset:0.0, v18 + v18, 0.0, v18];
  }

  else
  {
    [(UIScrollView *)v19 setContentOffset:animatedCopy animated:v18 + v18, 0.0];
  }

  self->_currentPageIndex = 2;
  [(CHASActivitySetupViewController *)self updateHeaderViewContent];
  [(CHASActivitySetupViewController *)self updateContinueButton];
  [(CHASActivitySetupLevelView *)self->_activityLevelView setHidden:1];
  activityMoveMode = self->_activityMoveMode;
  v21 = +[HKUnit countUnit];
  v22 = &_HKDefaultTinkerDailyActiveHoursGoal;
  if (activityMoveMode != 2)
  {
    v22 = &_HKDefaultDailyActiveHoursGoal;
  }

  v23 = [HKQuantity quantityWithUnit:v21 doubleValue:*v22];

  [(CHASActivitySetupViewController *)self _setGoalQuantity:v23 goalView:self->_standGoalView];
  objc_initWeak(&location, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000BE05C;
  v24[3] = &unk_10083ABF0;
  objc_copyWeak(&v25, &location);
  [(CHASActivitySetupViewController *)self _fetchMostRecentDailyStandGoalSampleWithCompletion:v24];
  objc_storeStrong(&self->_currentlyPresentedView, self->_standGoalView);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)_saveGoalsAndDismiss
{
  [(CHASActivitySetupViewController *)self _storeGoals];
  if (self->_isTinkerPaired)
  {
    v3 = [[HKSecondaryDevicePairingAgent alloc] initWithHealthStore:self->_healthStore];
    delegate = [(CHASActivitySetupViewController *)self delegate];
    activePairingDevice = [delegate activePairingDevice];
    pairingID = [activePairingDevice pairingID];

    [v3 performEndToEndCloudSyncWithNRDeviceUUID:pairingID syncParticipantFirst:1 completion:&stru_10083AC80];
  }

  else
  {
    v3 = [[HKNanoSyncControl alloc] initWithHealthStore:self->_healthStore];
    [v3 forceNanoSyncWithOptions:1 completion:&stru_10083ACA0];
  }

  presentationContext = self->_presentationContext;
  if (presentationContext == 4 || presentationContext == 2)
  {
    v9 = [NSNumber numberWithInteger:?];
    FIActivityAnalyticsSubmission();
  }

  delegate2 = [(CHASActivitySetupViewController *)self delegate];

  if (delegate2)
  {
    delegate3 = [(CHASActivitySetupViewController *)self delegate];
    [delegate3 buddyControllerDone:self];
  }

  else
  {

    [(CHASActivitySetupViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)_isStandalonePhoneFitnessMode
{
  presentationContext = self->_presentationContext;
  v3 = presentationContext > 6;
  v4 = (1 << presentationContext) & 0x46;
  if (v3 || v4 == 0)
  {
    return 0;
  }

  v6 = +[_HKBehavior sharedBehavior];
  isStandalonePhoneFitnessMode = [v6 isStandalonePhoneFitnessMode];

  return isStandalonePhoneFitnessMode;
}

- (BOOL)_shouldShowChangeGoalFooter
{
  if (self->_presentationContext != 6)
  {
    return 0;
  }

  v3 = +[_HKBehavior sharedBehavior];
  v4 = ([v3 isStandalonePhoneFitnessMode] & 1) == 0 && self->_advancedGoalView == 0;

  return v4;
}

- (void)tappedContinue:(id)continue
{
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000BE9D4;
  v27[3] = &unk_10083A8B0;
  v27[4] = self;
  v5 = objc_retainBlock(v27);
  _currentPageHasGoalSchedule = [(CHASActivitySetupViewController *)self _currentPageHasGoalSchedule];
  if (continue && _currentPageHasGoalSchedule && !self->_editTodayOnly)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"REMOVE_SCHEDULE_TITLE" value:&stru_1008680E8 table:@"ActivitySetup"];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"REMOVE_SCHEDULE_MESSAGE" value:&stru_1008680E8 table:@"ActivitySetup"];
    v11 = [UIAlertController alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_1008680E8 table:@"ActivitySetup"];
    v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&stru_10083ACE0];

    _existingActivityGoalScheduleForCurrentPage = [(CHASActivitySetupViewController *)self _existingActivityGoalScheduleForCurrentPage];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"REMOVE" value:&stru_1008680E8 table:@"ActivitySetup"];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1000BEB60;
    v23 = &unk_10083AD50;
    selfCopy = self;
    v25 = _existingActivityGoalScheduleForCurrentPage;
    v26 = v5;
    v18 = _existingActivityGoalScheduleForCurrentPage;
    v19 = [UIAlertAction actionWithTitle:v17 style:2 handler:&v20];

    [v11 addAction:{v14, v20, v21, v22, v23, selfCopy}];
    [v11 addAction:v19];
    [v11 setPreferredAction:v19];
    [(CHASActivitySetupViewController *)self presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    (v5[2])(v5);
  }
}

- (void)_toggleAdvancedMode
{
  if (self->_advancedGoalView)
  {
    [(CHASActivitySetupViewController *)self _removeAdvancedView];
    contentView = [(CHASActivitySetupViewController *)self contentView];
    [contentView addSubview:self->_scrollView];

    contentView2 = [(CHASActivitySetupViewController *)self contentView];
    topAnchor = [contentView2 topAnchor];
    topAnchor2 = [(UIScrollView *)self->_scrollView topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v7 setActive:1];

    contentView3 = [(CHASActivitySetupViewController *)self contentView];
    bottomAnchor = [contentView3 bottomAnchor];
    bottomAnchor2 = [(UIScrollView *)self->_scrollView bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v11 setActive:1];
  }

  else
  {
    [(CHASActivitySetupViewController *)self _showAdvancedViewForCurrentGoalPage];
  }

  [(CHASActivitySetupViewController *)self updateContinueButton];
}

- (void)_showAdvancedViewIfNeeded
{
  _existingActivityGoalScheduleForCurrentPage = [(CHASActivitySetupViewController *)self _existingActivityGoalScheduleForCurrentPage];
  if (_existingActivityGoalScheduleForCurrentPage && !self->_editTodayOnly)
  {
    v4 = _existingActivityGoalScheduleForCurrentPage;
    [(CHASActivitySetupViewController *)self _showAdvancedViewForCurrentGoalPage];
    _existingActivityGoalScheduleForCurrentPage = v4;
  }
}

- (void)_removeAdvancedView
{
  [(UIView *)self->_advancedGoalView removeFromSuperview];
  advancedGoalView = self->_advancedGoalView;
  self->_advancedGoalView = 0;

  [(UIButton *)self->_advancedButton setNeedsUpdateConfiguration];
  if ([(CHASActivitySetupViewController *)self _shouldShowChangeGoalFooter])
  {
    buttonTray = [(CHASActivitySetupViewController *)self buttonTray];
    [buttonTray addSubview:self->_footerLabel];

    bottomAnchor = [(UILabel *)self->_footerLabel bottomAnchor];
    topAnchor = [(OBBoldTrayButton *)self->_continueButton topAnchor];
    v7 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-15.0];
    v15[0] = v7;
    leadingAnchor = [(UILabel *)self->_footerLabel leadingAnchor];
    leadingAnchor2 = [(OBBoldTrayButton *)self->_continueButton leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v15[1] = v10;
    trailingAnchor = [(UILabel *)self->_footerLabel trailingAnchor];
    trailingAnchor2 = [(OBBoldTrayButton *)self->_continueButton trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v15[2] = v13;
    v14 = [NSArray arrayWithObjects:v15 count:3];
    [NSLayoutConstraint activateConstraints:v14];
  }
}

- (id)_existingActivityGoalScheduleForCurrentPage
{
  _activityGoalTypeForCurrentPage = [(CHASActivitySetupViewController *)self _activityGoalTypeForCurrentPage];
  goalSchedules = self->_goalSchedules;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BF0F8;
  v7[3] = &unk_10083AD70;
  v7[4] = _activityGoalTypeForCurrentPage;
  v5 = [(NSArray *)goalSchedules hk_firstObjectPassingTest:v7];

  return v5;
}

- (BOOL)_currentPageHasGoalSchedule
{
  _activityGoalTypeForCurrentPage = [(CHASActivitySetupViewController *)self _activityGoalTypeForCurrentPage];
  if (_activityGoalTypeForCurrentPage > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = self->OBTableWelcomeController_opaque[*off_10083AEE0[_activityGoalTypeForCurrentPage]];
  }

  return v4 & 1;
}

- (int64_t)_activityGoalTypeForCurrentPage
{
  currentPageIndex = self->_currentPageIndex;
  if (currentPageIndex == 1)
  {
    return 2;
  }

  if (currentPageIndex)
  {
    return 3;
  }

  return self->_activityMoveMode == 2;
}

- (void)_showAdvancedViewForCurrentGoalPage
{
  [(UIScrollView *)self->_scrollView removeFromSuperview];
  [(UILabel *)self->_footerLabel removeFromSuperview];
  _existingActivityGoalScheduleForCurrentPage = [(CHASActivitySetupViewController *)self _existingActivityGoalScheduleForCurrentPage];
  if (!_existingActivityGoalScheduleForCurrentPage)
  {
    _activityGoalTypeForCurrentPage = [(CHASActivitySetupViewController *)self _activityGoalTypeForCurrentPage];
    v4 = _activityGoalTypeForCurrentPage;
    if (_activityGoalTypeForCurrentPage < 2)
    {
      currentMoveGoal = [(CHASActivitySetupViewController *)self currentMoveGoal];
    }

    else if (_activityGoalTypeForCurrentPage == 2)
    {
      currentMoveGoal = [(CHASActivitySetupViewController *)self currentExerciseGoal];
    }

    else
    {
      if (_activityGoalTypeForCurrentPage != 3)
      {
        v6 = 0;
        goto LABEL_9;
      }

      currentMoveGoal = [(CHASActivitySetupViewController *)self currentStandGoal];
    }

    v6 = currentMoveGoal;
LABEL_9:
    v7 = +[NSDate date];
    v8 = +[HKDevice localDevice];
    _existingActivityGoalScheduleForCurrentPage = [HKActivityGoalSchedule activityGoalScheduleWithDate:v7 goalType:v4 goal:v6 device:v8 metadata:0];
  }

  v9 = [[_TtC10FitnessApp13GoalDaysModel alloc] initWithGoalSchedule:_existingActivityGoalScheduleForCurrentPage];
  goalDaysModel = self->_goalDaysModel;
  self->_goalDaysModel = v9;

  currentPageIndex = self->_currentPageIndex;
  if (currentPageIndex == 1)
  {
    _exerciseGoalViewConfiguration = [(CHASActivitySetupViewController *)self _exerciseGoalViewConfiguration];
  }

  else
  {
    if (currentPageIndex)
    {
      [(CHASActivitySetupViewController *)self _standGoalViewConfiguration];
    }

    else
    {
      [(CHASActivitySetupViewController *)self _moveGoalViewConfiguration];
    }
    _exerciseGoalViewConfiguration = ;
  }

  v13 = _exerciseGoalViewConfiguration;
  [(UIView *)self->_advancedGoalView removeFromSuperview];
  v14 = +[CHASAdvancedGoalViewFactory makeViewWithGoalSchedule:goalDaysModel:wheelchairUser:goalType:formattingManager:showFooter:](CHASAdvancedGoalViewFactory, "makeViewWithGoalSchedule:goalDaysModel:wheelchairUser:goalType:formattingManager:showFooter:", _existingActivityGoalScheduleForCurrentPage, self->_goalDaysModel, self->_isWheelchairUser, [_existingActivityGoalScheduleForCurrentPage goalType], self->_formattingManager, -[CHASActivitySetupViewController _shouldShowChangeGoalFooter](self, "_shouldShowChangeGoalFooter"));
  advancedGoalView = self->_advancedGoalView;
  self->_advancedGoalView = v14;

  v16 = BPSSetupBackgroundColor();
  [(UIView *)self->_advancedGoalView setBackgroundColor:v16];

  [(UIView *)self->_advancedGoalView setAccessibilityViewIsModal:1];
  contentView = [(CHASActivitySetupViewController *)self contentView];
  [contentView addSubview:self->_advancedGoalView];

  [(UIView *)self->_advancedGoalView setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(UIView *)self->_advancedGoalView topAnchor];
  contentView2 = [(CHASActivitySetupViewController *)self contentView];
  safeAreaLayoutGuide = [contentView2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v22 setActive:1];

  leadingAnchor = [(UIView *)self->_advancedGoalView leadingAnchor];
  contentView3 = [(CHASActivitySetupViewController *)self contentView];
  safeAreaLayoutGuide2 = [contentView3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v27 setActive:1];

  trailingAnchor = [(UIView *)self->_advancedGoalView trailingAnchor];
  contentView4 = [(CHASActivitySetupViewController *)self contentView];
  safeAreaLayoutGuide3 = [contentView4 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v32 setActive:1];

  bottomAnchor = [(UIView *)self->_advancedGoalView bottomAnchor];
  contentView5 = [(CHASActivitySetupViewController *)self contentView];
  safeAreaLayoutGuide4 = [contentView5 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v37 setActive:1];

  [(UIButton *)self->_advancedButton setNeedsUpdateConfiguration];
  view = [(CHASActivitySetupViewController *)self view];
  [view setNeedsLayout];
}

- (void)setActivityLevels:(id)levels activityMoveMode:(int64_t)mode
{
  levelsCopy = levels;
  objc_storeStrong(&self->_activityLevels, levels);
  self->_activityMoveMode = mode;
  if ([(NSArray *)self->_activityLevels count])
  {
    v7 = [levelsCopy objectAtIndexedSubscript:0];
    [(CHASActivitySetupViewController *)self _setActivityLevel:v7 activityMoveMode:mode];
  }
}

- (id)_activityLevelView
{
  activityLevelView = self->_activityLevelView;
  if (!activityLevelView)
  {
    v4 = [[CHASActivitySetupLevelView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_activityLevelView;
    self->_activityLevelView = v4;

    v6 = self->_activityLevelView;
    v7 = BPSSetupBackgroundColor();
    [(CHASActivitySetupLevelView *)v6 setBackgroundColor:v7];

    segmentedControl = [(CHASActivitySetupLevelView *)self->_activityLevelView segmentedControl];
    [segmentedControl addTarget:self action:"_activityLevelPresetChanged:" forControlEvents:4096];

    activityLevelView = self->_activityLevelView;
  }

  return activityLevelView;
}

- (void)_activityLevelPresetChanged:(id)changed
{
  segmentedControl = [(CHASActivitySetupLevelView *)self->_activityLevelView segmentedControl];
  selectedSegmentIndex = [segmentedControl selectedSegmentIndex];

  v6 = [(CHASActivitySetupViewController *)self activityLevelForSegmentedControlIndex:selectedSegmentIndex];
  [(CHASActivitySetupViewController *)self _setActivityLevel:v6 activityMoveMode:self->_activityMoveMode];
}

- (id)activityLevelForSegmentedControlIndex:(int64_t)index
{
  if ([(NSArray *)self->_activityLevels count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_activityLevels objectAtIndexedSubscript:index];
  }

  return v5;
}

- (id)_moveGoalViewConfiguration
{
  v3 = objc_alloc_init(CHASActivitySetupGoalViewConfiguration);
  v4 = +[ARUIMetricColors energyColors];
  nonGradientTextColor = [v4 nonGradientTextColor];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalColor:nonGradientTextColor];

  _unitManager = [(CHASActivitySetupViewController *)self _unitManager];
  userActiveEnergyBurnedUnit = [_unitManager userActiveEnergyBurnedUnit];

  [(CHASActivitySetupGoalViewConfiguration *)v3 setUnit:userActiveEnergyBurnedUnit];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000BFABC;
  v24[3] = &unk_10083AD98;
  v24[4] = self;
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalValueStringFormatter:v24];
  if (self->_activityMoveMode == 2)
  {
    v8 = +[HKUnit minuteUnit];
    [(CHASActivitySetupGoalViewConfiguration *)v3 setUnit:v8];

    v9 = 10.0;
    v10 = 1000.0;
  }

  else
  {
    IsCalorieUnit = FIUIHKUnitIsCalorieUnit();
    if (IsCalorieUnit)
    {
      v9 = 10.0;
    }

    else
    {
      v9 = 20.0;
    }

    if (IsCalorieUnit)
    {
      v10 = 9999.0;
    }

    else
    {
      v10 = 39999.0;
    }
  }

  [(CHASActivitySetupGoalViewConfiguration *)v3 setMinimumValue:v9];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setMaximumValue:v10];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setValueIncrement:v9];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000BFB3C;
  v23[3] = &unk_10083AD98;
  v23[4] = self;
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalUnitStringFormatter:v23];
  __asm { FMOV            V0.2D, #13.0 }

  v19 = _Q0;
  v20 = _Q0;
  __asm { FMOV            V0.2D, #30.0 }

  v21 = _Q0;
  v22 = _Q0;
  BPSScreenValueGetRelevantValue();
  [(CHASActivitySetupGoalViewConfiguration *)v3 setUnitTextYOffset:v19, v20, v21, v22];

  return v3;
}

- (id)_exerciseGoalViewConfiguration
{
  v3 = objc_alloc_init(CHASActivitySetupGoalViewConfiguration);
  v4 = +[ARUIMetricColors briskColors];
  nonGradientTextColor = [v4 nonGradientTextColor];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalColor:nonGradientTextColor];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000BFDF8;
  v19[3] = &unk_10083AD98;
  v19[4] = self;
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalValueStringFormatter:v19];
  v6 = +[HKUnit minuteUnit];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setUnit:v6];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000BFE64;
  v18[3] = &unk_10083AD98;
  v18[4] = self;
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalUnitStringFormatter:v18];
  __asm { FMOV            V0.2D, #13.0 }

  v14 = _Q0;
  v15 = _Q0;
  __asm { FMOV            V0.2D, #30.0 }

  v16 = _Q0;
  v17 = _Q0;
  BPSScreenValueGetRelevantValue();
  [(CHASActivitySetupGoalViewConfiguration *)v3 setUnitTextYOffset:v14, v15, v16, v17];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setMinimumValue:5.0];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setMaximumValue:90.0];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setValueIncrement:5.0];

  return v3;
}

- (id)_standGoalViewConfiguration
{
  v3 = objc_alloc_init(CHASActivitySetupGoalViewConfiguration);
  v4 = +[ARUIMetricColors sedentaryColors];
  nonGradientTextColor = [v4 nonGradientTextColor];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalColor:nonGradientTextColor];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000C0108;
  v19[3] = &unk_10083AD98;
  v19[4] = self;
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalValueStringFormatter:v19];
  v6 = +[HKUnit countUnit];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setUnit:v6];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000C0174;
  v18[3] = &unk_10083AD98;
  v18[4] = self;
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalUnitStringFormatter:v18];
  __asm { FMOV            V0.2D, #13.0 }

  v14 = _Q0;
  v15 = _Q0;
  __asm { FMOV            V0.2D, #30.0 }

  v16 = _Q0;
  v17 = _Q0;
  BPSScreenValueGetRelevantValue();
  [(CHASActivitySetupGoalViewConfiguration *)v3 setUnitTextYOffset:v14, v15, v16, v17];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setMinimumValue:6.0];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setMaximumValue:16.0];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setValueIncrement:1.0];

  return v3;
}

- (void)_loadExerciseAndStandGoalViews
{
  _exerciseGoalViewConfiguration = [(CHASActivitySetupViewController *)self _exerciseGoalViewConfiguration];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CHASActivitySetupViewController *)self _createGoalViewWithFrame:_exerciseGoalViewConfiguration configuration:CGRectZero.origin.x, y, width, height];
  exerciseGoalView = self->_exerciseGoalView;
  self->_exerciseGoalView = height;

  _standGoalViewConfiguration = [(CHASActivitySetupViewController *)self _standGoalViewConfiguration];
  height2 = [(CHASActivitySetupViewController *)self _createGoalViewWithFrame:_standGoalViewConfiguration configuration:CGRectZero.origin.x, y, width, height];
  standGoalView = self->_standGoalView;
  self->_standGoalView = height2;
}

- (void)_setGoalQuantityForGoalView:(id)view
{
  viewCopy = view;
  v8 = viewCopy;
  if (self->_moveGoalView == viewCopy)
  {
    if (self->_hasMoveGoalSchedule)
    {
      if (!self->_editTodayOnly)
      {
        _moveQuantityForToday = [(CHASActivitySetupViewController *)self _moveQuantityForToday];
        goto LABEL_12;
      }
    }

    else if (!self->_editTodayOnly)
    {
      v7 = 136;
      goto LABEL_22;
    }

    v7 = 144;
  }

  else if (self->_exerciseGoalView == viewCopy)
  {
    if (self->_hasExerciseGoalSchedule)
    {
      if (!self->_editTodayOnly)
      {
        _moveQuantityForToday = [(CHASActivitySetupViewController *)self _exerciseQuantityForToday];
        goto LABEL_12;
      }
    }

    else if (!self->_editTodayOnly)
    {
      v7 = 152;
      goto LABEL_22;
    }

    v7 = 160;
  }

  else
  {
    if (self->_hasStandGoalSchedule)
    {
      if (!self->_editTodayOnly)
      {
        _moveQuantityForToday = [(CHASActivitySetupViewController *)self _standQuantityForToday];
LABEL_12:
        v6 = _moveQuantityForToday;
        [(CHASActivitySetupViewController *)self _setGoalQuantity:_moveQuantityForToday goalView:v8];

        goto LABEL_23;
      }
    }

    else if (!self->_editTodayOnly)
    {
      v7 = 168;
      goto LABEL_22;
    }

    v7 = 176;
  }

LABEL_22:
  [(CHASActivitySetupViewController *)self _setGoalQuantity:*&self->OBTableWelcomeController_opaque[v7] goalView:viewCopy];
LABEL_23:
}

- (void)_setGoalQuantity:(id)quantity goalView:(id)view
{
  if (quantity)
  {
    [view setGoal:?];
  }
}

- (id)_moveQuantityForToday
{
  v2 = [(NSArray *)self->_goalSchedules hk_filter:&stru_10083ADD8];
  firstObject = [v2 firstObject];

  if (firstObject)
  {
    goalQuantityForToday = [firstObject goalQuantityForToday];
  }

  else
  {
    goalQuantityForToday = 0;
  }

  return goalQuantityForToday;
}

- (id)_exerciseQuantityForToday
{
  v2 = [(NSArray *)self->_goalSchedules hk_filter:&stru_10083ADF8];
  firstObject = [v2 firstObject];

  if (firstObject)
  {
    goalQuantityForToday = [firstObject goalQuantityForToday];
  }

  else
  {
    goalQuantityForToday = 0;
  }

  return goalQuantityForToday;
}

- (id)_standQuantityForToday
{
  v2 = [(NSArray *)self->_goalSchedules hk_filter:&stru_10083AE18];
  firstObject = [v2 firstObject];

  if (firstObject)
  {
    goalQuantityForToday = [firstObject goalQuantityForToday];
  }

  else
  {
    goalQuantityForToday = 0;
  }

  return goalQuantityForToday;
}

- (void)_fetchActiveMoveGoalSampleWithCompletion:(id)completion
{
  activityMoveMode = self->_activityMoveMode;
  completionCopy = completion;
  if (activityMoveMode == 2)
  {
    +[HKObjectType moveMinuteGoal];
  }

  else
  {
    +[HKObjectType calorieGoal];
  }
  v6 = ;
  [(CHASActivitySetupViewController *)self _fetchActiveSampleForQuantityType:v6 completion:completionCopy];
}

- (void)_fetchActiveExerciseGoalSampleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[HKObjectType exerciseGoal];
  [(CHASActivitySetupViewController *)self _fetchActiveSampleForQuantityType:v5 completion:completionCopy];
}

- (void)_fetchActiveStandGoalSampleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[HKObjectType standGoal];
  [(CHASActivitySetupViewController *)self _fetchActiveSampleForQuantityType:v5 completion:completionCopy];
}

- (void)_fetchActiveSampleForQuantityType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = +[NSDate date];
    v9 = [NSPredicate predicateWithFormat:@"startDate <= %@", v8];

    v10 = [NSSortDescriptor sortDescriptorWithKey:HKSampleSortIdentifierStartDate ascending:0];
    v11 = [HKSampleQuery alloc];
    v17 = v10;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C0A44;
    v14[3] = &unk_10083AE40;
    v15 = typeCopy;
    v16 = completionCopy;
    v13 = [v11 initWithSampleType:v15 predicate:v9 limit:1 sortDescriptors:v12 resultsHandler:v14];

    [(HKHealthStore *)self->_healthStore executeQuery:v13];
  }
}

- (void)_fetchMostRecentDailyMoveGoalSampleWithCompletion:(id)completion
{
  activityMoveMode = self->_activityMoveMode;
  completionCopy = completion;
  if (activityMoveMode == 2)
  {
    +[HKObjectType moveMinuteGoal];
  }

  else
  {
    +[HKObjectType calorieGoal];
  }
  v6 = ;
  [(CHASActivitySetupViewController *)self _fetchMostRecentDailyGoalSampleForQuantityType:v6 completion:completionCopy];
}

- (void)_fetchMostRecentDailyExerciseGoalSampleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[HKObjectType exerciseGoal];
  [(CHASActivitySetupViewController *)self _fetchMostRecentDailyGoalSampleForQuantityType:v5 completion:completionCopy];
}

- (void)_fetchMostRecentDailyStandGoalSampleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[HKObjectType standGoal];
  [(CHASActivitySetupViewController *)self _fetchMostRecentDailyGoalSampleForQuantityType:v5 completion:completionCopy];
}

- (void)_fetchMostRecentDailyGoalSampleForQuantityType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = +[NSDate date];
    v9 = [NSPredicate predicateWithFormat:@"startDate <= %@", v8];

    v10 = [HKQuery predicateForObjectsWithMetadataKey:@"_HKPrivateTodayOnlyGoal" operatorType:5 value:&__kCFBooleanTrue];
    v11 = [NSSortDescriptor sortDescriptorWithKey:HKSampleSortIdentifierStartDate ascending:0];
    v21[0] = v9;
    v21[1] = v10;
    v12 = [NSArray arrayWithObjects:v21 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

    v14 = [HKSampleQuery alloc];
    v20 = v11;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000C0EC8;
    v17[3] = &unk_10083AE40;
    v18 = typeCopy;
    v19 = completionCopy;
    v16 = [v14 initWithSampleType:v18 predicate:v13 limit:1 sortDescriptors:v15 resultsHandler:v17];

    [(HKHealthStore *)self->_healthStore executeQuery:v16];
  }
}

- (void)_fetchMostRecentGoalSchedulesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:HKSampleSortIdentifierStartDate ascending:0];
    v6 = +[HKObjectType activityGoalScheduleType];
    v7 = [HKSampleQuery alloc];
    v17 = v5;
    v8 = [NSArray arrayWithObjects:&v17 count:1];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000C110C;
    v14 = &unk_10083AE40;
    v15 = v6;
    v16 = completionCopy;
    v9 = v6;
    v10 = [v7 initWithSampleType:v9 predicate:0 limit:0 sortDescriptors:v8 resultsHandler:&v11];

    [(HKHealthStore *)self->_healthStore executeQuery:v10, v11, v12, v13, v14];
  }
}

- (void)_setGoalSchedules:(id)schedules
{
  objc_storeStrong(&self->_goalSchedules, schedules);
  schedulesCopy = schedules;
  self->_hasMoveGoalSchedule = 0;
  self->_hasExerciseGoalSchedule = 0;
  self->_hasStandGoalSchedule = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C125C;
  v6[3] = &unk_10083AE68;
  v6[4] = self;
  [schedulesCopy enumerateObjectsUsingBlock:v6];
}

- (void)_updateGoalSchedule
{
  goalDays = [(GoalDaysModel *)self->_goalDaysModel goalDays];
  v4 = [HKActivityGoalSchedule scheduleFrom:goalDays goalType:[(GoalDaysModel *)self->_goalDaysModel goalType]];

  if (!v4)
  {
    goto LABEL_9;
  }

  goalSchedules = self->_goalSchedules;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C1430;
  v9[3] = &unk_10083AD08;
  v6 = v4;
  v10 = v6;
  v7 = [(NSArray *)goalSchedules hk_firstObjectPassingTest:v9];
  if (!v7)
  {
    goto LABEL_5;
  }

  if (![(CHASActivitySetupViewController *)self _isGoalSchedule:v7 theSameAs:v6])
  {
    [(HKHealthStore *)self->_healthStore deleteObject:v7 withCompletion:&stru_10083AE88];
LABEL_5:
    [(HKHealthStore *)self->_healthStore saveObject:v6 withCompletion:&stru_10083AEA8];
  }

  goalType = [v6 goalType];
  if (goalType <= 3)
  {
    self->OBTableWelcomeController_opaque[*off_10083AEE0[goalType]] = 1;
  }

  [(CHASActivitySetupViewController *)self tappedContinue:0];

LABEL_9:
}

- (BOOL)_isGoalSchedule:(id)schedule theSameAs:(id)as
{
  scheduleCopy = schedule;
  asCopy = as;
  goalType = [scheduleCopy goalType];
  if (goalType != [asCopy goalType])
  {
    goto LABEL_37;
  }

  mondayGoal = [scheduleCopy mondayGoal];
  mondayGoal2 = [asCopy mondayGoal];
  v10 = mondayGoal2;
  if (mondayGoal == mondayGoal2)
  {
  }

  else
  {
    mondayGoal3 = [asCopy mondayGoal];
    if (!mondayGoal3)
    {
      goto LABEL_36;
    }

    v12 = mondayGoal3;
    mondayGoal4 = [scheduleCopy mondayGoal];
    mondayGoal5 = [asCopy mondayGoal];
    v15 = [mondayGoal4 isEqual:mondayGoal5];

    if (!v15)
    {
      goto LABEL_37;
    }
  }

  mondayGoal = [scheduleCopy tuesdayGoal];
  tuesdayGoal = [asCopy tuesdayGoal];
  v10 = tuesdayGoal;
  if (mondayGoal == tuesdayGoal)
  {
  }

  else
  {
    tuesdayGoal2 = [asCopy tuesdayGoal];
    if (!tuesdayGoal2)
    {
      goto LABEL_36;
    }

    v18 = tuesdayGoal2;
    tuesdayGoal3 = [scheduleCopy tuesdayGoal];
    tuesdayGoal4 = [asCopy tuesdayGoal];
    v21 = [tuesdayGoal3 isEqual:tuesdayGoal4];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  mondayGoal = [scheduleCopy wednesdayGoal];
  wednesdayGoal = [asCopy wednesdayGoal];
  v10 = wednesdayGoal;
  if (mondayGoal == wednesdayGoal)
  {
  }

  else
  {
    wednesdayGoal2 = [asCopy wednesdayGoal];
    if (!wednesdayGoal2)
    {
      goto LABEL_36;
    }

    v24 = wednesdayGoal2;
    wednesdayGoal3 = [scheduleCopy wednesdayGoal];
    wednesdayGoal4 = [asCopy wednesdayGoal];
    v27 = [wednesdayGoal3 isEqual:wednesdayGoal4];

    if (!v27)
    {
      goto LABEL_37;
    }
  }

  mondayGoal = [scheduleCopy thursdayGoal];
  thursdayGoal = [asCopy thursdayGoal];
  v10 = thursdayGoal;
  if (mondayGoal == thursdayGoal)
  {
  }

  else
  {
    thursdayGoal2 = [asCopy thursdayGoal];
    if (!thursdayGoal2)
    {
      goto LABEL_36;
    }

    v30 = thursdayGoal2;
    thursdayGoal3 = [scheduleCopy thursdayGoal];
    thursdayGoal4 = [asCopy thursdayGoal];
    v33 = [thursdayGoal3 isEqual:thursdayGoal4];

    if (!v33)
    {
      goto LABEL_37;
    }
  }

  mondayGoal = [scheduleCopy fridayGoal];
  fridayGoal = [asCopy fridayGoal];
  v10 = fridayGoal;
  if (mondayGoal == fridayGoal)
  {
  }

  else
  {
    fridayGoal2 = [asCopy fridayGoal];
    if (!fridayGoal2)
    {
      goto LABEL_36;
    }

    v36 = fridayGoal2;
    fridayGoal3 = [scheduleCopy fridayGoal];
    fridayGoal4 = [asCopy fridayGoal];
    v39 = [fridayGoal3 isEqual:fridayGoal4];

    if (!v39)
    {
      goto LABEL_37;
    }
  }

  mondayGoal = [scheduleCopy saturdayGoal];
  saturdayGoal = [asCopy saturdayGoal];
  v10 = saturdayGoal;
  if (mondayGoal == saturdayGoal)
  {

    goto LABEL_32;
  }

  saturdayGoal2 = [asCopy saturdayGoal];
  if (!saturdayGoal2)
  {
LABEL_36:

    goto LABEL_37;
  }

  v42 = saturdayGoal2;
  saturdayGoal3 = [scheduleCopy saturdayGoal];
  saturdayGoal4 = [asCopy saturdayGoal];
  v45 = [saturdayGoal3 isEqual:saturdayGoal4];

  if (!v45)
  {
    goto LABEL_37;
  }

LABEL_32:
  mondayGoal = [scheduleCopy sundayGoal];
  sundayGoal = [asCopy sundayGoal];
  v10 = sundayGoal;
  if (mondayGoal == sundayGoal)
  {

LABEL_40:
    v52 = 1;
    goto LABEL_38;
  }

  sundayGoal2 = [asCopy sundayGoal];
  if (!sundayGoal2)
  {
    goto LABEL_36;
  }

  v48 = sundayGoal2;
  sundayGoal3 = [scheduleCopy sundayGoal];
  sundayGoal4 = [asCopy sundayGoal];
  v51 = [sundayGoal3 isEqual:sundayGoal4];

  if (v51)
  {
    goto LABEL_40;
  }

LABEL_37:
  v52 = 0;
LABEL_38:

  return v52;
}

- (id)tapToRadarMetadata
{
  v2 = [[BPSTTRMetadata alloc] initWithComponent:2];

  return v2;
}

- (BPSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
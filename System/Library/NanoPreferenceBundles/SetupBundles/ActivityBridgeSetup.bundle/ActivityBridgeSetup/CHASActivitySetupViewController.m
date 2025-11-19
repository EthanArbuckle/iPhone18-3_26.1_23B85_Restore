@interface CHASActivitySetupViewController
- (BOOL)_currentPageHasGoalSchedule;
- (BOOL)_isGoalSchedule:(id)a3 theSameAs:(id)a4;
- (BOOL)_isStandalonePhoneFitnessMode;
- (BOOL)_shouldShowChangeGoalFooter;
- (BOOL)shouldAccountForHeaderHeight;
- (BPSBuddyControllerDelegate)delegate;
- (CHASActivitySetupViewController)initWithPresentationContext:(int64_t)a3;
- (CHASActivitySetupViewController)initWithPresentationContext:(int64_t)a3 goalType:(int64_t)a4 editTodayOnly:(BOOL)a5;
- (id)_activityLevelView;
- (id)_createGoalViewWithFrame:(CGRect)a3 configuration:(id)a4;
- (id)_exerciseGoalViewConfiguration;
- (id)_exerciseQuantityForToday;
- (id)_existingActivityGoalScheduleForCurrentPage;
- (id)_formattingManager;
- (id)_moveGoalViewConfiguration;
- (id)_moveQuantityForToday;
- (id)_standGoalViewConfiguration;
- (id)_standQuantityForToday;
- (id)_unitManager;
- (id)activityLevelForSegmentedControlIndex:(int64_t)a3;
- (id)advanceGoalHeaderTitle;
- (id)continueButtonTitle;
- (id)healthStore;
- (id)tapToRadarMetadata;
- (int64_t)_activityGoalTypeForCurrentPage;
- (void)_activityLevelPresetChanged:(id)a3;
- (void)_fetchActiveExerciseGoalSampleWithCompletion:(id)a3;
- (void)_fetchActiveMoveGoalSampleWithCompletion:(id)a3;
- (void)_fetchActiveSampleForQuantityType:(id)a3 completion:(id)a4;
- (void)_fetchActiveStandGoalSampleWithCompletion:(id)a3;
- (void)_fetchMostRecentDailyExerciseGoalSampleWithCompletion:(id)a3;
- (void)_fetchMostRecentDailyGoalSampleForQuantityType:(id)a3 completion:(id)a4;
- (void)_fetchMostRecentDailyMoveGoalSampleWithCompletion:(id)a3;
- (void)_fetchMostRecentDailyStandGoalSampleWithCompletion:(id)a3;
- (void)_fetchMostRecentGoalSchedulesWithCompletion:(id)a3;
- (void)_loadExerciseAndStandGoalViews;
- (void)_loadMoveGoalView;
- (void)_removeAdvancedView;
- (void)_removeGoalsOfType:(id)a3 after:(id)a4;
- (void)_saveGoalsAndDismiss;
- (void)_setGoalQuantity:(id)a3 goalView:(id)a4;
- (void)_setGoalQuantityForGoalView:(id)a3;
- (void)_setGoalSchedules:(id)a3;
- (void)_showAdvancedViewForCurrentGoalPage;
- (void)_showAdvancedViewIfNeeded;
- (void)_storeGoals;
- (void)_toggleAdvancedMode;
- (void)_updateAdvanceViewButton:(id)a3;
- (void)_updateGoalSchedule;
- (void)alignGoalViews;
- (void)computeMaxYForGoalViews;
- (void)generateHeaders;
- (void)setActivityLevels:(id)a3 activityMoveMode:(int64_t)a4;
- (void)tappedContinue:(id)a3;
- (void)updateContinueButton;
- (void)updateHeaderViewContent;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CHASActivitySetupViewController

- (CHASActivitySetupViewController)initWithPresentationContext:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CHASActivitySetupViewController;
  result = [(CHASActivitySetupViewController *)&v5 initWithTitle:&stru_35FD0 detailText:0 icon:0];
  if (result)
  {
    result->_goalType = -1;
    result->_presentationContext = a3;
  }

  return result;
}

- (CHASActivitySetupViewController)initWithPresentationContext:(int64_t)a3 goalType:(int64_t)a4 editTodayOnly:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = CHASActivitySetupViewController;
  result = [(CHASActivitySetupViewController *)&v9 initWithTitle:&stru_35FD0 detailText:0 icon:0];
  if (result)
  {
    result->_goalType = a4;
    result->_editTodayOnly = a5;
    result->_presentationContext = a3;
  }

  return result;
}

- (id)advanceGoalHeaderTitle
{
  v4 = [(CHASActivitySetupViewController *)self _activityGoalTypeForCurrentPage];
  if (v4 < 2)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"CUSTOM_MOVE_GOAL";
  }

  else if (v4 == 2)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"CUSTOM_EXERCISE_GOAL";
  }

  else
  {
    if (v4 != 3)
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

  v2 = [v6 localizedStringForKey:v8 value:&stru_35FD0 table:@"ActivitySetup"];

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
    v5 = &stru_35FD0;
  }

  v48 = v3;
  v49 = v5;
  if (self->_recommendedMoveGoal)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"RECOMMENDED_MOVE_GOAL" value:&stru_35FD0 table:@"ActivitySetup"];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"RECOMMENDED_MOVE_GOAL_DESCRIPTION" value:&stru_35FD0 table:@"ActivitySetup"];
  }

  else if (self->_isTinkerPaired)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained setupFlowUserInfo];
    v8 = [v11 objectForKeyedSubscript:BPSPairingFlowFamilyMember];

    v12 = [v8 firstName];
    v13 = [v12 localizedCapitalizedString];

    v46 = [NSString stringWithFormat:@"SET_UP_MOVE_GOAL%@", v49];
    if (v13)
    {
      v14 = [NSString stringWithFormat:@"DAILY_MOVE_GOAL_DESCRIPTION_FITNESS_JR_TINKER%@_%@", v49, @"%@"];
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v44 = v14;
      [v15 localizedStringForKey:v14 value:&stru_35FD0 table:@"ActivitySetup"];
      v17 = v16 = v4;
      v9 = [NSString stringWithFormat:v17, v13];

      v4 = v16;
      v3 = v48;
    }

    else
    {
      v23 = [NSString stringWithFormat:@"DAILY_MOVE_GOAL_DESCRIPTION_FITNESS_JR_TINKER%@", v49];
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v44 = v23;
      v9 = [v15 localizedStringForKey:v23 value:&stru_35FD0 table:@"ActivitySetup"];
    }

    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v24 localizedStringForKey:v46 value:&stru_35FD0 table:@"ActivitySetup"];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"SET_UP_MOVE_GOAL%@", v49];
    v18 = [NSString stringWithFormat:@"DAILY_MOVE_GOAL_DESCRIPTION%@", v49];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:v8 value:&stru_35FD0 table:@"ActivitySetup"];

    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:v18 value:&stru_35FD0 table:@"ActivitySetup"];

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
      v25 = &stru_35FD0;
    }
  }

  v43 = [NSString stringWithFormat:@"SET_UP_EXERCISE_GOAL%@", v49];
  v42 = [NSString stringWithFormat:@"DAILY_EXERCISE_GOAL_DESCRIPTION%@%@", v25, v49];
  v26 = [NSBundle bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:v43 value:&stru_35FD0 table:@"ActivitySetup"];
  [(NSArray *)v48 setObject:v27 atIndexedSubscript:1];

  v28 = [NSBundle bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:v42 value:&stru_35FD0 table:@"ActivitySetup"];
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
  v35 = [v34 localizedStringForKey:v32 value:&stru_35FD0 table:@"ActivitySetup"];
  [(NSArray *)v48 setObject:v35 atIndexedSubscript:2];

  v36 = [NSBundle bundleForClass:objc_opt_class()];
  v37 = [v36 localizedStringForKey:v33 value:&stru_35FD0 table:@"ActivitySetup"];
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
      v7 = [(CHASActivitySetupViewController *)self navigationItem];
      [v7 setLeftBarButtonItem:v6];
    }

    else
    {
      v6 = FIUIBundle();
      v7 = [v6 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_35FD0 table:@"Localizable"];
      v8 = [v5 initWithTitle:v7 style:0 target:self action:"_dismiss:"];
      v9 = [(CHASActivitySetupViewController *)self navigationItem];
      [v9 setLeftBarButtonItem:v8];
    }
  }

  v10 = [FIActivitySettingsController alloc];
  v11 = [(CHASActivitySetupViewController *)self healthStore];
  v122 = [v10 initWithHealthStore:v11];

  [v122 populateExistingCharacteristics];
  self->_activityMoveMode = 1;
  self->_isWheelchairUser = [v122 wheelchairUse] == &dword_0 + 2;
  healthStore = self->_healthStore;
  v135 = 0;
  v118 = [(HKHealthStore *)healthStore _activityMoveModeWithError:&v135];
  v115 = v135;
  if (v115)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_21260();
    }
  }

  if (v118)
  {
    v13 = [v118 integerValue];
  }

  else
  {
    v17 = [v122 dateOfBirth];
    if (!v17)
    {
      goto LABEL_12;
    }

    isWheelchairUser = self->_isWheelchairUser;

    if (isWheelchairUser)
    {
      goto LABEL_12;
    }

    v19 = [v122 dateOfBirth];
    FIAgeInYearsForDateOfBirth();

    v13 = FIDefaultActivityMoveModeWithAge();
  }

  self->_activityMoveMode = v13;
LABEL_12:
  self->_isRTL = FIUILocaleIsRightToLeft();
  v14 = [(CHASActivitySetupViewController *)self delegate];
  v15 = [v14 activePairingDevice];
  v16 = v15;
  if (v15)
  {
    v117 = v15;
  }

  else
  {
    v117 = FIGetActivePairedDevice();
  }

  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v20 = qword_3CF90;
  v140 = qword_3CF90;
  if (!qword_3CF90)
  {
    location[0] = _NSConcreteStackBlock;
    location[1] = 3221225472;
    *&v124 = sub_D550;
    *(&v124 + 1) = &unk_354B0;
    *&v125 = &v137;
    sub_D550(location);
    v20 = v138[3];
  }

  _Block_object_dispose(&v137, 8);
  if (!v20)
  {
    sub_20F34();
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

    v25 = [v122 height];
    v26 = [HKUnit meterUnitWithMetricPrefix:7];
    [v25 doubleValueForUnit:v26];

    v27 = [v122 dateOfBirth];
    FIAgeInYearsForDateOfBirth();

    [v122 wheelchairUse];
    FICMotionConditionForWheelchairUse();
    [(CHASActivitySetupViewController *)self _isStandalonePhoneFitnessMode];
    v28 = [(CHASActivitySetupViewController *)self _formattingManager];
    FIUIActivityLevelsForFitnessJrAndIsStandalonePhoneFitnessMode();
  }

  else
    v29 = {;
    v30 = [v122 leanBodyMass];
    v31 = [v122 height];
    v32 = [v122 dateOfBirth];
    [v122 wheelchairUse];
    FIUICalculateBMR();

    [(CHASActivitySetupViewController *)self _isStandalonePhoneFitnessMode];
    v28 = [(CHASActivitySetupViewController *)self _formattingManager];
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
  v35 = [(CHASActivitySetupViewController *)self contentView];
  [v35 addSubview:self->_scrollView];

  v36 = [(CHASActivitySetupViewController *)self contentView];
  v37 = [v36 topAnchor];
  v38 = [(UIScrollView *)self->_scrollView topAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  [v39 setActive:1];

  v40 = [(CHASActivitySetupViewController *)self contentView];
  v41 = [v40 bottomAnchor];
  v42 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  [v43 setActive:1];

  [(CHASActivitySetupViewController *)self _loadMoveGoalView];
  [(CHASActivitySetupViewController *)self setActivityLevels:v116 activityMoveMode:self->_activityMoveMode];
  v44 = +[_HKBehavior sharedBehavior];
  v45 = [v44 features];
  LODWORD(v41) = [v45 scheduledGoals];

  if (v41)
  {
    v46 = +[UIButtonConfiguration plainButtonConfiguration];
    v120 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleCaption1];
    v47 = [UIImageSymbolConfiguration configurationWithFont:v120];
    v48 = [UIImage systemImageNamed:@"calendar" withConfiguration:v47];
    [v46 setImage:v48];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v49 = [NSBundle bundleForClass:objc_opt_class()];
      v50 = [v49 localizedStringForKey:@"SCHEDULE" value:&stru_35FD0 table:@"ActivitySetup"];
      [v46 setTitle:v50];

      [v46 setImagePadding:3.0];
    }

    objc_initWeak(location, self);
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 3221225472;
    v133[2] = sub_71B8;
    v133[3] = &unk_356B0;
    objc_copyWeak(&v134, location);
    v51 = [UIAction actionWithHandler:v133];
    v52 = [UIButton buttonWithConfiguration:v46 primaryAction:v51];
    advancedButton = self->_advancedButton;
    self->_advancedButton = v52;

    [(UIButton *)self->_advancedButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v54 = self->_advancedButton;
    v131[0] = _NSConcreteStackBlock;
    v131[1] = 3221225472;
    v131[2] = sub_71F8;
    v131[3] = &unk_356D8;
    objc_copyWeak(&v132, location);
    [(UIButton *)v54 setConfigurationUpdateHandler:v131];
    if (!self->_editTodayOnly)
    {
      v55 = [[UIBarButtonItem alloc] initWithCustomView:self->_advancedButton];
      v56 = [(CHASActivitySetupViewController *)self navigationItem];
      [v56 setRightBarButtonItem:v55];
    }

    v129[0] = _NSConcreteStackBlock;
    v129[1] = 3221225472;
    v129[2] = sub_7254;
    v129[3] = &unk_35728;
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
      v57 = +[HKUnit minuteUnit];
    }

    else
    {
      v58 = [(FIUIFormattingManager *)self->_formattingManager unitManager];
      v57 = [v58 userActiveEnergyBurnedUnit];
    }

    [(NSNumber *)self->_recommendedMoveGoal doubleValue];
    v59 = [HKQuantity quantityWithUnit:v57 doubleValue:?];
    [(CHASActivitySetupViewController *)self _setGoalQuantity:v59 goalView:self->_moveGoalView];
  }

  else
  {
    objc_initWeak(location, self);
    v127[0] = _NSConcreteStackBlock;
    v127[1] = 3221225472;
    v127[2] = sub_7380;
    v127[3] = &unk_357A0;
    objc_copyWeak(&v128, location);
    [(CHASActivitySetupViewController *)self _fetchMostRecentDailyMoveGoalSampleWithCompletion:v127];
    objc_destroyWeak(&v128);
    objc_destroyWeak(location);
  }

  [(CHASActivitySetupViewController *)self _loadExerciseAndStandGoalViews];
  v121 = [(CHASActivitySetupViewController *)self _activityLevelView];
  [(UIScrollView *)self->_scrollView addSubview:v121];
  [v121 setTranslatesAutoresizingMaskIntoConstraints:0];
  v60 = [v121 topAnchor];
  v61 = [(CHASActivitySetupViewController *)self contentView];
  v62 = [v61 topAnchor];
  *location = 0u;
  v124 = 0u;
  __asm { FMOV            V0.2D, #16.0 }

  v125 = _Q0;
  v126 = _Q0;
  BPSScreenValueGetRelevantValue();
  v68 = [v60 constraintEqualToAnchor:v62 constant:?];
  [v68 setActive:1];

  v69 = [v121 centerXAnchor];
  v70 = [(CHASActivitySetupViewController *)self contentView];
  v71 = [v70 centerXAnchor];
  v72 = [v69 constraintEqualToAnchor:v71];
  [v72 setActive:1];

  v73 = [v121 leadingAnchor];
  v74 = [(CHASActivitySetupViewController *)self contentView];
  v75 = [v74 leadingAnchor];
  v76 = [v73 constraintEqualToAnchor:v75];
  [v76 setActive:1];

  v77 = [v121 trailingAnchor];
  v78 = [(CHASActivitySetupViewController *)self contentView];
  v79 = [v78 trailingAnchor];
  v80 = [v77 constraintEqualToAnchor:v79];
  [v80 setActive:1];

  v81 = +[OBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v81;

  [(OBBoldTrayButton *)self->_continueButton addTarget:self action:"tappedContinue:" forControlEvents:64];
  v83 = self->_continueButton;
  v84 = BPSPillSelectedColor();
  [(OBBoldTrayButton *)v83 setTintColor:v84];

  v119 = [(OBBoldTrayButton *)self->_continueButton configuration];
  v85 = +[ARUIMetricColors keyColors];
  v86 = [v85 nonGradientTextColor];
  [v119 setBaseForegroundColor:v86];

  v87 = [(CHASActivitySetupViewController *)self continueButtonTitle];
  [v119 setTitle:v87];

  [(OBBoldTrayButton *)self->_continueButton setConfiguration:v119];
  v88 = [(CHASActivitySetupViewController *)self buttonTray];
  [v88 addButton:self->_continueButton];

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
  v94 = [v93 localizedStringForKey:@"CHANGE_GOAL_FOOTER" value:&stru_35FD0 table:@"ActivitySetup"];
  [(UILabel *)self->_footerLabel setText:v94];

  [(UILabel *)self->_footerLabel setTextAlignment:4];
  if ([(CHASActivitySetupViewController *)self _shouldShowChangeGoalFooter])
  {
    v95 = [(CHASActivitySetupViewController *)self buttonTray];
    [v95 addSubview:self->_footerLabel];

    v114 = [(UILabel *)self->_footerLabel bottomAnchor];
    v113 = [(OBBoldTrayButton *)self->_continueButton topAnchor];
    v96 = [v114 constraintEqualToAnchor:v113 constant:-15.0];
    v141[0] = v96;
    v97 = [(UILabel *)self->_footerLabel leadingAnchor];
    v98 = [(OBBoldTrayButton *)self->_continueButton leadingAnchor];
    v99 = [v97 constraintEqualToAnchor:v98];
    v141[1] = v99;
    v100 = [(UILabel *)self->_footerLabel trailingAnchor];
    v101 = [(OBBoldTrayButton *)self->_continueButton trailingAnchor];
    v102 = [v100 constraintEqualToAnchor:v101];
    v141[2] = v102;
    v103 = [NSArray arrayWithObjects:v141 count:3];
    [NSLayoutConstraint activateConstraints:v103];
  }

  if (self->_recommendedMoveGoal)
  {
    [(CHASActivitySetupLevelView *)self->_activityLevelView setAlpha:0.0];
    v104 = self->_continueButton;
    v105 = [NSBundle bundleForClass:objc_opt_class()];
    v106 = [v105 localizedStringForKey:@"CHANGE_MOVE_GOAL" value:&stru_35FD0 table:@"ActivitySetup"];
    [(OBBoldTrayButton *)v104 setTitle:v106 forState:0];

    v107 = +[OBLinkTrayButton linkButton];
    notNowButton = self->_notNowButton;
    self->_notNowButton = v107;

    [(OBLinkTrayButton *)self->_notNowButton addTarget:self action:"_dismiss:" forControlEvents:64];
    v109 = self->_notNowButton;
    v110 = [NSBundle bundleForClass:objc_opt_class()];
    v111 = [v110 localizedStringForKey:@"SKIP_LABEL" value:&stru_35FD0 table:@"ActivitySetup"];
    [(OBLinkTrayButton *)v109 setTitle:v111 forState:0];

    v112 = [(CHASActivitySetupViewController *)self buttonTray];
    [v112 addButton:self->_notNowButton];
  }
}

- (void)_updateAdvanceViewButton:(id)a3
{
  v4 = a3;
  v14 = [v4 configuration];
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
    v10 = [v9 localizedStringForKey:v8 value:&stru_35FD0 table:@"ActivitySetup"];
    [v14 setTitle:v10];
  }

  if (_UISolariumEnabled())
  {
    v11 = [UIImage _systemImageNamed:v7];
    [v14 setImage:v11];
  }

  else
  {
    v11 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleCaption1];
    v12 = [UIImageSymbolConfiguration configurationWithFont:v11];
    v13 = [UIImage _systemImageNamed:v7 withConfiguration:v12];
    [v14 setImage:v13];
  }

  [v4 setConfiguration:v14];
}

- (void)viewWillAppear:(BOOL)a3
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
  v3 = [(CHASActivitySetupViewController *)self view];
  [v3 bounds];
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

  v23 = [(CHASActivitySetupViewController *)self contentView];
  [v23 frame];
  v25 = v13 + v22 + v24;
  v26 = [(CHASActivitySetupViewController *)self view];
  [v26 frame];
  MidY = CGRectGetMidY(v41);

  if (v25 < MidY)
  {
    v28 = [(CHASActivitySetupViewController *)self view];
    [v28 frame];
    v29 = CGRectGetMidY(v42);
    v30 = [(CHASActivitySetupViewController *)self contentView];
    [v30 frame];
    v22 = v22 + v29 - (v13 + v22 + v31);
  }

  v32 = self->_scrollView;
  v33 = [(CHASActivitySetupViewController *)self view];
  [v33 bounds];
  [(UIScrollView *)v32 setFrame:0.0, 0.0];

  v34 = [(CHASActivitySetupViewController *)self contentView];
  [v34 bounds];
  v36 = v35 * 3.0;
  [(CHASActivitySetupGoalView *)self->_moveGoalView intrinsicContentSize];
  [(UIScrollView *)self->_scrollView setContentSize:v36, v22 + v37];

  [(CHASActivitySetupViewController *)self alignGoalViews];
}

- (void)computeMaxYForGoalViews
{
  v3 = [(CHASActivitySetupViewController *)self headerView];
  [v3 bounds];
  v5 = v4;

  self->_headerHeights = malloc_type_malloc(0x18uLL, 0x100004000313F17uLL);
  if ([(NSArray *)self->_pageTitles count])
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = [(CHASActivitySetupViewController *)self headerView];
      v9 = [(NSArray *)self->_pageTitles objectAtIndexedSubscript:v6];
      [v8 setTitle:v9];

      v10 = [(CHASActivitySetupViewController *)self headerView];
      v11 = [(NSArray *)self->_pageDetailTexts objectAtIndexedSubscript:v6];
      [v10 setDetailText:v11];

      v12 = [(CHASActivitySetupViewController *)self headerView];
      LODWORD(v13) = 1148846080;
      LODWORD(v14) = 1112014848;
      [v12 _systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v13, v14}];
      v16 = v15;

      v17 = [(CHASActivitySetupViewController *)self headerView];
      [v17 frame];
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
  v4 = [(CHASActivitySetupViewController *)self headerView];
  if (advancedGoalView)
  {
    [(CHASActivitySetupViewController *)self advanceGoalHeaderTitle];
  }

  else
  {
    [(NSArray *)self->_pageTitles objectAtIndexedSubscript:self->_currentPageIndex];
  }
  v5 = ;
  [v4 setTitle:v5];

  v7 = [(CHASActivitySetupViewController *)self headerView];
  v6 = [(NSArray *)self->_pageDetailTexts objectAtIndexedSubscript:self->_currentPageIndex];
  [v7 setDetailText:v6];
}

- (id)continueButtonTitle
{
  v4 = [(CHASActivitySetupViewController *)self _activityGoalTypeForCurrentPage];
  if (!self->_advancedGoalView)
  {
    if (v4 < 2)
    {
      if (!self->_defaultDailyMoveGoalQuantity)
      {
        v7 = @"SET_MOVE_GOAL";
        goto LABEL_45;
      }

      if (self->_editTodayOnly)
      {
        v12 = @"_FOR_TODAY";
      }

      else
      {
        v12 = &stru_35FD0;
      }

      [NSString stringWithFormat:@"CHANGE_MOVE_GOAL%@", v12, v19];
    }

    else if (v4 == 2)
    {
      if (!self->_defaultDailyExerciseGoalQuantity)
      {
        v7 = @"SET_EXERCISE_GOAL";
        goto LABEL_45;
      }

      if (self->_editTodayOnly)
      {
        v14 = @"_FOR_TODAY";
      }

      else
      {
        v14 = &stru_35FD0;
      }

      [NSString stringWithFormat:@"CHANGE_EXERCISE_GOAL%@", v14, v19];
    }

    else
    {
      if (v4 != 3)
      {
        v7 = 0;
        goto LABEL_45;
      }

      if (!self->_defaultDailyStandGoalQuantity)
      {
        if (self->_isWheelchairUser)
        {
          v16 = @"SET_ROLL_GOAL";
        }

        else
        {
          v16 = @"SET_STAND_GOAL";
        }

        v15 = v16;
        goto LABEL_34;
      }

      if (self->_isWheelchairUser)
      {
        v9 = @"ROLL";
      }

      else
      {
        v9 = @"STAND";
      }

      if (self->_editTodayOnly)
      {
        v10 = @"_FOR_TODAY";
      }

      else
      {
        v10 = &stru_35FD0;
      }

      [NSString stringWithFormat:@"CHANGE_%@_GOAL%@", v9, v10];
    }
    v15 = ;
LABEL_34:
    v7 = v15;
LABEL_45:
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v2 = [v17 localizedStringForKey:v7 value:&stru_35FD0 table:@"ActivitySetup"];

    goto LABEL_46;
  }

  if (v4 < 2)
  {
    hasMoveGoalSchedule = self->_hasMoveGoalSchedule;
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    if (hasMoveGoalSchedule)
    {
      v8 = @"CHANGE_MOVE_GOAL_SCHEDULE";
    }

    else
    {
      v8 = @"SET_MOVE_GOAL_SCHEDULE";
    }
  }

  else if (v4 == 2)
  {
    hasExerciseGoalSchedule = self->_hasExerciseGoalSchedule;
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    if (hasExerciseGoalSchedule)
    {
      v8 = @"CHANGE_EXERCISE_GOAL_SCHEDULE";
    }

    else
    {
      v8 = @"SET_EXERCISE_GOAL_SCHEDULE";
    }
  }

  else
  {
    if (v4 != 3)
    {
      goto LABEL_47;
    }

    hasStandGoalSchedule = self->_hasStandGoalSchedule;
    isWheelchairUser = self->_isWheelchairUser;
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    if (isWheelchairUser)
    {
      v8 = @"CHANGE_ROLL_GOAL_SCHEDULE";
    }

    else
    {
      v8 = @"SET_STAND_GOAL_SCHEDULE";
    }
  }

  v2 = [(__CFString *)v7 localizedStringForKey:v8 value:&stru_35FD0 table:@"ActivitySetup"];
LABEL_46:

LABEL_47:

  return v2;
}

- (void)updateContinueButton
{
  v8 = [(OBBoldTrayButton *)self->_continueButton configuration];
  v3 = [(CHASActivitySetupViewController *)self continueButtonTitle];
  [v8 setTitle:v3];

  [(OBBoldTrayButton *)self->_continueButton setConfiguration:v8];
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
  v3 = [(CHASActivitySetupViewController *)self headerView];
  [v3 frame];
  v5 = v4;
  v6 = [(CHASActivitySetupViewController *)self headerView];
  [v6 bounds];
  v8 = v5 + v7;
  v9 = [(CHASActivitySetupViewController *)self contentView];
  [v9 bounds];
  v11 = v8 + v10;
  v12 = [(CHASActivitySetupViewController *)self buttonTray];
  [v12 bounds];
  v14 = v11 + v13;
  v15 = [(CHASActivitySetupViewController *)self view];
  [v15 bounds];
  v17 = v14 < v16;

  return v17;
}

- (void)alignGoalViews
{
  v3 = [(CHASActivitySetupViewController *)self view];
  [v3 bounds];
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

  v6 = [(CHASActivitySetupViewController *)self _moveGoalViewConfiguration];
  v4 = [(CHASActivitySetupViewController *)self _createGoalViewWithFrame:v6 configuration:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = self->_moveGoalView;
  self->_moveGoalView = v4;

  objc_storeStrong(&self->_currentlyPresentedView, self->_moveGoalView);
}

- (id)_createGoalViewWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [[CHASActivitySetupGoalView alloc] initWithFrame:v9 configuration:x, y, width, height];

  [(UIScrollView *)self->_scrollView addSubview:v10];

  return v10;
}

- (void)_removeGoalsOfType:(id)a3 after:(id)a4
{
  v6 = a3;
  v7 = [NSPredicate predicateWithFormat:@"startDate > %@", a4];
  v8 = [(CHASActivitySetupViewController *)self healthStore];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_8578;
  v10[3] = &unk_357C8;
  v11 = v6;
  v9 = v6;
  [v8 deleteObjectsOfType:v9 predicate:v7 withCompletion:v10];
}

- (void)_storeGoals
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = &BPSAccessoryColor_ptr;
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

        v4 = &BPSAccessoryColor_ptr;
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
      v24 = &BPSAccessoryColor_ptr;
      v25 = +[HKObjectType standGoal];
      newDailyStandGoal = self->_newDailyStandGoal;
      if (self->_editTodayOnly)
      {
        v62 = @"_HKPrivateTodayOnlyGoal";
        v63 = &__kCFBooleanTrue;
        v27 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v28 = [HKQuantitySample quantitySampleWithType:v25 quantity:newDailyStandGoal startDate:v6 endDate:v6 metadata:v27];

        v24 = &BPSAccessoryColor_ptr;
      }

      else
      {
        v28 = [HKQuantitySample quantitySampleWithType:v25 quantity:newDailyStandGoal startDate:v6 endDate:v6 metadata:0];
      }

      [v3 addObject:v28];
      v29 = [v24[345] standGoal];
      [(CHASActivitySetupViewController *)self _removeGoalsOfType:v29 after:v6];

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
    v32 = [v4[440] currentCalendar];
    v33 = +[NSDate date];
    v34 = [v32 startOfDayForDate:v33];

    v35 = [v4[440] currentCalendar];
    v36 = [v35 components:_HKRequiredCalendarUnitsForCacheIndexDateComponents fromDate:v34];

    v37 = [NSDate dateWithTimeIntervalSinceReferenceDate:_HKCacheIndexFromDateComponents()];
    v38 = [HKObjectType categoryTypeForIdentifier:_HKCategoryTypeIdentifierActivityMoveModeChange];
    v39 = [HKCategorySample categorySampleWithType:v38 value:2 startDate:v37 endDate:v37];
    [v3 addObject:v39];
  }

  v40 = dispatch_semaphore_create(0);
  v41 = [(CHASActivitySetupViewController *)self healthStore];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_8E94;
  v52[3] = &unk_35510;
  v42 = v40;
  v53 = v42;
  [v41 saveObjects:v3 withCompletion:v52];

  v43 = dispatch_time(0, 5000000000);
  v44 = dispatch_semaphore_wait(v42, v43);
  _HKInitializeLogging();
  v45 = HKLogActivity;
  if (v44)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_FAULT))
    {
      sub_21330(v45);
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
    _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "Successfully saved first daily goals: %@, %@, and %@ with activity move mode: %ld.", buf, 0x2Au);
  }

  FIUISetNeedsActivityRingExplanation();
}

- (id)_unitManager
{
  unitManager = self->_unitManager;
  if (!unitManager)
  {
    v4 = [FIUIUnitManager alloc];
    v5 = [(CHASActivitySetupViewController *)self healthStore];
    v6 = [v4 initWithHealthStore:v5];
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
    v5 = [(CHASActivitySetupViewController *)self _unitManager];
    v6 = [v4 initWithUnitManager:v5];
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
    v4 = [(CHASActivitySetupViewController *)self delegate];
    v5 = [v4 activePairingDevice];

    v6 = FIUIHealthStoreForDevice();
    v7 = self->_healthStore;
    self->_healthStore = v6;

    healthStore = self->_healthStore;
  }

  return healthStore;
}

- (void)_saveGoalsAndDismiss
{
  [(CHASActivitySetupViewController *)self _storeGoals];
  if (self->_isTinkerPaired)
  {
    v3 = [[HKSecondaryDevicePairingAgent alloc] initWithHealthStore:self->_healthStore];
    v4 = [(CHASActivitySetupViewController *)self delegate];
    v5 = [v4 activePairingDevice];
    v6 = [v5 pairingID];

    [v3 performEndToEndCloudSyncWithNRDeviceUUID:v6 syncParticipantFirst:1 completion:&stru_35808];
  }

  else
  {
    v3 = [[HKNanoSyncControl alloc] initWithHealthStore:self->_healthStore];
    [v3 forceNanoSyncWithOptions:1 completion:&stru_35828];
  }

  presentationContext = self->_presentationContext;
  if (presentationContext == 4 || presentationContext == 2)
  {
    v9 = [NSNumber numberWithInteger:?];
    FIActivityAnalyticsSubmission();
  }

  v10 = [(CHASActivitySetupViewController *)self delegate];

  if (v10)
  {
    v11 = [(CHASActivitySetupViewController *)self delegate];
    [v11 buddyControllerDone:self];
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
  v7 = [v6 isStandalonePhoneFitnessMode];

  return v7;
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

- (void)tappedContinue:(id)a3
{
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_A238;
  v27[3] = &unk_35560;
  v27[4] = self;
  v5 = objc_retainBlock(v27);
  v6 = [(CHASActivitySetupViewController *)self _currentPageHasGoalSchedule];
  if (a3 && v6 && !self->_editTodayOnly)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"REMOVE_SCHEDULE_TITLE" value:&stru_35FD0 table:@"ActivitySetup"];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"REMOVE_SCHEDULE_MESSAGE" value:&stru_35FD0 table:@"ActivitySetup"];
    v11 = [UIAlertController alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_35FD0 table:@"ActivitySetup"];
    v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&stru_35848];

    v15 = [(CHASActivitySetupViewController *)self _existingActivityGoalScheduleForCurrentPage];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"REMOVE" value:&stru_35FD0 table:@"ActivitySetup"];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_A3C4;
    v23 = &unk_358B8;
    v24 = self;
    v25 = v15;
    v26 = v5;
    v18 = v15;
    v19 = [UIAlertAction actionWithTitle:v17 style:2 handler:&v20];

    [v11 addAction:{v14, v20, v21, v22, v23, v24}];
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
    v3 = [(CHASActivitySetupViewController *)self contentView];
    [v3 addSubview:self->_scrollView];

    v4 = [(CHASActivitySetupViewController *)self contentView];
    v5 = [v4 topAnchor];
    v6 = [(UIScrollView *)self->_scrollView topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    [v7 setActive:1];

    v8 = [(CHASActivitySetupViewController *)self contentView];
    v9 = [v8 bottomAnchor];
    v10 = [(UIScrollView *)self->_scrollView bottomAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
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
  v3 = [(CHASActivitySetupViewController *)self _existingActivityGoalScheduleForCurrentPage];
  if (v3 && !self->_editTodayOnly)
  {
    v4 = v3;
    [(CHASActivitySetupViewController *)self _showAdvancedViewForCurrentGoalPage];
    v3 = v4;
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
    v4 = [(CHASActivitySetupViewController *)self buttonTray];
    [v4 addSubview:self->_footerLabel];

    v5 = [(UILabel *)self->_footerLabel bottomAnchor];
    v6 = [(OBBoldTrayButton *)self->_continueButton topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6 constant:-15.0];
    v15[0] = v7;
    v8 = [(UILabel *)self->_footerLabel leadingAnchor];
    v9 = [(OBBoldTrayButton *)self->_continueButton leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v15[1] = v10;
    v11 = [(UILabel *)self->_footerLabel trailingAnchor];
    v12 = [(OBBoldTrayButton *)self->_continueButton trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v15[2] = v13;
    v14 = [NSArray arrayWithObjects:v15 count:3];
    [NSLayoutConstraint activateConstraints:v14];
  }
}

- (id)_existingActivityGoalScheduleForCurrentPage
{
  v3 = [(CHASActivitySetupViewController *)self _activityGoalTypeForCurrentPage];
  goalSchedules = self->_goalSchedules;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A95C;
  v7[3] = &unk_358D8;
  v7[4] = v3;
  v5 = [(NSArray *)goalSchedules hk_firstObjectPassingTest:v7];

  return v5;
}

- (BOOL)_currentPageHasGoalSchedule
{
  v3 = [(CHASActivitySetupViewController *)self _activityGoalTypeForCurrentPage];
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = self->OBTableWelcomeController_opaque[*off_35A48[v3]];
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
  v39 = [(CHASActivitySetupViewController *)self _existingActivityGoalScheduleForCurrentPage];
  if (!v39)
  {
    v3 = [(CHASActivitySetupViewController *)self _activityGoalTypeForCurrentPage];
    v4 = v3;
    if (v3 < 2)
    {
      v5 = [(CHASActivitySetupViewController *)self currentMoveGoal];
    }

    else if (v3 == 2)
    {
      v5 = [(CHASActivitySetupViewController *)self currentExerciseGoal];
    }

    else
    {
      if (v3 != 3)
      {
        v6 = 0;
        goto LABEL_9;
      }

      v5 = [(CHASActivitySetupViewController *)self currentStandGoal];
    }

    v6 = v5;
LABEL_9:
    v7 = +[NSDate date];
    v8 = +[HKDevice localDevice];
    v39 = [HKActivityGoalSchedule activityGoalScheduleWithDate:v7 goalType:v4 goal:v6 device:v8 metadata:0];
  }

  v9 = [[_TtC19ActivityBridgeSetup13GoalDaysModel alloc] initWithGoalSchedule:v39];
  goalDaysModel = self->_goalDaysModel;
  self->_goalDaysModel = v9;

  currentPageIndex = self->_currentPageIndex;
  if (currentPageIndex == 1)
  {
    v12 = [(CHASActivitySetupViewController *)self _exerciseGoalViewConfiguration];
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
    v12 = ;
  }

  v13 = v12;
  [(UIView *)self->_advancedGoalView removeFromSuperview];
  v14 = +[CHASAdvancedGoalViewFactory makeViewWithGoalSchedule:goalDaysModel:wheelchairUser:goalType:formattingManager:showFooter:](CHASAdvancedGoalViewFactory, "makeViewWithGoalSchedule:goalDaysModel:wheelchairUser:goalType:formattingManager:showFooter:", v39, self->_goalDaysModel, self->_isWheelchairUser, [v39 goalType], self->_formattingManager, -[CHASActivitySetupViewController _shouldShowChangeGoalFooter](self, "_shouldShowChangeGoalFooter"));
  advancedGoalView = self->_advancedGoalView;
  self->_advancedGoalView = v14;

  v16 = BPSSetupBackgroundColor();
  [(UIView *)self->_advancedGoalView setBackgroundColor:v16];

  [(UIView *)self->_advancedGoalView setAccessibilityViewIsModal:1];
  v17 = [(CHASActivitySetupViewController *)self contentView];
  [v17 addSubview:self->_advancedGoalView];

  [(UIView *)self->_advancedGoalView setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [(UIView *)self->_advancedGoalView topAnchor];
  v19 = [(CHASActivitySetupViewController *)self contentView];
  v20 = [v19 safeAreaLayoutGuide];
  v21 = [v20 topAnchor];
  v22 = [v18 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [(UIView *)self->_advancedGoalView leadingAnchor];
  v24 = [(CHASActivitySetupViewController *)self contentView];
  v25 = [v24 safeAreaLayoutGuide];
  v26 = [v25 leadingAnchor];
  v27 = [v23 constraintEqualToAnchor:v26];
  [v27 setActive:1];

  v28 = [(UIView *)self->_advancedGoalView trailingAnchor];
  v29 = [(CHASActivitySetupViewController *)self contentView];
  v30 = [v29 safeAreaLayoutGuide];
  v31 = [v30 trailingAnchor];
  v32 = [v28 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  v33 = [(UIView *)self->_advancedGoalView bottomAnchor];
  v34 = [(CHASActivitySetupViewController *)self contentView];
  v35 = [v34 safeAreaLayoutGuide];
  v36 = [v35 bottomAnchor];
  v37 = [v33 constraintEqualToAnchor:v36];
  [v37 setActive:1];

  [(UIButton *)self->_advancedButton setNeedsUpdateConfiguration];
  v38 = [(CHASActivitySetupViewController *)self view];
  [v38 setNeedsLayout];
}

- (void)setActivityLevels:(id)a3 activityMoveMode:(int64_t)a4
{
  v8 = a3;
  objc_storeStrong(&self->_activityLevels, a3);
  self->_activityMoveMode = a4;
  if ([(NSArray *)self->_activityLevels count])
  {
    v7 = [v8 objectAtIndexedSubscript:0];
    [(CHASActivitySetupViewController *)self _setActivityLevel:v7 activityMoveMode:a4];
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

    v8 = [(CHASActivitySetupLevelView *)self->_activityLevelView segmentedControl];
    [v8 addTarget:self action:"_activityLevelPresetChanged:" forControlEvents:4096];

    activityLevelView = self->_activityLevelView;
  }

  return activityLevelView;
}

- (void)_activityLevelPresetChanged:(id)a3
{
  v4 = [(CHASActivitySetupLevelView *)self->_activityLevelView segmentedControl];
  v5 = [v4 selectedSegmentIndex];

  v6 = [(CHASActivitySetupViewController *)self activityLevelForSegmentedControlIndex:v5];
  [(CHASActivitySetupViewController *)self _setActivityLevel:v6 activityMoveMode:self->_activityMoveMode];
}

- (id)activityLevelForSegmentedControlIndex:(int64_t)a3
{
  if ([(NSArray *)self->_activityLevels count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_activityLevels objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)_moveGoalViewConfiguration
{
  v3 = objc_alloc_init(CHASActivitySetupGoalViewConfiguration);
  v4 = +[ARUIMetricColors energyColors];
  v5 = [v4 nonGradientTextColor];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalColor:v5];

  v6 = [(CHASActivitySetupViewController *)self _unitManager];
  v7 = [v6 userActiveEnergyBurnedUnit];

  [(CHASActivitySetupGoalViewConfiguration *)v3 setUnit:v7];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_B320;
  v24[3] = &unk_35900;
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
  v23[2] = sub_B3A0;
  v23[3] = &unk_35900;
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
  v5 = [v4 nonGradientTextColor];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalColor:v5];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_B65C;
  v19[3] = &unk_35900;
  v19[4] = self;
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalValueStringFormatter:v19];
  v6 = +[HKUnit minuteUnit];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setUnit:v6];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_B6C8;
  v18[3] = &unk_35900;
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
  v5 = [v4 nonGradientTextColor];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalColor:v5];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_B96C;
  v19[3] = &unk_35900;
  v19[4] = self;
  [(CHASActivitySetupGoalViewConfiguration *)v3 setGoalValueStringFormatter:v19];
  v6 = +[HKUnit countUnit];
  [(CHASActivitySetupGoalViewConfiguration *)v3 setUnit:v6];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_B9D8;
  v18[3] = &unk_35900;
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
  v11 = [(CHASActivitySetupViewController *)self _exerciseGoalViewConfiguration];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v6 = [(CHASActivitySetupViewController *)self _createGoalViewWithFrame:v11 configuration:CGRectZero.origin.x, y, width, height];
  exerciseGoalView = self->_exerciseGoalView;
  self->_exerciseGoalView = v6;

  v8 = [(CHASActivitySetupViewController *)self _standGoalViewConfiguration];
  v9 = [(CHASActivitySetupViewController *)self _createGoalViewWithFrame:v8 configuration:CGRectZero.origin.x, y, width, height];
  standGoalView = self->_standGoalView;
  self->_standGoalView = v9;
}

- (void)_setGoalQuantityForGoalView:(id)a3
{
  v4 = a3;
  editTodayOnly = self->_editTodayOnly;
  v9 = v4;
  if (self->_moveGoalView == v4)
  {
    if (self->_hasMoveGoalSchedule)
    {
      if (!self->_editTodayOnly)
      {
        v6 = [(CHASActivitySetupViewController *)self _moveQuantityForToday];
        goto LABEL_12;
      }
    }

    else if (!self->_editTodayOnly)
    {
      v8 = 136;
      goto LABEL_22;
    }

    v8 = 144;
  }

  else if (self->_exerciseGoalView == v4)
  {
    if (self->_hasExerciseGoalSchedule)
    {
      if (!self->_editTodayOnly)
      {
        v6 = [(CHASActivitySetupViewController *)self _exerciseQuantityForToday];
        goto LABEL_12;
      }
    }

    else if (!self->_editTodayOnly)
    {
      v8 = 152;
      goto LABEL_22;
    }

    v8 = 160;
  }

  else
  {
    if (self->_hasStandGoalSchedule)
    {
      if (!self->_editTodayOnly)
      {
        v6 = [(CHASActivitySetupViewController *)self _standQuantityForToday];
LABEL_12:
        v7 = v6;
        [(CHASActivitySetupViewController *)self _setGoalQuantity:v6 goalView:v9];

        goto LABEL_23;
      }
    }

    else if (!self->_editTodayOnly)
    {
      v8 = 168;
      goto LABEL_22;
    }

    v8 = 176;
  }

LABEL_22:
  [(CHASActivitySetupViewController *)self _setGoalQuantity:*&self->OBTableWelcomeController_opaque[v8] goalView:v4];
LABEL_23:
}

- (void)_setGoalQuantity:(id)a3 goalView:(id)a4
{
  if (a3)
  {
    [a4 setGoal:?];
  }
}

- (id)_moveQuantityForToday
{
  v2 = [(NSArray *)self->_goalSchedules hk_filter:&stru_35940];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 goalQuantityForToday];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_exerciseQuantityForToday
{
  v2 = [(NSArray *)self->_goalSchedules hk_filter:&stru_35960];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 goalQuantityForToday];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_standQuantityForToday
{
  v2 = [(NSArray *)self->_goalSchedules hk_filter:&stru_35980];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 goalQuantityForToday];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_fetchActiveMoveGoalSampleWithCompletion:(id)a3
{
  activityMoveMode = self->_activityMoveMode;
  v5 = a3;
  if (activityMoveMode == 2)
  {
    +[HKObjectType moveMinuteGoal];
  }

  else
  {
    +[HKObjectType calorieGoal];
  }
  v6 = ;
  [(CHASActivitySetupViewController *)self _fetchActiveSampleForQuantityType:v6 completion:v5];
}

- (void)_fetchActiveExerciseGoalSampleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[HKObjectType exerciseGoal];
  [(CHASActivitySetupViewController *)self _fetchActiveSampleForQuantityType:v5 completion:v4];
}

- (void)_fetchActiveStandGoalSampleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[HKObjectType standGoal];
  [(CHASActivitySetupViewController *)self _fetchActiveSampleForQuantityType:v5 completion:v4];
}

- (void)_fetchActiveSampleForQuantityType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = +[NSDate date];
    v9 = [NSPredicate predicateWithFormat:@"startDate <= %@", v8];

    v10 = [NSSortDescriptor sortDescriptorWithKey:HKSampleSortIdentifierStartDate ascending:0];
    v11 = [HKSampleQuery alloc];
    v17 = v10;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_C2A8;
    v14[3] = &unk_359A8;
    v15 = v6;
    v16 = v7;
    v13 = [v11 initWithSampleType:v15 predicate:v9 limit:1 sortDescriptors:v12 resultsHandler:v14];

    [(HKHealthStore *)self->_healthStore executeQuery:v13];
  }
}

- (void)_fetchMostRecentDailyMoveGoalSampleWithCompletion:(id)a3
{
  activityMoveMode = self->_activityMoveMode;
  v5 = a3;
  if (activityMoveMode == 2)
  {
    +[HKObjectType moveMinuteGoal];
  }

  else
  {
    +[HKObjectType calorieGoal];
  }
  v6 = ;
  [(CHASActivitySetupViewController *)self _fetchMostRecentDailyGoalSampleForQuantityType:v6 completion:v5];
}

- (void)_fetchMostRecentDailyExerciseGoalSampleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[HKObjectType exerciseGoal];
  [(CHASActivitySetupViewController *)self _fetchMostRecentDailyGoalSampleForQuantityType:v5 completion:v4];
}

- (void)_fetchMostRecentDailyStandGoalSampleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[HKObjectType standGoal];
  [(CHASActivitySetupViewController *)self _fetchMostRecentDailyGoalSampleForQuantityType:v5 completion:v4];
}

- (void)_fetchMostRecentDailyGoalSampleForQuantityType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
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
    v17[2] = sub_C72C;
    v17[3] = &unk_359A8;
    v18 = v6;
    v19 = v7;
    v16 = [v14 initWithSampleType:v18 predicate:v13 limit:1 sortDescriptors:v15 resultsHandler:v17];

    [(HKHealthStore *)self->_healthStore executeQuery:v16];
  }
}

- (void)_fetchMostRecentGoalSchedulesWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:HKSampleSortIdentifierStartDate ascending:0];
    v6 = +[HKObjectType activityGoalScheduleType];
    v7 = [HKSampleQuery alloc];
    v17 = v5;
    v8 = [NSArray arrayWithObjects:&v17 count:1];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_C970;
    v14 = &unk_359A8;
    v15 = v6;
    v16 = v4;
    v9 = v6;
    v10 = [v7 initWithSampleType:v9 predicate:0 limit:0 sortDescriptors:v8 resultsHandler:&v11];

    [(HKHealthStore *)self->_healthStore executeQuery:v10, v11, v12, v13, v14];
  }
}

- (void)_setGoalSchedules:(id)a3
{
  objc_storeStrong(&self->_goalSchedules, a3);
  v5 = a3;
  self->_hasMoveGoalSchedule = 0;
  self->_hasExerciseGoalSchedule = 0;
  self->_hasStandGoalSchedule = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_CAC0;
  v6[3] = &unk_359D0;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];
}

- (void)_updateGoalSchedule
{
  v3 = [(GoalDaysModel *)self->_goalDaysModel goalDays];
  v4 = [HKActivityGoalSchedule scheduleFrom:v3 goalType:[(GoalDaysModel *)self->_goalDaysModel goalType]];

  if (!v4)
  {
    goto LABEL_9;
  }

  goalSchedules = self->_goalSchedules;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_CC94;
  v9[3] = &unk_35870;
  v6 = v4;
  v10 = v6;
  v7 = [(NSArray *)goalSchedules hk_firstObjectPassingTest:v9];
  if (!v7)
  {
    goto LABEL_5;
  }

  if (![(CHASActivitySetupViewController *)self _isGoalSchedule:v7 theSameAs:v6])
  {
    [(HKHealthStore *)self->_healthStore deleteObject:v7 withCompletion:&stru_359F0];
LABEL_5:
    [(HKHealthStore *)self->_healthStore saveObject:v6 withCompletion:&stru_35A10];
  }

  v8 = [v6 goalType];
  if (v8 <= 3)
  {
    self->OBTableWelcomeController_opaque[*off_35A48[v8]] = 1;
  }

  [(CHASActivitySetupViewController *)self tappedContinue:0];

LABEL_9:
}

- (BOOL)_isGoalSchedule:(id)a3 theSameAs:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 goalType];
  if (v7 != [v6 goalType])
  {
    goto LABEL_37;
  }

  v8 = [v5 mondayGoal];
  v9 = [v6 mondayGoal];
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    v11 = [v6 mondayGoal];
    if (!v11)
    {
      goto LABEL_36;
    }

    v12 = v11;
    v13 = [v5 mondayGoal];
    v14 = [v6 mondayGoal];
    v15 = [v13 isEqual:v14];

    if (!v15)
    {
      goto LABEL_37;
    }
  }

  v8 = [v5 tuesdayGoal];
  v16 = [v6 tuesdayGoal];
  v10 = v16;
  if (v8 == v16)
  {
  }

  else
  {
    v17 = [v6 tuesdayGoal];
    if (!v17)
    {
      goto LABEL_36;
    }

    v18 = v17;
    v19 = [v5 tuesdayGoal];
    v20 = [v6 tuesdayGoal];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  v8 = [v5 wednesdayGoal];
  v22 = [v6 wednesdayGoal];
  v10 = v22;
  if (v8 == v22)
  {
  }

  else
  {
    v23 = [v6 wednesdayGoal];
    if (!v23)
    {
      goto LABEL_36;
    }

    v24 = v23;
    v25 = [v5 wednesdayGoal];
    v26 = [v6 wednesdayGoal];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_37;
    }
  }

  v8 = [v5 thursdayGoal];
  v28 = [v6 thursdayGoal];
  v10 = v28;
  if (v8 == v28)
  {
  }

  else
  {
    v29 = [v6 thursdayGoal];
    if (!v29)
    {
      goto LABEL_36;
    }

    v30 = v29;
    v31 = [v5 thursdayGoal];
    v32 = [v6 thursdayGoal];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_37;
    }
  }

  v8 = [v5 fridayGoal];
  v34 = [v6 fridayGoal];
  v10 = v34;
  if (v8 == v34)
  {
  }

  else
  {
    v35 = [v6 fridayGoal];
    if (!v35)
    {
      goto LABEL_36;
    }

    v36 = v35;
    v37 = [v5 fridayGoal];
    v38 = [v6 fridayGoal];
    v39 = [v37 isEqual:v38];

    if (!v39)
    {
      goto LABEL_37;
    }
  }

  v8 = [v5 saturdayGoal];
  v40 = [v6 saturdayGoal];
  v10 = v40;
  if (v8 == v40)
  {

    goto LABEL_32;
  }

  v41 = [v6 saturdayGoal];
  if (!v41)
  {
LABEL_36:

    goto LABEL_37;
  }

  v42 = v41;
  v43 = [v5 saturdayGoal];
  v44 = [v6 saturdayGoal];
  v45 = [v43 isEqual:v44];

  if (!v45)
  {
    goto LABEL_37;
  }

LABEL_32:
  v8 = [v5 sundayGoal];
  v46 = [v6 sundayGoal];
  v10 = v46;
  if (v8 == v46)
  {

LABEL_40:
    v52 = 1;
    goto LABEL_38;
  }

  v47 = [v6 sundayGoal];
  if (!v47)
  {
    goto LABEL_36;
  }

  v48 = v47;
  v49 = [v5 sundayGoal];
  v50 = [v6 sundayGoal];
  v51 = [v49 isEqual:v50];

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
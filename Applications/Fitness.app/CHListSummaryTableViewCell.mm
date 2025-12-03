@interface CHListSummaryTableViewCell
+ (BOOL)mostRecentWorkout:(id)workout supportsMetric:(unint64_t)metric;
+ (double)heightForWorkoutActivityTypeKey:(id)key statistics:(id)statistics;
- (CHListSummaryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSArray)stackedLabels;
- (void)_layoutLabels;
- (void)_updateUI;
- (void)_updateUIForMindfulnessSessions;
- (void)_updateUIForWorkout;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setMindfulnessSessionsStatistics:(id)statistics formattingManager:(id)manager;
- (void)setWorkoutStatistics:(id)statistics activityTypeKey:(id)key formattingManager:(id)manager;
@end

@implementation CHListSummaryTableViewCell

+ (double)heightForWorkoutActivityTypeKey:(id)key statistics:(id)statistics
{
  statisticsCopy = statistics;
  activityType = [key activityType];
  if (activityType == _HKWorkoutActivityTypeNone)
  {
    v7 = 124.0;
  }

  else
  {
    v8 = objc_opt_class();
    mostRecentWorkout = [statisticsCopy mostRecentWorkout];
    v10 = [v8 mostRecentWorkout:mostRecentWorkout supportsMetric:1];

    v11 = objc_opt_class();
    mostRecentWorkout2 = [statisticsCopy mostRecentWorkout];
    LOBYTE(v11) = [v11 mostRecentWorkout:mostRecentWorkout2 supportsMetric:8];

    v13 = 146.0;
    if (v11)
    {
      v13 = 168.0;
    }

    if (v10)
    {
      v7 = v13;
    }

    else
    {
      v7 = 124.0;
    }
  }

  return v7;
}

- (CHListSummaryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v48.receiver = self;
  v48.super_class = CHListSummaryTableViewCell;
  v4 = [(CHListSummaryTableViewCell *)&v48 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor systemBackgroundColor];
    [(CHListSummaryTableViewCell *)v4 setBackgroundColor:v5];

    v4->_summaryType = 0;
    v4->_isForAllWorkouts = 0;
    v6 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    totalHeaderLabel = v4->_totalHeaderLabel;
    v4->_totalHeaderLabel = v10;

    v12 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_totalHeaderLabel setTextColor:v12];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"WORKOUT_MONTH_HEADER_TOTAL" value:&stru_1008680E8 table:@"Localizable"];
    [(UILabel *)v4->_totalHeaderLabel setText:v14];

    contentView = [(CHListSummaryTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_totalHeaderLabel];

    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    averageHeaderLabel = v4->_averageHeaderLabel;
    v4->_averageHeaderLabel = v16;

    v18 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_averageHeaderLabel setTextColor:v18];

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"WORKOUT_MONTH_HEADER_AVERAGE" value:&stru_1008680E8 table:@"Localizable"];
    [(UILabel *)v4->_averageHeaderLabel setText:v20];

    contentView2 = [(CHListSummaryTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_averageHeaderLabel];

    height = [[_CHWorkoutSummaryTabbedLabelContainer alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    numberOfWorkoutsLabel = v4->_numberOfWorkoutsLabel;
    v4->_numberOfWorkoutsLabel = height;

    v24 = +[UIColor secondaryLabelColor];
    [(_CHWorkoutSummaryTabbedLabelContainer *)v4->_numberOfWorkoutsLabel setTextColor:v24];

    contentView3 = [(CHListSummaryTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_numberOfWorkoutsLabel];

    height2 = [[_CHWorkoutSummaryTabbedLabelContainer alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    activeEnergyLabel = v4->_activeEnergyLabel;
    v4->_activeEnergyLabel = height2;

    v28 = +[ARUIMetricColors energyColors];
    nonGradientTextColor = [v28 nonGradientTextColor];
    [(_CHWorkoutSummaryTabbedLabelContainer *)v4->_activeEnergyLabel setTextColor:nonGradientTextColor];

    contentView4 = [(CHListSummaryTableViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_activeEnergyLabel];

    height3 = [[_CHWorkoutSummaryTabbedLabelContainer alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    durationLabel = v4->_durationLabel;
    v4->_durationLabel = height3;

    v33 = +[ARUIMetricColors elapsedTimeColors];
    nonGradientTextColor2 = [v33 nonGradientTextColor];
    [(_CHWorkoutSummaryTabbedLabelContainer *)v4->_durationLabel setTextColor:nonGradientTextColor2];

    contentView5 = [(CHListSummaryTableViewCell *)v4 contentView];
    [contentView5 addSubview:v4->_durationLabel];

    height4 = [[_CHWorkoutSummaryTabbedLabelContainer alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    distanceLabel = v4->_distanceLabel;
    v4->_distanceLabel = height4;

    v38 = +[ARUIMetricColors distanceColors];
    nonGradientTextColor3 = [v38 nonGradientTextColor];
    [(_CHWorkoutSummaryTabbedLabelContainer *)v4->_distanceLabel setTextColor:nonGradientTextColor3];

    contentView6 = [(CHListSummaryTableViewCell *)v4 contentView];
    [contentView6 addSubview:v4->_distanceLabel];

    height5 = [[_CHWorkoutSummaryTabbedLabelContainer alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    paceLabel = v4->_paceLabel;
    v4->_paceLabel = height5;

    v43 = +[ARUIMetricColors paceColors];
    nonGradientTextColor4 = [v43 nonGradientTextColor];
    [(_CHWorkoutSummaryTabbedLabelContainer *)v4->_paceLabel setTextColor:nonGradientTextColor4];

    contentView7 = [(CHListSummaryTableViewCell *)v4 contentView];
    [contentView7 addSubview:v4->_paceLabel];

    v46 = +[NSNotificationCenter defaultCenter];
    [v46 addObserver:v4 selector:"_updateUI" name:kFIUIFitnessUnitPreferencesDidChangeNotification object:0];
  }

  return v4;
}

- (void)setWorkoutStatistics:(id)statistics activityTypeKey:(id)key formattingManager:(id)manager
{
  managerCopy = manager;
  keyCopy = key;
  statisticsCopy = statistics;
  [(CHListSummaryTableViewCell *)self setSummaryType:0];
  [(CHListSummaryTableViewCell *)self setWorkoutStatistics:statisticsCopy];

  [(CHListSummaryTableViewCell *)self setMindfulnessSessionsStatistics:0];
  [(CHListSummaryTableViewCell *)self setActivityTypeKey:keyCopy];

  [(CHListSummaryTableViewCell *)self setFormattingManager:managerCopy];

  [(CHListSummaryTableViewCell *)self _updateUI];
}

- (void)setMindfulnessSessionsStatistics:(id)statistics formattingManager:(id)manager
{
  managerCopy = manager;
  statisticsCopy = statistics;
  [(CHListSummaryTableViewCell *)self setSummaryType:1];
  [(CHListSummaryTableViewCell *)self setWorkoutStatistics:0];
  [(CHListSummaryTableViewCell *)self setMindfulnessSessionsStatistics:statisticsCopy];

  v8 = +[CHWorkoutTypeKey emptyKey];
  [(CHListSummaryTableViewCell *)self setActivityTypeKey:v8];

  [(CHListSummaryTableViewCell *)self setFormattingManager:managerCopy];

  [(CHListSummaryTableViewCell *)self _updateUI];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CHListSummaryTableViewCell;
  [(CHListSummaryTableViewCell *)&v4 prepareForReuse];
  [(CHListSummaryTableViewCell *)self _setShouldHaveFullLengthBottomSeparator:1];
  stackedLabels = [(CHListSummaryTableViewCell *)self stackedLabels];
  [stackedLabels makeObjectsPerformSelector:"setText:" withObject:0];
}

- (NSArray)stackedLabels
{
  activeEnergyLabel = self->_activeEnergyLabel;
  v6[0] = self->_numberOfWorkoutsLabel;
  v6[1] = activeEnergyLabel;
  distanceLabel = self->_distanceLabel;
  v6[2] = self->_durationLabel;
  v6[3] = distanceLabel;
  v6[4] = self->_paceLabel;
  v4 = [NSArray arrayWithObjects:v6 count:5];

  return v4;
}

- (void)_updateUI
{
  summaryType = [(CHListSummaryTableViewCell *)self summaryType];
  if (summaryType == 1)
  {

    [(CHListSummaryTableViewCell *)self _updateUIForMindfulnessSessions];
  }

  else if (!summaryType)
  {

    [(CHListSummaryTableViewCell *)self _updateUIForWorkout];
  }
}

- (void)_updateUIForWorkout
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"WORKOUT_MONTH_SUMMARY_WORKOUTS_TITLE" value:&stru_1008680E8 table:@"Localizable"];

  [(UILabel *)self->_totalHeaderLabel setHidden:0];
  [(UILabel *)self->_averageHeaderLabel setHidden:0];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_activeEnergyLabel setHidden:0];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_paceLabel setHidden:1];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_distanceLabel setHidden:1];
  if ([(CHWorkoutTypeKey *)self->_activityTypeKey activityType]== 37)
  {
    v5 = @"WORKOUT_MONTH_SUMMARY_WORKOUTS_RUNS";
  }

  else if ([(CHWorkoutTypeKey *)self->_activityTypeKey activityType]== 52)
  {
    v5 = @"WORKOUT_MONTH_SUMMARY_WORKOUTS_WALKS";
  }

  else if ([(CHWorkoutTypeKey *)self->_activityTypeKey activityType]== 24)
  {
    v5 = @"WORKOUT_MONTH_SUMMARY_WORKOUTS_HIKES";
  }

  else
  {
    if ([(CHWorkoutTypeKey *)self->_activityTypeKey activityType]!= 13)
    {
      goto LABEL_10;
    }

    v5 = @"WORKOUT_MONTH_SUMMARY_WORKOUTS_RIDES";
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:v5 value:&stru_1008680E8 table:@"Localizable"];

  v4 = v7;
LABEL_10:
  if (self->_isForAllWorkouts)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = objc_opt_class();
    mostRecentWorkout = [(FIUIWorkoutStatistics *)self->_workoutStatistics mostRecentWorkout];
    v8 = [v10 mostRecentWorkout:mostRecentWorkout supportsMetric:1];

    v12 = objc_opt_class();
    mostRecentWorkout2 = [(FIUIWorkoutStatistics *)self->_workoutStatistics mostRecentWorkout];
    v9 = [v12 mostRecentWorkout:mostRecentWorkout2 supportsMetric:8];
  }

  activityType = [(CHWorkoutTypeKey *)self->_activityTypeKey activityType];
  isIndoor = [(CHWorkoutTypeKey *)self->_activityTypeKey isIndoor];
  v66 = HKMetadataKeySwimmingLocationType;
  v16 = [NSNumber numberWithInteger:[(CHWorkoutTypeKey *)self->_activityTypeKey swimLocationType]];
  v67 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v18 = [FIUIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:activityType isIndoor:isIndoor metadata:v17];

  v19 = FIUIDistanceTypeForActivityType();
  if (v8)
  {
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_distanceLabel setHidden:0];
    workoutStatistics = [(CHListSummaryTableViewCell *)self workoutStatistics];
    formattingManager = [(CHListSummaryTableViewCell *)self formattingManager];
    v64 = [workoutStatistics formattedDistanceWithFormattingManager:formattingManager distanceType:v19 amountType:0];

    workoutStatistics2 = [(CHListSummaryTableViewCell *)self workoutStatistics];
    formattingManager2 = [(CHListSummaryTableViewCell *)self formattingManager];
    v65 = [workoutStatistics2 formattedDistanceWithFormattingManager:formattingManager2 distanceType:v19 amountType:1];
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v24 = v4;
  if (v9)
  {
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_paceLabel setHidden:0];
    workoutStatistics3 = [(CHListSummaryTableViewCell *)self workoutStatistics];
    formattingManager3 = [(CHListSummaryTableViewCell *)self formattingManager];
    v63 = [workoutStatistics3 formattedPaceWithFormattingManager:formattingManager3 distanceType:v19];

    v27 = FIUIPaceFormatForWorkoutActivityType();
    v28 = +[NSBundle mainBundle];
    v29 = v28;
    if (v27 == 4)
    {
      v30 = @"WORKOUT_MONTH_SUMMARY_AVG_SPEED_TITLE";
    }

    else
    {
      v30 = @"WORKOUT_MONTH_SUMMARY_AVG_PACE_TITLE";
    }

    v31 = [v28 localizedStringForKey:v30 value:&stru_1008680E8 table:@"Localizable"];
  }

  else
  {
    v63 = 0;
    v31 = 0;
  }

  if ([(CHWorkoutTypeKey *)self->_activityTypeKey activityType]== 84 && ![(CHWorkoutTypeKey *)self->_activityTypeKey isIndoor])
  {
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_activeEnergyLabel setHidden:1];
    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"WORKOUT_UNDERWATER" value:&stru_1008680E8 table:@"Localizable"];

    v24 = v33;
  }

  if (self->_isForAllWorkouts)
  {
    v34 = +[NSBundle mainBundle];
    v35 = [v34 localizedStringForKey:@"WORKOUT_MONTH_SUMMARY_WORKOUTS_TITLE" value:&stru_1008680E8 table:@"Localizable"];

    [(UILabel *)self->_totalHeaderLabel setHidden:0];
    [(UILabel *)self->_averageHeaderLabel setHidden:0];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_activeEnergyLabel setHidden:0];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_paceLabel setHidden:1];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_distanceLabel setHidden:1];
    v24 = v35;
  }

  workoutStatistics4 = [(CHListSummaryTableViewCell *)self workoutStatistics];
  simpleWorkoutCount = [workoutStatistics4 simpleWorkoutCount];

  v38 = v24;
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_numberOfWorkoutsLabel setTitleText:v24];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_numberOfWorkoutsLabel setTotalText:simpleWorkoutCount];
  v39 = +[NSBundle mainBundle];
  v40 = [v39 localizedStringForKey:@"WORKOUT_MONTH_SUMMARY_TIME_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_durationLabel setTitleText:v40];

  workoutStatistics5 = [(CHListSummaryTableViewCell *)self workoutStatistics];
  formattingManager4 = [(CHListSummaryTableViewCell *)self formattingManager];
  v43 = [workoutStatistics5 formattedTotalWorkoutDurationWithFormattingManager:formattingManager4];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_durationLabel setTotalText:v43];

  workoutStatistics6 = [(CHListSummaryTableViewCell *)self workoutStatistics];
  formattingManager5 = [(CHListSummaryTableViewCell *)self formattingManager];
  v46 = [workoutStatistics6 formattedAverageWorkoutDurationWithFormattingManager:formattingManager5];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_durationLabel setAverageText:v46];

  workoutStatistics7 = [(CHListSummaryTableViewCell *)self workoutStatistics];
  totalActiveEnergyBurn = [workoutStatistics7 totalActiveEnergyBurn];
  unitManager = [(FIUIFormattingManager *)self->_formattingManager unitManager];
  userActiveEnergyBurnedUnit = [unitManager userActiveEnergyBurnedUnit];
  [totalActiveEnergyBurn doubleValueForUnit:userActiveEnergyBurnedUnit];
  v52 = v51;

  if (v52 <= 2.22044605e-16)
  {
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_activeEnergyLabel setHidden:1];
  }

  else
  {
    formattingManager6 = [(CHListSummaryTableViewCell *)self formattingManager];
    localizedLongActiveEnergyUnitString = [formattingManager6 localizedLongActiveEnergyUnitString];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_activeEnergyLabel setTitleText:localizedLongActiveEnergyUnitString];

    workoutStatistics8 = [(CHListSummaryTableViewCell *)self workoutStatistics];
    formattingManager7 = [(CHListSummaryTableViewCell *)self formattingManager];
    v57 = [workoutStatistics8 formattedTotalActiveEnergyBurnWithFormattingManager:formattingManager7];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_activeEnergyLabel setTotalText:v57];

    workoutStatistics9 = [(CHListSummaryTableViewCell *)self workoutStatistics];
    formattingManager8 = [(CHListSummaryTableViewCell *)self formattingManager];
    v60 = [workoutStatistics9 formattedAverageActiveEnergyBurnWithFormattingManager:formattingManager8];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_activeEnergyLabel setAverageText:v60];
  }

  if (([(_CHWorkoutSummaryTabbedLabelContainer *)self->_distanceLabel isHidden]& 1) == 0)
  {
    v61 = +[NSBundle mainBundle];
    v62 = [v61 localizedStringForKey:@"WORKOUT_MONTH_SUMMARY_DISTANCE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_distanceLabel setTitleText:v62];

    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_distanceLabel setTotalText:v64];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_distanceLabel setAverageText:v65];
  }

  if (([(_CHWorkoutSummaryTabbedLabelContainer *)self->_paceLabel isHidden]& 1) == 0)
  {
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_paceLabel setTitleText:v31];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_paceLabel setTotalText:0];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_paceLabel setAverageText:v63];
  }

  [(CHListSummaryTableViewCell *)self setNeedsLayout];
}

+ (BOOL)mostRecentWorkout:(id)workout supportsMetric:(unint64_t)metric
{
  workoutCopy = workout;
  fiui_activityType = [workoutCopy fiui_activityType];
  if ([fiui_activityType bridge_isDownhillSnowSport])
  {
    v7 = 1;
  }

  else
  {
    identifier = [fiui_activityType identifier];
    if (metric == 8 && identifier == 46)
    {
      v7 = 0;
    }

    else
    {
      v9 = [[FIUIWorkoutDefaultMetricsProvider alloc] initWithMetricsVersion:+[FIUIWorkoutDefaultMetricsProvider metricsVersionForWorkout:](FIUIWorkoutDefaultMetricsProvider activityType:"metricsVersionForWorkout:" activityMoveMode:workoutCopy) deviceSupportsElevationMetrics:fiui_activityType deviceSupportsGroundElevationMetrics:{objc_msgSend(workoutCopy, "_activityMoveMode"), 1, 1}];
      v7 = [v9 isMetricTypeSupported:metric isMachineWorkout:0 activityType:fiui_activityType];
    }
  }

  return v7;
}

- (void)_updateUIForMindfulnessSessions
{
  [(UILabel *)self->_totalHeaderLabel setHidden:1];
  [(UILabel *)self->_averageHeaderLabel setHidden:1];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"MINDFULNESS_SESSIONS" value:&stru_1008680E8 table:@"Localizable"];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_numberOfWorkoutsLabel setTitleText:v4];

  mindfulnessSessionsStatistics = [(CHListSummaryTableViewCell *)self mindfulnessSessionsStatistics];
  formattedSessionCount = [mindfulnessSessionsStatistics formattedSessionCount];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_numberOfWorkoutsLabel setTotalText:formattedSessionCount];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"TOTAL_TIME" value:&stru_1008680E8 table:@"Localizable"];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_durationLabel setTitleText:v8];

  mindfulnessSessionsStatistics2 = [(CHListSummaryTableViewCell *)self mindfulnessSessionsStatistics];
  formattingManager = [(CHListSummaryTableViewCell *)self formattingManager];
  v10 = [mindfulnessSessionsStatistics2 formattedTotalDurationWithFormattingManager:formattingManager];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_durationLabel setTotalText:v10];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CHListSummaryTableViewCell;
  [(CHListSummaryTableViewCell *)&v5 layoutSubviews];
  [(CHListSummaryTableViewCell *)self _layoutLabels];
  if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:0]== 1)
  {
    averageHeaderLabel = self->_averageHeaderLabel;
    v6[0] = self->_totalHeaderLabel;
    v6[1] = averageHeaderLabel;
    v4 = [NSArray arrayWithObjects:v6 count:2];
    [(CHListSummaryTableViewCell *)self ch_transformViewsForRightToLeftLanguages:v4];
  }
}

- (void)_layoutLabels
{
  if (([(UILabel *)self->_totalHeaderLabel isHidden]& 1) != 0)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v7 = 20.0;
  }

  else
  {
    [(UILabel *)self->_totalHeaderLabel sizeToFit];
    font = [(UILabel *)self->_totalHeaderLabel font];
    [font _scaledValueForValue:10.0];

    v9 = +[UIScreen mainScreen];
    UIRoundToScreenScale();
    y = v10;

    x = sub_10013A9A8() + 16.0 + 4.0;
    [(UILabel *)self->_totalHeaderLabel bounds];
    width = CGRectGetWidth(v55);
    [(UILabel *)self->_totalHeaderLabel bounds];
    height = CGRectGetHeight(v56);
    v7 = 28.0;
  }

  [(UILabel *)self->_totalHeaderLabel setFrame:x, y, width, height];
  [(UILabel *)self->_averageHeaderLabel sizeToFit];
  font2 = [(UILabel *)self->_averageHeaderLabel font];
  [font2 _scaledValueForValue:10.0];

  v12 = +[UIScreen mainScreen];
  UIRoundToScreenScale();
  v14 = v13;

  v15 = sub_10013A9A8() * 2.0 + 16.0 + 4.0;
  [(UILabel *)self->_averageHeaderLabel bounds];
  v16 = CGRectGetWidth(v57);
  [(UILabel *)self->_averageHeaderLabel bounds];
  [(UILabel *)self->_averageHeaderLabel setFrame:v15, v14, v16, CGRectGetHeight(v58)];
  v17 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
  [v17 _scaledValueForValue:v7];
  v18 = +[UIScreen mainScreen];
  UIRoundToScreenScale();
  v20 = v19;

  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_numberOfWorkoutsLabel sizeToFit];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_numberOfWorkoutsLabel frame];
  v22 = v21;
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_numberOfWorkoutsLabel frame];
  v24 = v23;
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_numberOfWorkoutsLabel _firstBaselineOffsetFromTop];
  v26 = v20 - v25;
  [(UILabel *)self->_totalHeaderLabel frame];
  v27 = v26 + CGRectGetMinY(v59);
  [(UILabel *)self->_totalHeaderLabel _firstBaselineOffsetFromTop];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_numberOfWorkoutsLabel setFrame:16.0, v27 + v28, v22, v24];
  [v17 _scaledValueForValue:20.0];
  v29 = +[UIScreen mainScreen];
  UIRoundToScreenScale();
  v31 = v30;

  activeEnergyLabel = self->_activeEnergyLabel;
  v54[0] = self->_durationLabel;
  v54[1] = activeEnergyLabel;
  paceLabel = self->_paceLabel;
  v54[2] = self->_distanceLabel;
  v54[3] = paceLabel;
  v34 = [NSArray arrayWithObjects:v54 count:4];
  v35 = self->_numberOfWorkoutsLabel;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v36 = v34;
  v37 = [v36 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v50;
    do
    {
      v40 = 0;
      v41 = v35;
      do
      {
        if (*v50 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v42 = *(*(&v49 + 1) + 8 * v40);
        [v42 sizeToFit];
        [v42 frame];
        v43 = CGRectGetWidth(v60);
        [v42 frame];
        v44 = CGRectGetHeight(v61);
        [v42 _firstBaselineOffsetFromTop];
        v46 = v31 - v45;
        [(_CHWorkoutSummaryTabbedLabelContainer *)v41 frame];
        v47 = v46 + CGRectGetMinY(v62);
        [(_CHWorkoutSummaryTabbedLabelContainer *)v41 _firstBaselineOffsetFromTop];
        [v42 setFrame:{16.0, v47 + v48, v43, v44}];
        v35 = v42;

        v40 = v40 + 1;
        v41 = v35;
      }

      while (v38 != v40);
      v38 = [v36 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v38);
  }
}

@end
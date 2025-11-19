@interface CHListSummaryTableViewCell
+ (BOOL)mostRecentWorkout:(id)a3 supportsMetric:(unint64_t)a4;
+ (double)heightForWorkoutActivityTypeKey:(id)a3 statistics:(id)a4;
- (CHListSummaryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSArray)stackedLabels;
- (void)_layoutLabels;
- (void)_updateUI;
- (void)_updateUIForMindfulnessSessions;
- (void)_updateUIForWorkout;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setMindfulnessSessionsStatistics:(id)a3 formattingManager:(id)a4;
- (void)setWorkoutStatistics:(id)a3 activityTypeKey:(id)a4 formattingManager:(id)a5;
@end

@implementation CHListSummaryTableViewCell

+ (double)heightForWorkoutActivityTypeKey:(id)a3 statistics:(id)a4
{
  v5 = a4;
  v6 = [a3 activityType];
  if (v6 == _HKWorkoutActivityTypeNone)
  {
    v7 = 124.0;
  }

  else
  {
    v8 = objc_opt_class();
    v9 = [v5 mostRecentWorkout];
    v10 = [v8 mostRecentWorkout:v9 supportsMetric:1];

    v11 = objc_opt_class();
    v12 = [v5 mostRecentWorkout];
    LOBYTE(v11) = [v11 mostRecentWorkout:v12 supportsMetric:8];

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

- (CHListSummaryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v48.receiver = self;
  v48.super_class = CHListSummaryTableViewCell;
  v4 = [(CHListSummaryTableViewCell *)&v48 initWithStyle:a3 reuseIdentifier:a4];
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

    v15 = [(CHListSummaryTableViewCell *)v4 contentView];
    [v15 addSubview:v4->_totalHeaderLabel];

    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    averageHeaderLabel = v4->_averageHeaderLabel;
    v4->_averageHeaderLabel = v16;

    v18 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_averageHeaderLabel setTextColor:v18];

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"WORKOUT_MONTH_HEADER_AVERAGE" value:&stru_1008680E8 table:@"Localizable"];
    [(UILabel *)v4->_averageHeaderLabel setText:v20];

    v21 = [(CHListSummaryTableViewCell *)v4 contentView];
    [v21 addSubview:v4->_averageHeaderLabel];

    v22 = [[_CHWorkoutSummaryTabbedLabelContainer alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    numberOfWorkoutsLabel = v4->_numberOfWorkoutsLabel;
    v4->_numberOfWorkoutsLabel = v22;

    v24 = +[UIColor secondaryLabelColor];
    [(_CHWorkoutSummaryTabbedLabelContainer *)v4->_numberOfWorkoutsLabel setTextColor:v24];

    v25 = [(CHListSummaryTableViewCell *)v4 contentView];
    [v25 addSubview:v4->_numberOfWorkoutsLabel];

    v26 = [[_CHWorkoutSummaryTabbedLabelContainer alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    activeEnergyLabel = v4->_activeEnergyLabel;
    v4->_activeEnergyLabel = v26;

    v28 = +[ARUIMetricColors energyColors];
    v29 = [v28 nonGradientTextColor];
    [(_CHWorkoutSummaryTabbedLabelContainer *)v4->_activeEnergyLabel setTextColor:v29];

    v30 = [(CHListSummaryTableViewCell *)v4 contentView];
    [v30 addSubview:v4->_activeEnergyLabel];

    v31 = [[_CHWorkoutSummaryTabbedLabelContainer alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    durationLabel = v4->_durationLabel;
    v4->_durationLabel = v31;

    v33 = +[ARUIMetricColors elapsedTimeColors];
    v34 = [v33 nonGradientTextColor];
    [(_CHWorkoutSummaryTabbedLabelContainer *)v4->_durationLabel setTextColor:v34];

    v35 = [(CHListSummaryTableViewCell *)v4 contentView];
    [v35 addSubview:v4->_durationLabel];

    v36 = [[_CHWorkoutSummaryTabbedLabelContainer alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    distanceLabel = v4->_distanceLabel;
    v4->_distanceLabel = v36;

    v38 = +[ARUIMetricColors distanceColors];
    v39 = [v38 nonGradientTextColor];
    [(_CHWorkoutSummaryTabbedLabelContainer *)v4->_distanceLabel setTextColor:v39];

    v40 = [(CHListSummaryTableViewCell *)v4 contentView];
    [v40 addSubview:v4->_distanceLabel];

    v41 = [[_CHWorkoutSummaryTabbedLabelContainer alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    paceLabel = v4->_paceLabel;
    v4->_paceLabel = v41;

    v43 = +[ARUIMetricColors paceColors];
    v44 = [v43 nonGradientTextColor];
    [(_CHWorkoutSummaryTabbedLabelContainer *)v4->_paceLabel setTextColor:v44];

    v45 = [(CHListSummaryTableViewCell *)v4 contentView];
    [v45 addSubview:v4->_paceLabel];

    v46 = +[NSNotificationCenter defaultCenter];
    [v46 addObserver:v4 selector:"_updateUI" name:kFIUIFitnessUnitPreferencesDidChangeNotification object:0];
  }

  return v4;
}

- (void)setWorkoutStatistics:(id)a3 activityTypeKey:(id)a4 formattingManager:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(CHListSummaryTableViewCell *)self setSummaryType:0];
  [(CHListSummaryTableViewCell *)self setWorkoutStatistics:v10];

  [(CHListSummaryTableViewCell *)self setMindfulnessSessionsStatistics:0];
  [(CHListSummaryTableViewCell *)self setActivityTypeKey:v9];

  [(CHListSummaryTableViewCell *)self setFormattingManager:v8];

  [(CHListSummaryTableViewCell *)self _updateUI];
}

- (void)setMindfulnessSessionsStatistics:(id)a3 formattingManager:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CHListSummaryTableViewCell *)self setSummaryType:1];
  [(CHListSummaryTableViewCell *)self setWorkoutStatistics:0];
  [(CHListSummaryTableViewCell *)self setMindfulnessSessionsStatistics:v7];

  v8 = +[CHWorkoutTypeKey emptyKey];
  [(CHListSummaryTableViewCell *)self setActivityTypeKey:v8];

  [(CHListSummaryTableViewCell *)self setFormattingManager:v6];

  [(CHListSummaryTableViewCell *)self _updateUI];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CHListSummaryTableViewCell;
  [(CHListSummaryTableViewCell *)&v4 prepareForReuse];
  [(CHListSummaryTableViewCell *)self _setShouldHaveFullLengthBottomSeparator:1];
  v3 = [(CHListSummaryTableViewCell *)self stackedLabels];
  [v3 makeObjectsPerformSelector:"setText:" withObject:0];
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
  v3 = [(CHListSummaryTableViewCell *)self summaryType];
  if (v3 == 1)
  {

    [(CHListSummaryTableViewCell *)self _updateUIForMindfulnessSessions];
  }

  else if (!v3)
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
    v11 = [(FIUIWorkoutStatistics *)self->_workoutStatistics mostRecentWorkout];
    v8 = [v10 mostRecentWorkout:v11 supportsMetric:1];

    v12 = objc_opt_class();
    v13 = [(FIUIWorkoutStatistics *)self->_workoutStatistics mostRecentWorkout];
    v9 = [v12 mostRecentWorkout:v13 supportsMetric:8];
  }

  v14 = [(CHWorkoutTypeKey *)self->_activityTypeKey activityType];
  v15 = [(CHWorkoutTypeKey *)self->_activityTypeKey isIndoor];
  v66 = HKMetadataKeySwimmingLocationType;
  v16 = [NSNumber numberWithInteger:[(CHWorkoutTypeKey *)self->_activityTypeKey swimLocationType]];
  v67 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v18 = [FIUIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:v14 isIndoor:v15 metadata:v17];

  v19 = FIUIDistanceTypeForActivityType();
  if (v8)
  {
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_distanceLabel setHidden:0];
    v20 = [(CHListSummaryTableViewCell *)self workoutStatistics];
    v21 = [(CHListSummaryTableViewCell *)self formattingManager];
    v64 = [v20 formattedDistanceWithFormattingManager:v21 distanceType:v19 amountType:0];

    v22 = [(CHListSummaryTableViewCell *)self workoutStatistics];
    v23 = [(CHListSummaryTableViewCell *)self formattingManager];
    v65 = [v22 formattedDistanceWithFormattingManager:v23 distanceType:v19 amountType:1];
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
    v25 = [(CHListSummaryTableViewCell *)self workoutStatistics];
    v26 = [(CHListSummaryTableViewCell *)self formattingManager];
    v63 = [v25 formattedPaceWithFormattingManager:v26 distanceType:v19];

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

  v36 = [(CHListSummaryTableViewCell *)self workoutStatistics];
  v37 = [v36 simpleWorkoutCount];

  v38 = v24;
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_numberOfWorkoutsLabel setTitleText:v24];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_numberOfWorkoutsLabel setTotalText:v37];
  v39 = +[NSBundle mainBundle];
  v40 = [v39 localizedStringForKey:@"WORKOUT_MONTH_SUMMARY_TIME_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_durationLabel setTitleText:v40];

  v41 = [(CHListSummaryTableViewCell *)self workoutStatistics];
  v42 = [(CHListSummaryTableViewCell *)self formattingManager];
  v43 = [v41 formattedTotalWorkoutDurationWithFormattingManager:v42];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_durationLabel setTotalText:v43];

  v44 = [(CHListSummaryTableViewCell *)self workoutStatistics];
  v45 = [(CHListSummaryTableViewCell *)self formattingManager];
  v46 = [v44 formattedAverageWorkoutDurationWithFormattingManager:v45];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_durationLabel setAverageText:v46];

  v47 = [(CHListSummaryTableViewCell *)self workoutStatistics];
  v48 = [v47 totalActiveEnergyBurn];
  v49 = [(FIUIFormattingManager *)self->_formattingManager unitManager];
  v50 = [v49 userActiveEnergyBurnedUnit];
  [v48 doubleValueForUnit:v50];
  v52 = v51;

  if (v52 <= 2.22044605e-16)
  {
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_activeEnergyLabel setHidden:1];
  }

  else
  {
    v53 = [(CHListSummaryTableViewCell *)self formattingManager];
    v54 = [v53 localizedLongActiveEnergyUnitString];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_activeEnergyLabel setTitleText:v54];

    v55 = [(CHListSummaryTableViewCell *)self workoutStatistics];
    v56 = [(CHListSummaryTableViewCell *)self formattingManager];
    v57 = [v55 formattedTotalActiveEnergyBurnWithFormattingManager:v56];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self->_activeEnergyLabel setTotalText:v57];

    v58 = [(CHListSummaryTableViewCell *)self workoutStatistics];
    v59 = [(CHListSummaryTableViewCell *)self formattingManager];
    v60 = [v58 formattedAverageActiveEnergyBurnWithFormattingManager:v59];
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

+ (BOOL)mostRecentWorkout:(id)a3 supportsMetric:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 fiui_activityType];
  if ([v6 bridge_isDownhillSnowSport])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v6 identifier];
    if (a4 == 8 && v8 == 46)
    {
      v7 = 0;
    }

    else
    {
      v9 = [[FIUIWorkoutDefaultMetricsProvider alloc] initWithMetricsVersion:+[FIUIWorkoutDefaultMetricsProvider metricsVersionForWorkout:](FIUIWorkoutDefaultMetricsProvider activityType:"metricsVersionForWorkout:" activityMoveMode:v5) deviceSupportsElevationMetrics:v6 deviceSupportsGroundElevationMetrics:{objc_msgSend(v5, "_activityMoveMode"), 1, 1}];
      v7 = [v9 isMetricTypeSupported:a4 isMachineWorkout:0 activityType:v6];
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

  v5 = [(CHListSummaryTableViewCell *)self mindfulnessSessionsStatistics];
  v6 = [v5 formattedSessionCount];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_numberOfWorkoutsLabel setTotalText:v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"TOTAL_TIME" value:&stru_1008680E8 table:@"Localizable"];
  [(_CHWorkoutSummaryTabbedLabelContainer *)self->_durationLabel setTitleText:v8];

  v11 = [(CHListSummaryTableViewCell *)self mindfulnessSessionsStatistics];
  v9 = [(CHListSummaryTableViewCell *)self formattingManager];
  v10 = [v11 formattedTotalDurationWithFormattingManager:v9];
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
    v8 = [(UILabel *)self->_totalHeaderLabel font];
    [v8 _scaledValueForValue:10.0];

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
  v11 = [(UILabel *)self->_averageHeaderLabel font];
  [v11 _scaledValueForValue:10.0];

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
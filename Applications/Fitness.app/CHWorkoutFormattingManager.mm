@interface CHWorkoutFormattingManager
- (BOOL)hasAnyNonZeroStatisticForDiscreteQuantityTypes:(id)types orCumulativeQuantityTypes:(id)quantityTypes forWorkout:(id)workout orWorkoutActivity:(id)activity;
- (BOOL)hasAverageCadenceForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)hasAverageCyclingPowerForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)hasAverageCyclingSpeedForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)hasAveragePowerForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)hasConnectedGymVendorIconForWorkout:(id)workout;
- (BOOL)hasDistanceForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)hasElevationAscendedDataForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)hasFlightsClimbedForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)hasWeatherConditionForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)isIndoorCyclingForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)nonZeroMetadataExistsInWorkout:(id)workout orWorkoutActivity:(id)activity withKey:(id)key;
- (BOOL)shouldShowDistanceForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)supportsDistanceForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)supportsDownhillRunsCountForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)supportsElevationAscendedForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)supportsElevationDescendedForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)supportsPaceForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)workoutHasGoalCompletionEvent:(id)event;
- (BOOL)workoutWasInDayTime:(id)time;
- (CHWorkoutFormattingManager)initWithFitnessUIFormattingManager:(id)manager healthStore:(id)store;
- (_NSRange)_unitRangeWithString:(id)string valueRange:(_NSRange)range;
- (double)averageCyclingPowerForWorkout:(id)workout workoutActivity:(id)activity;
- (double)averageCyclingSpeedForWorkout:(id)workout workoutActivity:(id)activity;
- (id)_activeEnergyInfoForWorkout:(id)workout;
- (id)_distanceInfoForWorkout:(id)workout;
- (id)_durationInfoForWorkout:(id)workout;
- (id)_formattedDateForDetailWithWorkout:(id)workout;
- (id)_formattedDateForListViewWithWorkout:(id)workout;
- (id)_formattedDescriptionForDayViewWithWorkout:(id)workout;
- (id)_formattedDescriptionForListViewWithWorkout:(id)workout;
- (id)_formattedGoalForDetailViewWithWorkout:(id)workout;
- (id)_formattedValueString:(id)string withUnitString:(id)unitString paceFormat:(int64_t)format context:(id)context color:(id)color;
- (id)_goalCompletionEventsForWorkout:(id)workout;
- (id)_goalStringForWorkout:(id)workout outValue:(id *)value;
- (id)_maxDepthInfoForDive:(id)dive;
- (id)_paceUnitForActivityType:(id)type paceFormat:(int64_t)format;
- (id)_ringImageForWorkout:(id)workout context:(id)context;
- (id)_shareIconForWorkout:(id)workout routeImage:(id)image;
- (id)_shareValueForWorkout:(id)workout;
- (id)_underwaterTimeInfoForDive:(id)dive;
- (id)_workoutTypeInfoForWorkout:(id)workout;
- (id)airQualityIndexForWorkout:(id)workout workoutActivity:(id)activity;
- (id)defaultCircularRingImageForContext:(id)context;
- (id)fakeLocationDataForWorkout:(id)workout;
- (id)formattedActiveEnergyForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedAverageCadenceForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedAveragePowerForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedAveragePowerStringFor:(double)for context:(id)context;
- (id)formattedAverageSwimPaceWithDuration:(id)duration context:(id)context;
- (id)formattedCount:(int64_t)count color:(id)color context:(id)context;
- (id)formattedDateForWorkout:(id)workout context:(id)context;
- (id)formattedDescriptionForWorkout:(id)workout context:(id)context;
- (id)formattedDistanceByStrokeStyle:(id)style isPoolSwim:(BOOL)swim context:(id)context;
- (id)formattedDistanceForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedDownhillRunsCount:(int64_t)count context:(id)context;
- (id)formattedDurationForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedElapsedTimeForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedElevation:(id)elevation context:(id)context;
- (id)formattedElevationGainForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedEnergyBurn:(id)burn context:(id)context;
- (id)formattedFlightsClimbedForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedGoalCompletedDurationForWorkout:(id)workout context:(id)context;
- (id)formattedGoalForWorkout:(id)workout context:(id)context;
- (id)formattedGroundElevationGainForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedHeartRate:(id)rate context:(id)context;
- (id)formattedLapCountForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedPaceOrSpeedForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedPaceOrSpeedWithDistance:(id)distance overDuration:(double)duration activityType:(id)type context:(id)context;
- (id)formattedPoolLengthForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedPowerStringFor:(double)for;
- (id)formattedRacePaceOrSpeedForWorkout:(id)workout metersPerSecond:(id)second context:(id)context;
- (id)formattedRaceTimeForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedStepCountForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedSwimmingStrokeTypeForWorkout:(id)workout context:(id)context;
- (id)formattedTimeRangeForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedTotalEnergyForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)formattedTypeForWorkout:(id)workout workoutActivity:(id)activity context:(id)context;
- (id)locationForWorkout:(id)workout workoutActivity:(id)activity;
- (id)shareImageForWorkout:(id)workout routeImage:(id)image;
- (id)shareTextForWorkout:(id)workout;
- (id)timeZoneForWorkout:(id)workout;
- (id)waterTemperatureForWorkout:(id)workout workoutActivity:(id)activity;
- (id)weatherHumidityForWorkout:(id)workout workoutActivity:(id)activity;
- (id)weatherTemperatureForWorkout:(id)workout workoutActivity:(id)activity;
- (void)_fetchIconForConnectedGymWorkout:(id)workout context:(id)context completion:(id)completion;
- (void)_fetchIconForFirstPartyWorkout:(id)workout context:(id)context completion:(id)completion;
- (void)_fetchIconForHiddenAppWorkout:(id)workout context:(id)context completion:(id)completion;
- (void)_fetchIconForThirdPartyWorkout:(id)workout context:(id)context completion:(id)completion;
- (void)_fetchPhoneIconForWorkout:(id)workout context:(id)context completion:(id)completion;
- (void)_fetchRingImageForWorkout:(id)workout context:(id)context completion:(id)completion;
- (void)_fetchWatchIconForWorkout:(id)workout context:(id)context completion:(id)completion;
- (void)_formattedDistanceStringForWorkout:(id)workout distanceString:(id *)string unitString:(id *)unitString;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)fetchIconImageForWorkout:(id)workout context:(id)context completion:(id)completion;
- (void)updateHiddenAppBundleIds;
@end

@implementation CHWorkoutFormattingManager

- (void)updateHiddenAppBundleIds
{
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = +[APApplication hiddenApplications];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        bundleIdentifier = [*(*(&v12 + 1) + 8 * v8) bundleIdentifier];
        [v3 addObject:bundleIdentifier];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  hiddenApplicationBundleIds = self->_hiddenApplicationBundleIds;
  self->_hiddenApplicationBundleIds = v10;
}

- (CHWorkoutFormattingManager)initWithFitnessUIFormattingManager:(id)manager healthStore:(id)store
{
  managerCopy = manager;
  storeCopy = store;
  v21.receiver = self;
  v21.super_class = CHWorkoutFormattingManager;
  v9 = [(CHWorkoutFormattingManager *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_formattingManager, manager);
    objc_storeStrong(&v10->_healthStore, store);
    v11 = [[ARUIRingsViewRenderer alloc] initWithMaximumRingCount:1];
    renderer = v10->_renderer;
    v10->_renderer = v11;

    v13 = [CHWorkoutDataCalculator alloc];
    unitManager = [managerCopy unitManager];
    v15 = [(CHWorkoutDataCalculator *)v13 initWithHealthStore:storeCopy unitManager:unitManager];
    dataCalculator = v10->_dataCalculator;
    v10->_dataCalculator = v15;

    v17 = +[NSUserDefaults standardUserDefaults];
    -[CHWorkoutDataCalculator setShouldUseFakeSegmentMarkers:](v10->_dataCalculator, "setShouldUseFakeSegmentMarkers:", [v17 BOOLForKey:@"fakeSegments"]);

    v18 = +[APSubject subjectMonitorRegistry];
    v19 = [v18 addMonitor:v10];

    [(CHWorkoutFormattingManager *)v10 updateHiddenAppBundleIds];
  }

  return v10;
}

- (id)fakeLocationDataForWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 pathForResource:@"CityRunFakedLocationCoordinates" ofType:@"json"];

  v6 = [NSData dataWithContentsOfFile:v5];
  if (v6)
  {
    v23 = 0;
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:4 error:&v23];
    v8 = v23;
    v9 = [v7 count];
    endDate = [workoutCopy endDate];
    startDate = [workoutCopy startDate];
    [endDate timeIntervalSinceDate:startDate];
    v13 = v12 / v9;

    v14 = objc_alloc_init(NSMutableArray);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000AABB8;
    v19[3] = &unk_10083A7B0;
    v20 = workoutCopy;
    v22 = v13;
    v15 = v14;
    v21 = v15;
    [v7 enumerateObjectsUsingBlock:v19];
    v16 = v21;
    v17 = v15;
  }

  else
  {
    v17 = &__NSArray0__struct;
  }

  return v17;
}

- (BOOL)workoutHasGoalCompletionEvent:(id)event
{
  v3 = [(CHWorkoutFormattingManager *)self _goalCompletionEventsForWorkout:event];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_goalCompletionEventsForWorkout:(id)workout
{
  workoutEvents = [workout workoutEvents];
  v4 = [NSPredicate predicateWithBlock:&stru_10083A7F0];
  v5 = [workoutEvents filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)formattedDescriptionForWorkout:(id)workout context:(id)context
{
  workoutCopy = workout;
  contextCopy = context;
  if ([contextCopy isEqualToString:@"DayViewDisplayContext"])
  {
    v8 = [(CHWorkoutFormattingManager *)self _formattedDescriptionForDayViewWithWorkout:workoutCopy];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  if ([contextCopy isEqualToString:@"WorkoutsListDisplayContext"])
  {
    v8 = [(CHWorkoutFormattingManager *)self _formattedDescriptionForListViewWithWorkout:workoutCopy];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)_formattedDescriptionForDayViewWithWorkout:(id)workout
{
  workoutCopy = workout;
  if ([workoutCopy workoutActivityType] == 84)
  {
    formattingManager = self->_formattingManager;
    [workoutCopy duration];
    v6 = [(FIUIFormattingManager *)formattingManager stringWithDuration:3 durationFormat:?];
    v7 = FILocalizedActivityNameWithWorkout();

    v8 = [NSString stringWithFormat:@"%@ %@", v6, v7];

    v9 = [[NSMutableAttributedString alloc] initWithString:v8];
  }

  else
  {
    v6 = [CHWorkoutDisplayContext displayContextWithName:@"DayViewDisplayContext"];
    v10 = self->_formattingManager;
    v25 = &stru_1008680E8;
    v11 = [(FIUIFormattingManager *)v10 localizedGoalDescriptionForWorkout:workoutCopy withValue:&v25 appendActivityType:1];

    v12 = v25;
    v9 = [[NSMutableAttributedString alloc] initWithString:v11];
    v13 = [v11 length];
    v14 = +[UIColor labelColor];
    [v9 addAttribute:NSForegroundColorAttributeName value:v14 range:{0, v13}];

    goalDescriptionFont = [v6 goalDescriptionFont];
    [v9 addAttribute:NSFontAttributeName value:goalDescriptionFont range:{0, v13}];

    if ([(__CFString *)v12 length])
    {
      v16 = [v11 rangeOfString:v12];
      v18 = v17;
      valueFont = [v6 valueFont];
      [v9 addAttribute:NSFontAttributeName value:valueFont range:{v16, v18}];

      v20 = [(CHWorkoutFormattingManager *)self _unitRangeWithString:v11 valueRange:v16, v18];
      v22 = v21;
      goalDescriptionAttributes = [v6 goalDescriptionAttributes];
      [v9 addAttributes:goalDescriptionAttributes range:{v20, v22}];
    }
  }

  return v9;
}

- (id)_formattedDescriptionForListViewWithWorkout:(id)workout
{
  workoutCopy = workout;
  v26 = [CHWorkoutDisplayContext displayContextWithName:@"WorkoutsListDisplayContext"];
  dateFont = [v26 dateFont];
  [dateFont pointSize];
  v22 = [UIFont systemFontOfSize:?];

  dateFont2 = [v26 dateFont];
  v5 = +[CHListAndDetailViewDateFormatter listViewDateFormatter];
  v24 = workoutCopy;
  startDate = [workoutCopy startDate];
  v21 = [v5 stringFromDate:startDate];

  fiui_activityType = [workoutCopy fiui_activityType];
  [fiui_activityType effectiveTypeIdentifier];
  [fiui_activityType swimmingLocationType];
  [fiui_activityType isIndoor];
  v8 = FILocalizedNameForActivityType();
  v9 = [@" " stringByAppendingString:v8];
  v20 = [v9 stringByAppendingString:@"\n"];

  v10 = [NSMutableAttributedString alloc];
  v29[0] = NSFontAttributeName;
  v29[1] = NSForegroundColorAttributeName;
  v30[0] = v22;
  v11 = +[UIColor labelColor];
  v30[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v13 = [v10 initWithString:v21 attributes:v12];

  v14 = [NSAttributedString alloc];
  v27[1] = NSForegroundColorAttributeName;
  v28[0] = dateFont2;
  v27[0] = NSFontAttributeName;
  v15 = +[UIColor labelColor];
  v28[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  v17 = [v14 initWithString:v20 attributes:v16];
  [v13 appendAttributedString:v17];

  v18 = [(CHWorkoutFormattingManager *)self formattedGoalForWorkout:v24 context:@"WorkoutsListDisplayContext"];

  [v13 appendAttributedString:v18];

  return v13;
}

- (id)formattedDateForWorkout:(id)workout context:(id)context
{
  workoutCopy = workout;
  if ([context isEqualToString:@"WorkoutsListDisplayContext"])
  {
    [(CHWorkoutFormattingManager *)self _formattedDateForListViewWithWorkout:workoutCopy];
  }

  else
  {
    [(CHWorkoutFormattingManager *)self _formattedDateForDetailWithWorkout:workoutCopy];
  }
  v7 = ;

  return v7;
}

- (id)_formattedDateForDetailWithWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = [CHWorkoutDisplayContext displayContextWithName:@"WorkoutDetailDisplayContext"];
  v5 = +[CHListAndDetailViewDateFormatter detailViewDateFormatter];
  startDate = [workoutCopy startDate];

  v7 = [v5 stringFromDate:startDate];

  v8 = [NSAttributedString alloc];
  v13 = NSFontAttributeName;
  dateFont = [v4 dateFont];
  v14 = dateFont;
  v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [v8 initWithString:v7 attributes:v10];

  return v11;
}

- (id)_formattedDateForListViewWithWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = [CHWorkoutDisplayContext displayContextWithName:@"WorkoutsListDisplayContext"];
  startDate = [workoutCopy startDate];

  dateFont = [v4 dateFont];
  v7 = [CHListAndDetailViewDateFormatter formattedListStringForDate:startDate font:dateFont];

  return v7;
}

- (id)formattedTypeForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  v9 = [CHWorkoutDisplayContext displayContextWithName:context];
  if (activityCopy)
  {
    workoutConfiguration = [activityCopy workoutConfiguration];
    [workoutConfiguration activityType];

    workoutConfiguration2 = [activityCopy workoutConfiguration];
    [workoutConfiguration2 swimmingLocationType];

    workoutConfiguration3 = [activityCopy workoutConfiguration];
    [workoutConfiguration3 locationType];

    v13 = FILocalizedNameForActivityType();
  }

  else
  {
    metadata = [workoutCopy metadata];
    v13 = [metadata objectForKeyedSubscript:HKMetadataKeyWorkoutBrandName];

    if (![v13 length])
    {
      fiui_activityType = [workoutCopy fiui_activityType];
      [fiui_activityType effectiveTypeIdentifier];
      [fiui_activityType swimmingLocationType];
      [fiui_activityType isIndoor];
      v16 = FILocalizedNameForActivityType();

      v13 = v16;
    }
  }

  v17 = objc_alloc_init(NSMutableParagraphStyle);
  LODWORD(v18) = 1.0;
  [v17 setHyphenationFactor:v18];
  workoutTypeFont = [v9 workoutTypeFont];
  v20 = [NSAttributedString alloc];
  v26[0] = workoutTypeFont;
  v25[0] = NSFontAttributeName;
  v25[1] = NSForegroundColorAttributeName;
  v21 = +[UIColor labelColor];
  v25[2] = NSParagraphStyleAttributeName;
  v26[1] = v21;
  v26[2] = v17;
  v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
  v23 = [v20 initWithString:v13 attributes:v22];

  return v23;
}

- (id)formattedSwimmingStrokeTypeForWorkout:(id)workout context:(id)context
{
  contextCopy = context;
  if ([workout fiui_strokeStyle])
  {
    v6 = [CHWorkoutDisplayContext displayContextWithName:contextCopy];
    v7 = FILocalizedStrokeStyleName();
    dateFont = [v6 dateFont];
    v9 = [NSAttributedString alloc];
    v14[0] = NSFontAttributeName;
    v14[1] = NSForegroundColorAttributeName;
    v15[0] = dateFont;
    v10 = +[UIColor labelColor];
    v15[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v12 = [v9 initWithString:v7 attributes:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)formattedDistanceByStrokeStyle:(id)style isPoolSwim:(BOOL)swim context:(id)context
{
  swimCopy = swim;
  styleCopy = style;
  v30 = [CHWorkoutDisplayContext displayContextWithName:context];
  allKeys = [styleCopy allKeys];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000ABE6C;
  v41[3] = &unk_10083A818;
  v34 = styleCopy;
  v42 = v34;
  v8 = [allKeys sortedArrayUsingComparator:v41];

  v9 = objc_alloc_init(NSMutableString);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = v8;
  v35 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v35)
  {
    v31 = *v38;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(v10);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [v34 objectForKeyedSubscript:v12];
        [v12 integerValue];
        v14 = FILocalizedStrokeStyleName();
        if (swimCopy)
        {
          formattingManager = [(CHWorkoutFormattingManager *)self formattingManager];
          v16 = +[HKUnit meterUnit];
          [v13 doubleValueForUnit:v16];
          [formattingManager localizedStringWithDistanceInMeters:3 distanceType:1 unitStyle:5 roundingMode:?];
        }

        else
        {
          v36 = 0;
          formattingManager = [(CHWorkoutFormattingManager *)self formattingManager];
          v16 = +[HKUnit meterUnit];
          [v13 doubleValueForUnit:v16];
          [formattingManager localizedNaturalScaleStringWithDistanceInMeters:4 distanceType:1 unitStyle:&v36 usedUnit:?];
        }
        v17 = ;

        v18 = +[NSBundle mainBundle];
        v19 = [v18 localizedStringForKey:@"SWIMMING_STROKE_STYLE_DISTANCE_%@_%@" value:&stru_1008680E8 table:@"Localizable"];
        v20 = [NSString stringWithFormat:v19, v14, v17];

        firstObject = [v10 firstObject];
        LOBYTE(v19) = [v12 isEqualToNumber:firstObject];

        if ((v19 & 1) == 0)
        {
          [v9 appendString:@"\n"];
        }

        [v9 appendString:v20];
      }

      v35 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v35);
  }

  v22 = v10;

  dateFont = [v30 dateFont];
  v24 = [NSAttributedString alloc];
  v25 = [[NSString alloc] initWithString:v9];
  v43[0] = NSFontAttributeName;
  v43[1] = NSForegroundColorAttributeName;
  v44[0] = dateFont;
  v26 = +[UIColor labelColor];
  v44[1] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
  v28 = [v24 initWithString:v25 attributes:v27];

  return v28;
}

- (id)formattedTimeRangeForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  v25 = [CHWorkoutDisplayContext displayContextWithName:context];
  dateFont = [v25 dateFont];
  v10 = +[UIColor secondaryLabelColor];
  if (activityCopy)
  {
    v11 = activityCopy;
  }

  else
  {
    v11 = workoutCopy;
  }

  startDate = [v11 startDate];
  v13 = +[CHListAndDetailViewDateFormatter timeDateFormatter];
  v14 = [v13 stringFromDate:startDate];

  v24 = workoutCopy;
  if (activityCopy)
  {
    v15 = activityCopy;
  }

  else
  {
    v15 = workoutCopy;
  }

  endDate = [v15 endDate];
  v17 = +[CHListAndDetailViewDateFormatter timeDateFormatter];
  v18 = [v17 stringFromDate:endDate];

  v19 = [NSString stringWithFormat:@"%@–%@", v14, v18];
  v20 = [NSAttributedString alloc];
  v26[0] = NSFontAttributeName;
  v26[1] = NSForegroundColorAttributeName;
  v27[0] = dateFont;
  v27[1] = v10;
  v21 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v22 = [v20 initWithString:v19 attributes:v21];

  return v22;
}

- (id)defaultCircularRingImageForContext:(id)context
{
  v3 = [CHWorkoutDisplayContext displayContextWithName:context];
  [v3 ringDiameter];
  v4 = FIUICircularWorkoutGradientImage();

  return v4;
}

- (id)_ringImageForWorkout:(id)workout context:(id)context
{
  workoutCopy = workout;
  contextCopy = context;
  [workoutCopy fiui_completionFactor];
  v9 = v8;
  v10 = [ARUIMetricColors metricColorsForWorkout:workoutCopy];
  if ([workoutCopy shouldUseCircularGradientImage])
  {
    gradientDarkColor = [v10 gradientDarkColor];
    gradientLightColor = [v10 gradientLightColor];
    [contextCopy ringDiameter];
    v13 = FIUICircularGradientImage();

    goto LABEL_6;
  }

  if (![workoutCopy _goalType])
  {
    v19 = +[CHWorkoutDisplayContext _dayViewDisplayContext];
    v20 = v19;
    if (v19 == contextCopy)
    {
    }

    else
    {
      v21 = +[CHWorkoutDisplayContext _friendDetailDisplayContext];

      if (v21 != contextCopy)
      {
        [contextCopy ringDiameter];
        v17 = FIUICircularWorkoutGradientImage();
        goto LABEL_5;
      }
    }
  }

  [contextCopy ringDiameter];
  v15 = v14;
  [contextCopy ringThickness];
  v17 = [RingViewFactory workoutRingWithPercent:v10 colors:self->_renderer diameter:v9 thickness:v15 renderer:v16];
LABEL_5:
  v13 = v17;
LABEL_6:

  return v13;
}

- (void)_fetchRingImageForWorkout:(id)workout context:(id)context completion:(id)completion
{
  completionCopy = completion;
  v9 = [(CHWorkoutFormattingManager *)self _ringImageForWorkout:workout context:context];
  completionCopy[2](completionCopy, v9);
}

- (void)_fetchWatchIconForWorkout:(id)workout context:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  workoutCopy = workout;
  v10 = objc_alloc_init(CHWatchIconParameters);
  sourceRevision = [workoutCopy sourceRevision];

  source = [sourceRevision source];
  bundleIdentifier = [source bundleIdentifier];
  [(CHIconParameters *)v10 setBundleID:bundleIdentifier];

  [contextCopy appIconWidth];
  v15 = v14;

  [(CHIconParameters *)v10 setPreferredAppStoreIconWidth:v15];
  [(CHWatchIconParameters *)v10 setIconVariant2x:32771];
  [(CHWatchIconParameters *)v10 setIconVariant3x:32771];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AC4C8;
  v17[3] = &unk_10083A840;
  v18 = completionCopy;
  v16 = completionCopy;
  [CHIconCache fetchWatchIconWithParameters:v10 completion:v17];
}

- (void)_fetchPhoneIconForWorkout:(id)workout context:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  workoutCopy = workout;
  v10 = objc_alloc_init(CHPhoneIconParameters);
  sourceRevision = [workoutCopy sourceRevision];

  source = [sourceRevision source];
  bundleIdentifier = [source bundleIdentifier];
  [(CHIconParameters *)v10 setBundleID:bundleIdentifier];

  [contextCopy appIconWidth];
  v15 = v14;

  [(CHIconParameters *)v10 setPreferredAppStoreIconWidth:v15];
  [(CHPhoneIconParameters *)v10 setAppIconFormat:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AC630;
  v17[3] = &unk_10083A840;
  v18 = completionCopy;
  v16 = completionCopy;
  [CHIconCache fetchPhoneIconWithParameters:v10 completion:v17];
}

- (void)_fetchIconForConnectedGymWorkout:(id)workout context:(id)context completion:(id)completion
{
  workoutCopy = workout;
  completionCopy = completion;
  v9 = [CHWorkoutDisplayContext displayContextWithName:context];
  device = [workoutCopy device];
  [v9 gymKitIconWidth];
  v11 = [HKUIConnectedGymIconUtilties iconForConnectedGymDevice:device preferredIconWidth:?];

  if (!v11)
  {
    v11 = [(CHWorkoutFormattingManager *)self _ringImageForWorkout:workoutCopy context:v9];
  }

  completionCopy[2](completionCopy, v11);
}

- (void)_fetchIconForFirstPartyWorkout:(id)workout context:(id)context completion:(id)completion
{
  completionCopy = completion;
  workoutCopy = workout;
  v10 = [CHWorkoutDisplayContext displayContextWithName:context];
  [(CHWorkoutFormattingManager *)self _fetchRingImageForWorkout:workoutCopy context:v10 completion:completionCopy];
}

- (void)_fetchIconForHiddenAppWorkout:(id)workout context:(id)context completion:(id)completion
{
  completionCopy = completion;
  v7 = [CHWorkoutDisplayContext displayContextWithName:context];
  v8 = objc_opt_new();
  [v8 setBundleID:@"com.apple.Health"];
  [v7 appIconWidth];
  [v8 setPreferredAppStoreIconWidth:?];
  [v8 setAppIconFormat:2];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AC8D0;
  v10[3] = &unk_10083A840;
  v11 = completionCopy;
  v9 = completionCopy;
  [CHIconCache fetchPhoneIconWithParameters:v8 completion:v10];
}

- (void)_fetchIconForThirdPartyWorkout:(id)workout context:(id)context completion:(id)completion
{
  completionCopy = completion;
  workoutCopy = workout;
  v10 = [CHWorkoutDisplayContext displayContextWithName:context];
  if ([workoutCopy _isWatchWorkout])
  {
    [(CHWorkoutFormattingManager *)self _fetchWatchIconForWorkout:workoutCopy context:v10 completion:completionCopy];
  }

  else
  {
    [(CHWorkoutFormattingManager *)self _fetchPhoneIconForWorkout:workoutCopy context:v10 completion:completionCopy];
  }
}

- (BOOL)hasConnectedGymVendorIconForWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = [CHWorkoutDisplayContext displayContextWithName:@"WorkoutDetailDisplayContext"];
  device = [workoutCopy device];

  [v4 gymKitIconWidth];
  v6 = [HKUIConnectedGymIconUtilties iconForConnectedGymDevice:device preferredIconWidth:?];

  return v6 != 0;
}

- (void)fetchIconImageForWorkout:(id)workout context:(id)context completion:(id)completion
{
  workoutCopy = workout;
  contextCopy = context;
  completionCopy = completion;
  if ([workoutCopy fiui_isConnectedGymWorkout])
  {
    [(CHWorkoutFormattingManager *)self _fetchIconForConnectedGymWorkout:workoutCopy context:contextCopy completion:completionCopy];
  }

  else
  {
    hiddenApplicationBundleIds = self->_hiddenApplicationBundleIds;
    sourceRevision = [workoutCopy sourceRevision];
    source = [sourceRevision source];
    bundleIdentifier = [source bundleIdentifier];
    LODWORD(hiddenApplicationBundleIds) = [(NSArray *)hiddenApplicationBundleIds containsObject:bundleIdentifier];

    if (hiddenApplicationBundleIds)
    {
      _HKInitializeLogging();
      v15 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEBUG))
      {
        sub_10069B414(v15);
      }

      [(CHWorkoutFormattingManager *)self _fetchIconForHiddenAppWorkout:workoutCopy context:contextCopy completion:completionCopy];
    }

    else if ([workoutCopy isFirstPartyWorkout])
    {
      [(CHWorkoutFormattingManager *)self _fetchIconForFirstPartyWorkout:workoutCopy context:contextCopy completion:completionCopy];
    }

    else
    {
      [(CHWorkoutFormattingManager *)self _fetchIconForThirdPartyWorkout:workoutCopy context:contextCopy completion:completionCopy];
    }
  }
}

- (id)_goalStringForWorkout:(id)workout outValue:(id *)value
{
  workoutCopy = workout;
  workoutActivityType = [workoutCopy workoutActivityType];
  formattingManager = self->_formattingManager;
  if (workoutActivityType == 84)
  {
    [(FIUIFormattingManager *)formattingManager localizedGoalDescriptionForDive:workoutCopy outValue:value];
  }

  else
  {
    [(FIUIFormattingManager *)formattingManager localizedGoalDescriptionForWorkout:workoutCopy withValue:value appendActivityType:0];
  }
  v9 = ;

  return v9;
}

- (id)formattedGoalForWorkout:(id)workout context:(id)context
{
  workoutCopy = workout;
  contextCopy = context;
  if ([contextCopy isEqualToString:@"WorkoutDetailDisplayContext"])
  {
    v8 = [(CHWorkoutFormattingManager *)self _formattedGoalForDetailViewWithWorkout:workoutCopy];
  }

  else
  {
    v9 = [CHWorkoutDisplayContext displayContextWithName:contextCopy];
    v36 = &stru_1008680E8;
    v10 = [(CHWorkoutFormattingManager *)self _goalStringForWorkout:workoutCopy outValue:&v36];
    v11 = v36;
    v12 = [NSMutableAttributedString alloc];
    localizedUppercaseString = [v10 localizedUppercaseString];
    v8 = [v12 initWithString:localizedUppercaseString];

    v14 = [v10 length];
    v35 = [ARUIMetricColors metricColorsForWorkout:workoutCopy];
    nonGradientTextColor = [v35 nonGradientTextColor];
    if ([contextCopy isEqualToString:@"DayViewDisplayContext"])
    {
      v16 = +[UIColor labelColor];

      nonGradientTextColor = v16;
    }

    v34 = nonGradientTextColor;
    [v8 addAttribute:NSForegroundColorAttributeName value:nonGradientTextColor range:{0, v14}];
    goalDescriptionFont = [v9 goalDescriptionFont];
    [v8 addAttribute:NSFontAttributeName value:goalDescriptionFont range:{0, v14}];

    if ([(__CFString *)v11 length])
    {
      v18 = [v10 rangeOfString:v11];
      v20 = v19;
      [v9 valueFont];
      v33 = contextCopy;
      v21 = v11;
      v22 = workoutCopy;
      v23 = v10;
      selfCopy = self;
      v26 = v25 = v9;
      [v8 addAttribute:NSFontAttributeName value:v26 range:{v18, v20}];

      v9 = v25;
      v27 = selfCopy;
      v10 = v23;
      workoutCopy = v22;
      v11 = v21;
      contextCopy = v33;
      v28 = [(CHWorkoutFormattingManager *)v27 _unitRangeWithString:v10 valueRange:v18, v20];
      v30 = v29;
      goalDescriptionAttributes = [v9 goalDescriptionAttributes];
      [v8 addAttributes:goalDescriptionAttributes range:{v28, v30}];
    }
  }

  return v8;
}

- (id)_formattedGoalForDetailViewWithWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = +[CHWorkoutDisplayContext _workoutDetailDisplayContext];
  dateFont = [v4 dateFont];
  v6 = +[ARUIMetricColors keyColors];
  nonGradientTextColor = [v6 nonGradientTextColor];

  [workoutCopy fiui_completionFactor];
  v9 = [NSNumber numberWithDouble:round(v8 * 100.0) / 100.0];
  v10 = [FIUIFormattingManager percentStringWithNumber:v9];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"WORKOUT_COMPLETION_FORMAT_%@" value:&stru_1008680E8 table:@"Localizable"];
  v13 = [NSString localizedStringWithFormat:v12, v10];

  v14 = [ARUIMetricColors metricColorsForWorkout:workoutCopy];

  nonGradientTextColor2 = [v14 nonGradientTextColor];

  v16 = [NSAttributedString alloc];
  v20[0] = NSFontAttributeName;
  v20[1] = NSForegroundColorAttributeName;
  v21[0] = dateFont;
  v21[1] = nonGradientTextColor2;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18 = [v16 initWithString:v13 attributes:v17];

  return v18;
}

- (id)formattedHeartRate:(id)rate context:(id)context
{
  rateCopy = rate;
  v6 = [CHWorkoutDisplayContext displayContextWithName:context];
  if ([rateCopy integerValue] < 1)
  {
    v24 = [NSAttributedString alloc];
    v22 = +[NSBundle mainBundle];
    v8 = [v22 localizedStringForKey:@"WORKOUT_EMPTY_VALUE" value:&stru_1008680E8 table:@"Localizable"];
    v29[0] = NSFontAttributeName;
    valueFont = [v6 valueFont];
    v30[0] = valueFont;
    v29[1] = NSForegroundColorAttributeName;
    goalDescriptionAttributes = +[ARUIMetricColors heartRateColors];
    nonGradientTextColor = [goalDescriptionAttributes nonGradientTextColor];
    v30[1] = nonGradientTextColor;
    v26 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    v17 = [v24 initWithString:v8 attributes:v26];
  }

  else
  {
    v28 = [NSNumberFormatter localizedStringFromNumber:rateCopy numberStyle:0];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"BPM" value:&stru_1008680E8 table:@"Localizable"];

    unitFormatString = [v6 unitFormatString];
    valueFont = [NSString stringWithValidatedFormat:unitFormatString validFormatSpecifiers:@"%@%@" error:0, v28, v8];

    v11 = [NSMutableAttributedString alloc];
    v31[0] = NSFontAttributeName;
    valueFont2 = [v6 valueFont];
    v32[0] = valueFont2;
    v31[1] = NSForegroundColorAttributeName;
    +[ARUIMetricColors heartRateColors];
    v14 = v13 = rateCopy;
    nonGradientTextColor2 = [v14 nonGradientTextColor];
    v32[1] = nonGradientTextColor2;
    v16 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
    v17 = [v11 initWithString:valueFont attributes:v16];

    v18 = [valueFont rangeOfString:v8];
    v20 = v19;
    goalDescriptionFont = [v6 goalDescriptionFont];
    [v17 addAttribute:NSFontAttributeName value:goalDescriptionFont range:{v18, v20}];

    rateCopy = v13;
    v22 = v28;
    goalDescriptionAttributes = [v6 goalDescriptionAttributes];
    [v17 addAttributes:goalDescriptionAttributes range:{v18, v20}];
  }

  return v17;
}

- (id)formattedEnergyBurn:(id)burn context:(id)context
{
  burnCopy = burn;
  v7 = [CHWorkoutDisplayContext displayContextWithName:context];
  v25 = [(FIUIFormattingManager *)self->_formattingManager localizedStringWithActiveEnergy:burnCopy];

  localizedShortActiveEnergyUnitString = [(FIUIFormattingManager *)self->_formattingManager localizedShortActiveEnergyUnitString];
  localizedUppercaseString = [localizedShortActiveEnergyUnitString localizedUppercaseString];

  unitFormatString = [v7 unitFormatString];
  v24 = localizedUppercaseString;
  v11 = [NSString stringWithValidatedFormat:unitFormatString validFormatSpecifiers:@"%@%@" error:0, v25, localizedUppercaseString];

  v12 = [v11 rangeOfString:localizedUppercaseString];
  v14 = v13;
  v15 = [NSMutableAttributedString alloc];
  v26[0] = NSFontAttributeName;
  valueFont = [v7 valueFont];
  v27[0] = valueFont;
  v26[1] = NSForegroundColorAttributeName;
  v17 = +[ARUIMetricColors energyColors];
  nonGradientTextColor = [v17 nonGradientTextColor];
  v27[1] = nonGradientTextColor;
  v19 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v20 = [v15 initWithString:v11 attributes:v19];

  goalDescriptionFont = [v7 goalDescriptionFont];
  [v20 addAttribute:NSFontAttributeName value:goalDescriptionFont range:{v12, v14}];

  goalDescriptionAttributes = [v7 goalDescriptionAttributes];
  [v20 addAttributes:goalDescriptionAttributes range:{v12, v14}];

  return v20;
}

- (void)_formattedDistanceStringForWorkout:(id)workout distanceString:(id *)string unitString:(id *)unitString
{
  workoutCopy = workout;
  v34 = 0;
  fiui_activityType = [workoutCopy fiui_activityType];
  v10 = FIUIDistanceTypeForActivityType();

  v11 = ARUIRingsViewRenderer_ptr;
  if ([workoutCopy workoutActivityType] == 82)
  {
    v27 = v10;
    stringCopy = string;
    unitStringCopy = unitString;
    v12 = +[HKUnit meterUnit];
    fiui_totalDistance = [HKQuantity quantityWithUnit:v12 doubleValue:0.0];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    workoutActivities = [workoutCopy workoutActivities];
    v15 = [workoutActivities countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        v18 = 0;
        v19 = fiui_totalDistance;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(workoutActivities);
          }

          v20 = *(*(&v30 + 1) + 8 * v18);
          distanceType = [v20 distanceType];
          v22 = [v20 statisticsForType:distanceType];

          sumQuantity = [v22 sumQuantity];
          fiui_totalDistance = [v19 _quantityByAddingQuantity:sumQuantity];

          v18 = v18 + 1;
          v19 = fiui_totalDistance;
        }

        while (v16 != v18);
        v16 = [workoutActivities countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v16);
    }

    string = stringCopy;
    unitString = unitStringCopy;
    v10 = v27;
    v11 = ARUIRingsViewRenderer_ptr;
  }

  else
  {
    fiui_totalDistance = [workoutCopy fiui_totalDistance];
  }

  formattingManager = self->_formattingManager;
  meterUnit = [v11[426] meterUnit];
  [fiui_totalDistance doubleValueForUnit:meterUnit];
  *string = [(FIUIFormattingManager *)formattingManager localizedNaturalScaleStringWithDistanceInMeters:v10 distanceType:0 unitStyle:&v34 usedUnit:?];

  v26 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:v34];
  *unitString = [v26 localizedUppercaseString];
}

- (id)formattedRacePaceOrSpeedForWorkout:(id)workout metersPerSecond:(id)second context:(id)context
{
  contextCopy = context;
  secondCopy = second;
  workoutCopy = workout;
  fiui_activityType = [workoutCopy fiui_activityType];
  v12 = FIUIPaceFormatForWorkoutActivityType();
  v13 = FIUIDistanceTypeForActivityType();
  v14 = +[HKUnit meterUnit];
  [secondCopy doubleValue];
  v16 = v15;

  v17 = [HKQuantity quantityWithUnit:v14 doubleValue:v16];

  v18 = [(FIUIFormattingManager *)self->_formattingManager localizedPaceStringWithDistance:v17 overDuration:v12 paceFormat:v13 distanceType:1.0];
  v19 = [(CHWorkoutFormattingManager *)self _paceUnitForActivityType:fiui_activityType paceFormat:v12];
  LOBYTE(v14) = [workoutCopy didWinRace];

  if (v14)
  {
    +[ARUIMetricColors raceAheadColors];
  }

  else
  {
    +[ARUIMetricColors raceBehindColors];
  }
  v20 = ;
  nonGradientTextColor = [v20 nonGradientTextColor];
  v22 = [(CHWorkoutFormattingManager *)self _formattedValueString:v18 withUnitString:v19 paceFormat:v12 context:contextCopy color:nonGradientTextColor];

  return v22;
}

- (id)formattedGoalCompletedDurationForWorkout:(id)workout context:(id)context
{
  workoutCopy = workout;
  v7 = [CHWorkoutDisplayContext displayContextWithName:context];
  v8 = [(CHWorkoutFormattingManager *)self _goalCompletionEventsForWorkout:workoutCopy];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    [v9 fiui_distanceGoalCompletionTime];
    v11 = v10;

    v12 = [(FIUIFormattingManager *)self->_formattingManager stringWithDuration:2 durationFormat:v11];
    v13 = [NSAttributedString alloc];
    v20[0] = NSFontAttributeName;
    valueFont = [v7 valueFont];
    v21[0] = valueFont;
    v20[1] = NSForegroundColorAttributeName;
    v15 = [ARUIMetricColors metricColorsForWorkout:workoutCopy];
    nonGradientTextColor = [v15 nonGradientTextColor];
    v21[1] = nonGradientTextColor;
    v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    v18 = [v13 initWithString:v12 attributes:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (_NSRange)_unitRangeWithString:(id)string valueRange:(_NSRange)range
{
  v4 = range.location + range.length;
  v5 = [string length] - range.location - range.length;
  v6 = v4;
  result.length = v5;
  result.location = v6;
  return result;
}

- (BOOL)hasAnyNonZeroStatisticForDiscreteQuantityTypes:(id)types orCumulativeQuantityTypes:(id)quantityTypes forWorkout:(id)workout orWorkoutActivity:(id)activity
{
  typesCopy = types;
  quantityTypesCopy = quantityTypes;
  workoutCopy = workout;
  activityCopy = activity;
  if (activityCopy)
  {
    v39 = 0uLL;
    v40 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v13 = typesCopy;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [activityCopy statisticsForType:*(*(&v37 + 1) + 8 * v17)];
        averageQuantity = [v18 averageQuantity];

        if (averageQuantity)
        {
          goto LABEL_36;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v37 objects:v50 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = quantityTypesCopy;
    v20 = [v13 countByEnumeratingWithState:&v33 objects:v49 count:16];
    if (v20)
    {
      v21 = *v34;
LABEL_12:
      v22 = 0;
      while (1)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v13);
        }

        v23 = [activityCopy statisticsForType:{*(*(&v33 + 1) + 8 * v22), v33}];
        averageQuantity = [v23 sumQuantity];

        if (averageQuantity)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v13 countByEnumeratingWithState:&v33 objects:v49 count:16];
          if (v20)
          {
            goto LABEL_12;
          }

          goto LABEL_37;
        }
      }

LABEL_36:
      LOBYTE(v20) = [averageQuantity fiui_isNonzero];
    }
  }

  else
  {
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v13 = typesCopy;
    v24 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v46;
LABEL_21:
      v27 = 0;
      while (1)
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v13);
        }

        v28 = [workoutCopy statisticsForType:*(*(&v45 + 1) + 8 * v27)];
        averageQuantity = [v28 averageQuantity];

        if (averageQuantity)
        {
          goto LABEL_36;
        }

        if (v25 == ++v27)
        {
          v25 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
          if (v25)
          {
            goto LABEL_21;
          }

          break;
        }
      }
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = quantityTypesCopy;
    v20 = [v13 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v20)
    {
      v29 = *v42;
LABEL_29:
      v30 = 0;
      while (1)
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(v13);
        }

        v31 = [workoutCopy statisticsForType:*(*(&v41 + 1) + 8 * v30)];
        averageQuantity = [v31 sumQuantity];

        if (averageQuantity)
        {
          goto LABEL_36;
        }

        if (v20 == ++v30)
        {
          v20 = [v13 countByEnumeratingWithState:&v41 objects:v51 count:16];
          if (v20)
          {
            goto LABEL_29;
          }

          break;
        }
      }
    }
  }

LABEL_37:

  return v20;
}

- (BOOL)nonZeroMetadataExistsInWorkout:(id)workout orWorkoutActivity:(id)activity withKey:(id)key
{
  workoutCopy = workout;
  activityCopy = activity;
  keyCopy = key;
  if (activityCopy)
  {
    metadata = [activityCopy metadata];
    v11 = [metadata objectForKeyedSubscript:keyCopy];
    if (v11)
    {
      metadata2 = [activityCopy metadata];
      v13 = [metadata2 objectForKeyedSubscript:keyCopy];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = activityCopy;
LABEL_8:
        metadata = [v15 metadata];
        v19 = [metadata objectForKeyedSubscript:keyCopy];
        LOBYTE(v11) = [v19 fiui_isNonzero];

        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  else
  {
    metadata = [workoutCopy metadata];
    v11 = [metadata objectForKeyedSubscript:keyCopy];
    if (v11)
    {
      metadata3 = [workoutCopy metadata];
      v17 = [metadata3 objectForKeyedSubscript:keyCopy];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if (v18)
      {
        v15 = workoutCopy;
        goto LABEL_8;
      }

LABEL_10:
      LOBYTE(v11) = 0;
      goto LABEL_11;
    }
  }

LABEL_9:

LABEL_11:
  return v11;
}

- (BOOL)hasAverageCadenceForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  if ([(CHWorkoutFormattingManager *)self nonZeroMetadataExistsInWorkout:workoutCopy orWorkoutActivity:activityCopy withKey:_HKPrivateMetadataKeyWorkoutAverageCadence])
  {
    v8 = 1;
  }

  else
  {
    v9 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingCadence];
    v15 = v9;
    v10 = [NSArray arrayWithObjects:&v15 count:1];
    v11 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierStepCount];
    v14 = v11;
    v12 = [NSArray arrayWithObjects:&v14 count:1];
    v8 = [(CHWorkoutFormattingManager *)self hasAnyNonZeroStatisticForDiscreteQuantityTypes:v10 orCumulativeQuantityTypes:v12 forWorkout:workoutCopy orWorkoutActivity:activityCopy];
  }

  return v8;
}

- (BOOL)hasAveragePowerForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  if ([(CHWorkoutFormattingManager *)self nonZeroMetadataExistsInWorkout:workoutCopy orWorkoutActivity:activityCopy withKey:_HKPrivateMetadataKeyWorkoutAveragePower])
  {
    v8 = 1;
  }

  else
  {
    v9 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningPower];
    v13[0] = v9;
    v10 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingPower];
    v13[1] = v10;
    v11 = [NSArray arrayWithObjects:v13 count:2];
    v8 = [(CHWorkoutFormattingManager *)self hasAnyNonZeroStatisticForDiscreteQuantityTypes:v11 orCumulativeQuantityTypes:&__NSArray0__struct forWorkout:workoutCopy orWorkoutActivity:activityCopy];
  }

  return v8;
}

- (BOOL)hasAverageCyclingPowerForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  fiui_activityType = [activityCopy fiui_activityType];
  v9 = fiui_activityType;
  if (fiui_activityType)
  {
    fiui_activityType2 = fiui_activityType;
  }

  else
  {
    fiui_activityType2 = [workoutCopy fiui_activityType];
  }

  v11 = fiui_activityType2;

  if ([v11 identifier] == 13)
  {
    if ([(CHWorkoutFormattingManager *)self nonZeroMetadataExistsInWorkout:workoutCopy orWorkoutActivity:activityCopy withKey:_HKPrivateMetadataKeyWorkoutAveragePower])
    {
      v12 = 1;
    }

    else
    {
      v13 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingPower];
      v16 = v13;
      v14 = [NSArray arrayWithObjects:&v16 count:1];
      v12 = [(CHWorkoutFormattingManager *)self hasAnyNonZeroStatisticForDiscreteQuantityTypes:v14 orCumulativeQuantityTypes:&__NSArray0__struct forWorkout:workoutCopy orWorkoutActivity:activityCopy];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isIndoorCyclingForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  fiui_activityType = [activity fiui_activityType];
  v7 = fiui_activityType;
  if (fiui_activityType)
  {
    fiui_activityType2 = fiui_activityType;
  }

  else
  {
    fiui_activityType2 = [workoutCopy fiui_activityType];
  }

  v9 = fiui_activityType2;

  if ([v9 identifier] == 13)
  {
    isIndoor = [v9 isIndoor];
  }

  else
  {
    isIndoor = 0;
  }

  return isIndoor;
}

- (BOOL)hasAverageCyclingSpeedForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  fiui_activityType = [activityCopy fiui_activityType];
  v9 = fiui_activityType;
  if (fiui_activityType)
  {
    fiui_activityType2 = fiui_activityType;
  }

  else
  {
    fiui_activityType2 = [workoutCopy fiui_activityType];
  }

  v11 = fiui_activityType2;

  if ([v11 identifier] == 13)
  {
    v12 = [(CHWorkoutFormattingManager *)self nonZeroMetadataExistsInWorkout:workoutCopy orWorkoutActivity:activityCopy withKey:_HKPrivateMetadataKeyWorkoutAveragePace];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)hasDistanceForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  v7 = ARUIRingsViewRenderer_ptr;
  v8 = +[HKUnit meterUnit];
  v9 = [HKQuantity quantityWithUnit:v8 doubleValue:0.0];

  if (activityCopy)
  {
    distanceType = [activityCopy distanceType];
    v11 = [activityCopy statisticsForType:distanceType];

    sumQuantity = [v11 sumQuantity];

LABEL_13:
    v9 = sumQuantity;
    goto LABEL_14;
  }

  if ([workoutCopy workoutActivityType] != 82)
  {
    sumQuantity = [workoutCopy fiui_totalDistance];

    goto LABEL_13;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  workoutActivities = [workoutCopy workoutActivities];
  v14 = [workoutActivities countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      v18 = v9;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(workoutActivities);
        }

        v19 = *(*(&v27 + 1) + 8 * v17);
        distanceType2 = [v19 distanceType];
        v21 = [v19 statisticsForType:distanceType2];

        sumQuantity2 = [v21 sumQuantity];
        v9 = [v18 _quantityByAddingQuantity:sumQuantity2];

        v17 = v17 + 1;
        v18 = v9;
      }

      while (v15 != v17);
      v15 = [workoutActivities countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v7 = ARUIRingsViewRenderer_ptr;
LABEL_14:
  meterUnit = [v7[426] meterUnit];
  [v9 doubleValueForUnit:meterUnit];
  v25 = v24 > 0.0;

  return v25;
}

- (BOOL)hasElevationAscendedDataForWorkout:(id)workout workoutActivity:(id)activity
{
  v6 = _HKPrivateMetadataKeyWorkoutElevationAscended;
  activityCopy = activity;
  workoutCopy = workout;
  LOBYTE(v6) = [(CHWorkoutFormattingManager *)self nonZeroMetadataExistsInWorkout:workoutCopy orWorkoutActivity:activityCopy withKey:v6];
  LOBYTE(self) = [(CHWorkoutFormattingManager *)self nonZeroMetadataExistsInWorkout:workoutCopy orWorkoutActivity:activityCopy withKey:HKMetadataKeyElevationAscended];

  return (v6 | self) & 1;
}

- (BOOL)hasFlightsClimbedForWorkout:(id)workout workoutActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    totalFlightsClimbed = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierFlightsClimbed];
    v7 = [activityCopy statisticsForType:totalFlightsClimbed];
    v8 = v7 != 0;
  }

  else
  {
    totalFlightsClimbed = [workout totalFlightsClimbed];
    v7 = +[HKUnit countUnit];
    [totalFlightsClimbed doubleValueForUnit:v7];
    v8 = v9 > 0.0;
  }

  return v8;
}

- (BOOL)shouldShowDistanceForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  sourceRevision = [workoutCopy sourceRevision];
  source = [sourceRevision source];
  _hasFirstPartyBundleID = [source _hasFirstPartyBundleID];

  if (_hasFirstPartyBundleID && ![(CHWorkoutFormattingManager *)self supportsDistanceForWorkout:workoutCopy workoutActivity:activityCopy])
  {
    v11 = 0;
  }

  else
  {
    v11 = [(CHWorkoutFormattingManager *)self hasDistanceForWorkout:workoutCopy workoutActivity:activityCopy];
  }

  return v11;
}

- (BOOL)supportsDistanceForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  v7 = objc_alloc_init(NSMutableSet);
  fiui_activityType = [activityCopy fiui_activityType];
  v9 = fiui_activityType;
  if (fiui_activityType)
  {
    fiui_activityType2 = fiui_activityType;
  }

  else
  {
    fiui_activityType2 = [workoutCopy fiui_activityType];
  }

  v11 = fiui_activityType2;

  v30 = v11;
  v31 = activityCopy;
  if ([v11 identifier] == 82)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    workoutActivities = [workoutCopy workoutActivities];
    v13 = [workoutActivities countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(workoutActivities);
          }

          fiui_activityType3 = [*(*(&v37 + 1) + 8 * i) fiui_activityType];
          if ([fiui_activityType3 effectiveTypeIdentifier] != 83)
          {
            [v7 addObject:fiui_activityType3];
          }
        }

        v14 = [workoutActivities countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v14);
    }
  }

  else
  {
    [v7 addObject:v11];
  }

  v18 = [FIUIWorkoutDefaultMetricsProvider metricsVersionForWorkout:workoutCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v7;
  v19 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    v22 = 1;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v33 + 1) + 8 * j);
        v25 = [FIUIWorkoutDefaultMetricsProvider alloc];
        _activityMoveMode = [workoutCopy _activityMoveMode];
        v27 = FIUIDeviceSupportsElevationGain();
        v28 = [v25 initWithMetricsVersion:v18 activityType:v24 activityMoveMode:_activityMoveMode deviceSupportsElevationMetrics:v27 deviceSupportsGroundElevationMetrics:FIUIDeviceSupportsGroundElevation()];
        v22 &= [v28 isMetricTypeSupported:1 isMachineWorkout:objc_msgSend(workoutCopy activityType:{"fiui_isConnectedGymWorkout"), v24}];
      }

      v20 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v20);
  }

  else
  {
    LOBYTE(v22) = 1;
  }

  return v22;
}

- (BOOL)supportsPaceForWorkout:(id)workout workoutActivity:(id)activity
{
  activityCopy = workout;
  v6 = activityCopy;
  if (activity)
  {
    activityCopy = activity;
  }

  fiui_activityType = [activityCopy fiui_activityType];
  v8 = [FIUIWorkoutDefaultMetricsProvider metricsVersionForWorkout:v6];
  v9 = [FIUIWorkoutDefaultMetricsProvider alloc];
  _activityMoveMode = [v6 _activityMoveMode];
  v11 = FIUIDeviceSupportsElevationGain();
  v12 = [v9 initWithMetricsVersion:v8 activityType:fiui_activityType activityMoveMode:_activityMoveMode deviceSupportsElevationMetrics:v11 deviceSupportsGroundElevationMetrics:FIUIDeviceSupportsGroundElevation()];
  fiui_isConnectedGymWorkout = [v6 fiui_isConnectedGymWorkout];

  v14 = [v12 isMetricTypeSupported:8 isMachineWorkout:fiui_isConnectedGymWorkout activityType:fiui_activityType];
  return v14;
}

- (BOOL)supportsElevationAscendedForWorkout:(id)workout workoutActivity:(id)activity
{
  if (activity)
  {
    workoutCopy = activity;
  }

  else
  {
    workoutCopy = workout;
  }

  fiui_activityType = [workoutCopy fiui_activityType];
  bridge_supportsElevationAscendedInSummary = [fiui_activityType bridge_supportsElevationAscendedInSummary];

  return bridge_supportsElevationAscendedInSummary;
}

- (BOOL)supportsElevationDescendedForWorkout:(id)workout workoutActivity:(id)activity
{
  if (activity)
  {
    workoutCopy = activity;
  }

  else
  {
    workoutCopy = workout;
  }

  fiui_activityType = [workoutCopy fiui_activityType];
  bridge_supportsElevationDescendedInSummary = [fiui_activityType bridge_supportsElevationDescendedInSummary];

  return bridge_supportsElevationDescendedInSummary;
}

- (BOOL)supportsDownhillRunsCountForWorkout:(id)workout workoutActivity:(id)activity
{
  if (activity)
  {
    workoutCopy = activity;
  }

  else
  {
    workoutCopy = workout;
  }

  fiui_activityType = [workoutCopy fiui_activityType];
  v6 = +[CHWorkoutDownhillRun supportsActivityType:](CHWorkoutDownhillRun, "supportsActivityType:", [fiui_activityType effectiveTypeIdentifier]);

  return v6;
}

- (id)formattedActiveEnergyForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  activityCopy = activity;
  contextCopy = context;
  if (activityCopy)
  {
    v10 = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
    v11 = [activityCopy statisticsForType:v10];
    sumQuantity = [v11 sumQuantity];
  }

  else
  {
    sumQuantity = [workout totalEnergyBurned];
  }

  v13 = [(CHWorkoutFormattingManager *)self formattedEnergyBurn:sumQuantity context:context];

  return v13;
}

- (id)formattedAverageCadenceForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  contextCopy = context;
  if ([(CHWorkoutFormattingManager *)self hasAverageCadenceForWorkout:workoutCopy workoutActivity:activityCopy])
  {
    v37 = workoutCopy;
    if (activityCopy)
    {
      [activityCopy fiui_averageCadence];
      v12 = v11;
      workoutConfiguration = [activityCopy workoutConfiguration];
      activityType = [workoutConfiguration activityType];
    }

    else
    {
      [workoutCopy fiui_averageCadence];
      v12 = v16;
      activityType = [workoutCopy workoutActivityType];
    }

    v17 = [NSNumber numberWithDouble:v12];
    v35 = [FIUIFormattingManager stringWithNumber:v17 decimalPrecision:1];

    v18 = [objc_opt_class() localizedShortCadenceUnitStringForActivityType:activityType];
    localizedUppercaseString = [v18 localizedUppercaseString];

    v20 = [CHWorkoutDisplayContext displayContextWithName:contextCopy];
    unitFormatString = [v20 unitFormatString];
    v22 = [NSString stringWithValidatedFormat:unitFormatString validFormatSpecifiers:@"%@%@" error:0, v35, localizedUppercaseString];

    v23 = [NSMutableAttributedString alloc];
    v38[0] = NSFontAttributeName;
    valueFont = [v20 valueFont];
    v39[0] = valueFont;
    v38[1] = NSForegroundColorAttributeName;
    v25 = +[ARUIMetricColors cadenceColors];
    [v25 nonGradientTextColor];
    v26 = v36 = contextCopy;
    v39[1] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
    v15 = [v23 initWithString:v22 attributes:v27];

    v28 = [v22 rangeOfString:localizedUppercaseString];
    v30 = v29;
    goalDescriptionFont = [v20 goalDescriptionFont];
    [v15 addAttribute:NSFontAttributeName value:goalDescriptionFont range:{v28, v30}];

    goalDescriptionAttributes = [v20 goalDescriptionAttributes];
    v33 = v30;
    contextCopy = v36;
    [v15 addAttributes:goalDescriptionAttributes range:{v28, v33}];

    workoutCopy = v37;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (double)averageCyclingPowerForWorkout:(id)workout workoutActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    v6 = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierCyclingPower];
    v7 = [activityCopy statisticsForType:v6];
    averageQuantity = [v7 averageQuantity];
    [averageQuantity _value];
    v10 = v9;
  }

  else
  {
    [workout fiui_averagePower];
    v10 = v11;
  }

  return v10;
}

- (double)averageCyclingSpeedForWorkout:(id)workout workoutActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    v6 = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierCyclingSpeed];
    v7 = [activityCopy statisticsForType:v6];
    averageQuantity = [v7 averageQuantity];
    [averageQuantity _value];
    v10 = v9;
  }

  else
  {
    [workout fiui_averagePace];
    v10 = v11;
  }

  return v10;
}

- (id)formattedAveragePowerForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  contextCopy = context;
  if ([(CHWorkoutFormattingManager *)self hasAveragePowerForWorkout:workoutCopy workoutActivity:activityCopy])
  {
    if (activityCopy)
    {
      fiui_activityType = [activityCopy fiui_activityType];
      identifier = [fiui_activityType identifier];

      v13 = &HKQuantityTypeIdentifierCyclingPower;
      if (identifier != 13)
      {
        v13 = &HKQuantityTypeIdentifierRunningPower;
      }

      v14 = *v13;
      v15 = [[HKQuantityType alloc] initWithIdentifier:v14];

      v16 = [activityCopy statisticsForType:v15];
      averageQuantity = [v16 averageQuantity];
      [averageQuantity _value];
      v19 = v18;
    }

    else
    {
      [workoutCopy fiui_averagePower];
      v19 = v21;
    }

    v20 = [(CHWorkoutFormattingManager *)self formattedAveragePowerStringFor:contextCopy context:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)formattedAveragePowerStringFor:(double)for context:(id)context
{
  contextCopy = context;
  v7 = [(CHWorkoutFormattingManager *)self formattedPowerStringFor:for];
  localizedShortPowerUnitString = [objc_opt_class() localizedShortPowerUnitString];
  localizedUppercaseString = [localizedShortPowerUnitString localizedUppercaseString];

  v10 = [CHWorkoutDisplayContext displayContextWithName:contextCopy];

  unitFormatString = [v10 unitFormatString];
  v12 = [NSString stringWithValidatedFormat:unitFormatString validFormatSpecifiers:@"%@%@" error:0, v7, localizedUppercaseString];

  v13 = [NSMutableAttributedString alloc];
  v25[0] = NSFontAttributeName;
  valueFont = [v10 valueFont];
  v26[0] = valueFont;
  v25[1] = NSForegroundColorAttributeName;
  v15 = +[ARUIMetricColors powerColors];
  nonGradientTextColor = [v15 nonGradientTextColor];
  v26[1] = nonGradientTextColor;
  v17 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  v18 = [v13 initWithString:v12 attributes:v17];

  v19 = [v12 rangeOfString:localizedUppercaseString];
  v21 = v20;
  goalDescriptionFont = [v10 goalDescriptionFont];
  [v18 addAttribute:NSFontAttributeName value:goalDescriptionFont range:{v19, v21}];

  goalDescriptionAttributes = [v10 goalDescriptionAttributes];
  [v18 addAttributes:goalDescriptionAttributes range:{v19, v21}];

  return v18;
}

- (id)formattedPowerStringFor:(double)for
{
  v3 = [NSNumber numberWithDouble:floor(for)];
  v4 = [NSNumberFormatter localizedStringFromNumber:v3 numberStyle:0];

  return v4;
}

- (id)formattedDistanceForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  v10 = [CHWorkoutDisplayContext displayContextWithName:context];
  v54 = activityCopy;
  v55 = workoutCopy;
  if (activityCopy)
  {
    distanceType = [activityCopy distanceType];
    v12 = [activityCopy statisticsForType:distanceType];

    sumQuantity = [v12 sumQuantity];
    fiui_activityType = [activityCopy fiui_activityType];
    v15 = FIUIDistanceTypeForActivityType();

    v62 = 0;
    formattingManager = self->_formattingManager;
    v17 = +[HKUnit meterUnit];
    [sumQuantity doubleValueForUnit:v17];
    v18 = [(FIUIFormattingManager *)formattingManager localizedNaturalScaleStringWithDistanceInMeters:v15 distanceType:0 unitStyle:&v62 usedUnit:?];

    v19 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:v62];
    localizedUppercaseString = [v19 localizedUppercaseString];
  }

  else if ([workoutCopy workoutActivityType] == 82)
  {
    v52 = v10;
    v21 = +[HKUnit meterUnit];
    v22 = [HKQuantity quantityWithUnit:v21 doubleValue:0.0];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    workoutActivities = [workoutCopy workoutActivities];
    v24 = [workoutActivities countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v59;
      do
      {
        v27 = 0;
        v28 = v22;
        do
        {
          if (*v59 != v26)
          {
            objc_enumerationMutation(workoutActivities);
          }

          v29 = *(*(&v58 + 1) + 8 * v27);
          distanceType2 = [v29 distanceType];
          v31 = [v29 statisticsForType:distanceType2];

          sumQuantity2 = [v31 sumQuantity];
          v22 = [v28 _quantityByAddingQuantity:sumQuantity2];

          v27 = v27 + 1;
          v28 = v22;
        }

        while (v25 != v27);
        v25 = [workoutActivities countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v25);
    }

    v62 = 0;
    v33 = self->_formattingManager;
    v34 = +[HKUnit meterUnit];
    [v22 doubleValueForUnit:v34];
    v18 = [(FIUIFormattingManager *)v33 localizedNaturalScaleStringWithDistanceInMeters:1 distanceType:0 unitStyle:&v62 usedUnit:?];

    v35 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:v62];
    localizedUppercaseString = [v35 localizedUppercaseString];

    v10 = v52;
  }

  else
  {
    v56 = 0;
    v57 = 0;
    [(CHWorkoutFormattingManager *)self _formattedDistanceStringForWorkout:workoutCopy distanceString:&v57 unitString:&v56];
    v18 = v57;
    localizedUppercaseString = v56;
  }

  v51 = v18;
  v53 = localizedUppercaseString;
  unitFormatString = [v10 unitFormatString];
  v37 = [NSString stringWithValidatedFormat:unitFormatString validFormatSpecifiers:@"%@%@" error:0, v18, localizedUppercaseString];

  v38 = [v37 rangeOfString:localizedUppercaseString];
  v40 = v39;
  v41 = v10;
  v42 = [NSMutableAttributedString alloc];
  v63[0] = NSFontAttributeName;
  valueFont = [v41 valueFont];
  v64[0] = valueFont;
  v63[1] = NSForegroundColorAttributeName;
  v44 = +[ARUIMetricColors distanceColors];
  nonGradientTextColor = [v44 nonGradientTextColor];
  v64[1] = nonGradientTextColor;
  v46 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
  v47 = [v42 initWithString:v37 attributes:v46];

  goalDescriptionFont = [v41 goalDescriptionFont];
  [v47 addAttribute:NSFontAttributeName value:goalDescriptionFont range:{v38, v40}];

  goalDescriptionAttributes = [v41 goalDescriptionAttributes];
  [v47 addAttributes:goalDescriptionAttributes range:{v38, v40}];

  return v47;
}

- (id)formattedDurationForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  activityCopy = activity;
  workoutCopy = workout;
  v10 = [CHWorkoutDisplayContext displayContextWithName:context];
  if (activityCopy)
  {
    [activityCopy duration];
  }

  else
  {
    [workoutCopy fiui_duration];
  }

  v12 = v11;
  workoutActivityType = [workoutCopy workoutActivityType];

  if (v12 < 3600.0 && workoutActivityType == 84)
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  v16 = [(FIUIFormattingManager *)self->_formattingManager stringWithDuration:v15 durationFormat:v12];
  v17 = [NSAttributedString alloc];
  v24[0] = NSFontAttributeName;
  valueFont = [v10 valueFont];
  v25[0] = valueFont;
  v24[1] = NSForegroundColorAttributeName;
  v19 = +[ARUIMetricColors elapsedTimeColors];
  nonGradientTextColor = [v19 nonGradientTextColor];
  v25[1] = nonGradientTextColor;
  v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v22 = [v17 initWithString:v16 attributes:v21];

  return v22;
}

- (id)formattedElapsedTimeForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  v10 = [CHWorkoutDisplayContext displayContextWithName:context];
  if (activityCopy)
  {
    v11 = activityCopy;
  }

  else
  {
    v11 = workoutCopy;
  }

  [v11 elapsedTime];
  v12 = [(FIUIFormattingManager *)self->_formattingManager stringWithDuration:2 durationFormat:?];
  v13 = [NSAttributedString alloc];
  v20[0] = NSFontAttributeName;
  valueFont = [v10 valueFont];
  v21[0] = valueFont;
  v20[1] = NSForegroundColorAttributeName;
  v15 = +[ARUIMetricColors elapsedTimeColors];
  nonGradientTextColor = [v15 nonGradientTextColor];
  v21[1] = nonGradientTextColor;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18 = [v13 initWithString:v12 attributes:v17];

  return v18;
}

- (id)formattedRaceTimeForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  v8 = [CHWorkoutDisplayContext displayContextWithName:context];
  [workoutCopy raceTime];
  v9 = [(FIUIFormattingManager *)self->_formattingManager stringWithDuration:2 durationFormat:?];
  didWinRace = [workoutCopy didWinRace];

  if (didWinRace)
  {
    +[ARUIMetricColors raceAheadColors];
  }

  else
  {
    +[ARUIMetricColors raceBehindColors];
  }
  v11 = ;
  v12 = [NSAttributedString alloc];
  v18[0] = NSFontAttributeName;
  valueFont = [v8 valueFont];
  v19[0] = valueFont;
  v18[1] = NSForegroundColorAttributeName;
  nonGradientTextColor = [v11 nonGradientTextColor];
  v19[1] = nonGradientTextColor;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [v12 initWithString:v9 attributes:v15];

  return v16;
}

- (id)formattedElevationGainForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  contextCopy = context;
  if (activityCopy)
  {
    metadata = [activityCopy metadata];
    v12 = [metadata objectForKeyedSubscript:HKMetadataKeyElevationAscended];

    if (v12)
    {
      goto LABEL_7;
    }

    v13 = activityCopy;
  }

  else
  {
    metadata2 = [workoutCopy metadata];
    v12 = [metadata2 objectForKeyedSubscript:HKMetadataKeyElevationAscended];

    if (v12)
    {
      goto LABEL_7;
    }

    v13 = workoutCopy;
  }

  metadata3 = [v13 metadata];
  v12 = [metadata3 objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutElevationAscended];

LABEL_7:
  v16 = [(CHWorkoutFormattingManager *)self formattedElevation:v12 context:contextCopy];

  return v16;
}

- (id)formattedElevation:(id)elevation context:(id)context
{
  formattingManager = self->_formattingManager;
  contextCopy = context;
  elevationCopy = elevation;
  unitManager = [(FIUIFormattingManager *)formattingManager unitManager];
  userDistanceElevationUnit = [unitManager userDistanceElevationUnit];

  v11 = [CHWorkoutDisplayContext displayContextWithName:contextCopy];

  v12 = self->_formattingManager;
  v13 = +[HKUnit meterUnit];
  [elevationCopy doubleValueForUnit:v13];
  v15 = v14;

  v32 = [(FIUIFormattingManager *)v12 localizedStringWithDistanceInMeters:userDistanceElevationUnit distanceUnit:0 unitStyle:1 decimalPrecision:v15];

  v16 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:userDistanceElevationUnit];
  localizedUppercaseString = [v16 localizedUppercaseString];

  unitFormatString = [v11 unitFormatString];
  v19 = [NSString stringWithValidatedFormat:unitFormatString validFormatSpecifiers:@"%@%@" error:0, v32, localizedUppercaseString];

  v20 = [v19 rangeOfString:localizedUppercaseString];
  v22 = v21;
  v23 = +[ARUIMetricColors elevationColors];
  nonGradientTextColor = [v23 nonGradientTextColor];

  v25 = [NSMutableAttributedString alloc];
  v33[0] = NSFontAttributeName;
  valueFont = [v11 valueFont];
  v33[1] = NSForegroundColorAttributeName;
  v34[0] = valueFont;
  v34[1] = nonGradientTextColor;
  v27 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
  v28 = [v25 initWithString:v19 attributes:v27];

  goalDescriptionFont = [v11 goalDescriptionFont];
  [v28 addAttribute:NSFontAttributeName value:goalDescriptionFont range:{v20, v22}];

  goalDescriptionAttributes = [v11 goalDescriptionAttributes];
  [v28 addAttributes:goalDescriptionAttributes range:{v20, v22}];

  return v28;
}

- (id)formattedFlightsClimbedForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  contextCopy = context;
  if ([(CHWorkoutFormattingManager *)self hasFlightsClimbedForWorkout:workoutCopy workoutActivity:activityCopy])
  {
    if (activityCopy)
    {
      totalFlightsClimbed = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierFlightsClimbed];
      v12 = [activityCopy statisticsForType:totalFlightsClimbed];
      sumQuantity = [v12 sumQuantity];
      [sumQuantity _value];
      v15 = v14;
    }

    else
    {
      totalFlightsClimbed = [workoutCopy totalFlightsClimbed];
      v12 = +[HKUnit countUnit];
      [totalFlightsClimbed doubleValueForUnit:v12];
      v15 = v17;
    }

    v18 = [NSNumber numberWithDouble:v15];
    v19 = [NSNumberFormatter localizedStringFromNumber:v18 numberStyle:0];

    v20 = [CHWorkoutDisplayContext displayContextWithName:contextCopy];
    v21 = [NSAttributedString alloc];
    v27[0] = NSFontAttributeName;
    valueFont = [v20 valueFont];
    v28[0] = valueFont;
    v27[1] = NSForegroundColorAttributeName;
    v23 = +[ARUIMetricColors flightsClimbedColors];
    nonGradientTextColor = [v23 nonGradientTextColor];
    v28[1] = nonGradientTextColor;
    v25 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    v16 = [v21 initWithString:v19 attributes:v25];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)formattedGroundElevationGainForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  contextCopy = context;
  if (activityCopy)
  {
    metadata = [activityCopy metadata];
    v12 = [metadata objectForKeyedSubscript:NLWorkoutMetadataKeyMaxGroundElevation];

    v13 = activityCopy;
  }

  else
  {
    metadata2 = [workoutCopy metadata];
    v12 = [metadata2 objectForKeyedSubscript:NLWorkoutMetadataKeyMaxGroundElevation];

    v13 = workoutCopy;
  }

  metadata3 = [v13 metadata];
  v16 = [metadata3 objectForKeyedSubscript:NLWorkoutMetadataKeyMinGroundElevation];

  if (v12)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v43 = 0;
  }

  else
  {
    v54 = 0;
    v52 = workoutCopy;
    v18 = +[HKUnit meterUnit];
    [v12 doubleValueForUnit:v18];
    v20 = v19;

    v53 = [(FIUIFormattingManager *)self->_formattingManager localizedNaturalScaleStringWithDistanceInMeters:5 distanceType:0 unitStyle:&v54 usedUnit:v20];
    v21 = +[HKUnit meterUnit];
    [v16 doubleValueForUnit:v21];
    v23 = v22;

    [(FIUIFormattingManager *)self->_formattingManager localizedNaturalScaleStringWithDistanceInMeters:5 distanceType:0 unitStyle:&v54 usedUnit:v23];
    v47 = v49 = activityCopy;
    [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:v54];
    v24 = v48 = v16;
    _groundElevationFont = [(CHWorkoutFormattingManager *)self _groundElevationFont];
    v25 = objc_alloc_init(NSMutableParagraphStyle);
    [(CHWorkoutFormattingManager *)self _groundElevationHeight];
    [v25 setMaximumLineHeight:v26];
    [(CHWorkoutFormattingManager *)self _groundElevationHeight];
    v28 = v25;
    [v25 setMinimumLineHeight:v27];
    v51 = contextCopy;
    FIUIBundle();
    v29 = v50 = v12;
    v30 = [v29 localizedStringForKey:@"SUMMARY_GROUND_ELEVATION_MIN" value:&stru_1008680E8 table:@"Localizable"];
    v46 = v24;
    v31 = [NSString localizedStringWithFormat:v30, v47, v24];

    v32 = FIUIBundle();
    v33 = [v32 localizedStringForKey:@"SUMMARY_GROUND_ELEVATION_MAX" value:&stru_1008680E8 table:@"Localizable"];
    v34 = [NSString localizedStringWithFormat:v33, v53, v24];

    v35 = v31;
    v36 = [NSString localizedStringWithFormat:@"%@\n%@", v34, v31];
    v37 = [NSMutableAttributedString alloc];
    localizedUppercaseString = [v36 localizedUppercaseString];
    v56[0] = _groundElevationFont;
    v55[0] = NSFontAttributeName;
    v55[1] = NSForegroundColorAttributeName;
    v39 = +[ARUIMetricColors elevationColors];
    nonGradientTextColor = [v39 nonGradientTextColor];
    v55[2] = NSParagraphStyleAttributeName;
    v56[1] = nonGradientTextColor;
    v56[2] = v28;
    v41 = v28;
    v42 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:3];
    v43 = [v37 initWithString:localizedUppercaseString attributes:v42];

    contextCopy = v51;
    v12 = v50;

    workoutCopy = v52;
    v16 = v48;

    activityCopy = v49;
  }

  return v43;
}

- (id)formattedLapCountForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  contextCopy = context;
  if (activity)
  {
    workoutCopy = activity;
  }

  else
  {
    workoutCopy = workout;
  }

  workoutEvents = [workoutCopy workoutEvents];
  v11 = [NSPredicate predicateWithBlock:&stru_10083A860];
  v12 = [workoutEvents filteredArrayUsingPredicate:v11];
  v13 = [v12 count];

  v14 = +[ARUIMetricColors lapColors];
  nonGradientTextColor = [v14 nonGradientTextColor];

  v16 = [(CHWorkoutFormattingManager *)self formattedCount:v13 color:nonGradientTextColor context:contextCopy];

  return v16;
}

- (id)formattedDownhillRunsCount:(int64_t)count context:(id)context
{
  contextCopy = context;
  v7 = +[ARUIMetricColors lapColors];
  nonGradientTextColor = [v7 nonGradientTextColor];

  v9 = [(CHWorkoutFormattingManager *)self formattedCount:count color:nonGradientTextColor context:contextCopy];

  return v9;
}

- (id)formattedCount:(int64_t)count color:(id)color context:(id)context
{
  if (count)
  {
    contextCopy = context;
    colorCopy = color;
    v9 = [NSNumber numberWithInteger:count];
    v10 = [NSNumberFormatter localizedStringFromNumber:v9 numberStyle:0];

    v11 = [CHWorkoutDisplayContext displayContextWithName:contextCopy];

    v12 = [NSAttributedString alloc];
    v17[0] = NSFontAttributeName;
    valueFont = [v11 valueFont];
    v17[1] = NSForegroundColorAttributeName;
    v18[0] = valueFont;
    v18[1] = colorCopy;
    v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

    v15 = [v12 initWithString:v10 attributes:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)formattedPaceOrSpeedForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  contextCopy = context;
  fiui_activityType = [activityCopy fiui_activityType];
  v12 = fiui_activityType;
  if (fiui_activityType)
  {
    fiui_activityType2 = fiui_activityType;
  }

  else
  {
    fiui_activityType2 = [workoutCopy fiui_activityType];
  }

  v14 = fiui_activityType2;

  if (activityCopy)
  {
    distanceType = [activityCopy distanceType];
    v16 = [activityCopy statisticsForType:distanceType];

    sumQuantity = [v16 sumQuantity];
    [activityCopy duration];
    v19 = v18;
  }

  else if ((([workoutCopy fiui_isConnectedGymWorkout] & 1) != 0 || objc_msgSend(v14, "identifier") == 13 && objc_msgSend(v14, "isIndoor")) && objc_msgSend(workoutCopy, "fiui_hasAveragePace"))
  {
    [workoutCopy fiui_averagePace];
    v21 = v20;
    v22 = +[HKUnit meterUnit];
    sumQuantity = [HKQuantity quantityWithUnit:v22 doubleValue:v21];

    v19 = 1.0;
  }

  else
  {
    sumQuantity = [workoutCopy totalDistance];
    [workoutCopy duration];
    v19 = v23;
  }

  v24 = [(CHWorkoutFormattingManager *)self formattedPaceOrSpeedWithDistance:sumQuantity overDuration:v14 activityType:contextCopy context:v19];

  return v24;
}

- (id)formattedPaceOrSpeedWithDistance:(id)distance overDuration:(double)duration activityType:(id)type context:(id)context
{
  contextCopy = context;
  typeCopy = type;
  distanceCopy = distance;
  v13 = FIUIPaceFormatForWorkoutActivityType();
  v14 = [(FIUIFormattingManager *)self->_formattingManager localizedPaceStringWithDistance:distanceCopy overDuration:v13 paceFormat:FIUIDistanceTypeForActivityType() distanceType:duration];

  v15 = [(CHWorkoutFormattingManager *)self _paceUnitForActivityType:typeCopy paceFormat:v13];

  v16 = +[ARUIMetricColors paceColors];
  nonGradientTextColor = [v16 nonGradientTextColor];

  v18 = [(CHWorkoutFormattingManager *)self _formattedValueString:v14 withUnitString:v15 paceFormat:v13 context:contextCopy color:nonGradientTextColor];

  return v18;
}

- (id)formattedAverageSwimPaceWithDuration:(id)duration context:(id)context
{
  formattingManager = self->_formattingManager;
  contextCopy = context;
  [duration doubleValue];
  v8 = [(FIUIFormattingManager *)formattingManager stringWithDuration:1 durationFormat:?];
  unitManager = [(FIUIFormattingManager *)self->_formattingManager unitManager];
  userLapLengthHKUnit = [unitManager userLapLengthHKUnit];

  v11 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:FIUIDistanceUnitForHKUnit()];
  v12 = FIUINumberOfUnitsInPaceForPaceFormat();
  localizedLowercaseString = [v11 localizedLowercaseString];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"PACE_MANY_UNIT_FORMAT" value:&stru_1008680E8 table:@"Localizable"];
  v16 = [NSNumber numberWithUnsignedInteger:v12];
  v17 = [NSString stringWithFormat:v15, v16, localizedLowercaseString];

  v18 = +[ARUIMetricColors paceColors];
  nonGradientTextColor = [v18 nonGradientTextColor];

  v20 = [(CHWorkoutFormattingManager *)self _formattedValueString:v8 withUnitString:v17 paceFormat:2 context:contextCopy color:nonGradientTextColor];

  return v20;
}

- (id)_paceUnitForActivityType:(id)type paceFormat:(int64_t)format
{
  typeCopy = type;
  v7 = FIUIDistanceTypeForActivityType();
  if (format == 4)
  {
    localizedUppercaseString = [(FIUIFormattingManager *)self->_formattingManager localizedSpeedUnitStringForActivityType:typeCopy];
  }

  else
  {
    v9 = v7;
    identifier = [typeCopy identifier];

    formattingManager = self->_formattingManager;
    unitManager = [(FIUIFormattingManager *)formattingManager unitManager];
    v13 = unitManager;
    if (identifier == 46)
    {
      userLapLengthHKUnit = [unitManager userLapLengthHKUnit];

      localizedUppercaseString = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:FIUIDistanceUnitForHKUnit()];
      v13 = userLapLengthHKUnit;
    }

    else
    {
      v15 = -[FIUIFormattingManager localizedShortUnitStringForDistanceUnit:](formattingManager, "localizedShortUnitStringForDistanceUnit:", [unitManager paceDistanceUnitForDistanceType:v9]);
      localizedUppercaseString = [v15 localizedUppercaseString];
    }

    if ((format - 2) >= 2)
    {
      if (format != 1)
      {
        goto LABEL_11;
      }

      typeCopy = +[NSBundle mainBundle];
      v20 = [typeCopy localizedStringForKey:@"FITNESS_PACE_UNIT_FORMAT_%@" value:&stru_1008680E8 table:@"Localizable"];
      v21 = [NSString stringWithFormat:v20, localizedUppercaseString];

      localizedUppercaseString = v21;
    }

    else
    {
      v16 = FIUINumberOfUnitsInPaceForPaceFormat();
      localizedLowercaseString = [localizedUppercaseString localizedLowercaseString];

      typeCopy = +[NSBundle mainBundle];
      v18 = [typeCopy localizedStringForKey:@"PACE_MANY_UNIT_FORMAT" value:&stru_1008680E8 table:@"Localizable"];
      v19 = [NSNumber numberWithUnsignedInteger:v16];
      localizedUppercaseString = [NSString stringWithFormat:v18, v19, localizedLowercaseString];
    }
  }

LABEL_11:

  return localizedUppercaseString;
}

- (id)_formattedValueString:(id)string withUnitString:(id)unitString paceFormat:(int64_t)format context:(id)context color:(id)color
{
  colorCopy = color;
  unitStringCopy = unitString;
  stringCopy = string;
  v14 = [CHWorkoutDisplayContext displayContextWithName:context];
  goalDescriptionFont = [v14 goalDescriptionFont];
  goalDescriptionAttributes = [v14 goalDescriptionAttributes];
  if ((format & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    pace100UnitFont = [v14 pace100UnitFont];

    goalDescriptionAttributes = &__NSDictionary0__struct;
    v34 = pace100UnitFont;
  }

  else
  {
    v34 = goalDescriptionFont;
  }

  unitFormatString = [v14 unitFormatString];
  unitStringCopy = [NSString stringWithValidatedFormat:unitFormatString validFormatSpecifiers:@"%@%@" error:0, stringCopy, unitStringCopy];

  v20 = [unitStringCopy rangeOfString:unitStringCopy];
  v22 = v21;

  v23 = [unitStringCopy rangeOfString:stringCopy];
  v32 = v24;
  v33 = v23;

  v25 = [NSMutableAttributedString alloc];
  v35[0] = NSFontAttributeName;
  valueFont = [v14 valueFont];
  v35[1] = NSForegroundColorAttributeName;
  v36[0] = valueFont;
  v36[1] = colorCopy;
  [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  v28 = v27 = colorCopy;
  v29 = [v25 initWithString:unitStringCopy attributes:v28];

  [v29 addAttribute:NSFontAttributeName value:v34 range:{v20, v22}];
  [v29 addAttributes:goalDescriptionAttributes range:{v20, v22}];
  v30 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:0];

  if (v30 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    [v29 addAttribute:NSWritingDirectionAttributeName value:&off_10086E4B8 range:{v33, v32}];
  }

  return v29;
}

- (id)formattedPoolLengthForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  contextCopy = context;
  if (activityCopy)
  {
    workoutConfiguration = [activityCopy workoutConfiguration];
    lapLength = [workoutConfiguration lapLength];

    if (lapLength)
    {
      v40 = workoutCopy;
      v41 = 0;
      v39 = activityCopy;
      v13 = activityCopy;
LABEL_6:
      [v13 fiui_activityType];
      v38 = v35 = lapLength;
      v15 = FIUIDistanceTypeForActivityType();
      formattingManager = self->_formattingManager;
      v17 = +[HKUnit meterUnit];
      [lapLength doubleValueForUnit:v17];
      v37 = [(FIUIFormattingManager *)formattingManager localizedNaturalScaleStringWithDistanceInMeters:v15 distanceType:0 unitStyle:&v41 usedUnit:?];

      v18 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:v41];
      localizedUppercaseString = [v18 localizedUppercaseString];

      v19 = [CHWorkoutDisplayContext displayContextWithName:contextCopy];
      unitFormatString = [v19 unitFormatString];
      v21 = [NSString stringWithValidatedFormat:unitFormatString validFormatSpecifiers:@"%@%@" error:0, v37, localizedUppercaseString];

      v22 = [v21 rangeOfString:localizedUppercaseString];
      v34 = v23;
      v24 = [NSMutableAttributedString alloc];
      v42[0] = NSFontAttributeName;
      valueFont = [v19 valueFont];
      v43[0] = valueFont;
      v42[1] = NSForegroundColorAttributeName;
      +[ARUIMetricColors lapColors];
      v27 = v26 = contextCopy;
      nonGradientTextColor = [v27 nonGradientTextColor];
      v43[1] = nonGradientTextColor;
      v29 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
      v30 = [v24 initWithString:v21 attributes:v29];

      contextCopy = v26;
      goalDescriptionFont = [v19 goalDescriptionFont];
      [v30 addAttribute:NSFontAttributeName value:goalDescriptionFont range:{v22, v34}];

      goalDescriptionAttributes = [v19 goalDescriptionAttributes];
      [v30 addAttributes:goalDescriptionAttributes range:{v22, v34}];

      activityCopy = v39;
      workoutCopy = v40;
      goto LABEL_8;
    }
  }

  else
  {
    fiui_lapLength = [workoutCopy fiui_lapLength];
    if (fiui_lapLength)
    {
      lapLength = fiui_lapLength;
      v39 = 0;
      v40 = workoutCopy;
      v41 = 0;
      v13 = workoutCopy;
      goto LABEL_6;
    }
  }

  v30 = 0;
LABEL_8:

  return v30;
}

- (id)formattedStepCountForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  contextCopy = context;
  if ([(CHWorkoutFormattingManager *)self hasStepCountForWorkout:workoutCopy workoutActivity:activityCopy])
  {
    if (activityCopy)
    {
      v11 = activityCopy;
    }

    else
    {
      v11 = workoutCopy;
    }

    [v11 fiui_totalStepCount];
    v13 = [NSNumber numberWithDouble:?];
    v14 = [NSNumberFormatter localizedStringFromNumber:v13 numberStyle:0];

    v15 = [CHWorkoutDisplayContext displayContextWithName:contextCopy];
    v16 = [NSAttributedString alloc];
    v22[0] = NSFontAttributeName;
    valueFont = [v15 valueFont];
    v23[0] = valueFont;
    v22[1] = NSForegroundColorAttributeName;
    v18 = +[ARUIMetricColors stepColors];
    nonGradientTextColor = [v18 nonGradientTextColor];
    v23[1] = nonGradientTextColor;
    v20 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v12 = [v16 initWithString:v14 attributes:v20];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)formattedTotalEnergyForWorkout:(id)workout workoutActivity:(id)activity context:(id)context
{
  workoutCopy = workout;
  activityCopy = activity;
  if (activityCopy)
  {
    selfCopy = self;
    contextCopy = context;
    totalEnergyBurned = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
    _totalBasalEnergyBurned = [activityCopy statisticsForType:totalEnergyBurned];
    sumQuantity = [_totalBasalEnergyBurned sumQuantity];
    v14 = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierBasalEnergyBurned];
    v15 = [activityCopy statisticsForType:v14];
    sumQuantity2 = [v15 sumQuantity];
    v17 = [sumQuantity _quantityByAddingQuantity:sumQuantity2];

    self = selfCopy;
  }

  else
  {
    contextCopy2 = context;
    totalEnergyBurned = [workoutCopy totalEnergyBurned];
    _totalBasalEnergyBurned = [workoutCopy _totalBasalEnergyBurned];
    v17 = [totalEnergyBurned _quantityByAddingQuantity:_totalBasalEnergyBurned];
  }

  v19 = [(CHWorkoutFormattingManager *)self formattedEnergyBurn:v17 context:context];

  return v19;
}

- (id)weatherTemperatureForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  if ([(CHWorkoutFormattingManager *)self shouldFakeData])
  {
    metadata = +[HKUnit degreeFahrenheitUnit];
    v9 = [HKQuantity quantityWithUnit:metadata doubleValue:72.0];
  }

  else
  {
    if (activityCopy)
    {
      v10 = activityCopy;
    }

    else
    {
      v10 = workoutCopy;
    }

    metadata = [v10 metadata];
    v9 = [metadata objectForKeyedSubscript:HKMetadataKeyWeatherTemperature];
  }

  v11 = v9;

  return v11;
}

- (id)waterTemperatureForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  if ([(CHWorkoutFormattingManager *)self shouldFakeData])
  {
    metadata = +[HKUnit degreeCelsiusUnit];
    v9 = [HKQuantity quantityWithUnit:metadata doubleValue:18.0];
  }

  else
  {
    if (activityCopy)
    {
      v10 = activityCopy;
    }

    else
    {
      v10 = workoutCopy;
    }

    metadata = [v10 metadata];
    v9 = [metadata objectForKeyedSubscript:NLPrivateMetadataKeyAverageWaterTemperature];
  }

  v11 = v9;

  return v11;
}

- (id)weatherHumidityForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  if ([(CHWorkoutFormattingManager *)self shouldFakeData])
  {
    metadata = +[HKUnit percentUnit];
    v9 = [HKQuantity quantityWithUnit:metadata doubleValue:0.23];
  }

  else
  {
    if (activityCopy)
    {
      v10 = activityCopy;
    }

    else
    {
      v10 = workoutCopy;
    }

    metadata = [v10 metadata];
    v9 = [metadata objectForKeyedSubscript:HKMetadataKeyWeatherHumidity];
  }

  v11 = v9;

  return v11;
}

- (id)airQualityIndexForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  if ([(CHWorkoutFormattingManager *)self shouldFakeData])
  {
    v8 = [NSNumber numberWithInt:34];
  }

  else
  {
    if (activityCopy)
    {
      v9 = activityCopy;
    }

    else
    {
      v9 = workoutCopy;
    }

    metadata = [v9 metadata];
    v8 = [metadata objectForKeyedSubscript:NLPrivateMetadataKeyAirQualityIndex];
  }

  return v8;
}

- (id)timeZoneForWorkout:(id)workout
{
  workoutCopy = workout;
  if ([(CHWorkoutFormattingManager *)self shouldFakeData])
  {
    v5 = +[NSTimeZone systemTimeZone];
  }

  else
  {
    metadata = [workoutCopy metadata];
    v7 = [metadata objectForKeyedSubscript:HKMetadataKeyTimeZone];

    if (v7)
    {
      v5 = [NSTimeZone timeZoneWithName:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)workoutWasInDayTime:(id)time
{
  timeCopy = time;
  metadata = [timeCopy metadata];
  v6 = [metadata objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutDaytime];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    v8 = [(CHWorkoutFormattingManager *)self timeZoneForWorkout:timeCopy];
    v9 = +[NSCalendar currentCalendar];
    v10 = v9;
    if (v8)
    {
      [v9 setTimeZone:v8];
    }

    startDate = [timeCopy startDate];
    v12 = [v10 component:32 fromDate:startDate];

    bOOLValue = (v12 - 6) < 0xD;
  }

  return bOOLValue;
}

- (id)locationForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  v7 = activityCopy;
  if (activityCopy)
  {
    metadata = [activityCopy metadata];
    v9 = [metadata objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutWeatherLocationCoordinatesLatitude];

    v10 = v7;
  }

  else
  {
    metadata2 = [workoutCopy metadata];
    v9 = [metadata2 objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutWeatherLocationCoordinatesLatitude];

    v10 = workoutCopy;
  }

  metadata3 = [v10 metadata];
  v13 = [metadata3 objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutWeatherLocationCoordinatesLongitude];

  if (v9)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v19 = 0;
  }

  else
  {
    v15 = [CLLocation alloc];
    [v9 doubleValue];
    v17 = v16;
    [v13 doubleValue];
    v19 = [v15 initWithLatitude:v17 longitude:v18];
  }

  return v19;
}

- (id)shareImageForWorkout:(id)workout routeImage:(id)image
{
  workoutCopy = workout;
  imageCopy = image;
  v8 = [(CHWorkoutFormattingManager *)self _shareIconForWorkout:workoutCopy routeImage:imageCopy];
  v9 = objc_alloc_init(NSMutableArray);
  v10 = [(CHWorkoutFormattingManager *)self _workoutTypeInfoForWorkout:workoutCopy];
  [v9 addObject:v10];
  v11 = [(CHWorkoutFormattingManager *)self shouldShowDistanceForWorkout:workoutCopy workoutActivity:0];
  _activityMoveMode = [workoutCopy _activityMoveMode];
  if ([workoutCopy workoutActivityType] == 84)
  {
    v13 = [(CHWorkoutFormattingManager *)self _underwaterTimeInfoForDive:workoutCopy];
    [v9 addObject:v13];
    v14 = [(CHWorkoutFormattingManager *)self _maxDepthInfoForDive:workoutCopy];
LABEL_3:
    v15 = v14;
    [v9 addObject:v14];

    goto LABEL_12;
  }

  if ((_activityMoveMode != 2) | v11 & 1)
  {
    if (_activityMoveMode != 2)
    {
      v13 = [(CHWorkoutFormattingManager *)self _activeEnergyInfoForWorkout:workoutCopy];
      [v9 addObject:v13];
      if (v11)
      {
        [(CHWorkoutFormattingManager *)self _distanceInfoForWorkout:workoutCopy];
      }

      else
      {
        [(CHWorkoutFormattingManager *)self _durationInfoForWorkout:workoutCopy];
      }
      v14 = ;
      goto LABEL_3;
    }

    v16 = [(CHWorkoutFormattingManager *)self _distanceInfoForWorkout:workoutCopy];
  }

  else
  {
    v16 = [(CHWorkoutFormattingManager *)self _durationInfoForWorkout:workoutCopy];
  }

  v13 = v16;
  [v9 addObject:v16];
LABEL_12:

  v17 = [CHSharingImageWorkoutConfiguration alloc];
  v18 = [v9 copy];
  v19 = [(CHSharingImageWorkoutConfiguration *)v17 initWithIconImage:v8 routeImage:imageCopy metricTitleAndValueInfo:v18];

  v20 = sub_1000F00D0(v19);

  return v20;
}

- (id)shareTextForWorkout:(id)workout
{
  workoutCopy = workout;
  v5 = [(CHWorkoutFormattingManager *)self _shareValueForWorkout:workoutCopy];
  v6 = [(FIUIFormattingManager *)self->_formattingManager localizedShareTextWithWorkout:workoutCopy shareValue:v5];

  return v6;
}

- (id)_shareValueForWorkout:(id)workout
{
  workoutCopy = workout;
  if ([(CHWorkoutFormattingManager *)self supportsDistanceForWorkout:workoutCopy workoutActivity:0])
  {
    [(CHWorkoutFormattingManager *)self _distanceInfoForWorkout:workoutCopy];
  }

  else
  {
    [(CHWorkoutFormattingManager *)self _durationInfoForWorkout:workoutCopy];
  }
  v5 = ;

  value = [v5 value];

  return value;
}

- (id)_workoutTypeInfoForWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = objc_alloc_init(CHSharingImageTitleAndValueInfo);
  metadata = [workoutCopy metadata];
  v6 = [metadata objectForKeyedSubscript:HKMetadataKeyWorkoutBrandName];

  if (![v6 length])
  {
    fiui_activityType = [workoutCopy fiui_activityType];
    [fiui_activityType effectiveTypeIdentifier];
    [fiui_activityType swimmingLocationType];
    [fiui_activityType isIndoor];
    v8 = FILocalizedNameForActivityType();

    v6 = v8;
  }

  [(CHSharingImageTitleAndValueInfo *)v4 setTitle:v6];

  return v4;
}

- (id)_durationInfoForWorkout:(id)workout
{
  workoutCopy = workout;
  v5 = objc_alloc_init(CHSharingImageTitleAndValueInfo);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"TOTAL_TIME" value:&stru_1008680E8 table:@"Localizable"];
  [(CHSharingImageTitleAndValueInfo *)v5 setTitle:v7];

  formattingManager = self->_formattingManager;
  [workoutCopy duration];
  v10 = v9;

  v11 = [(FIUIFormattingManager *)formattingManager stringWithDuration:3 durationFormat:v10];
  [(CHSharingImageTitleAndValueInfo *)v5 setValue:v11];

  v12 = +[ARUIMetricColors elapsedTimeColors];
  nonGradientTextColor = [v12 nonGradientTextColor];
  [(CHSharingImageTitleAndValueInfo *)v5 setValueColor:nonGradientTextColor];

  return v5;
}

- (id)_distanceInfoForWorkout:(id)workout
{
  workoutCopy = workout;
  v5 = objc_alloc_init(CHSharingImageTitleAndValueInfo);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"WORKOUT_DISTANCE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  [(CHSharingImageTitleAndValueInfo *)v5 setTitle:v7];

  v15 = 0;
  v16 = 0;
  [(CHWorkoutFormattingManager *)self _formattedDistanceStringForWorkout:workoutCopy distanceString:&v16 unitString:&v15];

  v8 = v16;
  v9 = v15;
  uppercaseString = [v9 uppercaseString];
  v11 = [NSString stringWithFormat:@"%@ %@", v8, uppercaseString];
  [(CHSharingImageTitleAndValueInfo *)v5 setValue:v11];

  [(CHSharingImageTitleAndValueInfo *)v5 setUnit:v9];
  v12 = +[ARUIMetricColors distanceColors];
  nonGradientTextColor = [v12 nonGradientTextColor];
  [(CHSharingImageTitleAndValueInfo *)v5 setValueColor:nonGradientTextColor];

  return v5;
}

- (id)_maxDepthInfoForDive:(id)dive
{
  diveCopy = dive;
  v5 = objc_alloc_init(CHSharingImageTitleAndValueInfo);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"UNDERWATER_DIVE_MAX_DEPTH" value:&stru_1008680E8 table:@"Localizable"];
  [(CHSharingImageTitleAndValueInfo *)v5 setTitle:v7];

  formattingManager = self->_formattingManager;
  v13 = &stru_1008680E8;
  v9 = [(FIUIFormattingManager *)formattingManager localizedGoalDescriptionForWorkout:diveCopy withValue:&v13 appendActivityType:0];

  [(CHSharingImageTitleAndValueInfo *)v5 setValue:v9];
  v10 = +[ARUIMetricColors diveColors];
  nonGradientTextColor = [v10 nonGradientTextColor];
  [(CHSharingImageTitleAndValueInfo *)v5 setValueColor:nonGradientTextColor];

  return v5;
}

- (id)_underwaterTimeInfoForDive:(id)dive
{
  diveCopy = dive;
  v5 = objc_alloc_init(CHSharingImageTitleAndValueInfo);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"TOTAL_TIME" value:&stru_1008680E8 table:@"Localizable"];
  [(CHSharingImageTitleAndValueInfo *)v5 setTitle:v7];

  formattingManager = self->_formattingManager;
  [diveCopy duration];
  v10 = v9;

  v11 = [(FIUIFormattingManager *)formattingManager stringWithDuration:3 durationFormat:v10];
  [(CHSharingImageTitleAndValueInfo *)v5 setValue:v11];

  v12 = +[ARUIMetricColors elapsedTimeColors];
  nonGradientTextColor = [v12 nonGradientTextColor];
  [(CHSharingImageTitleAndValueInfo *)v5 setValueColor:nonGradientTextColor];

  return v5;
}

- (id)_activeEnergyInfoForWorkout:(id)workout
{
  workoutCopy = workout;
  v5 = objc_alloc_init(CHSharingImageTitleAndValueInfo);
  v6 = +[NSBundle mainBundle];
  v7 = [(FIUIFormattingManager *)self->_formattingManager localizationKeyForEnergyBaseKey:@"WORKOUT_ACTIVE_ENERGY_TITLE"];
  v8 = [v6 localizedStringForKey:v7 value:&stru_1008680E8 table:@"Localizable"];
  [(CHSharingImageTitleAndValueInfo *)v5 setTitle:v8];

  formattingManager = self->_formattingManager;
  totalEnergyBurned = [workoutCopy totalEnergyBurned];

  v11 = [(FIUIFormattingManager *)formattingManager localizedStringWithActiveEnergy:totalEnergyBurned];

  localizedShortActiveEnergyUnitString = [(FIUIFormattingManager *)self->_formattingManager localizedShortActiveEnergyUnitString];
  localizedUppercaseString = [localizedShortActiveEnergyUnitString localizedUppercaseString];

  v14 = [CHWorkoutDisplayContext displayContextWithName:@"WorkoutDetailDisplayContext"];
  unitFormatString = [v14 unitFormatString];
  v16 = [NSString stringWithValidatedFormat:unitFormatString validFormatSpecifiers:@"%@%@" error:0, v11, localizedUppercaseString];

  [(CHSharingImageTitleAndValueInfo *)v5 setValue:v16];
  [(CHSharingImageTitleAndValueInfo *)v5 setUnit:localizedUppercaseString];
  v17 = +[ARUIMetricColors energyColors];
  nonGradientTextColor = [v17 nonGradientTextColor];
  [(CHSharingImageTitleAndValueInfo *)v5 setValueColor:nonGradientTextColor];

  return v5;
}

- (id)_shareIconForWorkout:(id)workout routeImage:(id)image
{
  workoutCopy = workout;
  if ([workoutCopy fiui_isConnectedGymWorkout])
  {
    v7 = ![(CHWorkoutFormattingManager *)self hasConnectedGymVendorIconForWorkout:workoutCopy];
  }

  else
  {
    v7 = 1;
  }

  sourceRevision = [workoutCopy sourceRevision];
  source = [sourceRevision source];
  _hasFirstPartyBundleID = [source _hasFirstPartyBundleID];

  workoutActivityType = [workoutCopy workoutActivityType];
  v12 = v7 & _hasFirstPartyBundleID;
  v13 = objc_alloc_init(UIImageView);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (workoutActivityType == 84)
  {
    v14 = +[ARUIMetricColors diveColors];
    nonGradientTextColor = [v14 nonGradientTextColor];

    v16 = FIUICircularImage();
    [v13 setImage:v16];
  }

  else if (v12)
  {
    v17 = [UIColor colorWithRed:0.28627451 green:0.37254902 blue:0.145098039 alpha:1.0];
    v18 = v17;
    if (image)
    {
      nonGradientTextColor2 = v17;
    }

    else
    {
      v20 = +[ARUIMetricColors briskColors];
      nonGradientTextColor2 = [v20 nonGradientTextColor];
    }

    v21 = FIUICircularImage();
    [v13 setImage:v21];
  }

  else
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000B3604;
    v37[3] = &unk_10083A888;
    v38 = v13;
    [(CHWorkoutFormattingManager *)self fetchIconImageForWorkout:workoutCopy context:@"WorkoutDetailDisplayContext" completion:v37];
  }

  v22 = [FIUIWorkoutActivityType activityTypeWithWorkout:workoutCopy];
  v23 = FIUIStaticWorkoutIconImage();
  v24 = [v23 imageWithRenderingMode:2];

  v25 = objc_alloc_init(UIImageView);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 setImage:v24];
  image = [v13 image];
  [image size];
  v28 = v27;
  image2 = [v13 image];
  [image2 size];
  v40.width = v28;
  UIGraphicsBeginImageContextWithOptions(v40, 0, 0.0);

  if (workoutActivityType == 84)
  {
    v30 = +[ARUIMetricColors diveColors];
    [v30 valueDisplayColor];
  }

  else
  {
    v30 = +[ARUIMetricColors briskColors];
    [v30 nonGradientTextColor];
  }
  v31 = ;
  [v31 setFill];
  if (((image == 0) & v12) != 0)
  {
    v32 = 0.2;
  }

  else
  {
    v32 = 1.0;
  }

  image3 = [v13 image];
  [image3 drawAtPoint:0 blendMode:0.0 alpha:{0.0, v32}];

  if (v12)
  {
    image4 = [v25 image];
    [image4 drawInRect:0 blendMode:3.0 alpha:{3.0, 14.0, 14.0, 1.0}];
  }

  v35 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v35;
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  _HKInitializeLogging();
  v5 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[AppProtection] appProtectionSubjectsChanged", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B36D8;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)hasWeatherConditionForWorkout:(id)workout workoutActivity:(id)activity
{
  v7 = sub_100140278(&qword_1008EABB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  workoutCopy = workout;
  activityCopy = activity;
  selfCopy = self;
  sub_1003876C4(workoutCopy, activity, v9);

  v13 = type metadata accessor for WeatherCondition();
  LOBYTE(activity) = (*(*(v13 - 8) + 48))(v9, 1, v13) != 1;
  sub_10038852C(v9);
  return activity;
}

@end
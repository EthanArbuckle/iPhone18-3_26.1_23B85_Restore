@interface CHWorkoutFormattingManager
- (BOOL)hasAnyNonZeroStatisticForDiscreteQuantityTypes:(id)a3 orCumulativeQuantityTypes:(id)a4 forWorkout:(id)a5 orWorkoutActivity:(id)a6;
- (BOOL)hasAverageCadenceForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)hasAverageCyclingPowerForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)hasAverageCyclingSpeedForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)hasAveragePowerForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)hasConnectedGymVendorIconForWorkout:(id)a3;
- (BOOL)hasDistanceForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)hasElevationAscendedDataForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)hasFlightsClimbedForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)hasWeatherConditionForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)isIndoorCyclingForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)nonZeroMetadataExistsInWorkout:(id)a3 orWorkoutActivity:(id)a4 withKey:(id)a5;
- (BOOL)shouldShowDistanceForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)supportsDistanceForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)supportsDownhillRunsCountForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)supportsElevationAscendedForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)supportsElevationDescendedForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)supportsPaceForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)workoutHasGoalCompletionEvent:(id)a3;
- (BOOL)workoutWasInDayTime:(id)a3;
- (CHWorkoutFormattingManager)initWithFitnessUIFormattingManager:(id)a3 healthStore:(id)a4;
- (_NSRange)_unitRangeWithString:(id)a3 valueRange:(_NSRange)a4;
- (double)averageCyclingPowerForWorkout:(id)a3 workoutActivity:(id)a4;
- (double)averageCyclingSpeedForWorkout:(id)a3 workoutActivity:(id)a4;
- (id)_activeEnergyInfoForWorkout:(id)a3;
- (id)_distanceInfoForWorkout:(id)a3;
- (id)_durationInfoForWorkout:(id)a3;
- (id)_formattedDateForDetailWithWorkout:(id)a3;
- (id)_formattedDateForListViewWithWorkout:(id)a3;
- (id)_formattedDescriptionForDayViewWithWorkout:(id)a3;
- (id)_formattedDescriptionForListViewWithWorkout:(id)a3;
- (id)_formattedGoalForDetailViewWithWorkout:(id)a3;
- (id)_formattedValueString:(id)a3 withUnitString:(id)a4 paceFormat:(int64_t)a5 context:(id)a6 color:(id)a7;
- (id)_goalCompletionEventsForWorkout:(id)a3;
- (id)_goalStringForWorkout:(id)a3 outValue:(id *)a4;
- (id)_maxDepthInfoForDive:(id)a3;
- (id)_paceUnitForActivityType:(id)a3 paceFormat:(int64_t)a4;
- (id)_ringImageForWorkout:(id)a3 context:(id)a4;
- (id)_shareIconForWorkout:(id)a3 routeImage:(id)a4;
- (id)_shareValueForWorkout:(id)a3;
- (id)_underwaterTimeInfoForDive:(id)a3;
- (id)_workoutTypeInfoForWorkout:(id)a3;
- (id)airQualityIndexForWorkout:(id)a3 workoutActivity:(id)a4;
- (id)defaultCircularRingImageForContext:(id)a3;
- (id)fakeLocationDataForWorkout:(id)a3;
- (id)formattedActiveEnergyForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedAverageCadenceForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedAveragePowerForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedAveragePowerStringFor:(double)a3 context:(id)a4;
- (id)formattedAverageSwimPaceWithDuration:(id)a3 context:(id)a4;
- (id)formattedCount:(int64_t)a3 color:(id)a4 context:(id)a5;
- (id)formattedDateForWorkout:(id)a3 context:(id)a4;
- (id)formattedDescriptionForWorkout:(id)a3 context:(id)a4;
- (id)formattedDistanceByStrokeStyle:(id)a3 isPoolSwim:(BOOL)a4 context:(id)a5;
- (id)formattedDistanceForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedDownhillRunsCount:(int64_t)a3 context:(id)a4;
- (id)formattedDurationForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedElapsedTimeForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedElevation:(id)a3 context:(id)a4;
- (id)formattedElevationGainForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedEnergyBurn:(id)a3 context:(id)a4;
- (id)formattedFlightsClimbedForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedGoalCompletedDurationForWorkout:(id)a3 context:(id)a4;
- (id)formattedGoalForWorkout:(id)a3 context:(id)a4;
- (id)formattedGroundElevationGainForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedHeartRate:(id)a3 context:(id)a4;
- (id)formattedLapCountForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedPaceOrSpeedForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedPaceOrSpeedWithDistance:(id)a3 overDuration:(double)a4 activityType:(id)a5 context:(id)a6;
- (id)formattedPoolLengthForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedPowerStringFor:(double)a3;
- (id)formattedRacePaceOrSpeedForWorkout:(id)a3 metersPerSecond:(id)a4 context:(id)a5;
- (id)formattedRaceTimeForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedStepCountForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedSwimmingStrokeTypeForWorkout:(id)a3 context:(id)a4;
- (id)formattedTimeRangeForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedTotalEnergyForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)formattedTypeForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5;
- (id)locationForWorkout:(id)a3 workoutActivity:(id)a4;
- (id)shareImageForWorkout:(id)a3 routeImage:(id)a4;
- (id)shareTextForWorkout:(id)a3;
- (id)timeZoneForWorkout:(id)a3;
- (id)waterTemperatureForWorkout:(id)a3 workoutActivity:(id)a4;
- (id)weatherHumidityForWorkout:(id)a3 workoutActivity:(id)a4;
- (id)weatherTemperatureForWorkout:(id)a3 workoutActivity:(id)a4;
- (void)_fetchIconForConnectedGymWorkout:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_fetchIconForFirstPartyWorkout:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_fetchIconForHiddenAppWorkout:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_fetchIconForThirdPartyWorkout:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_fetchPhoneIconForWorkout:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_fetchRingImageForWorkout:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_fetchWatchIconForWorkout:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_formattedDistanceStringForWorkout:(id)a3 distanceString:(id *)a4 unitString:(id *)a5;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)fetchIconImageForWorkout:(id)a3 context:(id)a4 completion:(id)a5;
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

        v9 = [*(*(&v12 + 1) + 8 * v8) bundleIdentifier];
        [v3 addObject:v9];

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

- (CHWorkoutFormattingManager)initWithFitnessUIFormattingManager:(id)a3 healthStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = CHWorkoutFormattingManager;
  v9 = [(CHWorkoutFormattingManager *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_formattingManager, a3);
    objc_storeStrong(&v10->_healthStore, a4);
    v11 = [[ARUIRingsViewRenderer alloc] initWithMaximumRingCount:1];
    renderer = v10->_renderer;
    v10->_renderer = v11;

    v13 = [CHWorkoutDataCalculator alloc];
    v14 = [v7 unitManager];
    v15 = [(CHWorkoutDataCalculator *)v13 initWithHealthStore:v8 unitManager:v14];
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

- (id)fakeLocationDataForWorkout:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 pathForResource:@"CityRunFakedLocationCoordinates" ofType:@"json"];

  v6 = [NSData dataWithContentsOfFile:v5];
  if (v6)
  {
    v23 = 0;
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:4 error:&v23];
    v8 = v23;
    v9 = [v7 count];
    v10 = [v3 endDate];
    v11 = [v3 startDate];
    [v10 timeIntervalSinceDate:v11];
    v13 = v12 / v9;

    v14 = objc_alloc_init(NSMutableArray);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000AABB8;
    v19[3] = &unk_10083A7B0;
    v20 = v3;
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

- (BOOL)workoutHasGoalCompletionEvent:(id)a3
{
  v3 = [(CHWorkoutFormattingManager *)self _goalCompletionEventsForWorkout:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_goalCompletionEventsForWorkout:(id)a3
{
  v3 = [a3 workoutEvents];
  v4 = [NSPredicate predicateWithBlock:&stru_10083A7F0];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)formattedDescriptionForWorkout:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"DayViewDisplayContext"])
  {
    v8 = [(CHWorkoutFormattingManager *)self _formattedDescriptionForDayViewWithWorkout:v6];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  if ([v7 isEqualToString:@"WorkoutsListDisplayContext"])
  {
    v8 = [(CHWorkoutFormattingManager *)self _formattedDescriptionForListViewWithWorkout:v6];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)_formattedDescriptionForDayViewWithWorkout:(id)a3
{
  v4 = a3;
  if ([v4 workoutActivityType] == 84)
  {
    formattingManager = self->_formattingManager;
    [v4 duration];
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
    v11 = [(FIUIFormattingManager *)v10 localizedGoalDescriptionForWorkout:v4 withValue:&v25 appendActivityType:1];

    v12 = v25;
    v9 = [[NSMutableAttributedString alloc] initWithString:v11];
    v13 = [v11 length];
    v14 = +[UIColor labelColor];
    [v9 addAttribute:NSForegroundColorAttributeName value:v14 range:{0, v13}];

    v15 = [v6 goalDescriptionFont];
    [v9 addAttribute:NSFontAttributeName value:v15 range:{0, v13}];

    if ([(__CFString *)v12 length])
    {
      v16 = [v11 rangeOfString:v12];
      v18 = v17;
      v19 = [v6 valueFont];
      [v9 addAttribute:NSFontAttributeName value:v19 range:{v16, v18}];

      v20 = [(CHWorkoutFormattingManager *)self _unitRangeWithString:v11 valueRange:v16, v18];
      v22 = v21;
      v23 = [v6 goalDescriptionAttributes];
      [v9 addAttributes:v23 range:{v20, v22}];
    }
  }

  return v9;
}

- (id)_formattedDescriptionForListViewWithWorkout:(id)a3
{
  v3 = a3;
  v26 = [CHWorkoutDisplayContext displayContextWithName:@"WorkoutsListDisplayContext"];
  v4 = [v26 dateFont];
  [v4 pointSize];
  v22 = [UIFont systemFontOfSize:?];

  v23 = [v26 dateFont];
  v5 = +[CHListAndDetailViewDateFormatter listViewDateFormatter];
  v24 = v3;
  v6 = [v3 startDate];
  v21 = [v5 stringFromDate:v6];

  v7 = [v3 fiui_activityType];
  [v7 effectiveTypeIdentifier];
  [v7 swimmingLocationType];
  [v7 isIndoor];
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
  v28[0] = v23;
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

- (id)formattedDateForWorkout:(id)a3 context:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"WorkoutsListDisplayContext"])
  {
    [(CHWorkoutFormattingManager *)self _formattedDateForListViewWithWorkout:v6];
  }

  else
  {
    [(CHWorkoutFormattingManager *)self _formattedDateForDetailWithWorkout:v6];
  }
  v7 = ;

  return v7;
}

- (id)_formattedDateForDetailWithWorkout:(id)a3
{
  v3 = a3;
  v4 = [CHWorkoutDisplayContext displayContextWithName:@"WorkoutDetailDisplayContext"];
  v5 = +[CHListAndDetailViewDateFormatter detailViewDateFormatter];
  v6 = [v3 startDate];

  v7 = [v5 stringFromDate:v6];

  v8 = [NSAttributedString alloc];
  v13 = NSFontAttributeName;
  v9 = [v4 dateFont];
  v14 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [v8 initWithString:v7 attributes:v10];

  return v11;
}

- (id)_formattedDateForListViewWithWorkout:(id)a3
{
  v3 = a3;
  v4 = [CHWorkoutDisplayContext displayContextWithName:@"WorkoutsListDisplayContext"];
  v5 = [v3 startDate];

  v6 = [v4 dateFont];
  v7 = [CHListAndDetailViewDateFormatter formattedListStringForDate:v5 font:v6];

  return v7;
}

- (id)formattedTypeForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [CHWorkoutDisplayContext displayContextWithName:a5];
  if (v8)
  {
    v10 = [v8 workoutConfiguration];
    [v10 activityType];

    v11 = [v8 workoutConfiguration];
    [v11 swimmingLocationType];

    v12 = [v8 workoutConfiguration];
    [v12 locationType];

    v13 = FILocalizedNameForActivityType();
  }

  else
  {
    v14 = [v7 metadata];
    v13 = [v14 objectForKeyedSubscript:HKMetadataKeyWorkoutBrandName];

    if (![v13 length])
    {
      v15 = [v7 fiui_activityType];
      [v15 effectiveTypeIdentifier];
      [v15 swimmingLocationType];
      [v15 isIndoor];
      v16 = FILocalizedNameForActivityType();

      v13 = v16;
    }
  }

  v17 = objc_alloc_init(NSMutableParagraphStyle);
  LODWORD(v18) = 1.0;
  [v17 setHyphenationFactor:v18];
  v19 = [v9 workoutTypeFont];
  v20 = [NSAttributedString alloc];
  v26[0] = v19;
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

- (id)formattedSwimmingStrokeTypeForWorkout:(id)a3 context:(id)a4
{
  v5 = a4;
  if ([a3 fiui_strokeStyle])
  {
    v6 = [CHWorkoutDisplayContext displayContextWithName:v5];
    v7 = FILocalizedStrokeStyleName();
    v8 = [v6 dateFont];
    v9 = [NSAttributedString alloc];
    v14[0] = NSFontAttributeName;
    v14[1] = NSForegroundColorAttributeName;
    v15[0] = v8;
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

- (id)formattedDistanceByStrokeStyle:(id)a3 isPoolSwim:(BOOL)a4 context:(id)a5
{
  v33 = a4;
  v6 = a3;
  v30 = [CHWorkoutDisplayContext displayContextWithName:a5];
  v7 = [v6 allKeys];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000ABE6C;
  v41[3] = &unk_10083A818;
  v34 = v6;
  v42 = v34;
  v8 = [v7 sortedArrayUsingComparator:v41];

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
        if (v33)
        {
          v15 = [(CHWorkoutFormattingManager *)self formattingManager];
          v16 = +[HKUnit meterUnit];
          [v13 doubleValueForUnit:v16];
          [v15 localizedStringWithDistanceInMeters:3 distanceType:1 unitStyle:5 roundingMode:?];
        }

        else
        {
          v36 = 0;
          v15 = [(CHWorkoutFormattingManager *)self formattingManager];
          v16 = +[HKUnit meterUnit];
          [v13 doubleValueForUnit:v16];
          [v15 localizedNaturalScaleStringWithDistanceInMeters:4 distanceType:1 unitStyle:&v36 usedUnit:?];
        }
        v17 = ;

        v18 = +[NSBundle mainBundle];
        v19 = [v18 localizedStringForKey:@"SWIMMING_STROKE_STYLE_DISTANCE_%@_%@" value:&stru_1008680E8 table:@"Localizable"];
        v20 = [NSString stringWithFormat:v19, v14, v17];

        v21 = [v10 firstObject];
        LOBYTE(v19) = [v12 isEqualToNumber:v21];

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

  v23 = [v30 dateFont];
  v24 = [NSAttributedString alloc];
  v25 = [[NSString alloc] initWithString:v9];
  v43[0] = NSFontAttributeName;
  v43[1] = NSForegroundColorAttributeName;
  v44[0] = v23;
  v26 = +[UIColor labelColor];
  v44[1] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
  v28 = [v24 initWithString:v25 attributes:v27];

  return v28;
}

- (id)formattedTimeRangeForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v25 = [CHWorkoutDisplayContext displayContextWithName:a5];
  v9 = [v25 dateFont];
  v10 = +[UIColor secondaryLabelColor];
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12 = [v11 startDate];
  v13 = +[CHListAndDetailViewDateFormatter timeDateFormatter];
  v14 = [v13 stringFromDate:v12];

  v24 = v7;
  if (v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v7;
  }

  v16 = [v15 endDate];
  v17 = +[CHListAndDetailViewDateFormatter timeDateFormatter];
  v18 = [v17 stringFromDate:v16];

  v19 = [NSString stringWithFormat:@"%@–%@", v14, v18];
  v20 = [NSAttributedString alloc];
  v26[0] = NSFontAttributeName;
  v26[1] = NSForegroundColorAttributeName;
  v27[0] = v9;
  v27[1] = v10;
  v21 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v22 = [v20 initWithString:v19 attributes:v21];

  return v22;
}

- (id)defaultCircularRingImageForContext:(id)a3
{
  v3 = [CHWorkoutDisplayContext displayContextWithName:a3];
  [v3 ringDiameter];
  v4 = FIUICircularWorkoutGradientImage();

  return v4;
}

- (id)_ringImageForWorkout:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 fiui_completionFactor];
  v9 = v8;
  v10 = [ARUIMetricColors metricColorsForWorkout:v6];
  if ([v6 shouldUseCircularGradientImage])
  {
    v11 = [v10 gradientDarkColor];
    v12 = [v10 gradientLightColor];
    [v7 ringDiameter];
    v13 = FIUICircularGradientImage();

    goto LABEL_6;
  }

  if (![v6 _goalType])
  {
    v19 = +[CHWorkoutDisplayContext _dayViewDisplayContext];
    v20 = v19;
    if (v19 == v7)
    {
    }

    else
    {
      v21 = +[CHWorkoutDisplayContext _friendDetailDisplayContext];

      if (v21 != v7)
      {
        [v7 ringDiameter];
        v17 = FIUICircularWorkoutGradientImage();
        goto LABEL_5;
      }
    }
  }

  [v7 ringDiameter];
  v15 = v14;
  [v7 ringThickness];
  v17 = [RingViewFactory workoutRingWithPercent:v10 colors:self->_renderer diameter:v9 thickness:v15 renderer:v16];
LABEL_5:
  v13 = v17;
LABEL_6:

  return v13;
}

- (void)_fetchRingImageForWorkout:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(CHWorkoutFormattingManager *)self _ringImageForWorkout:a3 context:a4];
  v8[2](v8, v9);
}

- (void)_fetchWatchIconForWorkout:(id)a3 context:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(CHWatchIconParameters);
  v11 = [v9 sourceRevision];

  v12 = [v11 source];
  v13 = [v12 bundleIdentifier];
  [(CHIconParameters *)v10 setBundleID:v13];

  [v8 appIconWidth];
  v15 = v14;

  [(CHIconParameters *)v10 setPreferredAppStoreIconWidth:v15];
  [(CHWatchIconParameters *)v10 setIconVariant2x:32771];
  [(CHWatchIconParameters *)v10 setIconVariant3x:32771];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AC4C8;
  v17[3] = &unk_10083A840;
  v18 = v7;
  v16 = v7;
  [CHIconCache fetchWatchIconWithParameters:v10 completion:v17];
}

- (void)_fetchPhoneIconForWorkout:(id)a3 context:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(CHPhoneIconParameters);
  v11 = [v9 sourceRevision];

  v12 = [v11 source];
  v13 = [v12 bundleIdentifier];
  [(CHIconParameters *)v10 setBundleID:v13];

  [v8 appIconWidth];
  v15 = v14;

  [(CHIconParameters *)v10 setPreferredAppStoreIconWidth:v15];
  [(CHPhoneIconParameters *)v10 setAppIconFormat:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AC630;
  v17[3] = &unk_10083A840;
  v18 = v7;
  v16 = v7;
  [CHIconCache fetchPhoneIconWithParameters:v10 completion:v17];
}

- (void)_fetchIconForConnectedGymWorkout:(id)a3 context:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [CHWorkoutDisplayContext displayContextWithName:a4];
  v10 = [v12 device];
  [v9 gymKitIconWidth];
  v11 = [HKUIConnectedGymIconUtilties iconForConnectedGymDevice:v10 preferredIconWidth:?];

  if (!v11)
  {
    v11 = [(CHWorkoutFormattingManager *)self _ringImageForWorkout:v12 context:v9];
  }

  v8[2](v8, v11);
}

- (void)_fetchIconForFirstPartyWorkout:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [CHWorkoutDisplayContext displayContextWithName:a4];
  [(CHWorkoutFormattingManager *)self _fetchRingImageForWorkout:v9 context:v10 completion:v8];
}

- (void)_fetchIconForHiddenAppWorkout:(id)a3 context:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [CHWorkoutDisplayContext displayContextWithName:a4];
  v8 = objc_opt_new();
  [v8 setBundleID:@"com.apple.Health"];
  [v7 appIconWidth];
  [v8 setPreferredAppStoreIconWidth:?];
  [v8 setAppIconFormat:2];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AC8D0;
  v10[3] = &unk_10083A840;
  v11 = v6;
  v9 = v6;
  [CHIconCache fetchPhoneIconWithParameters:v8 completion:v10];
}

- (void)_fetchIconForThirdPartyWorkout:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [CHWorkoutDisplayContext displayContextWithName:a4];
  if ([v9 _isWatchWorkout])
  {
    [(CHWorkoutFormattingManager *)self _fetchWatchIconForWorkout:v9 context:v10 completion:v8];
  }

  else
  {
    [(CHWorkoutFormattingManager *)self _fetchPhoneIconForWorkout:v9 context:v10 completion:v8];
  }
}

- (BOOL)hasConnectedGymVendorIconForWorkout:(id)a3
{
  v3 = a3;
  v4 = [CHWorkoutDisplayContext displayContextWithName:@"WorkoutDetailDisplayContext"];
  v5 = [v3 device];

  [v4 gymKitIconWidth];
  v6 = [HKUIConnectedGymIconUtilties iconForConnectedGymDevice:v5 preferredIconWidth:?];

  return v6 != 0;
}

- (void)fetchIconImageForWorkout:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 fiui_isConnectedGymWorkout])
  {
    [(CHWorkoutFormattingManager *)self _fetchIconForConnectedGymWorkout:v8 context:v9 completion:v10];
  }

  else
  {
    hiddenApplicationBundleIds = self->_hiddenApplicationBundleIds;
    v12 = [v8 sourceRevision];
    v13 = [v12 source];
    v14 = [v13 bundleIdentifier];
    LODWORD(hiddenApplicationBundleIds) = [(NSArray *)hiddenApplicationBundleIds containsObject:v14];

    if (hiddenApplicationBundleIds)
    {
      _HKInitializeLogging();
      v15 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEBUG))
      {
        sub_10069B414(v15);
      }

      [(CHWorkoutFormattingManager *)self _fetchIconForHiddenAppWorkout:v8 context:v9 completion:v10];
    }

    else if ([v8 isFirstPartyWorkout])
    {
      [(CHWorkoutFormattingManager *)self _fetchIconForFirstPartyWorkout:v8 context:v9 completion:v10];
    }

    else
    {
      [(CHWorkoutFormattingManager *)self _fetchIconForThirdPartyWorkout:v8 context:v9 completion:v10];
    }
  }
}

- (id)_goalStringForWorkout:(id)a3 outValue:(id *)a4
{
  v6 = a3;
  v7 = [v6 workoutActivityType];
  formattingManager = self->_formattingManager;
  if (v7 == 84)
  {
    [(FIUIFormattingManager *)formattingManager localizedGoalDescriptionForDive:v6 outValue:a4];
  }

  else
  {
    [(FIUIFormattingManager *)formattingManager localizedGoalDescriptionForWorkout:v6 withValue:a4 appendActivityType:0];
  }
  v9 = ;

  return v9;
}

- (id)formattedGoalForWorkout:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"WorkoutDetailDisplayContext"])
  {
    v8 = [(CHWorkoutFormattingManager *)self _formattedGoalForDetailViewWithWorkout:v6];
  }

  else
  {
    v9 = [CHWorkoutDisplayContext displayContextWithName:v7];
    v36 = &stru_1008680E8;
    v10 = [(CHWorkoutFormattingManager *)self _goalStringForWorkout:v6 outValue:&v36];
    v11 = v36;
    v12 = [NSMutableAttributedString alloc];
    v13 = [v10 localizedUppercaseString];
    v8 = [v12 initWithString:v13];

    v14 = [v10 length];
    v35 = [ARUIMetricColors metricColorsForWorkout:v6];
    v15 = [v35 nonGradientTextColor];
    if ([v7 isEqualToString:@"DayViewDisplayContext"])
    {
      v16 = +[UIColor labelColor];

      v15 = v16;
    }

    v34 = v15;
    [v8 addAttribute:NSForegroundColorAttributeName value:v15 range:{0, v14}];
    v17 = [v9 goalDescriptionFont];
    [v8 addAttribute:NSFontAttributeName value:v17 range:{0, v14}];

    if ([(__CFString *)v11 length])
    {
      v18 = [v10 rangeOfString:v11];
      v20 = v19;
      [v9 valueFont];
      v33 = v7;
      v21 = v11;
      v22 = v6;
      v23 = v10;
      v24 = self;
      v26 = v25 = v9;
      [v8 addAttribute:NSFontAttributeName value:v26 range:{v18, v20}];

      v9 = v25;
      v27 = v24;
      v10 = v23;
      v6 = v22;
      v11 = v21;
      v7 = v33;
      v28 = [(CHWorkoutFormattingManager *)v27 _unitRangeWithString:v10 valueRange:v18, v20];
      v30 = v29;
      v31 = [v9 goalDescriptionAttributes];
      [v8 addAttributes:v31 range:{v28, v30}];
    }
  }

  return v8;
}

- (id)_formattedGoalForDetailViewWithWorkout:(id)a3
{
  v3 = a3;
  v4 = +[CHWorkoutDisplayContext _workoutDetailDisplayContext];
  v5 = [v4 dateFont];
  v6 = +[ARUIMetricColors keyColors];
  v7 = [v6 nonGradientTextColor];

  [v3 fiui_completionFactor];
  v9 = [NSNumber numberWithDouble:round(v8 * 100.0) / 100.0];
  v10 = [FIUIFormattingManager percentStringWithNumber:v9];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"WORKOUT_COMPLETION_FORMAT_%@" value:&stru_1008680E8 table:@"Localizable"];
  v13 = [NSString localizedStringWithFormat:v12, v10];

  v14 = [ARUIMetricColors metricColorsForWorkout:v3];

  v15 = [v14 nonGradientTextColor];

  v16 = [NSAttributedString alloc];
  v20[0] = NSFontAttributeName;
  v20[1] = NSForegroundColorAttributeName;
  v21[0] = v5;
  v21[1] = v15;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18 = [v16 initWithString:v13 attributes:v17];

  return v18;
}

- (id)formattedHeartRate:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [CHWorkoutDisplayContext displayContextWithName:a4];
  if ([v5 integerValue] < 1)
  {
    v24 = [NSAttributedString alloc];
    v22 = +[NSBundle mainBundle];
    v8 = [v22 localizedStringForKey:@"WORKOUT_EMPTY_VALUE" value:&stru_1008680E8 table:@"Localizable"];
    v29[0] = NSFontAttributeName;
    v10 = [v6 valueFont];
    v30[0] = v10;
    v29[1] = NSForegroundColorAttributeName;
    v23 = +[ARUIMetricColors heartRateColors];
    v25 = [v23 nonGradientTextColor];
    v30[1] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    v17 = [v24 initWithString:v8 attributes:v26];
  }

  else
  {
    v28 = [NSNumberFormatter localizedStringFromNumber:v5 numberStyle:0];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"BPM" value:&stru_1008680E8 table:@"Localizable"];

    v9 = [v6 unitFormatString];
    v10 = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, v28, v8];

    v11 = [NSMutableAttributedString alloc];
    v31[0] = NSFontAttributeName;
    v12 = [v6 valueFont];
    v32[0] = v12;
    v31[1] = NSForegroundColorAttributeName;
    +[ARUIMetricColors heartRateColors];
    v14 = v13 = v5;
    v15 = [v14 nonGradientTextColor];
    v32[1] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
    v17 = [v11 initWithString:v10 attributes:v16];

    v18 = [v10 rangeOfString:v8];
    v20 = v19;
    v21 = [v6 goalDescriptionFont];
    [v17 addAttribute:NSFontAttributeName value:v21 range:{v18, v20}];

    v5 = v13;
    v22 = v28;
    v23 = [v6 goalDescriptionAttributes];
    [v17 addAttributes:v23 range:{v18, v20}];
  }

  return v17;
}

- (id)formattedEnergyBurn:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = [CHWorkoutDisplayContext displayContextWithName:a4];
  v25 = [(FIUIFormattingManager *)self->_formattingManager localizedStringWithActiveEnergy:v6];

  v8 = [(FIUIFormattingManager *)self->_formattingManager localizedShortActiveEnergyUnitString];
  v9 = [v8 localizedUppercaseString];

  v10 = [v7 unitFormatString];
  v24 = v9;
  v11 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@%@" error:0, v25, v9];

  v12 = [v11 rangeOfString:v9];
  v14 = v13;
  v15 = [NSMutableAttributedString alloc];
  v26[0] = NSFontAttributeName;
  v16 = [v7 valueFont];
  v27[0] = v16;
  v26[1] = NSForegroundColorAttributeName;
  v17 = +[ARUIMetricColors energyColors];
  v18 = [v17 nonGradientTextColor];
  v27[1] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v20 = [v15 initWithString:v11 attributes:v19];

  v21 = [v7 goalDescriptionFont];
  [v20 addAttribute:NSFontAttributeName value:v21 range:{v12, v14}];

  v22 = [v7 goalDescriptionAttributes];
  [v20 addAttributes:v22 range:{v12, v14}];

  return v20;
}

- (void)_formattedDistanceStringForWorkout:(id)a3 distanceString:(id *)a4 unitString:(id *)a5
{
  v8 = a3;
  v34 = 0;
  v9 = [v8 fiui_activityType];
  v10 = FIUIDistanceTypeForActivityType();

  v11 = ARUIRingsViewRenderer_ptr;
  if ([v8 workoutActivityType] == 82)
  {
    v27 = v10;
    v28 = a4;
    v29 = a5;
    v12 = +[HKUnit meterUnit];
    v13 = [HKQuantity quantityWithUnit:v12 doubleValue:0.0];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [v8 workoutActivities];
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        v18 = 0;
        v19 = v13;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v30 + 1) + 8 * v18);
          v21 = [v20 distanceType];
          v22 = [v20 statisticsForType:v21];

          v23 = [v22 sumQuantity];
          v13 = [v19 _quantityByAddingQuantity:v23];

          v18 = v18 + 1;
          v19 = v13;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v16);
    }

    a4 = v28;
    a5 = v29;
    v10 = v27;
    v11 = ARUIRingsViewRenderer_ptr;
  }

  else
  {
    v13 = [v8 fiui_totalDistance];
  }

  formattingManager = self->_formattingManager;
  v25 = [v11[426] meterUnit];
  [v13 doubleValueForUnit:v25];
  *a4 = [(FIUIFormattingManager *)formattingManager localizedNaturalScaleStringWithDistanceInMeters:v10 distanceType:0 unitStyle:&v34 usedUnit:?];

  v26 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:v34];
  *a5 = [v26 localizedUppercaseString];
}

- (id)formattedRacePaceOrSpeedForWorkout:(id)a3 metersPerSecond:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 fiui_activityType];
  v12 = FIUIPaceFormatForWorkoutActivityType();
  v13 = FIUIDistanceTypeForActivityType();
  v14 = +[HKUnit meterUnit];
  [v9 doubleValue];
  v16 = v15;

  v17 = [HKQuantity quantityWithUnit:v14 doubleValue:v16];

  v18 = [(FIUIFormattingManager *)self->_formattingManager localizedPaceStringWithDistance:v17 overDuration:v12 paceFormat:v13 distanceType:1.0];
  v19 = [(CHWorkoutFormattingManager *)self _paceUnitForActivityType:v11 paceFormat:v12];
  LOBYTE(v14) = [v10 didWinRace];

  if (v14)
  {
    +[ARUIMetricColors raceAheadColors];
  }

  else
  {
    +[ARUIMetricColors raceBehindColors];
  }
  v20 = ;
  v21 = [v20 nonGradientTextColor];
  v22 = [(CHWorkoutFormattingManager *)self _formattedValueString:v18 withUnitString:v19 paceFormat:v12 context:v8 color:v21];

  return v22;
}

- (id)formattedGoalCompletedDurationForWorkout:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = [CHWorkoutDisplayContext displayContextWithName:a4];
  v8 = [(CHWorkoutFormattingManager *)self _goalCompletionEventsForWorkout:v6];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    [v9 fiui_distanceGoalCompletionTime];
    v11 = v10;

    v12 = [(FIUIFormattingManager *)self->_formattingManager stringWithDuration:2 durationFormat:v11];
    v13 = [NSAttributedString alloc];
    v20[0] = NSFontAttributeName;
    v14 = [v7 valueFont];
    v21[0] = v14;
    v20[1] = NSForegroundColorAttributeName;
    v15 = [ARUIMetricColors metricColorsForWorkout:v6];
    v16 = [v15 nonGradientTextColor];
    v21[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    v18 = [v13 initWithString:v12 attributes:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (_NSRange)_unitRangeWithString:(id)a3 valueRange:(_NSRange)a4
{
  v4 = a4.location + a4.length;
  v5 = [a3 length] - a4.location - a4.length;
  v6 = v4;
  result.length = v5;
  result.location = v6;
  return result;
}

- (BOOL)hasAnyNonZeroStatisticForDiscreteQuantityTypes:(id)a3 orCumulativeQuantityTypes:(id)a4 forWorkout:(id)a5 orWorkoutActivity:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v39 = 0uLL;
    v40 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v13 = v9;
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

        v18 = [v12 statisticsForType:*(*(&v37 + 1) + 8 * v17)];
        v19 = [v18 averageQuantity];

        if (v19)
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
    v13 = v10;
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

        v23 = [v12 statisticsForType:{*(*(&v33 + 1) + 8 * v22), v33}];
        v19 = [v23 sumQuantity];

        if (v19)
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
      LOBYTE(v20) = [v19 fiui_isNonzero];
    }
  }

  else
  {
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v13 = v9;
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

        v28 = [v11 statisticsForType:*(*(&v45 + 1) + 8 * v27)];
        v19 = [v28 averageQuantity];

        if (v19)
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
    v13 = v10;
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

        v31 = [v11 statisticsForType:*(*(&v41 + 1) + 8 * v30)];
        v19 = [v31 sumQuantity];

        if (v19)
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

- (BOOL)nonZeroMetadataExistsInWorkout:(id)a3 orWorkoutActivity:(id)a4 withKey:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [v8 metadata];
    v11 = [v10 objectForKeyedSubscript:v9];
    if (v11)
    {
      v12 = [v8 metadata];
      v13 = [v12 objectForKeyedSubscript:v9];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = v8;
LABEL_8:
        v10 = [v15 metadata];
        v19 = [v10 objectForKeyedSubscript:v9];
        LOBYTE(v11) = [v19 fiui_isNonzero];

        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = [v7 metadata];
    v11 = [v10 objectForKeyedSubscript:v9];
    if (v11)
    {
      v16 = [v7 metadata];
      v17 = [v16 objectForKeyedSubscript:v9];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if (v18)
      {
        v15 = v7;
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

- (BOOL)hasAverageCadenceForWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CHWorkoutFormattingManager *)self nonZeroMetadataExistsInWorkout:v6 orWorkoutActivity:v7 withKey:_HKPrivateMetadataKeyWorkoutAverageCadence])
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
    v8 = [(CHWorkoutFormattingManager *)self hasAnyNonZeroStatisticForDiscreteQuantityTypes:v10 orCumulativeQuantityTypes:v12 forWorkout:v6 orWorkoutActivity:v7];
  }

  return v8;
}

- (BOOL)hasAveragePowerForWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CHWorkoutFormattingManager *)self nonZeroMetadataExistsInWorkout:v6 orWorkoutActivity:v7 withKey:_HKPrivateMetadataKeyWorkoutAveragePower])
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
    v8 = [(CHWorkoutFormattingManager *)self hasAnyNonZeroStatisticForDiscreteQuantityTypes:v11 orCumulativeQuantityTypes:&__NSArray0__struct forWorkout:v6 orWorkoutActivity:v7];
  }

  return v8;
}

- (BOOL)hasAverageCyclingPowerForWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 fiui_activityType];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v6 fiui_activityType];
  }

  v11 = v10;

  if ([v11 identifier] == 13)
  {
    if ([(CHWorkoutFormattingManager *)self nonZeroMetadataExistsInWorkout:v6 orWorkoutActivity:v7 withKey:_HKPrivateMetadataKeyWorkoutAveragePower])
    {
      v12 = 1;
    }

    else
    {
      v13 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingPower];
      v16 = v13;
      v14 = [NSArray arrayWithObjects:&v16 count:1];
      v12 = [(CHWorkoutFormattingManager *)self hasAnyNonZeroStatisticForDiscreteQuantityTypes:v14 orCumulativeQuantityTypes:&__NSArray0__struct forWorkout:v6 orWorkoutActivity:v7];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isIndoorCyclingForWorkout:(id)a3 workoutActivity:(id)a4
{
  v5 = a3;
  v6 = [a4 fiui_activityType];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 fiui_activityType];
  }

  v9 = v8;

  if ([v9 identifier] == 13)
  {
    v10 = [v9 isIndoor];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasAverageCyclingSpeedForWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 fiui_activityType];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v6 fiui_activityType];
  }

  v11 = v10;

  if ([v11 identifier] == 13)
  {
    v12 = [(CHWorkoutFormattingManager *)self nonZeroMetadataExistsInWorkout:v6 orWorkoutActivity:v7 withKey:_HKPrivateMetadataKeyWorkoutAveragePace];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)hasDistanceForWorkout:(id)a3 workoutActivity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = ARUIRingsViewRenderer_ptr;
  v8 = +[HKUnit meterUnit];
  v9 = [HKQuantity quantityWithUnit:v8 doubleValue:0.0];

  if (v6)
  {
    v10 = [v6 distanceType];
    v11 = [v6 statisticsForType:v10];

    v12 = [v11 sumQuantity];

LABEL_13:
    v9 = v12;
    goto LABEL_14;
  }

  if ([v5 workoutActivityType] != 82)
  {
    v12 = [v5 fiui_totalDistance];

    goto LABEL_13;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [v5 workoutActivities];
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v27 + 1) + 8 * v17);
        v20 = [v19 distanceType];
        v21 = [v19 statisticsForType:v20];

        v22 = [v21 sumQuantity];
        v9 = [v18 _quantityByAddingQuantity:v22];

        v17 = v17 + 1;
        v18 = v9;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v7 = ARUIRingsViewRenderer_ptr;
LABEL_14:
  v23 = [v7[426] meterUnit];
  [v9 doubleValueForUnit:v23];
  v25 = v24 > 0.0;

  return v25;
}

- (BOOL)hasElevationAscendedDataForWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = _HKPrivateMetadataKeyWorkoutElevationAscended;
  v7 = a4;
  v8 = a3;
  LOBYTE(v6) = [(CHWorkoutFormattingManager *)self nonZeroMetadataExistsInWorkout:v8 orWorkoutActivity:v7 withKey:v6];
  LOBYTE(self) = [(CHWorkoutFormattingManager *)self nonZeroMetadataExistsInWorkout:v8 orWorkoutActivity:v7 withKey:HKMetadataKeyElevationAscended];

  return (v6 | self) & 1;
}

- (BOOL)hasFlightsClimbedForWorkout:(id)a3 workoutActivity:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierFlightsClimbed];
    v7 = [v5 statisticsForType:v6];
    v8 = v7 != 0;
  }

  else
  {
    v6 = [a3 totalFlightsClimbed];
    v7 = +[HKUnit countUnit];
    [v6 doubleValueForUnit:v7];
    v8 = v9 > 0.0;
  }

  return v8;
}

- (BOOL)shouldShowDistanceForWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 sourceRevision];
  v9 = [v8 source];
  v10 = [v9 _hasFirstPartyBundleID];

  if (v10 && ![(CHWorkoutFormattingManager *)self supportsDistanceForWorkout:v6 workoutActivity:v7])
  {
    v11 = 0;
  }

  else
  {
    v11 = [(CHWorkoutFormattingManager *)self hasDistanceForWorkout:v6 workoutActivity:v7];
  }

  return v11;
}

- (BOOL)supportsDistanceForWorkout:(id)a3 workoutActivity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableSet);
  v8 = [v6 fiui_activityType];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v5 fiui_activityType];
  }

  v11 = v10;

  v30 = v11;
  v31 = v6;
  if ([v11 identifier] == 82)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = [v5 workoutActivities];
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v37 + 1) + 8 * i) fiui_activityType];
          if ([v17 effectiveTypeIdentifier] != 83)
          {
            [v7 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v14);
    }
  }

  else
  {
    [v7 addObject:v11];
  }

  v18 = [FIUIWorkoutDefaultMetricsProvider metricsVersionForWorkout:v5];
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
        v26 = [v5 _activityMoveMode];
        v27 = FIUIDeviceSupportsElevationGain();
        v28 = [v25 initWithMetricsVersion:v18 activityType:v24 activityMoveMode:v26 deviceSupportsElevationMetrics:v27 deviceSupportsGroundElevationMetrics:FIUIDeviceSupportsGroundElevation()];
        v22 &= [v28 isMetricTypeSupported:1 isMachineWorkout:objc_msgSend(v5 activityType:{"fiui_isConnectedGymWorkout"), v24}];
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

- (BOOL)supportsPaceForWorkout:(id)a3 workoutActivity:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v5 = a4;
  }

  v7 = [v5 fiui_activityType];
  v8 = [FIUIWorkoutDefaultMetricsProvider metricsVersionForWorkout:v6];
  v9 = [FIUIWorkoutDefaultMetricsProvider alloc];
  v10 = [v6 _activityMoveMode];
  v11 = FIUIDeviceSupportsElevationGain();
  v12 = [v9 initWithMetricsVersion:v8 activityType:v7 activityMoveMode:v10 deviceSupportsElevationMetrics:v11 deviceSupportsGroundElevationMetrics:FIUIDeviceSupportsGroundElevation()];
  v13 = [v6 fiui_isConnectedGymWorkout];

  v14 = [v12 isMetricTypeSupported:8 isMachineWorkout:v13 activityType:v7];
  return v14;
}

- (BOOL)supportsElevationAscendedForWorkout:(id)a3 workoutActivity:(id)a4
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  v5 = [v4 fiui_activityType];
  v6 = [v5 bridge_supportsElevationAscendedInSummary];

  return v6;
}

- (BOOL)supportsElevationDescendedForWorkout:(id)a3 workoutActivity:(id)a4
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  v5 = [v4 fiui_activityType];
  v6 = [v5 bridge_supportsElevationDescendedInSummary];

  return v6;
}

- (BOOL)supportsDownhillRunsCountForWorkout:(id)a3 workoutActivity:(id)a4
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  v5 = [v4 fiui_activityType];
  v6 = +[CHWorkoutDownhillRun supportsActivityType:](CHWorkoutDownhillRun, "supportsActivityType:", [v5 effectiveTypeIdentifier]);

  return v6;
}

- (id)formattedActiveEnergyForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
    v11 = [v8 statisticsForType:v10];
    v12 = [v11 sumQuantity];
  }

  else
  {
    v12 = [a3 totalEnergyBurned];
  }

  v13 = [(CHWorkoutFormattingManager *)self formattedEnergyBurn:v12 context:a5];

  return v13;
}

- (id)formattedAverageCadenceForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CHWorkoutFormattingManager *)self hasAverageCadenceForWorkout:v8 workoutActivity:v9])
  {
    v37 = v8;
    if (v9)
    {
      [v9 fiui_averageCadence];
      v12 = v11;
      v13 = [v9 workoutConfiguration];
      v14 = [v13 activityType];
    }

    else
    {
      [v8 fiui_averageCadence];
      v12 = v16;
      v14 = [v8 workoutActivityType];
    }

    v17 = [NSNumber numberWithDouble:v12];
    v35 = [FIUIFormattingManager stringWithNumber:v17 decimalPrecision:1];

    v18 = [objc_opt_class() localizedShortCadenceUnitStringForActivityType:v14];
    v19 = [v18 localizedUppercaseString];

    v20 = [CHWorkoutDisplayContext displayContextWithName:v10];
    v21 = [v20 unitFormatString];
    v22 = [NSString stringWithValidatedFormat:v21 validFormatSpecifiers:@"%@%@" error:0, v35, v19];

    v23 = [NSMutableAttributedString alloc];
    v38[0] = NSFontAttributeName;
    v24 = [v20 valueFont];
    v39[0] = v24;
    v38[1] = NSForegroundColorAttributeName;
    v25 = +[ARUIMetricColors cadenceColors];
    [v25 nonGradientTextColor];
    v26 = v36 = v10;
    v39[1] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
    v15 = [v23 initWithString:v22 attributes:v27];

    v28 = [v22 rangeOfString:v19];
    v30 = v29;
    v31 = [v20 goalDescriptionFont];
    [v15 addAttribute:NSFontAttributeName value:v31 range:{v28, v30}];

    v32 = [v20 goalDescriptionAttributes];
    v33 = v30;
    v10 = v36;
    [v15 addAttributes:v32 range:{v28, v33}];

    v8 = v37;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (double)averageCyclingPowerForWorkout:(id)a3 workoutActivity:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierCyclingPower];
    v7 = [v5 statisticsForType:v6];
    v8 = [v7 averageQuantity];
    [v8 _value];
    v10 = v9;
  }

  else
  {
    [a3 fiui_averagePower];
    v10 = v11;
  }

  return v10;
}

- (double)averageCyclingSpeedForWorkout:(id)a3 workoutActivity:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierCyclingSpeed];
    v7 = [v5 statisticsForType:v6];
    v8 = [v7 averageQuantity];
    [v8 _value];
    v10 = v9;
  }

  else
  {
    [a3 fiui_averagePace];
    v10 = v11;
  }

  return v10;
}

- (id)formattedAveragePowerForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CHWorkoutFormattingManager *)self hasAveragePowerForWorkout:v8 workoutActivity:v9])
  {
    if (v9)
    {
      v11 = [v9 fiui_activityType];
      v12 = [v11 identifier];

      v13 = &HKQuantityTypeIdentifierCyclingPower;
      if (v12 != 13)
      {
        v13 = &HKQuantityTypeIdentifierRunningPower;
      }

      v14 = *v13;
      v15 = [[HKQuantityType alloc] initWithIdentifier:v14];

      v16 = [v9 statisticsForType:v15];
      v17 = [v16 averageQuantity];
      [v17 _value];
      v19 = v18;
    }

    else
    {
      [v8 fiui_averagePower];
      v19 = v21;
    }

    v20 = [(CHWorkoutFormattingManager *)self formattedAveragePowerStringFor:v10 context:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)formattedAveragePowerStringFor:(double)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(CHWorkoutFormattingManager *)self formattedPowerStringFor:a3];
  v8 = [objc_opt_class() localizedShortPowerUnitString];
  v9 = [v8 localizedUppercaseString];

  v10 = [CHWorkoutDisplayContext displayContextWithName:v6];

  v11 = [v10 unitFormatString];
  v12 = [NSString stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@%@" error:0, v7, v9];

  v13 = [NSMutableAttributedString alloc];
  v25[0] = NSFontAttributeName;
  v14 = [v10 valueFont];
  v26[0] = v14;
  v25[1] = NSForegroundColorAttributeName;
  v15 = +[ARUIMetricColors powerColors];
  v16 = [v15 nonGradientTextColor];
  v26[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  v18 = [v13 initWithString:v12 attributes:v17];

  v19 = [v12 rangeOfString:v9];
  v21 = v20;
  v22 = [v10 goalDescriptionFont];
  [v18 addAttribute:NSFontAttributeName value:v22 range:{v19, v21}];

  v23 = [v10 goalDescriptionAttributes];
  [v18 addAttributes:v23 range:{v19, v21}];

  return v18;
}

- (id)formattedPowerStringFor:(double)a3
{
  v3 = [NSNumber numberWithDouble:floor(a3)];
  v4 = [NSNumberFormatter localizedStringFromNumber:v3 numberStyle:0];

  return v4;
}

- (id)formattedDistanceForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [CHWorkoutDisplayContext displayContextWithName:a5];
  v54 = v9;
  v55 = v8;
  if (v9)
  {
    v11 = [v9 distanceType];
    v12 = [v9 statisticsForType:v11];

    v13 = [v12 sumQuantity];
    v14 = [v9 fiui_activityType];
    v15 = FIUIDistanceTypeForActivityType();

    v62 = 0;
    formattingManager = self->_formattingManager;
    v17 = +[HKUnit meterUnit];
    [v13 doubleValueForUnit:v17];
    v18 = [(FIUIFormattingManager *)formattingManager localizedNaturalScaleStringWithDistanceInMeters:v15 distanceType:0 unitStyle:&v62 usedUnit:?];

    v19 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:v62];
    v20 = [v19 localizedUppercaseString];
  }

  else if ([v8 workoutActivityType] == 82)
  {
    v52 = v10;
    v21 = +[HKUnit meterUnit];
    v22 = [HKQuantity quantityWithUnit:v21 doubleValue:0.0];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v23 = [v8 workoutActivities];
    v24 = [v23 countByEnumeratingWithState:&v58 objects:v65 count:16];
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
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v58 + 1) + 8 * v27);
          v30 = [v29 distanceType];
          v31 = [v29 statisticsForType:v30];

          v32 = [v31 sumQuantity];
          v22 = [v28 _quantityByAddingQuantity:v32];

          v27 = v27 + 1;
          v28 = v22;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v25);
    }

    v62 = 0;
    v33 = self->_formattingManager;
    v34 = +[HKUnit meterUnit];
    [v22 doubleValueForUnit:v34];
    v18 = [(FIUIFormattingManager *)v33 localizedNaturalScaleStringWithDistanceInMeters:1 distanceType:0 unitStyle:&v62 usedUnit:?];

    v35 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:v62];
    v20 = [v35 localizedUppercaseString];

    v10 = v52;
  }

  else
  {
    v56 = 0;
    v57 = 0;
    [(CHWorkoutFormattingManager *)self _formattedDistanceStringForWorkout:v8 distanceString:&v57 unitString:&v56];
    v18 = v57;
    v20 = v56;
  }

  v51 = v18;
  v53 = v20;
  v36 = [v10 unitFormatString];
  v37 = [NSString stringWithValidatedFormat:v36 validFormatSpecifiers:@"%@%@" error:0, v18, v20];

  v38 = [v37 rangeOfString:v20];
  v40 = v39;
  v41 = v10;
  v42 = [NSMutableAttributedString alloc];
  v63[0] = NSFontAttributeName;
  v43 = [v41 valueFont];
  v64[0] = v43;
  v63[1] = NSForegroundColorAttributeName;
  v44 = +[ARUIMetricColors distanceColors];
  v45 = [v44 nonGradientTextColor];
  v64[1] = v45;
  v46 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
  v47 = [v42 initWithString:v37 attributes:v46];

  v48 = [v41 goalDescriptionFont];
  [v47 addAttribute:NSFontAttributeName value:v48 range:{v38, v40}];

  v49 = [v41 goalDescriptionAttributes];
  [v47 addAttributes:v49 range:{v38, v40}];

  return v47;
}

- (id)formattedDurationForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [CHWorkoutDisplayContext displayContextWithName:a5];
  if (v8)
  {
    [v8 duration];
  }

  else
  {
    [v9 fiui_duration];
  }

  v12 = v11;
  v13 = [v9 workoutActivityType];

  if (v12 < 3600.0 && v13 == 84)
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
  v18 = [v10 valueFont];
  v25[0] = v18;
  v24[1] = NSForegroundColorAttributeName;
  v19 = +[ARUIMetricColors elapsedTimeColors];
  v20 = [v19 nonGradientTextColor];
  v25[1] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v22 = [v17 initWithString:v16 attributes:v21];

  return v22;
}

- (id)formattedElapsedTimeForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [CHWorkoutDisplayContext displayContextWithName:a5];
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  [v11 elapsedTime];
  v12 = [(FIUIFormattingManager *)self->_formattingManager stringWithDuration:2 durationFormat:?];
  v13 = [NSAttributedString alloc];
  v20[0] = NSFontAttributeName;
  v14 = [v10 valueFont];
  v21[0] = v14;
  v20[1] = NSForegroundColorAttributeName;
  v15 = +[ARUIMetricColors elapsedTimeColors];
  v16 = [v15 nonGradientTextColor];
  v21[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18 = [v13 initWithString:v12 attributes:v17];

  return v18;
}

- (id)formattedRaceTimeForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = [CHWorkoutDisplayContext displayContextWithName:a5];
  [v7 raceTime];
  v9 = [(FIUIFormattingManager *)self->_formattingManager stringWithDuration:2 durationFormat:?];
  v10 = [v7 didWinRace];

  if (v10)
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
  v13 = [v8 valueFont];
  v19[0] = v13;
  v18[1] = NSForegroundColorAttributeName;
  v14 = [v11 nonGradientTextColor];
  v19[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [v12 initWithString:v9 attributes:v15];

  return v16;
}

- (id)formattedElevationGainForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [v9 metadata];
    v12 = [v11 objectForKeyedSubscript:HKMetadataKeyElevationAscended];

    if (v12)
    {
      goto LABEL_7;
    }

    v13 = v9;
  }

  else
  {
    v14 = [v8 metadata];
    v12 = [v14 objectForKeyedSubscript:HKMetadataKeyElevationAscended];

    if (v12)
    {
      goto LABEL_7;
    }

    v13 = v8;
  }

  v15 = [v13 metadata];
  v12 = [v15 objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutElevationAscended];

LABEL_7:
  v16 = [(CHWorkoutFormattingManager *)self formattedElevation:v12 context:v10];

  return v16;
}

- (id)formattedElevation:(id)a3 context:(id)a4
{
  formattingManager = self->_formattingManager;
  v7 = a4;
  v8 = a3;
  v9 = [(FIUIFormattingManager *)formattingManager unitManager];
  v10 = [v9 userDistanceElevationUnit];

  v11 = [CHWorkoutDisplayContext displayContextWithName:v7];

  v12 = self->_formattingManager;
  v13 = +[HKUnit meterUnit];
  [v8 doubleValueForUnit:v13];
  v15 = v14;

  v32 = [(FIUIFormattingManager *)v12 localizedStringWithDistanceInMeters:v10 distanceUnit:0 unitStyle:1 decimalPrecision:v15];

  v16 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:v10];
  v17 = [v16 localizedUppercaseString];

  v18 = [v11 unitFormatString];
  v19 = [NSString stringWithValidatedFormat:v18 validFormatSpecifiers:@"%@%@" error:0, v32, v17];

  v20 = [v19 rangeOfString:v17];
  v22 = v21;
  v23 = +[ARUIMetricColors elevationColors];
  v24 = [v23 nonGradientTextColor];

  v25 = [NSMutableAttributedString alloc];
  v33[0] = NSFontAttributeName;
  v26 = [v11 valueFont];
  v33[1] = NSForegroundColorAttributeName;
  v34[0] = v26;
  v34[1] = v24;
  v27 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
  v28 = [v25 initWithString:v19 attributes:v27];

  v29 = [v11 goalDescriptionFont];
  [v28 addAttribute:NSFontAttributeName value:v29 range:{v20, v22}];

  v30 = [v11 goalDescriptionAttributes];
  [v28 addAttributes:v30 range:{v20, v22}];

  return v28;
}

- (id)formattedFlightsClimbedForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CHWorkoutFormattingManager *)self hasFlightsClimbedForWorkout:v8 workoutActivity:v9])
  {
    if (v9)
    {
      v11 = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierFlightsClimbed];
      v12 = [v9 statisticsForType:v11];
      v13 = [v12 sumQuantity];
      [v13 _value];
      v15 = v14;
    }

    else
    {
      v11 = [v8 totalFlightsClimbed];
      v12 = +[HKUnit countUnit];
      [v11 doubleValueForUnit:v12];
      v15 = v17;
    }

    v18 = [NSNumber numberWithDouble:v15];
    v19 = [NSNumberFormatter localizedStringFromNumber:v18 numberStyle:0];

    v20 = [CHWorkoutDisplayContext displayContextWithName:v10];
    v21 = [NSAttributedString alloc];
    v27[0] = NSFontAttributeName;
    v22 = [v20 valueFont];
    v28[0] = v22;
    v27[1] = NSForegroundColorAttributeName;
    v23 = +[ARUIMetricColors flightsClimbedColors];
    v24 = [v23 nonGradientTextColor];
    v28[1] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    v16 = [v21 initWithString:v19 attributes:v25];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)formattedGroundElevationGainForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [v9 metadata];
    v12 = [v11 objectForKeyedSubscript:NLWorkoutMetadataKeyMaxGroundElevation];

    v13 = v9;
  }

  else
  {
    v14 = [v8 metadata];
    v12 = [v14 objectForKeyedSubscript:NLWorkoutMetadataKeyMaxGroundElevation];

    v13 = v8;
  }

  v15 = [v13 metadata];
  v16 = [v15 objectForKeyedSubscript:NLWorkoutMetadataKeyMinGroundElevation];

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
    v52 = v8;
    v18 = +[HKUnit meterUnit];
    [v12 doubleValueForUnit:v18];
    v20 = v19;

    v53 = [(FIUIFormattingManager *)self->_formattingManager localizedNaturalScaleStringWithDistanceInMeters:5 distanceType:0 unitStyle:&v54 usedUnit:v20];
    v21 = +[HKUnit meterUnit];
    [v16 doubleValueForUnit:v21];
    v23 = v22;

    [(FIUIFormattingManager *)self->_formattingManager localizedNaturalScaleStringWithDistanceInMeters:5 distanceType:0 unitStyle:&v54 usedUnit:v23];
    v47 = v49 = v9;
    [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:v54];
    v24 = v48 = v16;
    v45 = [(CHWorkoutFormattingManager *)self _groundElevationFont];
    v25 = objc_alloc_init(NSMutableParagraphStyle);
    [(CHWorkoutFormattingManager *)self _groundElevationHeight];
    [v25 setMaximumLineHeight:v26];
    [(CHWorkoutFormattingManager *)self _groundElevationHeight];
    v28 = v25;
    [v25 setMinimumLineHeight:v27];
    v51 = v10;
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
    v38 = [v36 localizedUppercaseString];
    v56[0] = v45;
    v55[0] = NSFontAttributeName;
    v55[1] = NSForegroundColorAttributeName;
    v39 = +[ARUIMetricColors elevationColors];
    v40 = [v39 nonGradientTextColor];
    v55[2] = NSParagraphStyleAttributeName;
    v56[1] = v40;
    v56[2] = v28;
    v41 = v28;
    v42 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:3];
    v43 = [v37 initWithString:v38 attributes:v42];

    v10 = v51;
    v12 = v50;

    v8 = v52;
    v16 = v48;

    v9 = v49;
  }

  return v43;
}

- (id)formattedLapCountForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a5;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a3;
  }

  v10 = [v9 workoutEvents];
  v11 = [NSPredicate predicateWithBlock:&stru_10083A860];
  v12 = [v10 filteredArrayUsingPredicate:v11];
  v13 = [v12 count];

  v14 = +[ARUIMetricColors lapColors];
  v15 = [v14 nonGradientTextColor];

  v16 = [(CHWorkoutFormattingManager *)self formattedCount:v13 color:v15 context:v8];

  return v16;
}

- (id)formattedDownhillRunsCount:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = +[ARUIMetricColors lapColors];
  v8 = [v7 nonGradientTextColor];

  v9 = [(CHWorkoutFormattingManager *)self formattedCount:a3 color:v8 context:v6];

  return v9;
}

- (id)formattedCount:(int64_t)a3 color:(id)a4 context:(id)a5
{
  if (a3)
  {
    v7 = a5;
    v8 = a4;
    v9 = [NSNumber numberWithInteger:a3];
    v10 = [NSNumberFormatter localizedStringFromNumber:v9 numberStyle:0];

    v11 = [CHWorkoutDisplayContext displayContextWithName:v7];

    v12 = [NSAttributedString alloc];
    v17[0] = NSFontAttributeName;
    v13 = [v11 valueFont];
    v17[1] = NSForegroundColorAttributeName;
    v18[0] = v13;
    v18[1] = v8;
    v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

    v15 = [v12 initWithString:v10 attributes:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)formattedPaceOrSpeedForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 fiui_activityType];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v8 fiui_activityType];
  }

  v14 = v13;

  if (v9)
  {
    v15 = [v9 distanceType];
    v16 = [v9 statisticsForType:v15];

    v17 = [v16 sumQuantity];
    [v9 duration];
    v19 = v18;
  }

  else if ((([v8 fiui_isConnectedGymWorkout] & 1) != 0 || objc_msgSend(v14, "identifier") == 13 && objc_msgSend(v14, "isIndoor")) && objc_msgSend(v8, "fiui_hasAveragePace"))
  {
    [v8 fiui_averagePace];
    v21 = v20;
    v22 = +[HKUnit meterUnit];
    v17 = [HKQuantity quantityWithUnit:v22 doubleValue:v21];

    v19 = 1.0;
  }

  else
  {
    v17 = [v8 totalDistance];
    [v8 duration];
    v19 = v23;
  }

  v24 = [(CHWorkoutFormattingManager *)self formattedPaceOrSpeedWithDistance:v17 overDuration:v14 activityType:v10 context:v19];

  return v24;
}

- (id)formattedPaceOrSpeedWithDistance:(id)a3 overDuration:(double)a4 activityType:(id)a5 context:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = FIUIPaceFormatForWorkoutActivityType();
  v14 = [(FIUIFormattingManager *)self->_formattingManager localizedPaceStringWithDistance:v12 overDuration:v13 paceFormat:FIUIDistanceTypeForActivityType() distanceType:a4];

  v15 = [(CHWorkoutFormattingManager *)self _paceUnitForActivityType:v11 paceFormat:v13];

  v16 = +[ARUIMetricColors paceColors];
  v17 = [v16 nonGradientTextColor];

  v18 = [(CHWorkoutFormattingManager *)self _formattedValueString:v14 withUnitString:v15 paceFormat:v13 context:v10 color:v17];

  return v18;
}

- (id)formattedAverageSwimPaceWithDuration:(id)a3 context:(id)a4
{
  formattingManager = self->_formattingManager;
  v7 = a4;
  [a3 doubleValue];
  v8 = [(FIUIFormattingManager *)formattingManager stringWithDuration:1 durationFormat:?];
  v9 = [(FIUIFormattingManager *)self->_formattingManager unitManager];
  v10 = [v9 userLapLengthHKUnit];

  v11 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:FIUIDistanceUnitForHKUnit()];
  v12 = FIUINumberOfUnitsInPaceForPaceFormat();
  v13 = [v11 localizedLowercaseString];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"PACE_MANY_UNIT_FORMAT" value:&stru_1008680E8 table:@"Localizable"];
  v16 = [NSNumber numberWithUnsignedInteger:v12];
  v17 = [NSString stringWithFormat:v15, v16, v13];

  v18 = +[ARUIMetricColors paceColors];
  v19 = [v18 nonGradientTextColor];

  v20 = [(CHWorkoutFormattingManager *)self _formattedValueString:v8 withUnitString:v17 paceFormat:2 context:v7 color:v19];

  return v20;
}

- (id)_paceUnitForActivityType:(id)a3 paceFormat:(int64_t)a4
{
  v6 = a3;
  v7 = FIUIDistanceTypeForActivityType();
  if (a4 == 4)
  {
    v8 = [(FIUIFormattingManager *)self->_formattingManager localizedSpeedUnitStringForActivityType:v6];
  }

  else
  {
    v9 = v7;
    v10 = [v6 identifier];

    formattingManager = self->_formattingManager;
    v12 = [(FIUIFormattingManager *)formattingManager unitManager];
    v13 = v12;
    if (v10 == 46)
    {
      v14 = [v12 userLapLengthHKUnit];

      v8 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:FIUIDistanceUnitForHKUnit()];
      v13 = v14;
    }

    else
    {
      v15 = -[FIUIFormattingManager localizedShortUnitStringForDistanceUnit:](formattingManager, "localizedShortUnitStringForDistanceUnit:", [v12 paceDistanceUnitForDistanceType:v9]);
      v8 = [v15 localizedUppercaseString];
    }

    if ((a4 - 2) >= 2)
    {
      if (a4 != 1)
      {
        goto LABEL_11;
      }

      v6 = +[NSBundle mainBundle];
      v20 = [v6 localizedStringForKey:@"FITNESS_PACE_UNIT_FORMAT_%@" value:&stru_1008680E8 table:@"Localizable"];
      v21 = [NSString stringWithFormat:v20, v8];

      v8 = v21;
    }

    else
    {
      v16 = FIUINumberOfUnitsInPaceForPaceFormat();
      v17 = [v8 localizedLowercaseString];

      v6 = +[NSBundle mainBundle];
      v18 = [v6 localizedStringForKey:@"PACE_MANY_UNIT_FORMAT" value:&stru_1008680E8 table:@"Localizable"];
      v19 = [NSNumber numberWithUnsignedInteger:v16];
      v8 = [NSString stringWithFormat:v18, v19, v17];
    }
  }

LABEL_11:

  return v8;
}

- (id)_formattedValueString:(id)a3 withUnitString:(id)a4 paceFormat:(int64_t)a5 context:(id)a6 color:(id)a7
{
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = [CHWorkoutDisplayContext displayContextWithName:a6];
  v15 = [v14 goalDescriptionFont];
  v16 = [v14 goalDescriptionAttributes];
  if ((a5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v17 = [v14 pace100UnitFont];

    v16 = &__NSDictionary0__struct;
    v34 = v17;
  }

  else
  {
    v34 = v15;
  }

  v18 = [v14 unitFormatString];
  v19 = [NSString stringWithValidatedFormat:v18 validFormatSpecifiers:@"%@%@" error:0, v13, v12];

  v20 = [v19 rangeOfString:v12];
  v22 = v21;

  v23 = [v19 rangeOfString:v13];
  v32 = v24;
  v33 = v23;

  v25 = [NSMutableAttributedString alloc];
  v35[0] = NSFontAttributeName;
  v26 = [v14 valueFont];
  v35[1] = NSForegroundColorAttributeName;
  v36[0] = v26;
  v36[1] = v11;
  [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  v28 = v27 = v11;
  v29 = [v25 initWithString:v19 attributes:v28];

  [v29 addAttribute:NSFontAttributeName value:v34 range:{v20, v22}];
  [v29 addAttributes:v16 range:{v20, v22}];
  v30 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:0];

  if (v30 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    [v29 addAttribute:NSWritingDirectionAttributeName value:&off_10086E4B8 range:{v33, v32}];
  }

  return v29;
}

- (id)formattedPoolLengthForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [v9 workoutConfiguration];
    v12 = [v11 lapLength];

    if (v12)
    {
      v40 = v8;
      v41 = 0;
      v39 = v9;
      v13 = v9;
LABEL_6:
      [v13 fiui_activityType];
      v38 = v35 = v12;
      v15 = FIUIDistanceTypeForActivityType();
      formattingManager = self->_formattingManager;
      v17 = +[HKUnit meterUnit];
      [v12 doubleValueForUnit:v17];
      v37 = [(FIUIFormattingManager *)formattingManager localizedNaturalScaleStringWithDistanceInMeters:v15 distanceType:0 unitStyle:&v41 usedUnit:?];

      v18 = [(FIUIFormattingManager *)self->_formattingManager localizedShortUnitStringForDistanceUnit:v41];
      v36 = [v18 localizedUppercaseString];

      v19 = [CHWorkoutDisplayContext displayContextWithName:v10];
      v20 = [v19 unitFormatString];
      v21 = [NSString stringWithValidatedFormat:v20 validFormatSpecifiers:@"%@%@" error:0, v37, v36];

      v22 = [v21 rangeOfString:v36];
      v34 = v23;
      v24 = [NSMutableAttributedString alloc];
      v42[0] = NSFontAttributeName;
      v25 = [v19 valueFont];
      v43[0] = v25;
      v42[1] = NSForegroundColorAttributeName;
      +[ARUIMetricColors lapColors];
      v27 = v26 = v10;
      v28 = [v27 nonGradientTextColor];
      v43[1] = v28;
      v29 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
      v30 = [v24 initWithString:v21 attributes:v29];

      v10 = v26;
      v31 = [v19 goalDescriptionFont];
      [v30 addAttribute:NSFontAttributeName value:v31 range:{v22, v34}];

      v32 = [v19 goalDescriptionAttributes];
      [v30 addAttributes:v32 range:{v22, v34}];

      v9 = v39;
      v8 = v40;
      goto LABEL_8;
    }
  }

  else
  {
    v14 = [v8 fiui_lapLength];
    if (v14)
    {
      v12 = v14;
      v39 = 0;
      v40 = v8;
      v41 = 0;
      v13 = v8;
      goto LABEL_6;
    }
  }

  v30 = 0;
LABEL_8:

  return v30;
}

- (id)formattedStepCountForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CHWorkoutFormattingManager *)self hasStepCountForWorkout:v8 workoutActivity:v9])
  {
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    [v11 fiui_totalStepCount];
    v13 = [NSNumber numberWithDouble:?];
    v14 = [NSNumberFormatter localizedStringFromNumber:v13 numberStyle:0];

    v15 = [CHWorkoutDisplayContext displayContextWithName:v10];
    v16 = [NSAttributedString alloc];
    v22[0] = NSFontAttributeName;
    v17 = [v15 valueFont];
    v23[0] = v17;
    v22[1] = NSForegroundColorAttributeName;
    v18 = +[ARUIMetricColors stepColors];
    v19 = [v18 nonGradientTextColor];
    v23[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v12 = [v16 initWithString:v14 attributes:v20];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)formattedTotalEnergyForWorkout:(id)a3 workoutActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v21 = self;
    v10 = a5;
    v11 = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
    v12 = [v9 statisticsForType:v11];
    v13 = [v12 sumQuantity];
    v14 = [[HKQuantityType alloc] initWithIdentifier:HKQuantityTypeIdentifierBasalEnergyBurned];
    v15 = [v9 statisticsForType:v14];
    v16 = [v15 sumQuantity];
    v17 = [v13 _quantityByAddingQuantity:v16];

    self = v21;
  }

  else
  {
    v18 = a5;
    v11 = [v8 totalEnergyBurned];
    v12 = [v8 _totalBasalEnergyBurned];
    v17 = [v11 _quantityByAddingQuantity:v12];
  }

  v19 = [(CHWorkoutFormattingManager *)self formattedEnergyBurn:v17 context:a5];

  return v19;
}

- (id)weatherTemperatureForWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CHWorkoutFormattingManager *)self shouldFakeData])
  {
    v8 = +[HKUnit degreeFahrenheitUnit];
    v9 = [HKQuantity quantityWithUnit:v8 doubleValue:72.0];
  }

  else
  {
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    v8 = [v10 metadata];
    v9 = [v8 objectForKeyedSubscript:HKMetadataKeyWeatherTemperature];
  }

  v11 = v9;

  return v11;
}

- (id)waterTemperatureForWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CHWorkoutFormattingManager *)self shouldFakeData])
  {
    v8 = +[HKUnit degreeCelsiusUnit];
    v9 = [HKQuantity quantityWithUnit:v8 doubleValue:18.0];
  }

  else
  {
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    v8 = [v10 metadata];
    v9 = [v8 objectForKeyedSubscript:NLPrivateMetadataKeyAverageWaterTemperature];
  }

  v11 = v9;

  return v11;
}

- (id)weatherHumidityForWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CHWorkoutFormattingManager *)self shouldFakeData])
  {
    v8 = +[HKUnit percentUnit];
    v9 = [HKQuantity quantityWithUnit:v8 doubleValue:0.23];
  }

  else
  {
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    v8 = [v10 metadata];
    v9 = [v8 objectForKeyedSubscript:HKMetadataKeyWeatherHumidity];
  }

  v11 = v9;

  return v11;
}

- (id)airQualityIndexForWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CHWorkoutFormattingManager *)self shouldFakeData])
  {
    v8 = [NSNumber numberWithInt:34];
  }

  else
  {
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    v10 = [v9 metadata];
    v8 = [v10 objectForKeyedSubscript:NLPrivateMetadataKeyAirQualityIndex];
  }

  return v8;
}

- (id)timeZoneForWorkout:(id)a3
{
  v4 = a3;
  if ([(CHWorkoutFormattingManager *)self shouldFakeData])
  {
    v5 = +[NSTimeZone systemTimeZone];
  }

  else
  {
    v6 = [v4 metadata];
    v7 = [v6 objectForKeyedSubscript:HKMetadataKeyTimeZone];

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

- (BOOL)workoutWasInDayTime:(id)a3
{
  v4 = a3;
  v5 = [v4 metadata];
  v6 = [v5 objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutDaytime];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v8 = [(CHWorkoutFormattingManager *)self timeZoneForWorkout:v4];
    v9 = +[NSCalendar currentCalendar];
    v10 = v9;
    if (v8)
    {
      [v9 setTimeZone:v8];
    }

    v11 = [v4 startDate];
    v12 = [v10 component:32 fromDate:v11];

    v7 = (v12 - 6) < 0xD;
  }

  return v7;
}

- (id)locationForWorkout:(id)a3 workoutActivity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 metadata];
    v9 = [v8 objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutWeatherLocationCoordinatesLatitude];

    v10 = v7;
  }

  else
  {
    v11 = [v5 metadata];
    v9 = [v11 objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutWeatherLocationCoordinatesLatitude];

    v10 = v5;
  }

  v12 = [v10 metadata];
  v13 = [v12 objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutWeatherLocationCoordinatesLongitude];

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

- (id)shareImageForWorkout:(id)a3 routeImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CHWorkoutFormattingManager *)self _shareIconForWorkout:v6 routeImage:v7];
  v9 = objc_alloc_init(NSMutableArray);
  v10 = [(CHWorkoutFormattingManager *)self _workoutTypeInfoForWorkout:v6];
  [v9 addObject:v10];
  v11 = [(CHWorkoutFormattingManager *)self shouldShowDistanceForWorkout:v6 workoutActivity:0];
  v12 = [v6 _activityMoveMode];
  if ([v6 workoutActivityType] == 84)
  {
    v13 = [(CHWorkoutFormattingManager *)self _underwaterTimeInfoForDive:v6];
    [v9 addObject:v13];
    v14 = [(CHWorkoutFormattingManager *)self _maxDepthInfoForDive:v6];
LABEL_3:
    v15 = v14;
    [v9 addObject:v14];

    goto LABEL_12;
  }

  if ((v12 != 2) | v11 & 1)
  {
    if (v12 != 2)
    {
      v13 = [(CHWorkoutFormattingManager *)self _activeEnergyInfoForWorkout:v6];
      [v9 addObject:v13];
      if (v11)
      {
        [(CHWorkoutFormattingManager *)self _distanceInfoForWorkout:v6];
      }

      else
      {
        [(CHWorkoutFormattingManager *)self _durationInfoForWorkout:v6];
      }
      v14 = ;
      goto LABEL_3;
    }

    v16 = [(CHWorkoutFormattingManager *)self _distanceInfoForWorkout:v6];
  }

  else
  {
    v16 = [(CHWorkoutFormattingManager *)self _durationInfoForWorkout:v6];
  }

  v13 = v16;
  [v9 addObject:v16];
LABEL_12:

  v17 = [CHSharingImageWorkoutConfiguration alloc];
  v18 = [v9 copy];
  v19 = [(CHSharingImageWorkoutConfiguration *)v17 initWithIconImage:v8 routeImage:v7 metricTitleAndValueInfo:v18];

  v20 = sub_1000F00D0(v19);

  return v20;
}

- (id)shareTextForWorkout:(id)a3
{
  v4 = a3;
  v5 = [(CHWorkoutFormattingManager *)self _shareValueForWorkout:v4];
  v6 = [(FIUIFormattingManager *)self->_formattingManager localizedShareTextWithWorkout:v4 shareValue:v5];

  return v6;
}

- (id)_shareValueForWorkout:(id)a3
{
  v4 = a3;
  if ([(CHWorkoutFormattingManager *)self supportsDistanceForWorkout:v4 workoutActivity:0])
  {
    [(CHWorkoutFormattingManager *)self _distanceInfoForWorkout:v4];
  }

  else
  {
    [(CHWorkoutFormattingManager *)self _durationInfoForWorkout:v4];
  }
  v5 = ;

  v6 = [v5 value];

  return v6;
}

- (id)_workoutTypeInfoForWorkout:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CHSharingImageTitleAndValueInfo);
  v5 = [v3 metadata];
  v6 = [v5 objectForKeyedSubscript:HKMetadataKeyWorkoutBrandName];

  if (![v6 length])
  {
    v7 = [v3 fiui_activityType];
    [v7 effectiveTypeIdentifier];
    [v7 swimmingLocationType];
    [v7 isIndoor];
    v8 = FILocalizedNameForActivityType();

    v6 = v8;
  }

  [(CHSharingImageTitleAndValueInfo *)v4 setTitle:v6];

  return v4;
}

- (id)_durationInfoForWorkout:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CHSharingImageTitleAndValueInfo);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"TOTAL_TIME" value:&stru_1008680E8 table:@"Localizable"];
  [(CHSharingImageTitleAndValueInfo *)v5 setTitle:v7];

  formattingManager = self->_formattingManager;
  [v4 duration];
  v10 = v9;

  v11 = [(FIUIFormattingManager *)formattingManager stringWithDuration:3 durationFormat:v10];
  [(CHSharingImageTitleAndValueInfo *)v5 setValue:v11];

  v12 = +[ARUIMetricColors elapsedTimeColors];
  v13 = [v12 nonGradientTextColor];
  [(CHSharingImageTitleAndValueInfo *)v5 setValueColor:v13];

  return v5;
}

- (id)_distanceInfoForWorkout:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CHSharingImageTitleAndValueInfo);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"WORKOUT_DISTANCE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  [(CHSharingImageTitleAndValueInfo *)v5 setTitle:v7];

  v15 = 0;
  v16 = 0;
  [(CHWorkoutFormattingManager *)self _formattedDistanceStringForWorkout:v4 distanceString:&v16 unitString:&v15];

  v8 = v16;
  v9 = v15;
  v10 = [v9 uppercaseString];
  v11 = [NSString stringWithFormat:@"%@ %@", v8, v10];
  [(CHSharingImageTitleAndValueInfo *)v5 setValue:v11];

  [(CHSharingImageTitleAndValueInfo *)v5 setUnit:v9];
  v12 = +[ARUIMetricColors distanceColors];
  v13 = [v12 nonGradientTextColor];
  [(CHSharingImageTitleAndValueInfo *)v5 setValueColor:v13];

  return v5;
}

- (id)_maxDepthInfoForDive:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CHSharingImageTitleAndValueInfo);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"UNDERWATER_DIVE_MAX_DEPTH" value:&stru_1008680E8 table:@"Localizable"];
  [(CHSharingImageTitleAndValueInfo *)v5 setTitle:v7];

  formattingManager = self->_formattingManager;
  v13 = &stru_1008680E8;
  v9 = [(FIUIFormattingManager *)formattingManager localizedGoalDescriptionForWorkout:v4 withValue:&v13 appendActivityType:0];

  [(CHSharingImageTitleAndValueInfo *)v5 setValue:v9];
  v10 = +[ARUIMetricColors diveColors];
  v11 = [v10 nonGradientTextColor];
  [(CHSharingImageTitleAndValueInfo *)v5 setValueColor:v11];

  return v5;
}

- (id)_underwaterTimeInfoForDive:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CHSharingImageTitleAndValueInfo);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"TOTAL_TIME" value:&stru_1008680E8 table:@"Localizable"];
  [(CHSharingImageTitleAndValueInfo *)v5 setTitle:v7];

  formattingManager = self->_formattingManager;
  [v4 duration];
  v10 = v9;

  v11 = [(FIUIFormattingManager *)formattingManager stringWithDuration:3 durationFormat:v10];
  [(CHSharingImageTitleAndValueInfo *)v5 setValue:v11];

  v12 = +[ARUIMetricColors elapsedTimeColors];
  v13 = [v12 nonGradientTextColor];
  [(CHSharingImageTitleAndValueInfo *)v5 setValueColor:v13];

  return v5;
}

- (id)_activeEnergyInfoForWorkout:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CHSharingImageTitleAndValueInfo);
  v6 = +[NSBundle mainBundle];
  v7 = [(FIUIFormattingManager *)self->_formattingManager localizationKeyForEnergyBaseKey:@"WORKOUT_ACTIVE_ENERGY_TITLE"];
  v8 = [v6 localizedStringForKey:v7 value:&stru_1008680E8 table:@"Localizable"];
  [(CHSharingImageTitleAndValueInfo *)v5 setTitle:v8];

  formattingManager = self->_formattingManager;
  v10 = [v4 totalEnergyBurned];

  v11 = [(FIUIFormattingManager *)formattingManager localizedStringWithActiveEnergy:v10];

  v12 = [(FIUIFormattingManager *)self->_formattingManager localizedShortActiveEnergyUnitString];
  v13 = [v12 localizedUppercaseString];

  v14 = [CHWorkoutDisplayContext displayContextWithName:@"WorkoutDetailDisplayContext"];
  v15 = [v14 unitFormatString];
  v16 = [NSString stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@%@" error:0, v11, v13];

  [(CHSharingImageTitleAndValueInfo *)v5 setValue:v16];
  [(CHSharingImageTitleAndValueInfo *)v5 setUnit:v13];
  v17 = +[ARUIMetricColors energyColors];
  v18 = [v17 nonGradientTextColor];
  [(CHSharingImageTitleAndValueInfo *)v5 setValueColor:v18];

  return v5;
}

- (id)_shareIconForWorkout:(id)a3 routeImage:(id)a4
{
  v6 = a3;
  if ([v6 fiui_isConnectedGymWorkout])
  {
    v7 = ![(CHWorkoutFormattingManager *)self hasConnectedGymVendorIconForWorkout:v6];
  }

  else
  {
    v7 = 1;
  }

  v8 = [v6 sourceRevision];
  v9 = [v8 source];
  v10 = [v9 _hasFirstPartyBundleID];

  v11 = [v6 workoutActivityType];
  v12 = v7 & v10;
  v13 = objc_alloc_init(UIImageView);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v11 == 84)
  {
    v14 = +[ARUIMetricColors diveColors];
    v15 = [v14 nonGradientTextColor];

    v16 = FIUICircularImage();
    [v13 setImage:v16];
  }

  else if (v12)
  {
    v17 = [UIColor colorWithRed:0.28627451 green:0.37254902 blue:0.145098039 alpha:1.0];
    v18 = v17;
    if (a4)
    {
      v19 = v17;
    }

    else
    {
      v20 = +[ARUIMetricColors briskColors];
      v19 = [v20 nonGradientTextColor];
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
    [(CHWorkoutFormattingManager *)self fetchIconImageForWorkout:v6 context:@"WorkoutDetailDisplayContext" completion:v37];
  }

  v22 = [FIUIWorkoutActivityType activityTypeWithWorkout:v6];
  v23 = FIUIStaticWorkoutIconImage();
  v24 = [v23 imageWithRenderingMode:2];

  v25 = objc_alloc_init(UIImageView);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 setImage:v24];
  v26 = [v13 image];
  [v26 size];
  v28 = v27;
  v29 = [v13 image];
  [v29 size];
  v40.width = v28;
  UIGraphicsBeginImageContextWithOptions(v40, 0, 0.0);

  if (v11 == 84)
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
  if (((a4 == 0) & v12) != 0)
  {
    v32 = 0.2;
  }

  else
  {
    v32 = 1.0;
  }

  v33 = [v13 image];
  [v33 drawAtPoint:0 blendMode:0.0 alpha:{0.0, v32}];

  if (v12)
  {
    v34 = [v25 image];
    [v34 drawInRect:0 blendMode:3.0 alpha:{3.0, 14.0, 14.0, 1.0}];
  }

  v35 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v35;
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
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

- (BOOL)hasWeatherConditionForWorkout:(id)a3 workoutActivity:(id)a4
{
  v7 = sub_100140278(&qword_1008EABB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1003876C4(v10, a4, v9);

  v13 = type metadata accessor for WeatherCondition();
  LOBYTE(a4) = (*(*(v13 - 8) + 48))(v9, 1, v13) != 1;
  sub_10038852C(v9);
  return a4;
}

@end
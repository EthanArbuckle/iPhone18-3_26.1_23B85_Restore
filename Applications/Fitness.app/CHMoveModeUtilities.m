@interface CHMoveModeUtilities
+ (void)saveActivityMoveModeAndDefaultGoalSamplesForActivityMoveMode:(int64_t)a3 healthStore:(id)a4 formattingManager:(id)a5;
@end

@implementation CHMoveModeUtilities

+ (void)saveActivityMoveModeAndDefaultGoalSamplesForActivityMoveMode:(int64_t)a3 healthStore:(id)a4 formattingManager:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[FIActivitySettingsController alloc] initWithHealthStore:v7];
  [v9 populateExistingCharacteristics];
  [v9 biologicalSex];
  [v9 weight];
  if (a3 == 2)
    v10 = {;
    v11 = [HKUnit gramUnitWithMetricPrefix:9];
    [v10 doubleValueForUnit:v11];

    v12 = [v9 height];
    v13 = [HKUnit meterUnitWithMetricPrefix:7];
    [v12 doubleValueForUnit:v13];

    v14 = [v9 dateOfBirth];
    FIAgeInYearsForDateOfBirth();

    [v9 wheelchairUse];
    FICMotionConditionForWheelchairUse();
    FIUIActivityLevelsForFitnessJr();
  }

  else
    v15 = {;
    v16 = [v9 leanBodyMass];
    v17 = [v9 height];
    v18 = [v9 dateOfBirth];
    [v9 wheelchairUse];
    FIUICalculateBMR();

    FIUIActivityLevelsForBMR();
  }
  v19 = ;

  v20 = +[NSCalendar currentCalendar];
  v21 = +[NSDate date];
  v22 = [v20 hk_startOfDateByAddingDays:1 toDate:v21];

  v23 = [v20 components:_HKRequiredCalendarUnitsForCacheIndexDateComponents fromDate:v22];
  v24 = FIActivityMoveModeChangeSampleForDateComponents();
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000E4E9C;
  v28[3] = &unk_10083BCD0;
  v29 = v19;
  v30 = v7;
  v31 = v22;
  v32 = a3;
  v25 = v22;
  v26 = v7;
  v27 = v19;
  [v26 saveObject:v24 withCompletion:v28];
}

@end
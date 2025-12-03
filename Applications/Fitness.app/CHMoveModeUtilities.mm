@interface CHMoveModeUtilities
+ (void)saveActivityMoveModeAndDefaultGoalSamplesForActivityMoveMode:(int64_t)mode healthStore:(id)store formattingManager:(id)manager;
@end

@implementation CHMoveModeUtilities

+ (void)saveActivityMoveModeAndDefaultGoalSamplesForActivityMoveMode:(int64_t)mode healthStore:(id)store formattingManager:(id)manager
{
  storeCopy = store;
  managerCopy = manager;
  v9 = [[FIActivitySettingsController alloc] initWithHealthStore:storeCopy];
  [v9 populateExistingCharacteristics];
  [v9 biologicalSex];
  [v9 weight];
  if (mode == 2)
    v10 = {;
    v11 = [HKUnit gramUnitWithMetricPrefix:9];
    [v10 doubleValueForUnit:v11];

    height = [v9 height];
    v13 = [HKUnit meterUnitWithMetricPrefix:7];
    [height doubleValueForUnit:v13];

    dateOfBirth = [v9 dateOfBirth];
    FIAgeInYearsForDateOfBirth();

    [v9 wheelchairUse];
    FICMotionConditionForWheelchairUse();
    FIUIActivityLevelsForFitnessJr();
  }

  else
    v15 = {;
    leanBodyMass = [v9 leanBodyMass];
    height2 = [v9 height];
    dateOfBirth2 = [v9 dateOfBirth];
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
  v30 = storeCopy;
  v31 = v22;
  modeCopy = mode;
  v25 = v22;
  v26 = storeCopy;
  v27 = v19;
  [v26 saveObject:v24 withCompletion:v28];
}

@end
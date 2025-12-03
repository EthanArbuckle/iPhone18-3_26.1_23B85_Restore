@interface NLWorkoutComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (BOOL)acceptsComplicationType:(unint64_t)type forDevice:(id)device;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device;
- (BOOL)_hasActiveWorkout;
- (BOOL)_hasPausedActiveWorkout;
- (NLWorkoutComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_animationImages;
- (id)_makeAnimatedImageProvider;
- (id)_noWorkoutsTemplate;
- (id)_signatureTemplateWithFamily:(int64_t)family hasActiveWorkout:(BOOL)workout hasPausedActiveWorkout:(BOOL)activeWorkout;
- (id)_templateForActiveWorkoutInSwitcher:(BOOL)switcher;
- (id)_templateForWorkout:(id)workout family:(int64_t)family;
- (id)_unknownTemplateForFamily:(int64_t)family;
- (id)lockedTemplate;
- (id)sampleTemplate;
- (void)_handleDeviceLockChange;
- (void)_invalidate;
- (void)_stopObservingSynchronously:(BOOL)synchronously;
- (void)_updateActiveWorkoutState;
- (void)dealloc;
- (void)didUpdateWorkoutSnapshot:(id)snapshot;
- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
@end

@implementation NLWorkoutComplicationDataSource

- (NLWorkoutComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, complication);
  familyCopy = family;
  v22 = 0;
  objc_storeStrong(&v22, device);
  v5 = selfCopy;
  selfCopy = 0;
  v21.receiver = v5;
  v21.super_class = NLWorkoutComplicationDataSource;
  selfCopy = [(NLWorkoutComplicationDataSource *)&v21 initWithComplication:location[0] family:familyCopy forDevice:v22];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    selfCopy->_inUVPreview = CLKIsUVPreviewApp();
    if (!selfCopy->_inUVPreview)
    {
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v6 = dispatch_queue_create("com.apple.nanolifestyle.workout.health-queue", v11);
      healthQueue = selfCopy->_healthQueue;
      selfCopy->_healthQueue = v6;

      queue = selfCopy->_healthQueue;
      v15 = _NSConcreteStackBlock;
      v16 = -1073741824;
      v17 = 0;
      v18 = __73__NLWorkoutComplicationDataSource_initWithComplication_family_forDevice___block_invoke;
      v19 = &unk_103C0;
      v20 = selfCopy;
      dispatch_async(queue, &v15);
      isLocked = [v22 isLocked];
      selfCopy->_deviceIsLocked = isLocked;
      [(NLWorkoutComplicationDataSource *)selfCopy _updateActiveWorkoutState];
      [(NLWorkoutComplicationDataSource *)selfCopy _startObserving];
      objc_storeStrong(&v20, 0);
    }
  }

  v10 = selfCopy;
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

void __73__NLWorkoutComplicationDataSource_initWithComplication_family_forDevice___block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  v1 = +[HKHealthStore fiui_sharedHealthStoreForCarousel];
  v2 = (a1[4] + 64);
  v3 = *v2;
  *v2 = v1;

  v4 = [[_HKWorkoutObserver alloc] initWithHealthStore:*(a1[4] + 64)];
  v5 = (a1[4] + 48);
  v6 = *v5;
  *v5 = v4;

  [*(a1[4] + 48) setDelegate:a1[4]];
  _HKInitializeLogging();
  location[0] = HKLogWorkouts;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v9, *(a1[4] + 64));
    _os_log_impl(&dword_0, location[0], OS_LOG_TYPE_DEFAULT, "fiui_sharedHealthStoreForCarousel returned healthStore: %@", v9, 0xCu);
  }

  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(NLWorkoutComplicationDataSource *)self _stopObservingSynchronously:1];
  v2.receiver = selfCopy;
  v2.super_class = NLWorkoutComplicationDataSource;
  [(NLWorkoutComplicationDataSource *)&v2 dealloc];
}

+ (BOOL)acceptsComplicationType:(unint64_t)type forDevice:(id)device
{
  selfCopy = self;
  v8 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, device);
  v5 = typeCopy == 18;
  objc_storeStrong(&location, 0);
  return v5;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  selfCopy = self;
  v8 = a2;
  familyCopy = family;
  location = 0;
  objc_storeStrong(&location, device);
  v5 = 0;
  if (familyCopy <= 4 || familyCopy - 6 <= 6)
  {
    v5 = 1;
  }

  if (familyCopy == CLKComplicationFamilyCircularMedium)
  {
    v5 = 1;
  }

  objc_storeStrong(&location, 0);
  return v5 & 1;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  _HKInitializeLogging();
  v17 = HKLogWorkouts;
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if ([(NLWorkoutComplicationDataSource *)selfCopy _hasActiveWorkout])
    {
      v3 = @"Yes";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_1_8_64(v20, v3);
    _os_log_impl(&dword_0, v17, v16, "[NLWorkoutComplicationDataSource] getCurrentTimelineEntryWithHandler called with workout is active: %@.", v20, 0xCu);
  }

  objc_storeStrong(&v17, 0);
  v15 = 0;
  if ([(NLWorkoutComplicationDataSource *)selfCopy _hasActiveWorkout])
  {
    v4 = [(NLWorkoutComplicationDataSource *)selfCopy _templateForActiveWorkoutInSwitcher:0];
    v5 = v15;
    v15 = v4;
  }

  else if (selfCopy->_lastWorkout)
  {
    v6 = [(NLWorkoutComplicationDataSource *)selfCopy _templateForWorkout:selfCopy->_lastWorkout family:[(NLWorkoutComplicationDataSource *)selfCopy family]];
    v7 = v15;
    v15 = v6;
  }

  else if (!selfCopy->_loadingLastWorkout || selfCopy->_hasKnownLastWorkoutState)
  {
    _noWorkoutsTemplate = [(NLWorkoutComplicationDataSource *)selfCopy _noWorkoutsTemplate];
    v11 = v15;
    v15 = _noWorkoutsTemplate;
  }

  else
  {
    v8 = [(NLWorkoutComplicationDataSource *)selfCopy _unknownTemplateForFamily:[(NLWorkoutComplicationDataSource *)selfCopy family]];
    v9 = v15;
    v15 = v8;
  }

  v12 = location[0];
  v14 = +[NSDate date];
  v13 = [CLKComplicationTimelineEntry entryWithDate:"entryWithDate:complicationTemplate:" complicationTemplate:?];
  v12[2]();

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (id)sampleTemplate
{
  selfCopy = self;
  v34[1] = a2;
  v23 = v34;
  v34[0] = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  v22 = &v33;
  v33 = objc_opt_new();
  [v33 setYear:2016];
  v6 = 9;
  [v33 setMonth:?];
  [v33 setDay:23];
  [v33 setHour:9];
  [v33 setMinute:41];
  v7 = [v34[0] dateFromComponents:v33];
  v21 = &v32;
  v32 = NTKStartOfDayForDate();

  v20 = &v31;
  v31 = [v34[0] nextDateAfterDate:v32 matchingComponents:v33 options:2];
  v30 = 1740.0;
  v19 = &v29;
  v29 = [v31 dateByAddingTimeInterval:-1740.0];
  v10 = &CLKIsUVPreviewApp_ptr;
  v8 = HKQuantity;
  v11 = &CLKIsUVPreviewApp_ptr;
  v9 = +[HKUnit kilocalorieUnit];
  v18 = &v28;
  v28 = [HKQuantity quantityWithUnit:400.0 doubleValue:?];

  v12 = HKQuantity;
  v13 = +[HKUnit mileUnit];
  v17 = &v27;
  v27 = [HKQuantity quantityWithUnit:3.1 doubleValue:?];

  v24 = 0;
  v2 = [HKWorkout _workoutWithActivityType:37 startDate:v29 endDate:v31 workoutEvents:0 workoutActivities:0 duration:v28 totalActiveEnergyBurned:v30 totalBasalEnergyBurned:0 totalDistance:v27 totalSwimmingStrokeCount:0 totalFlightsClimbed:0 goalType:0 goal:0 device:0 metadata:0];
  location = &v26;
  v26 = v2;
  v15 = selfCopy;
  v14 = v2;
  family = [(NLWorkoutComplicationDataSource *)selfCopy family];
  v25 = [(NLWorkoutComplicationDataSource *)v15 _templateForWorkout:v14 family:family];
  objc_storeStrong(location, v24);
  objc_storeStrong(v17, v24);
  objc_storeStrong(v18, v24);
  objc_storeStrong(v19, v24);
  objc_storeStrong(v20, v24);
  objc_storeStrong(v21, v24);
  objc_storeStrong(v22, v24);
  objc_storeStrong(v23, v24);
  v4 = v25;

  return v4;
}

- (id)lockedTemplate
{
  selfCopy = self;
  v26[1] = a2;
  v26[0] = 0;
  family = [(NLWorkoutComplicationDataSource *)self family];
  if (family == &dword_0 + 1)
  {
    v17 = NLWorkoutComplicationLocalizedString(@"WORKOUT_TITLE_NONE", @"Workout");
    v24 = [CLKSimpleTextProvider textProviderWithText:?];

    v18 = NTKClockFaceLocalizedString();
    v23 = [CLKSimpleTextProvider textProviderWithText:?];

    v2 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:v24 body1TextProvider:v23];
    v3 = v26[0];
    v26[0] = v2;

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  else if (family == &dword_0 + 3)
  {
    v13 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:3];
    v20 = [CLKImageProvider imageProviderWithOnePieceImage:?];

    v14 = NTKClockFaceLocalizedString();
    v19 = [CLKSimpleTextProvider textProviderWithText:?];

    v6 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v19 imageProvider:v20];
    v7 = v26[0];
    v26[0] = v6;

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  else if (family == &dword_8 + 3)
  {
    v15 = NLWorkoutComplicationLocalizedString(@"WORKOUT_TITLE_NONE", @"Workout");
    v22 = [CLKSimpleTextProvider textProviderWithText:?];

    v16 = NTKClockFaceLocalizedString();
    v21 = [CLKSimpleTextProvider textProviderWithText:?];

    v4 = [CLKComplicationTemplateGraphicRectangularStandardBody templateWithHeaderTextProvider:v22 body1TextProvider:v21];
    v5 = v26[0];
    v26[0] = v4;

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v8 = [(NLWorkoutComplicationDataSource *)selfCopy _unknownTemplateForFamily:[(NLWorkoutComplicationDataSource *)selfCopy family]];
    v9 = v26[0];
    v26[0] = v8;
  }

  _workoutTintColor = [objc_opt_class() _workoutTintColor];
  [v26[0] setTintColor:?];

  v12 = v26[0];
  objc_storeStrong(v26, 0);

  return v12;
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v10 = 0;
  objc_storeStrong(&v10, travelDate);
  v9 = 0;
  objc_storeStrong(&v9, handler);
  v7 = v9;
  v8 = [NSURL URLWithString:@"SessionTrackerApp://"];
  v7[2]();

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)_unknownTemplateForFamily:(int64_t)family
{
  selfCopy = self;
  v51 = a2;
  familyCopy = family;
  v49 = 0;
  switch(family)
  {
    case 0:
      v31 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:0];
      v44 = [CLKImageProvider imageProviderWithOnePieceImage:?];

      v9 = [CLKComplicationTemplateModularSmallSimpleImage templateWithImageProvider:v44];
      v10 = v49;
      v49 = v9;

      objc_storeStrong(&v44, 0);
      break;
    case 1:
      v30 = NLWorkoutComplicationLocalizedString(@"WORKOUT_TITLE_NONE", @"Workout");
      v43 = [CLKSimpleTextProvider textProviderWithText:?];

      v42 = +[NTKNoContentTemplateProvider largeModularEmptyTextProvider];
      v11 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:v43 body1TextProvider:v42];
      v12 = v49;
      v49 = v11;

      objc_storeStrong(&v42, 0);
      objc_storeStrong(&v43, 0);
      break;
    case 2:
      v35 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:familyCopy];
      v48 = [CLKImageProvider imageProviderWithOnePieceImage:?];

      v3 = [CLKComplicationTemplateUtilitarianSmallSquare templateWithImageProvider:v48];
      v4 = v49;
      v49 = v3;

      objc_storeStrong(&v48, 0);
      break;
    case 3:
      v33 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:familyCopy];
      v47 = [CLKImageProvider imageProviderWithOnePieceImage:?];

      v34 = NLWorkoutComplicationLocalizedString(@"WORKOUT_STATE_NONE_UTILITY_LARGE", @"New Workout");
      v46 = [CLKSimpleTextProvider textProviderWithText:?];

      v5 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v46 imageProvider:v47];
      v6 = v49;
      v49 = v5;

      objc_storeStrong(&v46, 0);
      objc_storeStrong(&v47, 0);
      break;
    case 4:
      v32 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:familyCopy];
      v45 = [CLKImageProvider imageProviderWithOnePieceImage:?];

      v7 = [CLKComplicationTemplateCircularSmallSimpleImage templateWithImageProvider:v45];
      v8 = v49;
      v49 = v7;

      objc_storeStrong(&v45, 0);
      break;
    case 6:
      v38 = [CLKSimpleTextProvider textProviderWithText:&stru_10518];
      v27 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:familyCopy];
      v37 = [CLKImageProvider imageProviderWithOnePieceImage:?];

      v17 = [CLKComplicationTemplateUtilitarianSmallFlat templateWithTextProvider:v38 imageProvider:v37];
      v18 = v49;
      v49 = v17;

      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v38, 0);
      break;
    case 7:
      v28 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:familyCopy];
      v39 = [CLKImageProvider imageProviderWithOnePieceImage:?];

      v15 = [CLKComplicationTemplateExtraLargeSimpleImage templateWithImageProvider:v39];
      v16 = v49;
      v49 = v15;

      objc_storeStrong(&v39, 0);
      break;
    default:
      if ((family - 8) <= 2)
      {
        goto LABEL_20;
      }

      if (family == 11)
      {
        v29 = NLWorkoutComplicationLocalizedString(@"WORKOUT_TITLE_NONE", @"Workout");
        v41 = [CLKSimpleTextProvider textProviderWithText:?];

        v40 = +[NTKNoContentTemplateProvider largeModularEmptyTextProvider];
        v13 = [CLKComplicationTemplateGraphicRectangularStandardBody templateWithHeaderTextProvider:v41 body1TextProvider:v40];
        v14 = v49;
        v49 = v13;

        objc_storeStrong(&v40, 0);
        objc_storeStrong(&v41, 0);
        break;
      }

      if (family == 12)
      {
LABEL_20:
        v19 = [(NLWorkoutComplicationDataSource *)selfCopy _signatureTemplateWithFamily:familyCopy hasActiveWorkout:0 hasPausedActiveWorkout:0];
        v20 = v49;
        v49 = v19;
      }

      break;
  }

  if (familyCopy == CLKComplicationFamilyCircularMedium)
  {
    v26 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:familyCopy];
    v36 = [CLKImageProvider imageProviderWithOnePieceImage:?];

    v21 = [CLKComplicationTemplateCircularMediumSimpleImage templateWithImageProvider:v36];
    v22 = v49;
    v49 = v21;

    objc_storeStrong(&v36, 0);
  }

  _workoutTintColor = [objc_opt_class() _workoutTintColor];
  [v49 setTintColor:?];

  v25 = v49;
  objc_storeStrong(&v49, 0);

  return v25;
}

- (id)_noWorkoutsTemplate
{
  selfCopy = self;
  v34[1] = a2;
  v34[0] = 0;
  family = [(NLWorkoutComplicationDataSource *)self family];
  if (!family)
  {
    goto LABEL_10;
  }

  if (family == (&dword_0 + 1))
  {
    v21 = NLWorkoutComplicationLocalizedString(@"WORKOUT_TITLE_NONE", @"Workout");
    v30 = [CLKSimpleTextProvider textProviderWithText:?];

    v22 = NLWorkoutComplicationLocalizedString(@"WORKOUT_STATE_NONE_MODULAR", @"Tap to start a new Workout");
    v29 = [CLKSimpleTextProvider textProviderWithText:?];

    v6 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:v30 body1TextProvider:v29];
    v7 = v34[0];
    v34[0] = v6;

    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    goto LABEL_15;
  }

  if (family == (&dword_0 + 2))
  {
    goto LABEL_10;
  }

  if (family == (&dword_0 + 3))
  {
    v23 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:3];
    v32 = [CLKImageProvider imageProviderWithOnePieceImage:?];

    v24 = NLWorkoutComplicationLocalizedString(@"WORKOUT_STATE_NONE_UTILITY_LARGE", @"New Workout");
    v31 = [CLKSimpleTextProvider textProviderWithText:?];

    v4 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v31 imageProvider:v32];
    v5 = v34[0];
    v34[0] = v4;

    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
    goto LABEL_15;
  }

  if (family == &dword_4)
  {
    goto LABEL_10;
  }

  if (family == (&dword_4 + 2))
  {
    v17 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:6];
    v26 = [CLKImageProvider imageProviderWithOnePieceImage:?];

    v18 = NLWorkoutComplicationLocalizedString(@"WORKOUT_STATE_NONE_UTILITY_SMALL_FLAT", @"New");
    v25 = [CLKSimpleTextProvider textProviderWithText:?];

    v10 = [CLKComplicationTemplateUtilitarianSmallFlat templateWithTextProvider:v25 imageProvider:v26];
    v11 = v34[0];
    v34[0] = v10;

    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    goto LABEL_15;
  }

  if (family - 7 <= 3)
  {
LABEL_10:
    v2 = [(NLWorkoutComplicationDataSource *)selfCopy _unknownTemplateForFamily:family];
    v3 = v34[0];
    v34[0] = v2;

    goto LABEL_15;
  }

  if (family != (&dword_8 + 3))
  {
    if (family != &dword_C)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v19 = NLWorkoutComplicationLocalizedString(@"WORKOUT_TITLE_NONE", @"Workout");
  v28 = [CLKSimpleTextProvider textProviderWithText:?];

  v20 = NLWorkoutComplicationLocalizedString(@"WORKOUT_STATE_NONE_MODULAR", @"Tap to start a new Workout");
  v27 = [CLKSimpleTextProvider textProviderWithText:?];

  v8 = [CLKComplicationTemplateGraphicRectangularStandardBody templateWithHeaderTextProvider:v28 body1TextProvider:v27];
  v9 = v34[0];
  v34[0] = v8;

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
LABEL_15:
  if (family == CLKComplicationFamilyCircularMedium)
  {
    v12 = [(NLWorkoutComplicationDataSource *)selfCopy _unknownTemplateForFamily:family];
    v13 = v34[0];
    v34[0] = v12;
  }

  _workoutTintColor = [objc_opt_class() _workoutTintColor];
  [v34[0] setTintColor:?];

  v16 = v34[0];
  objc_storeStrong(v34, 0);

  return v16;
}

- (id)_templateForWorkout:(id)workout family:(int64_t)family
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  familyCopy = family;
  v49 = 0;
  v48 = 0;
  if (family == 1 || familyCopy == 3 || familyCopy == 11)
  {
    fiui_swimmingLocationType = [location[0] fiui_swimmingLocationType];
    bOOLValue = 0;
    metadata = [location[0] metadata];
    v45 = [metadata objectForKeyedSubscript:HKMetadataKeyIndoorWorkout];

    if (v45)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v45 BOOLValue];
      }
    }

    [location[0] workoutActivityType];
    v4 = FIUILocalizedNameForActivityType();
    v5 = v48;
    v48 = v4;

    objc_storeStrong(&v45, 0);
  }

  v54 = &_templateForWorkout_family__onceToken;
  v53 = 0;
  objc_storeStrong(&v53, &__block_literal_global_0);
  if (*v54 != -1)
  {
    dispatch_once(v54, v53);
  }

  objc_storeStrong(&v53, 0);
  switch(familyCopy)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v40 = [CLKSimpleTextProvider textProviderWithText:v48];
      v39 = [_templateForWorkout_family__formattingManager localizedKeyMetricStringForWorkout:location[0] unitStyle:3];
      v38 = [CLKSimpleTextProvider textProviderWithText:v39];
      endDate = [location[0] endDate];
      v37 = [CLKDateTextProvider textProviderWithDate:"textProviderWithDate:units:" units:?];

      v10 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:v40 body1TextProvider:v38 body2TextProvider:v37];
      v11 = v49;
      v49 = v10;

      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
      goto LABEL_24;
    case 2:
      goto LABEL_19;
    case 3:
      v24 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:3];
      v44 = [CLKImageProvider imageProviderWithOnePieceImage:?];

      v25 = [_templateForWorkout_family__formattingManager localizedKeyMetricStringForWorkout:location[0] unitStyle:1];
      localizedLowercaseString = [v25 localizedLowercaseString];

      v42 = [CLKSimpleTextProvider textProviderWithText:localizedLowercaseString];
      [(CLKSimpleTextProvider *)v42 setUseLowercaseSmallCaps:1];
      v28 = NLWorkoutComplicationLocalizedString(@"WORKOUT_DESCRIPTION_FORMAT_UTILITY", 0);
      v26 = v42;
      v27 = [CLKSimpleTextProvider textProviderWithText:v48];
      v41 = [CLKTextProvider textProviderWithFormat:v28, v26, v27];

      v8 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v41 imageProvider:v44];
      v9 = v49;
      v49 = v8;

      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v42, 0);
      objc_storeStrong(&localizedLowercaseString, 0);
      objc_storeStrong(&v44, 0);
      goto LABEL_24;
    case 4:
      goto LABEL_19;
    case 6:
      v21 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:6];
      v32 = [CLKImageProvider imageProviderWithOnePieceImage:?];

      v31 = [CLKSimpleTextProvider textProviderWithText:&stru_10518];
      v14 = [CLKComplicationTemplateUtilitarianSmallFlat templateWithTextProvider:v31 imageProvider:v32];
      v15 = v49;
      v49 = v14;

      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      goto LABEL_24;
  }

  if ((familyCopy - 7) <= 3)
  {
LABEL_19:
    v6 = [(NLWorkoutComplicationDataSource *)selfCopy _unknownTemplateForFamily:familyCopy];
    v7 = v49;
    v49 = v6;

    goto LABEL_24;
  }

  if (familyCopy != 11)
  {
    if (familyCopy != 12)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v36 = [CLKSimpleTextProvider textProviderWithText:v48];
  v35 = [_templateForWorkout_family__formattingManager localizedKeyMetricStringForWorkout:location[0] unitStyle:3];
  v34 = [CLKSimpleTextProvider textProviderWithText:v35];
  endDate2 = [location[0] endDate];
  v33 = [CLKDateTextProvider textProviderWithDate:"textProviderWithDate:units:" units:?];

  v12 = [CLKComplicationTemplateGraphicRectangularStandardBody templateWithHeaderTextProvider:v36 body1TextProvider:v34 body2TextProvider:v33];
  v13 = v49;
  v49 = v12;

  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
LABEL_24:
  if (familyCopy == CLKComplicationFamilyCircularMedium)
  {
    v16 = [(NLWorkoutComplicationDataSource *)selfCopy _unknownTemplateForFamily:familyCopy];
    v17 = v49;
    v49 = v16;
  }

  _workoutTintColor = [objc_opt_class() _workoutTintColor];
  [v49 setTintColor:?];

  v20 = v49;
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);

  return v20;
}

void __62__NLWorkoutComplicationDataSource__templateForWorkout_family___block_invoke(id a1)
{
  v6[2] = a1;
  v6[1] = a1;
  v6[0] = +[HKHealthStore fiui_sharedHealthStoreForCarousel];
  v1 = [FIUIUnitManager alloc];
  v5 = [v1 initWithHealthStore:v6[0]];
  v2 = [FIUIFormattingManager alloc];
  v3 = [v2 initWithUnitManager:v5];
  v4 = _templateForWorkout_family__formattingManager;
  _templateForWorkout_family__formattingManager = v3;

  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);
}

- (id)_signatureTemplateWithFamily:(int64_t)family hasActiveWorkout:(BOOL)workout hasPausedActiveWorkout:(BOOL)activeWorkout
{
  selfCopy = self;
  v37 = a2;
  familyCopy = family;
  workoutCopy = workout;
  activeWorkoutCopy = activeWorkout;
  v33 = 0;
  switch(family)
  {
    case 8:
      v30 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
      v45[0] = @"NLWorkoutComplicationMetadataHasActiveWorkoutKey";
      v24 = [NSNumber numberWithBool:workoutCopy];
      v46[0] = v24;
      v45[1] = @"NLWorkoutComplicationMetadataActiveWorkoutIsPausedKey";
      v23 = [NSNumber numberWithBool:activeWorkoutCopy];
      v46[1] = v23;
      v22 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
      [(CLKFullColorImageProvider *)v30 setMetadata:?];

      v7 = [CLKComplicationTemplateGraphicCornerCircularImage templateWithImageProvider:v30];
      v8 = v33;
      v33 = v7;

      objc_storeStrong(&v30, 0);
      break;
    case 9:
      v32 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
      v47[0] = @"NLWorkoutComplicationMetadataHasActiveWorkoutKey";
      v27 = [NSNumber numberWithBool:workoutCopy];
      v48[0] = v27;
      v47[1] = @"NLWorkoutComplicationMetadataActiveWorkoutIsPausedKey";
      v26 = [NSNumber numberWithBool:activeWorkoutCopy];
      v48[1] = v26;
      v25 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
      [(CLKFullColorImageProvider *)v32 setMetadata:?];

      v31 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v32];
      v5 = [CLKComplicationTemplateGraphicBezelCircularText templateWithCircularTemplate:v31];
      v6 = v33;
      v33 = v5;

      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      break;
    case 10:
      v29 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
      v43[0] = @"NLWorkoutComplicationMetadataHasActiveWorkoutKey";
      v21 = [NSNumber numberWithBool:workoutCopy];
      v44[0] = v21;
      v43[1] = @"NLWorkoutComplicationMetadataActiveWorkoutIsPausedKey";
      v20 = [NSNumber numberWithBool:activeWorkoutCopy];
      v44[1] = v20;
      v19 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
      [(CLKFullColorImageProvider *)v29 setMetadata:?];

      v9 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v29];
      v10 = v33;
      v33 = v9;

      objc_storeStrong(&v29, 0);
      break;
    case 12:
      v28 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
      v41[0] = @"NLWorkoutComplicationMetadataHasActiveWorkoutKey";
      v18 = [NSNumber numberWithBool:workoutCopy];
      v42[0] = v18;
      v41[1] = @"NLWorkoutComplicationMetadataActiveWorkoutIsPausedKey";
      v17 = [NSNumber numberWithBool:activeWorkoutCopy];
      v42[1] = v17;
      v16 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
      [(CLKFullColorImageProvider *)v28 setMetadata:?];

      v11 = [CLKComplicationTemplateGraphicExtraLargeCircularImage templateWithImageProvider:v28];
      v12 = v33;
      v33 = v11;

      objc_storeStrong(&v28, 0);
      break;
  }

  v39 = NTKRichComplicationViewUsePlatterKey;
  v40 = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  [v33 setMetadata:?];

  v15 = v33;
  objc_storeStrong(&v33, 0);

  return v15;
}

- (id)_templateForActiveWorkoutInSwitcher:(BOOL)switcher
{
  selfCopy = self;
  v67 = a2;
  switcherCopy = switcher;
  v65[8] = 0;
  *v65 = [(NLWorkoutComplicationDataSource *)self _hasPausedActiveWorkout];
  v64 = +[NSDate date];
  v63 = 0;
  [(_HKCurrentWorkoutSnapshot *)selfCopy->_activeWorkoutSnapshot elapsedTimeAtDate:v64];
  v62[1] = v3;
  v62[0] = [NSDate dateWithTimeIntervalSinceNow:-*&v3];
  v63 = [CLKRelativeDateTextProvider textProviderWithDate:v62[0] style:2 units:224];

  [v63 setTimeTravelUpdateFrequency:0];
  if (v65[0])
  {
    [v63 setRelativeToDate:v64];
  }

  family = [(NLWorkoutComplicationDataSource *)selfCopy family];
  if (!family)
  {
    _makeAnimatedImageProvider = [(NLWorkoutComplicationDataSource *)selfCopy _makeAnimatedImageProvider];
    v9 = [CLKComplicationTemplateModularSmallSimpleImage templateWithImageProvider:_makeAnimatedImageProvider];
    v10 = *&v65[1];
    *&v65[1] = v9;

    objc_storeStrong(&_makeAnimatedImageProvider, 0);
    goto LABEL_46;
  }

  if (family == (&dword_0 + 1))
  {
    configuration = [(_HKCurrentWorkoutSnapshot *)selfCopy->_activeWorkoutSnapshot configuration];
    [configuration activityType];
    v60 = FIUILocalizedNameForIndoorAgnosticActivityType();

    v59 = [CLKSimpleTextProvider textProviderWithText:v60];
    v58 = v63;
    v4 = [CLKComplicationTemplateModularLargeTallBody templateWithHeaderTextProvider:v59 bodyTextProvider:v58];
    v5 = *&v65[1];
    *&v65[1] = v4;

    objc_storeStrong(&v58, 0);
    objc_storeStrong(&v59, 0);
    objc_storeStrong(&v60, 0);
    goto LABEL_46;
  }

  if (family == (&dword_0 + 2))
  {
    _makeAnimatedImageProvider2 = [(NLWorkoutComplicationDataSource *)selfCopy _makeAnimatedImageProvider];
    v15 = [CLKComplicationTemplateUtilitarianSmallSquare templateWithImageProvider:_makeAnimatedImageProvider2];
    v16 = *&v65[1];
    *&v65[1] = v15;

    objc_storeStrong(&_makeAnimatedImageProvider2, 0);
    goto LABEL_46;
  }

  if (family == (&dword_0 + 3))
  {
    v47 = 0;
    v45 = 0;
    v43 = 0;
    if (switcherCopy)
    {
      v48 = [(NLWorkoutComplicationDataSource *)selfCopy _noActiveWorkoutImageForComplicationFamily:family];
      v47 = 1;
      v46 = [CLKImageProvider imageProviderWithOnePieceImage:?];
      v45 = 1;
      v11 = v46;
    }

    else
    {
      _makeAnimatedImageProvider3 = [(NLWorkoutComplicationDataSource *)selfCopy _makeAnimatedImageProvider];
      v43 = 1;
      v11 = _makeAnimatedImageProvider3;
    }

    v49 = v11;
    if (v43)
    {
    }

    if (v45)
    {
    }

    if (v47)
    {
    }

    v40 = 0;
    v38 = 0;
    if (v65[0])
    {
      v41 = NLWorkoutComplicationLocalizedString(@"WORKOUT_IN_SESSION_PAUSED", @"%@ (PAUSED)");
      v40 = 1;
      v39 = [CLKTextProvider textProviderWithFormat:v63];
      v38 = 1;
      v12 = v39;
    }

    else
    {
      v12 = v63;
    }

    v42 = v12;
    if (v38)
    {
    }

    if (v40)
    {
    }

    v13 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v42 imageProvider:v49];
    v14 = *&v65[1];
    *&v65[1] = v13;

    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v49, 0);
  }

  else
  {
    if (family == &dword_4)
    {
      _makeAnimatedImageProvider4 = [(NLWorkoutComplicationDataSource *)selfCopy _makeAnimatedImageProvider];
      v17 = [CLKComplicationTemplateCircularSmallSimpleImage templateWithImageProvider:_makeAnimatedImageProvider4];
      v18 = *&v65[1];
      *&v65[1] = v17;

      objc_storeStrong(&_makeAnimatedImageProvider4, 0);
      goto LABEL_46;
    }

    if (family == (&dword_4 + 2))
    {
      _makeAnimatedImageProvider5 = [(NLWorkoutComplicationDataSource *)selfCopy _makeAnimatedImageProvider];
      v33 = [CLKSimpleTextProvider textProviderWithText:&stru_10518];
      v21 = [CLKComplicationTemplateUtilitarianSmallFlat templateWithTextProvider:v33 imageProvider:_makeAnimatedImageProvider5];
      v22 = *&v65[1];
      *&v65[1] = v21;

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&_makeAnimatedImageProvider5, 0);
      goto LABEL_46;
    }

    if (family == (&dword_4 + 3))
    {
      _makeAnimatedImageProvider6 = [(NLWorkoutComplicationDataSource *)selfCopy _makeAnimatedImageProvider];
      v19 = [CLKComplicationTemplateExtraLargeSimpleImage templateWithImageProvider:_makeAnimatedImageProvider6];
      v20 = *&v65[1];
      *&v65[1] = v19;

      objc_storeStrong(&_makeAnimatedImageProvider6, 0);
      goto LABEL_46;
    }

    if ((family - 2) <= 2)
    {
      goto LABEL_45;
    }

    if (family != (&dword_8 + 3))
    {
      if (family != &dword_C)
      {
        goto LABEL_46;
      }

LABEL_45:
      v23 = [(NLWorkoutComplicationDataSource *)selfCopy _signatureTemplateWithFamily:family hasActiveWorkout:1 hasPausedActiveWorkout:[(NLWorkoutComplicationDataSource *)selfCopy _hasPausedActiveWorkout]];
      v24 = *&v65[1];
      *&v65[1] = v23;

      goto LABEL_46;
    }

    configuration2 = [(_HKCurrentWorkoutSnapshot *)selfCopy->_activeWorkoutSnapshot configuration];
    [configuration2 activityType];
    v57 = FIUILocalizedNameForIndoorAgnosticActivityType();

    v56 = [CLKSimpleTextProvider textProviderWithText:v57];
    v53 = 0;
    v51 = 0;
    if (v65[0])
    {
      v54 = NLWorkoutComplicationLocalizedString(@"WORKOUT_IN_SESSION_PAUSED", @"%@ (PAUSED)");
      v53 = 1;
      v52 = [CLKTextProvider textProviderWithFormat:v63];
      v51 = 1;
      v6 = v52;
    }

    else
    {
      v6 = v63;
    }

    v55 = v6;
    if (v51)
    {
    }

    if (v53)
    {
    }

    v7 = [CLKComplicationTemplateGraphicRectangularStandardBody templateWithHeaderTextProvider:v56 body1TextProvider:v55];
    v8 = *&v65[1];
    *&v65[1] = v7;

    objc_storeStrong(&v55, 0);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v57, 0);
  }

LABEL_46:
  if (family == CLKComplicationFamilyCircularMedium)
  {
    _makeAnimatedImageProvider7 = [(NLWorkoutComplicationDataSource *)selfCopy _makeAnimatedImageProvider];
    v25 = [CLKComplicationTemplateCircularMediumSimpleImage templateWithImageProvider:_makeAnimatedImageProvider7];
    v26 = *&v65[1];
    *&v65[1] = v25;

    objc_storeStrong(&_makeAnimatedImageProvider7, 0);
  }

  _workoutTintColor = [objc_opt_class() _workoutTintColor];
  [*&v65[1] setTintColor:?];

  v29 = *&v65[1];
  objc_storeStrong(v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65[1], 0);

  return v29;
}

- (id)_animationImages
{
  selfCopy = self;
  location[1] = a2;
  if (self->_animationImages)
  {
    goto LABEL_24;
  }

  location[0] = 0;
  family = [(NLWorkoutComplicationDataSource *)selfCopy family];
  if (family)
  {
    if (family == (&dword_0 + 2))
    {
      objc_storeStrong(location, @"utilityCorner");
      goto LABEL_14;
    }

    if (family == (&dword_0 + 3))
    {
      goto LABEL_11;
    }

    if (family != &dword_4)
    {
      if (family != (&dword_4 + 2))
      {
        if (family == (&dword_4 + 3))
        {
          objc_storeStrong(location, @"XL");
        }

        goto LABEL_14;
      }

LABEL_11:
      objc_storeStrong(location, @"utility");
      goto LABEL_14;
    }

    objc_storeStrong(location, @"color");
  }

  else
  {
    objc_storeStrong(location, @"modularSmall");
  }

LABEL_14:
  if (family == CLKComplicationFamilyCircularMedium)
  {
    objc_storeStrong(location, @"victory");
  }

  if (location[0])
  {
    v8 = [location[0] stringByAppendingString:@"WorkoutActive%02d"];
    v7 = +[NSMutableArray array];
    for (i = 0; i < 37; ++i)
    {
      v4 = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%02d" error:0, i];
      v5 = NLWorkoutComplicationImageNamed(v4);

      if (v5)
      {
        [v7 addObject:v5];
      }

      objc_storeStrong(&v5, 0);
    }

    objc_storeStrong(&selfCopy->_animationImages, v7);
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
LABEL_24:
  animationImages = selfCopy->_animationImages;

  return animationImages;
}

- (id)_makeAnimatedImageProvider
{
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = __61__NLWorkoutComplicationDataSource__makeAnimatedImageProvider__block_invoke;
  v9 = &unk_10408;
  objc_copyWeak(&v10, location);
  v11 = [NLWorkoutComplicationImageProvider imageProviderWithImageViewCreationHandler:&v5];
  _hasPausedActiveWorkout = [(NLWorkoutComplicationDataSource *)selfCopy _hasPausedActiveWorkout];
  [(NLWorkoutComplicationImageProvider *)v11 setPaused:_hasPausedActiveWorkout];
  v3 = v11;
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(location);

  return v3;
}

NLWorkoutComplicationAnimatedWrapperView *__61__NLWorkoutComplicationDataSource__makeAnimatedImageProvider__block_invoke(id *a1, double a2, double a3)
{
  location[3] = *&a2;
  location[4] = *&a3;
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v5 = [NLWorkoutComplicationAnimatedWrapperView alloc];
    v6 = [location[0] _animationImages];
    v8 = [(NLWorkoutComplicationAnimatedWrapperView *)v5 initWithAnimationImages:?];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v8;

  return v3;
}

- (BOOL)_hasActiveWorkout
{
  isFirstPartyWorkout = 0;
  if (self->_activeWorkoutSnapshot)
  {
    if ([(_HKCurrentWorkoutSnapshot *)self->_activeWorkoutSnapshot sessionState]== &dword_0 + 2 || (isFirstPartyWorkout = 0, [(_HKCurrentWorkoutSnapshot *)self->_activeWorkoutSnapshot sessionState]== &dword_4))
    {
      isFirstPartyWorkout = [(_HKCurrentWorkoutSnapshot *)self->_activeWorkoutSnapshot isFirstPartyWorkout];
    }
  }

  return isFirstPartyWorkout & 1;
}

- (BOOL)_hasPausedActiveWorkout
{
  v4 = 0;
  if ([(NLWorkoutComplicationDataSource *)self _hasActiveWorkout])
  {
    v3 = 1;
    if ([(_HKCurrentWorkoutSnapshot *)self->_activeWorkoutSnapshot sessionState]!= &dword_4)
    {
      return [(_HKCurrentWorkoutSnapshot *)self->_activeWorkoutSnapshot internalState]== &dword_8 + 1;
    }

    return v3;
  }

  return v4;
}

- (void)_stopObservingSynchronously:(BOOL)synchronously
{
  if (!self->_inUVPreview)
  {
    if (self->_workoutStateNotifyToken)
    {
      notify_cancel(self->_workoutStateNotifyToken);
      self->_workoutStateNotifyToken = 0;
    }
  }
}

- (void)_handleDeviceLockChange
{
  deviceIsLocked = self->_deviceIsLocked;
  device = [(NLWorkoutComplicationDataSource *)self device];
  self->_deviceIsLocked = [device isLocked];

  if (self->_deviceIsLocked != deviceIsLocked)
  {
    [(NLWorkoutComplicationDataSource *)self _invalidate];
  }
}

- (void)_invalidate
{
  delegate = [(NLWorkoutComplicationDataSource *)self delegate];
  [delegate invalidateEntries];
}

- (void)_updateActiveWorkoutState
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_inUVPreview)
  {
    _HKInitializeLogging();
    location[0] = HKLogWorkouts;
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_impl(&dword_0, log, type, "[NLWorkoutComplicationDataSource] Updating active workout state.", v20, 2u);
    }

    objc_storeStrong(location, 0);
    snapshotDate = [(_HKCurrentWorkoutSnapshot *)selfCopy->_activeWorkoutSnapshot snapshotDate];
    v18 = 0;
    v16 = 0;
    v5 = 0;
    if (snapshotDate)
    {
      v19 = +[NSDate now];
      v18 = 1;
      snapshotDate2 = [(_HKCurrentWorkoutSnapshot *)selfCopy->_activeWorkoutSnapshot snapshotDate];
      v16 = 1;
      [(NSDate *)v19 timeIntervalSinceDate:?];
      v5 = v2 < 1.0;
    }

    if (v16)
    {
    }

    if (v18)
    {
    }

    if (!v5)
    {
      objc_initWeak(&v15, selfCopy);
      queue = selfCopy->_healthQueue;
      v8 = _NSConcreteStackBlock;
      v9 = -1073741824;
      v10 = 0;
      v11 = __60__NLWorkoutComplicationDataSource__updateActiveWorkoutState__block_invoke;
      v12 = &unk_10480;
      objc_copyWeak(&v14, &v15);
      v13 = selfCopy;
      dispatch_async(queue, &v8);
      objc_storeStrong(&v13, 0);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&v15);
    }
  }
}

void __60__NLWorkoutComplicationDataSource__updateActiveWorkoutState__block_invoke(uint64_t a1)
{
  v27[2] = a1;
  v27[1] = a1;
  v27[0] = objc_loadWeakRetained((a1 + 40));
  if (v27[0])
  {
    v9 = [v27[0] healthStore];

    if (v9)
    {
      _HKInitializeLogging();
      v19 = HKLogWorkouts;
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v19;
        v4 = v18;
        __os_log_helper_16_0_0(v17);
        _os_log_impl(&dword_0, v3, v4, "[NLWorkoutComplicationDataSource] Calling _HKWorkoutObserver's currentWorkoutSnapshotWithCompletion", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
      v2 = [v27[0] workoutObserver];
      v11 = _NSConcreteStackBlock;
      v12 = -1073741824;
      v13 = 0;
      v14 = __60__NLWorkoutComplicationDataSource__updateActiveWorkoutState__block_invoke_420;
      v15 = &unk_10458;
      objc_copyWeak(&v16, (a1 + 40));
      [v2 currentWorkoutSnapshotWithCompletion:&v11];

      objc_destroyWeak(&v16);
      v26 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v25 = HKLogWorkouts;
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v1 = *(a1 + 32);
        aClass = objc_opt_class();
        v7 = NSStringFromClass(aClass);
        location = v7;
        __os_log_helper_16_2_1_8_64(v28, location);
        _os_log_error_impl(&dword_0, v25, v24, "%@ healthStore is nil", v28, 0xCu);

        objc_storeStrong(&location, 0);
      }

      objc_storeStrong(&v25, 0);
      if (NTKInternalBuild())
      {
        _HKInitializeLogging();
        v22 = HKLogWorkouts;
        v21 = 17;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          v5 = v22;
          v6 = v21;
          __os_log_helper_16_0_0(v20);
          _os_log_fault_impl(&dword_0, v5, v6, "Workout Complication Health Store is nil", v20, 2u);
        }

        objc_storeStrong(&v22, 0);
      }

      v26 = 1;
    }
  }

  else
  {
    v26 = 1;
  }

  objc_storeStrong(v27, 0);
}

void __60__NLWorkoutComplicationDataSource__updateActiveWorkoutState__block_invoke_420(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[1] = a1;
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = __60__NLWorkoutComplicationDataSource__updateActiveWorkoutState__block_invoke_2;
  v11 = &unk_10430;
  objc_copyWeak(v14, a1 + 4);
  v12 = location[0];
  v13 = v15;
  dispatch_async(queue, &v7);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __60__NLWorkoutComplicationDataSource__updateActiveWorkoutState__block_invoke_2(uint64_t a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v9[0] = objc_loadWeakRetained((a1 + 48));
  if (v9[0])
  {
    [v9[0] setActiveWorkoutSnapshot:*(a1 + 32)];
    [v9[0] _invalidate];
    _HKInitializeLogging();
    oslog = HKLogWorkouts;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v10, *(a1 + 32), *(a1 + 40));
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[NLWorkoutComplicationDataSource] currentWorkoutSnapshot: %@, error: %@", v10, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v5 = 0;
  }

  else
  {
    _HKInitializeLogging();
    location = HKLogWorkouts;
    v7 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_error_impl(&dword_0, log, type, "[NLWorkoutComplicationDataSource] mainStrongSelf is nil. Returning without updating workout snapshot.", v6, 2u);
    }

    objc_storeStrong(&location, 0);
    v5 = 1;
  }

  objc_storeStrong(v9, 0);
}

- (void)didUpdateWorkoutSnapshot:(id)snapshot
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, snapshot);
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = __60__NLWorkoutComplicationDataSource_didUpdateWorkoutSnapshot___block_invoke;
  v9 = &unk_104A8;
  v10 = selfCopy;
  v11 = location[0];
  dispatch_async(queue, &v5);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

id __60__NLWorkoutComplicationDataSource_didUpdateWorkoutSnapshot___block_invoke(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  objc_storeStrong(a1[4].isa + 7, a1[5].isa);
  _HKInitializeLogging();
  oslog[0] = HKLogWorkouts;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v4, a1[5].isa);
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[NLWorkoutComplicationDataSource] currentWorkoutSnapshot: %@", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  return [(objc_class *)a1[4].isa _invalidate];
}

- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  familyCopy = family;
  v8 = 0;
  objc_storeStrong(&v8, completion);
  if (familyCopy == 1 || familyCopy == 11)
  {
    v7 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.SessionTrackerApp.WorkoutWidgetExtension" containerBundleIdentifier:@"com.apple.SessionTrackerApp" kind:@"WorkoutWidget" intent:?];
    (*(v8 + 2))(v8, v7);
    objc_storeStrong(&v7, 0);
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device
{
  selfCopy = self;
  v8 = a2;
  familyCopy = family;
  location = 0;
  objc_storeStrong(&location, device);
  v5 = 1;
  if (familyCopy != 1)
  {
    v5 = familyCopy == 11;
  }

  objc_storeStrong(&location, 0);
  return v5;
}

@end
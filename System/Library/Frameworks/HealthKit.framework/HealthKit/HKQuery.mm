@interface HKQuery
+ (NSPredicate)predicateForActivitySummariesBetweenStartDateComponents:(NSDateComponents *)startDateComponents endDateComponents:(NSDateComponents *)endDateComponents;
+ (NSPredicate)predicateForActivitySummaryWithDateComponents:(NSDateComponents *)dateComponents;
+ (NSPredicate)predicateForCategorySamplesEqualToValues:(NSSet *)values;
+ (NSPredicate)predicateForCategorySamplesWithOperatorType:(NSPredicateOperatorType)operatorType value:(NSInteger)value;
+ (NSPredicate)predicateForClinicalRecordsFromSource:(HKSource *)source FHIRResourceType:(HKFHIRResourceType)resourceType identifier:(NSString *)identifier;
+ (NSPredicate)predicateForElectrocardiogramsWithClassification:(HKElectrocardiogramClassification)classification;
+ (NSPredicate)predicateForElectrocardiogramsWithSymptomsStatus:(HKElectrocardiogramSymptomsStatus)symptomsStatus;
+ (NSPredicate)predicateForObjectsWithDeviceProperty:(NSString *)key allowedValues:(NSSet *)allowedValues;
+ (NSPredicate)predicateForObjectsWithMetadataKey:(NSString *)key operatorType:(NSPredicateOperatorType)operatorType value:(id)value;
+ (NSPredicate)predicateForQuantitySamplesWithOperatorType:(NSPredicateOperatorType)operatorType quantity:(HKQuantity *)quantity;
+ (NSPredicate)predicateForVerifiableClinicalRecordsWithRelevantDateWithinDateInterval:(NSDateInterval *)dateInterval;
+ (NSPredicate)predicateForWorkoutActivitiesWithOperatorType:(NSPredicateOperatorType)operatorType duration:(NSTimeInterval)duration;
+ (NSPredicate)predicateForWorkoutActivitiesWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate options:(HKQueryOptions)options;
+ (NSPredicate)predicateForWorkoutsWithActivityPredicate:(NSPredicate *)activityPredicate;
+ (NSPredicate)predicateForWorkoutsWithOperatorType:(NSPredicateOperatorType)operatorType duration:(NSTimeInterval)duration;
+ (NSPredicate)predicateForWorkoutsWithOperatorType:(NSPredicateOperatorType)operatorType totalDistance:(HKQuantity *)totalDistance;
+ (NSPredicate)predicateForWorkoutsWithOperatorType:(NSPredicateOperatorType)operatorType totalEnergyBurned:(HKQuantity *)totalEnergyBurned;
+ (NSPredicate)predicateForWorkoutsWithOperatorType:(NSPredicateOperatorType)operatorType totalFlightsClimbed:(HKQuantity *)totalFlightsClimbed;
+ (NSPredicate)predicateForWorkoutsWithOperatorType:(NSPredicateOperatorType)operatorType totalSwimmingStrokeCount:(HKQuantity *)totalSwimmingStrokeCount;
+ (NSString)taskIdentifier;
+ (id)_cachedInterfaceForProtocol:(id)protocol configurationHandler:(id)handler;
+ (id)_predicateForObjectsWithMinOSBuildVersion:(id)version maxOSBuildVersion:(id)buildVersion;
+ (id)_predicateForWorkoutStatisticsWithOperatorType:(unint64_t)type quantityType:(id)quantityType keyPathPrefix:(id)prefix quantity:(id)quantity;
+ (id)clientInterface;
+ (id)predicateForActivityCachesBetweenStartDateComponents:(id)components endDateComponents:(id)dateComponents;
+ (id)predicateForActivitySummariesWithActivityMoveMode:(int64_t)mode;
+ (id)predicateForCreationDateWithTodayViewRange:(id)range;
+ (id)predicateForDiagnosticTestResultWithReferenceRangeStatus:(int64_t)status;
+ (id)predicateForElectrocardiogramsWithPrivateClassification:(unint64_t)classification;
+ (id)predicateForFitnessFriendAchievementsForFriendUUID:(id)d;
+ (id)predicateForFitnessFriendActivitySnapshotsForFriendUUID:(id)d;
+ (id)predicateForFitnessFriendWorkoutsForFriendUUID:(id)d;
+ (id)predicateForListUserDomainConceptWithListType:(unint64_t)type;
+ (id)predicateForMedicalUserDomainConceptWithCategoryType:(int64_t)type;
+ (id)predicateForMedicationDoseEventWithLogOrigin:(int64_t)origin;
+ (id)predicateForMedicationDoseEventWithScheduledStartDate:(id)date endDate:(id)endDate;
+ (id)predicateForMedicationDoseEventWithStatus:(int64_t)status;
+ (id)predicateForRecordsFromClinicalAccountIdentifier:(id)identifier;
+ (id)predicateForRecordsFromGatewayWithExternalIdentifier:(id)identifier;
+ (id)predicateForRecordsWithSortDateFromStartDateComponents:(id)components endDateComponents:(id)dateComponents;
+ (id)predicateForSamplesForDayFromDate:(id)date calendar:(id)calendar options:(unint64_t)options;
+ (id)predicateForSamplesWithStartDate:(id)date endDate:(id)endDate inclusiveEndDates:(BOOL)dates options:(unint64_t)options;
+ (id)predicateForSamplesWithinDateInterval:(id)interval options:(unint64_t)options;
+ (id)predicateForStatesOfMindWithAssociations:(id)associations;
+ (id)predicateForStatesOfMindWithValence:(double)valence operatorType:(unint64_t)type;
+ (id)predicateForWorkoutEffortSamplesRelatedToWorkout:(id)workout activity:(id)activity;
+ (id)predicateForWorkoutRoutesUsingMetadataForWorkout:(id)workout;
+ (id)serverInterface;
- (BOOL)_queue_deactivateWithError:(id)error;
- (BOOL)deactivate;
- (BOOL)hasQueryUUID:(id)d;
- (HKObjectType)objectType;
- (HKQuery)initWithQueryDescriptors:(id)descriptors;
- (HKQueryDelegate)delegate;
- (HKSampleType)sampleType;
- (NSPredicate)predicate;
- (NSString)description;
- (id)_filterForPredicate:(id)predicate objectType:(id)type;
- (id)_initWithObjectType:(id)type predicate:(id)predicate;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)_queue_finishActivationWithServerProxy:(id)proxy activationUUID:(id)d error:(id)error completion:(id)completion;
- (void)_throwInvalidArgumentExceptionIfHasBeenExecuted:(SEL)executed;
- (void)activateWithClientQueue:(id)queue healthStore:(id)store delegate:(id)delegate time:(double)time completion:(id)completion;
- (void)client_deliverError:(id)error forQuery:(id)query;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)objectType;
- (void)predicate;
- (void)queue_deactivate;
- (void)queue_deliverError:(id)error;
- (void)queue_dispatchToClientForUUID:(id)d shouldDeactivate:(BOOL)deactivate block:(id)block;
- (void)queue_populateConfiguration:(id)configuration;
- (void)reactivateWithHealthStore:(id)store;
- (void)sampleType;
- (void)setObjectType:(id)type;
- (void)setPredicate:(id)predicate;
@end

@implementation HKQuery

+ (NSPredicate)predicateForObjectsWithMetadataKey:(NSString *)key operatorType:(NSPredicateOperatorType)operatorType value:(id)value
{
  v7 = MEMORY[0x1E696ABC8];
  v8 = MEMORY[0x1E696AEC0];
  v9 = value;
  v10 = [v8 stringWithFormat:@"%@.%@", @"metadata", key];
  v11 = [v7 expressionForKeyPath:v10];

  v12 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v9];

  v13 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v11 rightExpression:v12 modifier:0 type:operatorType options:0];

  return v13;
}

+ (NSPredicate)predicateForClinicalRecordsFromSource:(HKSource *)source FHIRResourceType:(HKFHIRResourceType)resourceType identifier:(NSString *)identifier
{
  v18[3] = *MEMORY[0x1E69E9840];
  v8 = identifier;
  v9 = resourceType;
  v10 = [self predicateForObjectsFromSource:source];
  v11 = [self predicateForClinicalRecordsWithFHIRResourceType:v9];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"FHIRResource.identifier", v8];

  v13 = MEMORY[0x1E696AB28];
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v15 = [v13 andPredicateWithSubpredicates:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)predicateForSamplesWithStartDate:(id)date endDate:(id)endDate inclusiveEndDates:(BOOL)dates options:(unint64_t)options
{
  optionsCopy = options;
  datesCopy = dates;
  dateCopy = date;
  endDateCopy = endDate;
  array = [MEMORY[0x1E695DF70] array];
  v12 = HKProgramSDKAtLeast();
  if (dateCopy)
  {
    if (optionsCopy)
    {
      v13 = @"startDate >= %@";
    }

    else
    {
      v13 = @"endDate >= %@";
    }

    v12 &= (optionsCopy & 1) == 0;
    dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:v13, dateCopy];
    [array addObject:dateCopy];
  }

  if (endDateCopy)
  {
    if ((optionsCopy & 2) != 0)
    {
      v17 = !datesCopy;
      if (datesCopy)
      {
        v18 = @"endDate <= %@";
      }

      else
      {
        v18 = @"endDate < %@";
      }

      v19 = @"startDate < %@";
      if (!v17)
      {
        v19 = @"startDate <= %@";
      }

      v20 = MEMORY[0x1E696AE18];
      v21 = v19;
      endDateCopy = [v20 predicateWithFormat:v18, endDateCopy];
      [array addObject:endDateCopy];

      endDateCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:v21, endDateCopy];
    }

    else
    {
      if (datesCopy)
      {
        v15 = @"startDate <= %@";
      }

      else
      {
        v15 = @"startDate < %@";
      }

      endDateCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:v15, endDateCopy];
    }

    [array addObject:endDateCopy2];

    v23 = v12 ^ 1;
    if (!dateCopy)
    {
      v23 = 1;
    }

    if ((v23 & 1) == 0)
    {
      dateCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"offsetFromStartDate >= %@", dateCopy];
      [array addObject:dateCopy2];
    }
  }

  v25 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];

  return v25;
}

+ (NSPredicate)predicateForObjectsWithDeviceProperty:(NSString *)key allowedValues:(NSSet *)allowedValues
{
  v5 = key;
  v6 = allowedValues;
  if (![_HKObjectComparisonFilter isSupportedDevicePropertyKey:v5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Unrecognized device property."];
  }

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K IN %@", @"device", v5, v6];

  return v7;
}

+ (id)_predicateForObjectsWithMinOSBuildVersion:(id)version maxOSBuildVersion:(id)buildVersion
{
  versionCopy = version;
  buildVersionCopy = buildVersion;
  array = [MEMORY[0x1E695DF70] array];
  if (versionCopy)
  {
    versionCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"OSBuild", versionCopy];
    [array addObject:versionCopy];
  }

  if (buildVersionCopy)
  {
    buildVersionCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %@", @"OSBuild", buildVersionCopy];
    [array addObject:buildVersionCopy];
  }

  v10 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];

  return v10;
}

+ (id)predicateForWorkoutEffortSamplesRelatedToWorkout:(id)workout activity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  array = [MEMORY[0x1E695DF70] array];
  if (activityCopy)
  {
    workoutActivities = [workoutCopy workoutActivities];
    v9 = [workoutActivities containsObject:activityCopy];

    if ((v9 & 1) == 0)
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      workoutConfiguration = [activityCopy workoutConfiguration];
      v13 = _HKWorkoutActivityNameForActivityType([workoutConfiguration activityType]);
      [v10 raise:v11 format:{@"%@ must be sub activity of Workout", v13}];
    }

    startDate = [activityCopy startDate];
    endDate = [activityCopy endDate];
    v16 = [HKQuery predicateForSamplesWithStartDate:startDate endDate:endDate options:1];

    [array addObject:v16];
  }

  workoutCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"ratingOfExertionAssociation", workoutCopy];
  [array addObject:workoutCopy];
  v18 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];

  return v18;
}

+ (id)predicateForSamplesWithinDateInterval:(id)interval options:(unint64_t)options
{
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  v8 = [HKQuery predicateForSamplesWithStartDate:startDate endDate:endDate options:options];

  return v8;
}

+ (id)predicateForSamplesForDayFromDate:(id)date calendar:(id)calendar options:(unint64_t)options
{
  v6 = [MEMORY[0x1E696AB80] hk_dateIntervalForDayFromDate:date calendar:calendar];
  v7 = [HKQuery predicateForSamplesWithinDateInterval:v6 options:options];

  return v7;
}

+ (id)predicateForRecordsFromClinicalAccountIdentifier:(id)identifier
{
  v4 = [HKSource _privateSourceForClinicalAccountIdentifier:identifier name:0];
  v5 = [self predicateForObjectsFromSource:v4];

  return v5;
}

+ (id)predicateForRecordsFromGatewayWithExternalIdentifier:(id)identifier
{
  v4 = [HKSource _publicSourceForClinicalExternalIdentifier:identifier name:0];
  v5 = [self predicateForObjectsFromSource:v4];

  return v5;
}

+ (NSPredicate)predicateForQuantitySamplesWithOperatorType:(NSPredicateOperatorType)operatorType quantity:(HKQuantity *)quantity
{
  v5 = MEMORY[0x1E696ABC8];
  v6 = quantity;
  v7 = [v5 expressionForKeyPath:@"quantity"];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v6];

  v9 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v7 rightExpression:v8 modifier:0 type:operatorType options:0];

  return v9;
}

+ (NSPredicate)predicateForCategorySamplesWithOperatorType:(NSPredicateOperatorType)operatorType value:(NSInteger)value
{
  v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"value"];
  v7 = MEMORY[0x1E696ABC8];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  v9 = [v7 expressionForConstantValue:v8];

  v10 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v6 rightExpression:v9 modifier:0 type:operatorType options:0];

  return v10;
}

+ (NSPredicate)predicateForCategorySamplesEqualToValues:(NSSet *)values
{
  v3 = [(NSSet *)values hk_map:&__block_literal_global_20];
  v4 = MEMORY[0x1E696AB28];
  allObjects = [v3 allObjects];
  v6 = [v4 orPredicateWithSubpredicates:allObjects];

  return v6;
}

NSPredicate *__66__HKQuery_HKPredicates__predicateForCategorySamplesEqualToValues___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return [HKQuery predicateForCategorySamplesWithOperatorType:4 value:v2];
}

+ (NSPredicate)predicateForWorkoutsWithOperatorType:(NSPredicateOperatorType)operatorType duration:(NSTimeInterval)duration
{
  v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"duration"];
  v7 = MEMORY[0x1E696ABC8];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  v9 = [v7 expressionForConstantValue:v8];

  v10 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v6 rightExpression:v9 modifier:0 type:operatorType options:0];

  return v10;
}

+ (NSPredicate)predicateForWorkoutsWithOperatorType:(NSPredicateOperatorType)operatorType totalEnergyBurned:(HKQuantity *)totalEnergyBurned
{
  v5 = MEMORY[0x1E696ABC8];
  v6 = totalEnergyBurned;
  v7 = [v5 expressionForKeyPath:@"totalEnergyBurned"];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v6];

  v9 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v7 rightExpression:v8 modifier:0 type:operatorType options:0];

  return v9;
}

+ (NSPredicate)predicateForWorkoutsWithOperatorType:(NSPredicateOperatorType)operatorType totalDistance:(HKQuantity *)totalDistance
{
  v5 = MEMORY[0x1E696ABC8];
  v6 = totalDistance;
  v7 = [v5 expressionForKeyPath:@"totalDistance"];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v6];

  v9 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v7 rightExpression:v8 modifier:0 type:operatorType options:0];

  return v9;
}

+ (NSPredicate)predicateForWorkoutsWithOperatorType:(NSPredicateOperatorType)operatorType totalSwimmingStrokeCount:(HKQuantity *)totalSwimmingStrokeCount
{
  v5 = MEMORY[0x1E696ABC8];
  v6 = totalSwimmingStrokeCount;
  v7 = [v5 expressionForKeyPath:@"totalSwimmingStrokeCount"];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v6];

  v9 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v7 rightExpression:v8 modifier:0 type:operatorType options:0];

  return v9;
}

+ (NSPredicate)predicateForWorkoutsWithOperatorType:(NSPredicateOperatorType)operatorType totalFlightsClimbed:(HKQuantity *)totalFlightsClimbed
{
  v5 = MEMORY[0x1E696ABC8];
  v6 = totalFlightsClimbed;
  v7 = [v5 expressionForKeyPath:@"totalFlightsClimbed"];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v6];

  v9 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v7 rightExpression:v8 modifier:0 type:operatorType options:0];

  return v9;
}

+ (id)_predicateForWorkoutStatisticsWithOperatorType:(unint64_t)type quantityType:(id)quantityType keyPathPrefix:(id)prefix quantity:(id)quantity
{
  v9 = MEMORY[0x1E696ABC8];
  v10 = MEMORY[0x1E696AEC0];
  v11 = MEMORY[0x1E696AD98];
  quantityCopy = quantity;
  prefixCopy = prefix;
  v14 = [v11 numberWithInteger:{objc_msgSend(quantityType, "code")}];
  v15 = [v10 stringWithFormat:@"%@.%@", prefixCopy, v14];

  v16 = [v9 expressionForKeyPath:v15];

  v17 = [MEMORY[0x1E696ABC8] expressionForConstantValue:quantityCopy];

  v18 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v16 rightExpression:v17 modifier:0 type:type options:0];

  return v18;
}

+ (NSPredicate)predicateForWorkoutActivitiesWithOperatorType:(NSPredicateOperatorType)operatorType duration:(NSTimeInterval)duration
{
  v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"activityDuration"];
  v7 = MEMORY[0x1E696ABC8];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  v9 = [v7 expressionForConstantValue:v8];

  v10 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v6 rightExpression:v9 modifier:0 type:operatorType options:0];

  return v10;
}

+ (NSPredicate)predicateForWorkoutActivitiesWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate options:(HKQueryOptions)options
{
  v5 = options;
  v7 = startDate;
  v8 = endDate;
  array = [MEMORY[0x1E695DF70] array];
  if (v7)
  {
    if (v5)
    {
      v10 = &HKPredicateKeyPathWorkoutActivityStartDate;
    }

    else
    {
      v10 = &HKPredicateKeyPathWorkoutActivityEndDate;
    }

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", *v10, v7];
    [array addObject:v11];
  }

  if (v8)
  {
    if ((v5 & 2) != 0)
    {
      v12 = &HKPredicateKeyPathWorkoutActivityEndDate;
    }

    else
    {
      v12 = &HKPredicateKeyPathWorkoutActivityStartDate;
    }

    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %@", *v12, v8];
    [array addObject:v13];
  }

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];

  return v14;
}

+ (NSPredicate)predicateForWorkoutsWithActivityPredicate:(NSPredicate *)activityPredicate
{
  v3 = MEMORY[0x1E696ABC8];
  v4 = activityPredicate;
  v5 = [v3 expressionForKeyPath:@"workoutActivity"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v4];

  v7 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v5 rightExpression:v6 modifier:0 type:99 options:0];

  return v7;
}

+ (NSPredicate)predicateForActivitySummaryWithDateComponents:(NSDateComponents *)dateComponents
{
  v3 = dateComponents;
  v8 = 0;
  v4 = [HKActivitySummary _validateActivitySummaryDateComponents:v3 errorMessage:&v8];
  v5 = v8;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", v5}];
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"dateComponents", v3];

  return v6;
}

+ (NSPredicate)predicateForActivitySummariesBetweenStartDateComponents:(NSDateComponents *)startDateComponents endDateComponents:(NSDateComponents *)endDateComponents
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = startDateComponents;
  v16 = 0;
  v6 = endDateComponents;
  v7 = [HKActivitySummary _validateActivitySummaryDateComponentsRange:v5 endDateComponents:v6 errorMessage:&v16];
  v8 = v16;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", v8}];
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"dateComponents", v5];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %@", @"dateComponents", v6];

  v11 = MEMORY[0x1E696AB28];
  v17[0] = v9;
  v17[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)predicateForActivitySummariesWithActivityMoveMode:(int64_t)mode
{
  if (!_HKActivityMoveModeIsValid(mode))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid activity move mode %ld", mode}];
  }

  return [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %ld", @"activityMoveMode", mode];
}

+ (NSPredicate)predicateForElectrocardiogramsWithClassification:(HKElectrocardiogramClassification)classification
{
  if (!_HKECGCPublicClassificationIsValid(classification))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid ECG classification provided %ld", classification}];
  }

  return [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %ld", @"ecg_public_classification", classification];
}

+ (id)predicateForElectrocardiogramsWithPrivateClassification:(unint64_t)classification
{
  if (!_HKECGCPrivateClassificationIsValid(classification))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid private ECG classification provided %ld", classification}];
  }

  return [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %ld", @"ecg_private_classification", classification];
}

+ (NSPredicate)predicateForElectrocardiogramsWithSymptomsStatus:(HKElectrocardiogramSymptomsStatus)symptomsStatus
{
  if (!_HKECGSymptomsStatusIsValid(symptomsStatus))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid ECG symptoms status provided %ld", symptomsStatus}];
  }

  return [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %ld", @"ecg_symptoms_status", symptomsStatus];
}

+ (id)predicateForListUserDomainConceptWithListType:(unint64_t)type
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v5 = [v3 predicateWithFormat:@"%K == %@", @"listType", v4];

  return v5;
}

+ (id)predicateForMedicalUserDomainConceptWithCategoryType:(int64_t)type
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [v3 predicateWithFormat:@"%K == %@", @"categoryTypes", v4];

  return v5;
}

+ (id)predicateForDiagnosticTestResultWithReferenceRangeStatus:(int64_t)status
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  v5 = [v3 predicateWithFormat:@"%K == %@", @"referenceRangeStatus", v4];

  return v5;
}

+ (id)predicateForRecordsWithSortDateFromStartDateComponents:(id)components endDateComponents:(id)dateComponents
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v4 = [HKMedicalRecord _sortDateIntervalFromStartDateComponents:components endDateComponents:dateComponents error:&v17];
  v5 = v17;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", v5}];
  }

  v6 = MEMORY[0x1E696AE18];
  startDate = [v4 startDate];
  v8 = [v6 predicateWithFormat:@"%K  >= %@", @"sortDate", startDate];

  v9 = MEMORY[0x1E696AE18];
  endDate = [v4 endDate];
  v11 = [v9 predicateWithFormat:@"%K  < %@", @"sortDate", endDate];

  v12 = MEMORY[0x1E696AB28];
  v18[0] = v8;
  v18[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)predicateForCreationDateWithTodayViewRange:(id)range
{
  v3 = MEMORY[0x1E696AE18];
  rangeCopy = range;
  startDate = [rangeCopy startDate];
  endDate = [rangeCopy endDate];

  v7 = [v3 predicateWithFormat:@"(%K >= %@) AND (%K < %@)", @"creationDate", startDate, @"creationDate", endDate];

  return v7;
}

+ (NSPredicate)predicateForVerifiableClinicalRecordsWithRelevantDateWithinDateInterval:(NSDateInterval *)dateInterval
{
  v3 = MEMORY[0x1E696AE18];
  v4 = dateInterval;
  startDate = [(NSDateInterval *)v4 startDate];
  endDate = [(NSDateInterval *)v4 endDate];

  v7 = [v3 predicateWithFormat:@"(%K >= %@) AND (%K <= %@)", @"relevantDate", startDate, @"relevantDate", endDate];

  return v7;
}

+ (id)predicateForMedicationDoseEventWithStatus:(int64_t)status
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  v5 = [v3 predicateWithFormat:@"%K == %@", @"status", v4];

  return v5;
}

+ (id)predicateForMedicationDoseEventWithLogOrigin:(int64_t)origin
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:origin];
  v5 = [v3 predicateWithFormat:@"%K == %@", @"logOrigin", v4];

  return v5;
}

+ (id)predicateForMedicationDoseEventWithScheduledStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  array = [MEMORY[0x1E695DF70] array];
  if (dateCopy)
  {
    dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"scheduledDate", dateCopy];
    [array addObject:dateCopy];
  }

  if (endDateCopy)
  {
    endDateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %@", @"scheduledDate", endDateCopy];
    [array addObject:endDateCopy];
  }

  v10 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];

  return v10;
}

+ (id)predicateForStatesOfMindWithValence:(double)valence operatorType:(unint64_t)type
{
  v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"valence"];
  v7 = MEMORY[0x1E696ABC8];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:valence];
  v9 = [v7 expressionForConstantValue:v8];

  v10 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v6 rightExpression:v9 modifier:0 type:type options:0];

  return v10;
}

+ (id)predicateForStatesOfMindWithAssociations:(id)associations
{
  v22 = *MEMORY[0x1E69E9840];
  associationsCopy = associations;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = associationsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = MEMORY[0x1E696AD98];
        integerValue = [*(*(&v17 + 1) + 8 * i) integerValue];
        v13 = [v10 numberWithInteger:{HKStateOfMindDomainFromAssociation(integerValue, v12)}];
        [array addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"domains", array, v17];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)predicateForWorkoutRoutesUsingMetadataForWorkout:(id)workout
{
  v20[1] = *MEMORY[0x1E69E9840];
  workoutCopy = workout;
  uUID = [workoutCopy UUID];
  uUIDString = [uUID UUIDString];
  v20[0] = uUIDString;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v7 = [HKQuery predicateForObjectsWithMetadataKey:@"_HKPrivateSmoothedRouteWorkoutAssociatedUUID" allowedValues:v6];

  startDate = [workoutCopy startDate];
  v9 = [startDate dateByAddingTimeInterval:-300.0];

  endDate = [workoutCopy endDate];

  v11 = [endDate dateByAddingTimeInterval:300.0];

  v12 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v11];
  v13 = [HKQuery predicateForSamplesWithinDateInterval:v12 options:0];
  v14 = MEMORY[0x1E696AB28];
  v19[0] = v7;
  v19[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v16 = [v14 andPredicateWithSubpredicates:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)predicateForFitnessFriendActivitySnapshotsForFriendUUID:(id)d
{
  v3 = MEMORY[0x1E696AE18];
  hk_dataForUUIDBytes = [d hk_dataForUUIDBytes];
  v5 = [v3 predicateWithFormat:@"%K == %@", @"friend_uuid", hk_dataForUUIDBytes];

  return v5;
}

- (id)_initWithObjectType:(id)type predicate:(id)predicate
{
  typeCopy = type;
  predicateCopy = predicate;
  v16.receiver = self;
  v16.super_class = HKQuery;
  v9 = [(HKQuery *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v11 = HKCreateSerialDispatchQueue(v9, @"activation");
    queue = v10->_queue;
    v10->_queue = v11;

    atomic_store(0, &v10->_activationState);
    v10->_qualityOfService = -1;
    objc_storeStrong(&v10->_objectType, type);
    objc_storeStrong(&v10->_predicate, predicate);
    v13 = [(HKQuery *)v10 _filterForPredicate:v10->_predicate objectType:v10->_objectType];
    filter = v10->_filter;
    v10->_filter = v13;
  }

  return v10;
}

- (HKQuery)initWithQueryDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  firstObject = [descriptorsCopy firstObject];
  sampleType = [firstObject sampleType];
  firstObject2 = [descriptorsCopy firstObject];
  predicate = [firstObject2 predicate];
  v9 = [(HKQuery *)self _initWithObjectType:sampleType predicate:predicate];

  if (v9)
  {
    v10 = [descriptorsCopy copy];
    queryDescriptors = v9->_queryDescriptors;
    v9->_queryDescriptors = v10;
  }

  return v9;
}

- (void)queue_populateConfiguration:(id)configuration
{
  filter = self->_filter;
  configurationCopy = configuration;
  [configurationCopy setFilter:filter];
  [configurationCopy setObjectType:self->_objectType];
  [configurationCopy setDebugIdentifier:self->_debugIdentifier];
  [configurationCopy setQualityOfService:self->_qualityOfService];
  [configurationCopy setShouldDeactivateAfterInitialResults:{-[HKQuery queue_shouldDeactivateAfterInitialResults](self, "queue_shouldDeactivateAfterInitialResults")}];
  [configurationCopy setShouldSuppressDataCollection:self->_shouldSuppressDataCollection];
  [configurationCopy setActivationTime:self->_activationTime];
}

- (void)_throwInvalidArgumentExceptionIfHasBeenExecuted:(SEL)executed
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__HKQuery__throwInvalidArgumentExceptionIfHasBeenExecuted___block_invoke;
  block[3] = &unk_1E7378528;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(queue, block);

  if (*(v11 + 24) == 1)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = objc_opt_class();
    v8 = NSStringFromSelector(executed);
    [v6 raise:*MEMORY[0x1E695D940] format:{@"%@: %@ not callable after first execution", v7, v8}];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)queue_dispatchToClientForUUID:(id)d shouldDeactivate:(BOOL)deactivate block:(id)block
{
  dCopy = d;
  blockCopy = block;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_clientQueue)
  {
    activationUUID = [(HKQuery *)self activationUUID];
    v11 = [activationUUID isEqual:dCopy];

    if (v11)
    {
      clientQueue = self->_clientQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__HKQuery_queue_dispatchToClientForUUID_shouldDeactivate_block___block_invoke;
      block[3] = &unk_1E737D2A8;
      block[4] = self;
      deactivateCopy = deactivate;
      v14 = blockCopy;
      dispatch_async(clientQueue, block);
    }
  }
}

uint64_t __64__HKQuery_queue_dispatchToClientForUUID_shouldDeactivate_block___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) deactivating];
  if ((result & 1) == 0)
  {
    if (*(a1 + 48) != 1 || (result = [*(a1 + 32) deactivate], result))
    {
      v3 = *(*(a1 + 40) + 16);

      return v3();
    }
  }

  return result;
}

- (BOOL)hasQueryUUID:(id)d
{
  dCopy = d;
  activationUUID = [(HKQuery *)self activationUUID];
  v6 = [activationUUID isEqual:dCopy];

  return v6;
}

- (void)activateWithClientQueue:(id)queue healthStore:(id)store delegate:(id)delegate time:(double)time completion:(id)completion
{
  queueCopy = queue;
  storeCopy = store;
  delegateCopy = delegate;
  completionCopy = completion;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  if (queueCopy)
  {
    if (storeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKQuery activateWithClientQueue:healthStore:delegate:time:completion:];
    if (storeCopy)
    {
LABEL_3:
      if (delegateCopy)
      {
        goto LABEL_4;
      }

LABEL_12:
      [HKQuery activateWithClientQueue:healthStore:delegate:time:completion:];
      if (completionCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  [HKQuery activateWithClientQueue:healthStore:delegate:time:completion:];
  if (!delegateCopy)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (completionCopy)
  {
    goto LABEL_5;
  }

LABEL_13:
  [HKQuery activateWithClientQueue:healthStore:delegate:time:completion:];
LABEL_5:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HKQuery_activateWithClientQueue_healthStore_delegate_time_completion___block_invoke;
  aBlock[3] = &unk_1E7376910;
  v45 = completionCopy;
  v17 = _Block_copy(aBlock);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__18;
  v38 = __Block_byref_object_dispose__18;
  v39 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__HKQuery_activateWithClientQueue_healthStore_delegate_time_completion___block_invoke_86;
  block[3] = &unk_1E737D2D0;
  block[4] = self;
  v31 = &v40;
  v19 = delegateCopy;
  v26 = v19;
  v20 = queueCopy;
  v27 = v20;
  v21 = uUID;
  v28 = v21;
  v22 = storeCopy;
  timeCopy = time;
  v29 = v22;
  v32 = &v34;
  v23 = v17;
  v30 = v23;
  dispatch_sync(queue, block);
  if (*(v41 + 24) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ has already been executed and cannot be executed again.", self}];
  }

  v24 = v35[5];
  if (v24)
  {
    [v24 raise];
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
}

void __72__HKQuery_activateWithClientQueue_healthStore_delegate_time_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__HKQuery_activateWithClientQueue_healthStore_delegate_time_completion___block_invoke_2;
  v8[3] = &unk_1E7376678;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  HKDispatchAsyncOnGlobalConcurrentQueue(0x15u, v8);
}

_BYTE *__72__HKQuery_activateWithClientQueue_healthStore_delegate_time_completion___block_invoke_86(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if ((result[8] & 1) != 0 || (result = [result activationState]) != 0)
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  else
  {
    v4 = a1 + 32;
    objc_storeWeak((*(a1 + 32) + 16), *(a1 + 40));
    objc_storeStrong((*(a1 + 32) + 128), *(a1 + 48));
    [*(a1 + 32) setActivationUUID:*(a1 + 56)];
    *(*v4 + 136) = [*(a1 + 64) applicationSDKVersionToken];
    *(*v4 + 40) = *(a1 + 96);
    v5 = [*(*(a1 + 32) + 104) count];
    _HKInitializeLogging();
    v6 = HKLogQuery;
    v7 = os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEFAULT);
    if (v5 < 2)
    {
      if (v7)
      {
        v10 = *(a1 + 32);
        v11 = v6;
        v12 = [v10 objectType];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = @"()";
        }

        v15 = [*(a1 + 32) predicate];
        v16 = 138543874;
        v17 = v10;
        v18 = 2114;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "Executing query %{public}@ for type %{public}@ with predicate %@", &v16, 0x20u);
      }
    }

    else if (v7)
    {
      v8 = *(a1 + 32);
      v9 = v8[13];
      v16 = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "Executing multi-type query %{public}@ with descriptors %@", &v16, 0x16u);
    }

    [*(a1 + 32) queue_validate];
    *(*(a1 + 32) + 8) = 1;
    result = [*(a1 + 32) _queue_activateWithHealthStore:*(a1 + 64) activationUUID:*(a1 + 56) isReactivating:0 completion:*(a1 + 72)];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)reactivateWithHealthStore:(id)store
{
  storeCopy = store;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__HKQuery_reactivateWithHealthStore___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = storeCopy;
  v6 = storeCopy;
  dispatch_async(queue, v7);
}

void __37__HKQuery_reactivateWithHealthStore___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) activationUUID];
  if (v2)
  {
    if ([*(a1 + 32) activationState] == 3)
    {
      _HKInitializeLogging();
      v3 = HKLogQuery;
      if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        *buf = 138543362;
        v15 = v4;
        v5 = "%{public}@: Query deactivated before reactivation was requested; ignoring reactivation request.";
LABEL_10:
        _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
      }
    }

    else
    {
      if ([*(a1 + 32) activationState] != 1)
      {
        [*(*(a1 + 32) + 24) invalidate];
        v8 = *(a1 + 32);
        v9 = *(v8 + 24);
        *(v8 + 24) = 0;

        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __37__HKQuery_reactivateWithHealthStore___block_invoke_93;
        v13[3] = &unk_1E7376A00;
        v13[4] = v10;
        [v10 _queue_activateWithHealthStore:v11 activationUUID:v2 isReactivating:1 completion:v13];
        goto LABEL_12;
      }

      _HKInitializeLogging();
      v3 = HKLogQuery;
      if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138543362;
        v15 = v7;
        v5 = "%{public}@: Query is activation in progress; ignoring reactivation request.";
        goto LABEL_10;
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v3 = HKLogQuery;
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v15 = v6;
      v5 = "%{public}@: Query reactivated with nil UUID; ignoring reactivation request.";
      goto LABEL_10;
    }
  }

LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
}

void __37__HKQuery_reactivateWithHealthStore___block_invoke_93(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 120);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__HKQuery_reactivateWithHealthStore___block_invoke_2;
    v9[3] = &unk_1E7378400;
    v9[4] = v7;
    v10 = v5;
    dispatch_async(v8, v9);
  }
}

uint64_t __37__HKQuery_reactivateWithHealthStore___block_invoke_2(uint64_t a1)
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
  {
    __37__HKQuery_reactivateWithHealthStore___block_invoke_2_cold_1(a1);
  }

  return [*(a1 + 32) _queue_deactivateWithError:*(a1 + 40)];
}

- (BOOL)deactivate
{
  atomic_fetch_add(&self->_deactivateCallCount, 1u);
  if ([(HKQuery *)self deactivating])
  {
    v3 = 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __21__HKQuery_deactivate__block_invoke;
    v6[3] = &unk_1E7378528;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(queue, v6);
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

uint64_t __21__HKQuery_deactivate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_deactivateWithError:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)queue_deactivate
{
  dispatch_assert_queue_V2(self->_queue);

  [(HKQuery *)self _queue_deactivateWithError:0];
}

void __83__HKQuery__queue_activateWithHealthStore_activationUUID_isReactivating_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(v11 + 120);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__HKQuery__queue_activateWithHealthStore_activationUUID_isReactivating_completion___block_invoke_2;
  v16[3] = &unk_1E737D2F8;
  v16[4] = v11;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = *(a1 + 48);
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v12, v16);
}

uint64_t __83__HKQuery__queue_activateWithHealthStore_activationUUID_isReactivating_completion___block_invoke_2(uint64_t a1)
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEBUG))
  {
    __83__HKQuery__queue_activateWithHealthStore_activationUUID_isReactivating_completion___block_invoke_2_cold_1(a1);
  }

  return [*(a1 + 32) _queue_finishActivationWithServerProxy:*(a1 + 48) activationUUID:*(a1 + 64) error:*(a1 + 56) completion:*(a1 + 72)];
}

void __83__HKQuery__queue_activateWithHealthStore_activationUUID_isReactivating_completion___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__HKQuery__queue_activateWithHealthStore_activationUUID_isReactivating_completion___block_invoke_2_97;
  v5[3] = &unk_1E737D348;
  v7 = *(a1 + 32);
  objc_copyWeak(&v8, (a1 + 40));
  v4 = v3;
  v6 = v4;
  [v4 remote_startQueryWithCompletion:v5];

  objc_destroyWeak(&v8);
}

void __83__HKQuery__queue_activateWithHealthStore_activationUUID_isReactivating_completion___block_invoke_2_97(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a2)
  {
    v8 = *(a1 + 32);
  }

  v9 = WeakRetained;
  (*(v5 + 16))(v5);
}

void __83__HKQuery__queue_activateWithHealthStore_activationUUID_isReactivating_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v3 + 16))(v3, WeakRetained, 0, v4);
}

- (void)_queue_finishActivationWithServerProxy:(id)proxy activationUUID:(id)d error:(id)error completion:(id)completion
{
  proxyCopy = proxy;
  dCopy = d;
  errorCopy = error;
  completionCopy = completion;
  activationState = [(HKQuery *)self activationState];
  if (activationState == 1)
  {
    if (proxyCopy)
    {
      objc_storeStrong(&self->_serverProxy, proxy);
      atomic_store(2u, &self->_activationState);
      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      [(HKQuery *)self _queue_deactivateWithError:errorCopy];
      (completionCopy)[2](completionCopy, 0, errorCopy);
    }

    [(HKQuery *)self queue_queryDidFinishActivation:dCopy success:proxyCopy != 0 error:errorCopy];
  }

  else if (activationState != 3)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      [HKQuery _queue_finishActivationWithServerProxy:activationUUID:error:completion:];
    }

    v16 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"Invalid query activation state upon completing connection"];
    [(HKQuery *)self _queue_deactivateWithError:v16];
    (completionCopy)[2](completionCopy, 0, v16);
  }
}

- (BOOL)_queue_deactivateWithError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v5 = atomic_exchange(&self->_activationState, 3u);
  if (v5 != 3)
  {
    _HKInitializeLogging();
    v6 = HKLogQuery;
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEFAULT))
    {
      v7 = " with error: ";
      if (!errorCopy)
      {
        v7 = "";
      }

      v16 = 138543874;
      selfCopy = self;
      v8 = &stru_1F05FF230;
      if (errorCopy)
      {
        v8 = errorCopy;
      }

      v18 = 2080;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "Stopping query %{public}@%s%{public}@", &v16, 0x20u);
    }

    if (errorCopy)
    {
      [(HKQuery *)self queue_deliverError:errorCopy];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_storeWeak(&self->_delegate, 0);
    [WeakRetained queryDidFinishExecuting:self];
    clientQueue = self->_clientQueue;
    self->_clientQueue = 0;

    activationUUID = [(HKQuery *)self activationUUID];
    [(HKQuery *)self setActivationUUID:0];
    [(HKQueryServerInterface *)self->_serverProxy remote_deactivateServer];
    serverProxy = self->_serverProxy;
    self->_serverProxy = 0;

    [(HKQuery *)self queue_queryDidDeactivate:activationUUID];
    proxyProvider = self->_proxyProvider;
    self->_proxyProvider = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5 != 3;
}

- (void)client_deliverError:(id)error forQuery:(id)query
{
  errorCopy = error;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__HKQuery_client_deliverError_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  v12 = errorCopy;
  selfCopy = self;
  v14 = queryCopy;
  v9 = queryCopy;
  v10 = errorCopy;
  dispatch_async(queue, block);
}

void __40__HKQuery_client_deliverError_forQuery___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  _HKInitializeLogging();
  v3 = HKLogQuery;
  if (v2)
  {
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v4 = *(a1 + 40);
      v6 = *(a1 + 48);
      v10 = 138543874;
      v11 = v4;
      v12 = 2114;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Received error for query %{public}@: %{public}@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
  {
    __40__HKQuery_client_deliverError_forQuery___block_invoke_cold_1(a1);
  }

  v7 = [*(a1 + 40) activationUUID];
  v8 = [v7 isEqual:*(a1 + 48)];

  if (v8)
  {
    [*(a1 + 40) _queue_deactivateWithError:*(a1 + 32)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (NSString)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HKSampleType)sampleType
{
  if ([(NSArray *)self->_queryDescriptors count]< 2)
  {
    objectType = self->_objectType;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = self->_objectType;
      goto LABEL_7;
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      [HKQuery sampleType];
    }
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (HKObjectType)objectType
{
  if ([(NSArray *)self->_queryDescriptors count]< 2)
  {
    v3 = self->_objectType;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      [HKQuery objectType];
    }

    v3 = 0;
  }

  return v3;
}

- (NSPredicate)predicate
{
  if ([(NSArray *)self->_queryDescriptors count]< 2)
  {
    v3 = self->_predicate;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      [HKQuery predicate];
    }

    v3 = 0;
  }

  return v3;
}

- (HKQueryDelegate)delegate
{
  dispatch_assert_queue_not_V2(self->_queue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  queue = [(HKQuery *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __19__HKQuery_delegate__block_invoke;
  v6[3] = &unk_1E7378528;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __19__HKQuery_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setPredicate:(id)predicate
{
  predicateCopy = predicate;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  predicate = self->_predicate;
  self->_predicate = predicateCopy;
  v9 = predicateCopy;

  v7 = [(HKQuery *)self _filterForPredicate:self->_predicate objectType:self->_objectType];
  filter = self->_filter;
  self->_filter = v7;
}

- (void)setObjectType:(id)type
{
  typeCopy = type;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  objectType = self->_objectType;
  self->_objectType = typeCopy;
  v9 = typeCopy;

  v7 = [(HKQuery *)self _filterForPredicate:self->_predicate objectType:self->_objectType];
  filter = self->_filter;
  self->_filter = v7;
}

- (NSString)description
{
  if ([(HKQuery *)self activationState])
  {
    v3 = [(HKQuery *)self activationState]- 1;
    if (v3 > 2)
    {
      v4 = @"inactive";
    }

    else
    {
      v4 = *(&off_1E737D3D8 + v3);
    }
  }

  else
  {
    v4 = 0;
  }

  activationUUID = [(HKQuery *)self activationUUID];
  v6 = HKCopyQueryDescription(self, activationUUID, 0, self->_debugIdentifier, self->_qualityOfService, v4);

  return v6;
}

+ (id)clientInterface
{
  clientInterfaceProtocol = [self clientInterfaceProtocol];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__HKQuery_clientInterface__block_invoke;
  v6[3] = &__block_descriptor_40_e24_v16__0__NSXPCInterface_8l;
  v6[4] = self;
  v4 = [self _cachedInterfaceForProtocol:clientInterfaceProtocol configurationHandler:v6];

  return v4;
}

+ (id)serverInterface
{
  serverInterfaceProtocol = [self serverInterfaceProtocol];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__HKQuery_serverInterface__block_invoke;
  v6[3] = &__block_descriptor_40_e24_v16__0__NSXPCInterface_8l;
  v6[4] = self;
  v4 = [self _cachedInterfaceForProtocol:serverInterfaceProtocol configurationHandler:v6];

  return v4;
}

+ (id)_cachedInterfaceForProtocol:(id)protocol configurationHandler:(id)handler
{
  protocolCopy = protocol;
  handlerCopy = handler;
  v7 = NSStringFromProtocol(protocolCopy);
  os_unfair_lock_lock(&_cachedInterfaceForProtocol_configurationHandler__lock);
  v8 = _cachedInterfaceForProtocol_configurationHandler__interfacesCache;
  if (!_cachedInterfaceForProtocol_configurationHandler__interfacesCache)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = _cachedInterfaceForProtocol_configurationHandler__interfacesCache;
    _cachedInterfaceForProtocol_configurationHandler__interfacesCache = v9;

    v8 = _cachedInterfaceForProtocol_configurationHandler__interfacesCache;
  }

  v11 = [v8 objectForKeyedSubscript:v7];
  os_unfair_lock_unlock(&_cachedInterfaceForProtocol_configurationHandler__lock);
  if (!v11)
  {
    v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:protocolCopy];
    handlerCopy[2](handlerCopy, v12);
    os_unfair_lock_lock(&_cachedInterfaceForProtocol_configurationHandler__lock);
    v13 = [_cachedInterfaceForProtocol_configurationHandler__interfacesCache objectForKeyedSubscript:v7];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v12;
    }

    v11 = v15;

    [_cachedInterfaceForProtocol_configurationHandler__interfacesCache setObject:v11 forKeyedSubscript:v7];
    os_unfair_lock_unlock(&_cachedInterfaceForProtocol_configurationHandler__lock);
  }

  return v11;
}

- (id)_filterForPredicate:(id)predicate objectType:(id)type
{
  v18[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  typeCopy = type;
  v8 = predicateCopy;
  v9 = v8;
  if ([objc_opt_class() shouldApplyAdditionalPredicateForObjectType:typeCopy])
  {
    v10 = [typeCopy _predicateForSDKVersionToken:HKApplicationSDKVersionToken()];
    v11 = v10;
    v9 = v8;
    if (v10)
    {
      if (v8)
      {
        v12 = MEMORY[0x1E696AB28];
        v18[0] = self->_predicate;
        v18[1] = v10;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
        v9 = [v12 andPredicateWithSubpredicates:v13];
      }

      else
      {
        v9 = v10;
      }
    }
  }

  if (typeCopy)
  {
    [MEMORY[0x1E695DFD8] setWithObject:typeCopy];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v14 = ;
  v15 = [v9 hk_filterRepresentationForDataTypes:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 clientInterface];
}

- (id)remoteInterface
{
  v2 = objc_opt_class();

  return [v2 serverInterface];
}

- (void)connectionInvalidated
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_19197B000, v0, OS_LOG_TYPE_DEBUG, "%{public}@: Connection invalidated", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)connectionInterrupted
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_19197B000, v0, OS_LOG_TYPE_DEBUG, "%{public}@: Connection interrupted", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (id)predicateForActivityCachesBetweenStartDateComponents:(id)components endDateComponents:(id)dateComponents
{
  v17[2] = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  v16 = 0;
  dateComponentsCopy = dateComponents;
  v7 = [HKActivitySummary _validateActivitySummaryDateComponentsRange:componentsCopy endDateComponents:dateComponentsCopy errorMessage:&v16];
  v8 = v16;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", v8}];
  }

  componentsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"dateComponents", componentsCopy];
  dateComponentsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %@", @"dateComponents", dateComponentsCopy];

  v11 = MEMORY[0x1E696AB28];
  v17[0] = componentsCopy;
  v17[1] = dateComponentsCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)predicateForFitnessFriendAchievementsForFriendUUID:(id)d
{
  v3 = MEMORY[0x1E696AE18];
  hk_dataForUUIDBytes = [d hk_dataForUUIDBytes];
  v5 = [v3 predicateWithFormat:@"%K == %@", @"friend_uuid", hk_dataForUUIDBytes];

  return v5;
}

+ (id)predicateForFitnessFriendWorkoutsForFriendUUID:(id)d
{
  v3 = MEMORY[0x1E696AE18];
  hk_dataForUUIDBytes = [d hk_dataForUUIDBytes];
  v5 = [v3 predicateWithFormat:@"%K == %@", @"friend_uuid", hk_dataForUUIDBytes];

  return v5;
}

- (void)queue_deliverError:(id)error
{
  OUTLINED_FUNCTION_0_0();
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)activateWithClientQueue:healthStore:delegate:time:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"clientQueue" object:? file:? lineNumber:? description:?];
}

- (void)activateWithClientQueue:healthStore:delegate:time:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"healthStore" object:? file:? lineNumber:? description:?];
}

- (void)activateWithClientQueue:healthStore:delegate:time:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)activateWithClientQueue:healthStore:delegate:time:completion:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __72__HKQuery_activateWithClientQueue_healthStore_delegate_time_completion___block_invoke_86_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_begin_catch(a1);
  v5 = *(*(a3 + 88) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_end_catch();
}

void __37__HKQuery_reactivateWithHealthStore___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queue_activateWithHealthStore:(uint64_t)a1 activationUUID:(uint64_t *)a2 isReactivating:completion:.cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_4();
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEBUG, "%{public}@: Initiating connection to query server via %@", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __83__HKQuery__queue_activateWithHealthStore_activationUUID_isReactivating_completion___block_invoke_2_cold_1(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  OUTLINED_FUNCTION_3_0();
  v11 = 1024;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  _os_log_debug_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Connection to query server via %{public}@ complete with success=%{BOOL}d, error=%{public}@", v10, 0x26u);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_queue_finishActivationWithServerProxy:activationUUID:error:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __40__HKQuery_client_deliverError_forQuery___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)sampleType
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)objectType
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)predicate
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end
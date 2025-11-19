@interface NLWorkoutControllerFactoryBridge
+ (id)makeWithHealthStore:(id)a3 formattingManager:(id)a4 activityPausedRingsObserver:(id)a5 backgroundPermissionsChecker:(id)a6 occurrenceStore:(id)a7 locationProvider:(id)a8 workoutVoiceAvailabilityProvider:(id)a9;
- (NLWorkoutControllerFactoryBridge)init;
@end

@implementation NLWorkoutControllerFactoryBridge

+ (id)makeWithHealthStore:(id)a3 formattingManager:(id)a4 activityPausedRingsObserver:(id)a5 backgroundPermissionsChecker:(id)a6 occurrenceStore:(id)a7 locationProvider:(id)a8 workoutVoiceAvailabilityProvider:(id)a9
{
  type metadata accessor for NLWorkoutControllerFactory();
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = static NLWorkoutControllerFactory.make(healthStore:formattingManager:activityPausedRingsObserver:backgroundPermissionsChecker:occurrenceStore:locationProvider:workoutVoiceAvailabilityProvider:)();

  return v22;
}

- (NLWorkoutControllerFactoryBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NLWorkoutControllerFactoryBridge();
  return [(NLWorkoutControllerFactoryBridge *)&v3 init];
}

@end
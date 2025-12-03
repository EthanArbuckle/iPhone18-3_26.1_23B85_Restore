@interface NLWorkoutControllerFactoryBridge
+ (id)makeWithHealthStore:(id)store formattingManager:(id)manager activityPausedRingsObserver:(id)observer backgroundPermissionsChecker:(id)checker occurrenceStore:(id)occurrenceStore locationProvider:(id)provider workoutVoiceAvailabilityProvider:(id)availabilityProvider;
- (NLWorkoutControllerFactoryBridge)init;
@end

@implementation NLWorkoutControllerFactoryBridge

+ (id)makeWithHealthStore:(id)store formattingManager:(id)manager activityPausedRingsObserver:(id)observer backgroundPermissionsChecker:(id)checker occurrenceStore:(id)occurrenceStore locationProvider:(id)provider workoutVoiceAvailabilityProvider:(id)availabilityProvider
{
  type metadata accessor for NLWorkoutControllerFactory();
  storeCopy = store;
  managerCopy = manager;
  observerCopy = observer;
  checkerCopy = checker;
  occurrenceStoreCopy = occurrenceStore;
  providerCopy = provider;
  availabilityProviderCopy = availabilityProvider;
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
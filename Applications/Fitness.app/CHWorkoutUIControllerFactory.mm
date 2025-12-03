@interface CHWorkoutUIControllerFactory
+ (id)makeWithRootViewController:(id)controller workoutController:(id)workoutController unitManager:(id)manager fitnessIntelligenceConnection:(id)connection workoutVoiceAvailabilityProvider:(id)provider fitnessAppContext:(id)context summaryViewControllerCompletion:(id)aBlock;
- (CHWorkoutUIControllerFactory)init;
@end

@implementation CHWorkoutUIControllerFactory

+ (id)makeWithRootViewController:(id)controller workoutController:(id)workoutController unitManager:(id)manager fitnessIntelligenceConnection:(id)connection workoutVoiceAvailabilityProvider:(id)provider fitnessAppContext:(id)context summaryViewControllerCompletion:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  controllerCopy = controller;
  workoutControllerCopy = workoutController;
  managerCopy = manager;
  connectionCopy = connection;
  providerCopy = provider;
  contextCopy = context;
  v23 = sub_1004DC6B0(controllerCopy, workoutControllerCopy, managerCopy, connectionCopy, providerCopy, contextCopy, sub_1004DC674, v16);

  return v23;
}

- (CHWorkoutUIControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WorkoutUIControllerFactory();
  return [(CHWorkoutUIControllerFactory *)&v3 init];
}

@end
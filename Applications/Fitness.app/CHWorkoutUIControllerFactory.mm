@interface CHWorkoutUIControllerFactory
+ (id)makeWithRootViewController:(id)a3 workoutController:(id)a4 unitManager:(id)a5 fitnessIntelligenceConnection:(id)a6 workoutVoiceAvailabilityProvider:(id)a7 fitnessAppContext:(id)a8 summaryViewControllerCompletion:(id)aBlock;
- (CHWorkoutUIControllerFactory)init;
@end

@implementation CHWorkoutUIControllerFactory

+ (id)makeWithRootViewController:(id)a3 workoutController:(id)a4 unitManager:(id)a5 fitnessIntelligenceConnection:(id)a6 workoutVoiceAvailabilityProvider:(id)a7 fitnessAppContext:(id)a8 summaryViewControllerCompletion:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = sub_1004DC6B0(v17, v18, v19, v20, v21, v22, sub_1004DC674, v16);

  return v23;
}

- (CHWorkoutUIControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WorkoutUIControllerFactory();
  return [(CHWorkoutUIControllerFactory *)&v3 init];
}

@end
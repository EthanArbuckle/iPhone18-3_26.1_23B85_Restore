@interface WOEffortBridges
+ (NSString)didUpdateDemoOverrideEffortValues;
+ (id)demoExertionForWorkout:(id)a3;
+ (id)makeHostingControllerWithStartingEffort:(id)a3 workoutActivityType:(id)a4 showCurrentWorkloadButton:(BOOL)a5 cancel:(id)a6 completion:(id)a7;
+ (void)fetchExertionForWorkout:(id)a3 workoutActivity:(id)a4 healthStore:(id)a5 completion:(id)a6;
+ (void)saveWithQuantity:(id)a3 effortSampleCollection:(id)a4 workout:(id)a5 workoutActivity:(id)a6 healthStore:(id)a7 canSendAnalytics:(BOOL)a8;
+ (void)sendDidViewTrainingLoadAnalyticsFromURL:(id)a3;
- (WOEffortBridges)init;
@end

@implementation WOEffortBridges

+ (id)makeHostingControllerWithStartingEffort:(id)a3 workoutActivityType:(id)a4 showCurrentWorkloadButton:(BOOL)a5 cancel:(id)a6 completion:(id)a7
{
  v10 = _Block_copy(a6);
  v11 = _Block_copy(a7);
  *(swift_allocObject() + 16) = v10;
  *(swift_allocObject() + 16) = v11;
  type metadata accessor for EffortUIController();
  v12 = a3;
  v13 = a4;
  v14 = static EffortUIController.makeHostingController(shouldEmbedInNavStack:startingEffort:workoutActivityType:shouldShowWorkoutGlyph:showCurrentWorkloadButton:cancel:completion:)();

  return v14;
}

+ (void)saveWithQuantity:(id)a3 effortSampleCollection:(id)a4 workout:(id)a5 workoutActivity:(id)a6 healthStore:(id)a7 canSendAnalytics:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  sub_1001FE540(a3, a4, v16, a6, v18, a8);
}

+ (void)fetchExertionForWorkout:(id)a3 workoutActivity:(id)a4 healthStore:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  type metadata accessor for EffortUtilities();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1001FE530;
  *(v11 + 24) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;

  static EffortUtilities.fetchExertionCollection(forWorkout:activity:healthStore:completion:)();
}

+ (id)demoExertionForWorkout:(id)a3
{
  type metadata accessor for EffortUtilities();
  v4 = a3;
  v5 = static EffortUtilities.fetchDemoExertion(forWorkout:)();

  return v5;
}

+ (void)sendDidViewTrainingLoadAnalyticsFromURL:(id)a3
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for EffortUtilities();
  static EffortUtilities.sendDidViewTrainingLoadAnalytics(from:)();
  (*(v4 + 8))(v6, v3);
}

+ (NSString)didUpdateDemoOverrideEffortValues
{
  if (qword_1008DA628 != -1)
  {
    swift_once();
  }

  v3 = qword_100925230;

  return v3;
}

- (WOEffortBridges)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EffortBridges();
  return [(WOEffortBridges *)&v3 init];
}

@end
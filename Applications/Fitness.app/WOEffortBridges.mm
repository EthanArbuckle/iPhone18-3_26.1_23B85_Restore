@interface WOEffortBridges
+ (NSString)didUpdateDemoOverrideEffortValues;
+ (id)demoExertionForWorkout:(id)workout;
+ (id)makeHostingControllerWithStartingEffort:(id)effort workoutActivityType:(id)type showCurrentWorkloadButton:(BOOL)button cancel:(id)cancel completion:(id)completion;
+ (void)fetchExertionForWorkout:(id)workout workoutActivity:(id)activity healthStore:(id)store completion:(id)completion;
+ (void)saveWithQuantity:(id)quantity effortSampleCollection:(id)collection workout:(id)workout workoutActivity:(id)activity healthStore:(id)store canSendAnalytics:(BOOL)analytics;
+ (void)sendDidViewTrainingLoadAnalyticsFromURL:(id)l;
- (WOEffortBridges)init;
@end

@implementation WOEffortBridges

+ (id)makeHostingControllerWithStartingEffort:(id)effort workoutActivityType:(id)type showCurrentWorkloadButton:(BOOL)button cancel:(id)cancel completion:(id)completion
{
  v10 = _Block_copy(cancel);
  v11 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v10;
  *(swift_allocObject() + 16) = v11;
  type metadata accessor for EffortUIController();
  effortCopy = effort;
  typeCopy = type;
  v14 = static EffortUIController.makeHostingController(shouldEmbedInNavStack:startingEffort:workoutActivityType:shouldShowWorkoutGlyph:showCurrentWorkloadButton:cancel:completion:)();

  return v14;
}

+ (void)saveWithQuantity:(id)quantity effortSampleCollection:(id)collection workout:(id)workout workoutActivity:(id)activity healthStore:(id)store canSendAnalytics:(BOOL)analytics
{
  quantityCopy = quantity;
  collectionCopy = collection;
  workoutCopy = workout;
  activityCopy = activity;
  storeCopy = store;
  sub_1001FE540(quantity, collection, workoutCopy, activity, storeCopy, analytics);
}

+ (void)fetchExertionForWorkout:(id)workout workoutActivity:(id)activity healthStore:(id)store completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  type metadata accessor for EffortUtilities();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1001FE530;
  *(v11 + 24) = v10;
  workoutCopy = workout;
  activityCopy = activity;
  storeCopy = store;

  static EffortUtilities.fetchExertionCollection(forWorkout:activity:healthStore:completion:)();
}

+ (id)demoExertionForWorkout:(id)workout
{
  type metadata accessor for EffortUtilities();
  workoutCopy = workout;
  v5 = static EffortUtilities.fetchDemoExertion(forWorkout:)();

  return v5;
}

+ (void)sendDidViewTrainingLoadAnalyticsFromURL:(id)l
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
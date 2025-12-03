@interface CHWorkoutDetailAnalyticsTracker
+ (CHWorkoutDetailAnalyticsTracker)sharedInstance;
- (CHWorkoutDetailAnalyticsTracker)init;
- (id)workoutAnalyticsHandlerFor:(id)for workoutActivity:(id)activity;
- (void)applicationWillTerminateWithNotification:(id)notification;
- (void)sendEventWith:(id)with;
- (void)startTrackingWorkout:(id)workout workoutActivity:(id)activity;
- (void)stopTrackingWorkout:(id)workout workoutActivity:(id)activity;
@end

@implementation CHWorkoutDetailAnalyticsTracker

+ (CHWorkoutDetailAnalyticsTracker)sharedInstance
{
  if (qword_1008DAF98 != -1)
  {
    swift_once();
  }

  v3 = qword_1009261B0;

  return v3;
}

- (CHWorkoutDetailAnalyticsTracker)init
{
  *(&self->super.isa + OBJC_IVAR___CHWorkoutDetailAnalyticsTracker_trackingWorkouts) = &_swiftEmptyDictionarySingleton;
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailAnalyticsTracker();
  v2 = [(CHWorkoutDetailAnalyticsTracker *)&v7 init];
  v3 = objc_opt_self();
  v4 = v2;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter addObserver:v4 selector:"applicationWillTerminateWithNotification:" name:UIApplicationWillTerminateNotification object:0];

  return v4;
}

- (void)applicationWillTerminateWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100674BC4();

  (*(v5 + 8))(v7, v4);
}

- (void)sendEventWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_10067572C();
}

- (void)startTrackingWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  selfCopy = self;
  sub_100674FB4(workoutCopy, activity);
}

- (void)stopTrackingWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  selfCopy = self;
  sub_100675220(workoutCopy, activity);
}

- (id)workoutAnalyticsHandlerFor:(id)for workoutActivity:(id)activity
{
  forCopy = for;
  activityCopy = activity;
  selfCopy = self;
  v9 = sub_1006754A8(forCopy, activity);

  return v9;
}

@end
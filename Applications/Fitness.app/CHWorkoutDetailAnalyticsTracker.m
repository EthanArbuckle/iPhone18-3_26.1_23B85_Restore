@interface CHWorkoutDetailAnalyticsTracker
+ (CHWorkoutDetailAnalyticsTracker)sharedInstance;
- (CHWorkoutDetailAnalyticsTracker)init;
- (id)workoutAnalyticsHandlerFor:(id)a3 workoutActivity:(id)a4;
- (void)applicationWillTerminateWithNotification:(id)a3;
- (void)sendEventWith:(id)a3;
- (void)startTrackingWorkout:(id)a3 workoutActivity:(id)a4;
- (void)stopTrackingWorkout:(id)a3 workoutActivity:(id)a4;
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
  v5 = [v3 defaultCenter];
  [v5 addObserver:v4 selector:"applicationWillTerminateWithNotification:" name:UIApplicationWillTerminateNotification object:0];

  return v4;
}

- (void)applicationWillTerminateWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100674BC4();

  (*(v5 + 8))(v7, v4);
}

- (void)sendEventWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10067572C();
}

- (void)startTrackingWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100674FB4(v6, a4);
}

- (void)stopTrackingWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100675220(v6, a4);
}

- (id)workoutAnalyticsHandlerFor:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1006754A8(v6, a4);

  return v9;
}

@end
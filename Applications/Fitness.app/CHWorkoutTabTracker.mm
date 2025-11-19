@interface CHWorkoutTabTracker
- (CHWorkoutTabTracker)init;
- (CHWorkoutTabTracker)initWithTabBarController:(id)a3 workoutController:(id)a4;
- (uint64_t)workoutTabDidBecomeInactive;
- (void)didEnterBackground;
- (void)updateWorkoutState:(int64_t)a3 shouldShowTimeout:(BOOL)a4;
- (void)willEnterForeground;
- (void)workoutController:(id)a3 transitionedWorkout:(id)a4 toState:(int64_t)a5;
- (void)workoutTabDidBecomeActive;
@end

@implementation CHWorkoutTabTracker

- (CHWorkoutTabTracker)initWithTabBarController:(id)a3 workoutController:(id)a4
{
  type metadata accessor for WorkoutDevicesProvider();
  v6 = a3;
  v7 = a4;
  v8 = static WorkoutDevicesProvider.shared.getter();
  v9 = objc_allocWithZone(type metadata accessor for WorkoutTabTracker());
  v10 = WorkoutTabTracker.init(tabBarController:workoutController:workoutDevicesProvider:)(v6, a4, v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (void)workoutTabDidBecomeActive
{
  v2 = self;
  sub_100455E40();
}

- (void)willEnterForeground
{
  v2 = self;
  sub_1004564AC();
}

- (void)didEnterBackground
{
  v2 = self;
  sub_100456948();
}

- (CHWorkoutTabTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)workoutController:(id)a3 transitionedWorkout:(id)a4 toState:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_100458368(a5);
}

- (void)updateWorkoutState:(int64_t)a3 shouldShowTimeout:(BOOL)a4
{
  v6 = self;
  sub_1004577A4(a3, a4);
}

- (uint64_t)workoutTabDidBecomeInactive
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.devices.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[WorkoutTabTracker] Workout tab inactive", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

@end
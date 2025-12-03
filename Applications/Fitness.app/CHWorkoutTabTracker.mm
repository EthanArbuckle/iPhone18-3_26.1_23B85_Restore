@interface CHWorkoutTabTracker
- (CHWorkoutTabTracker)init;
- (CHWorkoutTabTracker)initWithTabBarController:(id)controller workoutController:(id)workoutController;
- (uint64_t)workoutTabDidBecomeInactive;
- (void)didEnterBackground;
- (void)updateWorkoutState:(int64_t)state shouldShowTimeout:(BOOL)timeout;
- (void)willEnterForeground;
- (void)workoutController:(id)controller transitionedWorkout:(id)workout toState:(int64_t)state;
- (void)workoutTabDidBecomeActive;
@end

@implementation CHWorkoutTabTracker

- (CHWorkoutTabTracker)initWithTabBarController:(id)controller workoutController:(id)workoutController
{
  type metadata accessor for WorkoutDevicesProvider();
  controllerCopy = controller;
  workoutControllerCopy = workoutController;
  v8 = static WorkoutDevicesProvider.shared.getter();
  v9 = objc_allocWithZone(type metadata accessor for WorkoutTabTracker());
  v10 = WorkoutTabTracker.init(tabBarController:workoutController:workoutDevicesProvider:)(controllerCopy, workoutController, v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (void)workoutTabDidBecomeActive
{
  selfCopy = self;
  sub_100455E40();
}

- (void)willEnterForeground
{
  selfCopy = self;
  sub_1004564AC();
}

- (void)didEnterBackground
{
  selfCopy = self;
  sub_100456948();
}

- (CHWorkoutTabTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)workoutController:(id)controller transitionedWorkout:(id)workout toState:(int64_t)state
{
  controllerCopy = controller;
  workoutCopy = workout;
  selfCopy = self;
  sub_100458368(state);
}

- (void)updateWorkoutState:(int64_t)state shouldShowTimeout:(BOOL)timeout
{
  selfCopy = self;
  sub_1004577A4(state, timeout);
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
@interface CHFitnessAppContext
- (AMSBagProtocol)amsBag;
- (BOOL)isSessionViewControllerPresented;
- (CHFitnessAppBadgeAggregator)appBadgeAggregator;
- (CHFitnessAppContext)init;
- (CHFitnessNavigationDelegate)navigationDelegate;
- (id)seymourNavigationController;
- (void)continueUserActivity:(id)activity;
- (void)flushMetricEvents;
- (void)handleWindowScene:(id)scene with:(id)with;
- (void)navigateToPersonalizedWorkoutPlanCreationWithUserInfo:(id)info;
- (void)navigateToWorkout:(id)workout;
- (void)navigateToWorkoutPlanCreation;
- (void)openURLContext:(id)context;
- (void)seymourAppWillResignActive;
- (void)seymourAppWillTerminate;
- (void)seymourTabDeselected;
- (void)seymourTabSelectedWithSelection:(int64_t)selection;
- (void)shareSheetActivityItemsWithWorkout:(id)workout completion:(id)completion;
@end

@implementation CHFitnessAppContext

- (void)navigateToWorkout:(id)workout
{
  workoutCopy = workout;
  selfCopy = self;
  sub_1006393D4(workoutCopy, selfCopy);
}

- (CHFitnessNavigationDelegate)navigationDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CHFitnessAppBadgeAggregator)appBadgeAggregator
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (AMSBagProtocol)amsBag
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)flushMetricEvents
{
  v3 = sub_100140278(&unk_1008F2010);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_1000066AC((self + OBJC_IVAR___CHFitnessAppContext_metricClient), *(self + OBJC_IVAR___CHFitnessAppContext_metricClient + 24));
  selfCopy = self;
  dispatch thunk of MetricClientProtocol.flushMetrics()();
  v8 = Promise.operation.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v8(sub_100173F20, v9);

  (*(v4 + 8))(v6, v3);
}

- (id)seymourNavigationController
{
  selfCopy = self;
  v3 = AppCoordinator.rootViewController.getter();

  return v3;
}

- (void)handleWindowScene:(id)scene with:(id)with
{
  v7 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = scene;
  v11[6] = with;
  sceneCopy = scene;
  withCopy = with;
  selfCopy = self;
  sub_100653FFC(0, 0, v9, &unk_1006FDC10, v11);
}

- (void)continueUserActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  sub_1005CB718(activityCopy);
}

- (void)openURLContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1005CBB48(contextCopy);
}

- (void)navigateToWorkoutPlanCreation
{
  selfCopy = self;
  sub_1005CF110();
}

- (void)navigateToPersonalizedWorkoutPlanCreationWithUserInfo:(id)info
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1005CFCFC(v4);
}

- (void)seymourTabSelectedWithSelection:(int64_t)selection
{
  selfCopy = self;
  sub_1005D2F1C(selection);
}

- (void)seymourTabDeselected
{
  selfCopy = self;
  sub_1005D3C8C();
}

- (void)seymourAppWillResignActive
{
  selfCopy = self;
  sub_1005D3E3C();
}

- (void)seymourAppWillTerminate
{
  selfCopy = self;
  sub_1005D3FC4();
}

- (void)shareSheetActivityItemsWithWorkout:(id)workout completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  workoutCopy = workout;
  selfCopy = self;
  sub_1005D414C(workoutCopy, sub_1005D5518, v7);
}

- (BOOL)isSessionViewControllerPresented
{
  selfCopy = self;
  v3 = sub_1005D4738();

  return v3;
}

- (CHFitnessAppContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
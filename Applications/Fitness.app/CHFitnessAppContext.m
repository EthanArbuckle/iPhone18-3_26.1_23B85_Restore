@interface CHFitnessAppContext
- (AMSBagProtocol)amsBag;
- (BOOL)isSessionViewControllerPresented;
- (CHFitnessAppBadgeAggregator)appBadgeAggregator;
- (CHFitnessAppContext)init;
- (CHFitnessNavigationDelegate)navigationDelegate;
- (id)seymourNavigationController;
- (void)continueUserActivity:(id)a3;
- (void)flushMetricEvents;
- (void)handleWindowScene:(id)a3 with:(id)a4;
- (void)navigateToPersonalizedWorkoutPlanCreationWithUserInfo:(id)a3;
- (void)navigateToWorkout:(id)a3;
- (void)navigateToWorkoutPlanCreation;
- (void)openURLContext:(id)a3;
- (void)seymourAppWillResignActive;
- (void)seymourAppWillTerminate;
- (void)seymourTabDeselected;
- (void)seymourTabSelectedWithSelection:(int64_t)a3;
- (void)shareSheetActivityItemsWithWorkout:(id)a3 completion:(id)a4;
@end

@implementation CHFitnessAppContext

- (void)navigateToWorkout:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006393D4(v4, v5);
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
  v7 = self;
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
  v2 = self;
  v3 = AppCoordinator.rootViewController.getter();

  return v3;
}

- (void)handleWindowScene:(id)a3 with:(id)a4
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
  v11[5] = a3;
  v11[6] = a4;
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_100653FFC(0, 0, v9, &unk_1006FDC10, v11);
}

- (void)continueUserActivity:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005CB718(v4);
}

- (void)openURLContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005CBB48(v4);
}

- (void)navigateToWorkoutPlanCreation
{
  v2 = self;
  sub_1005CF110();
}

- (void)navigateToPersonalizedWorkoutPlanCreationWithUserInfo:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1005CFCFC(v4);
}

- (void)seymourTabSelectedWithSelection:(int64_t)a3
{
  v4 = self;
  sub_1005D2F1C(a3);
}

- (void)seymourTabDeselected
{
  v2 = self;
  sub_1005D3C8C();
}

- (void)seymourAppWillResignActive
{
  v2 = self;
  sub_1005D3E3C();
}

- (void)seymourAppWillTerminate
{
  v2 = self;
  sub_1005D3FC4();
}

- (void)shareSheetActivityItemsWithWorkout:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1005D414C(v8, sub_1005D5518, v7);
}

- (BOOL)isSessionViewControllerPresented
{
  v2 = self;
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
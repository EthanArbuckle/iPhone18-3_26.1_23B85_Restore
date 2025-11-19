@interface ICLaunchTaskRunner
+ (id)runDelayedLaunchTasksWithDelegate:(id)a3 completionHandler:(id)a4;
+ (id)runImmediateLaunchTasks:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (ICLaunchTaskRunner)init;
@end

@implementation ICLaunchTaskRunner

+ (id)runImmediateLaunchTasks:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  sub_10015DA04(&qword_1006C2168);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  swift_unknownObjectRetain();
  v9 = _s11MobileNotes16LaunchTaskRunnerC012runImmediateC5Tasks5tasks8delegate17completionHandlerAC17CancellationTokenCSaySo08ICLaunchD0_pG_AA0cdE8Delegate_pSgySbYbctFZ_0(v7, a4, sub_10000ABA8, v8);
  swift_unknownObjectRelease();

  return v9;
}

- (ICLaunchTaskRunner)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)runDelayedLaunchTasksWithDelegate:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_unknownObjectRetain();
  v7 = _s11MobileNotes16LaunchTaskRunnerC010runDelayedC5Tasks8delegate17completionHandlerAC17CancellationTokenCAA0cdE8Delegate_pSg_ySbYbctFZ_0(v6, sub_1002824A4, v5);
  swift_unknownObjectRelease();

  return v7;
}

@end
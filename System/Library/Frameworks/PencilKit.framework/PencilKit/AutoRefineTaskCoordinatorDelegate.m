@interface AutoRefineTaskCoordinatorDelegate
- (_TtC9PencilKitP33_C07EB3BA79DD666E822D6A98FF7ECB3B33AutoRefineTaskCoordinatorDelegate)init;
- (id)autoRefineTaskCoordinatorAutoRefineController:(id)a3;
- (id)autoRefineTaskCoordinatorCurrentStroke:(id)a3;
- (id)autoRefineTaskCoordinatorRecentStrokes:(id)a3;
- (void)autoRefineTaskCoordinator:(id)a3 replaceStrokes:(id)a4 withRefinedStrokes:(id)a5;
@end

@implementation AutoRefineTaskCoordinatorDelegate

- (id)autoRefineTaskCoordinatorCurrentStroke:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3;
    v8 = self;
    v9 = [v6 _currentStroke];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)autoRefineTaskCoordinatorRecentStrokes:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = a3;
  v7 = self;
  if (Strong)
  {
    v8 = [Strong _tiledView];

    v9 = [v8 _recentStrokesForAutoRefine];
    if (v9)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = v7;
      v7 = v9;
    }
  }

  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

- (id)autoRefineTaskCoordinatorAutoRefineController:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)autoRefineTaskCoordinator:(id)a3 replaceStrokes:(id)a4 withRefinedStrokes:(id)a5
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = self;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  v14[5] = v9;
  v14[6] = v10;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in AutoRefineTaskCoordinatorDelegate.autoRefineTaskCoordinator(_:replace:withRefinedStrokes:), v14);
}

- (_TtC9PencilKitP33_C07EB3BA79DD666E822D6A98FF7ECB3B33AutoRefineTaskCoordinatorDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
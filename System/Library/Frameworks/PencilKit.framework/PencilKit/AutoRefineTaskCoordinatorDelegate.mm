@interface AutoRefineTaskCoordinatorDelegate
- (_TtC9PencilKitP33_C07EB3BA79DD666E822D6A98FF7ECB3B33AutoRefineTaskCoordinatorDelegate)init;
- (id)autoRefineTaskCoordinatorAutoRefineController:(id)controller;
- (id)autoRefineTaskCoordinatorCurrentStroke:(id)stroke;
- (id)autoRefineTaskCoordinatorRecentStrokes:(id)strokes;
- (void)autoRefineTaskCoordinator:(id)coordinator replaceStrokes:(id)strokes withRefinedStrokes:(id)refinedStrokes;
@end

@implementation AutoRefineTaskCoordinatorDelegate

- (id)autoRefineTaskCoordinatorCurrentStroke:(id)stroke
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    strokeCopy = stroke;
    selfCopy = self;
    _currentStroke = [v6 _currentStroke];
  }

  else
  {
    _currentStroke = 0;
  }

  return _currentStroke;
}

- (id)autoRefineTaskCoordinatorRecentStrokes:(id)strokes
{
  Strong = swift_unknownObjectWeakLoadStrong();
  strokesCopy = strokes;
  selfCopy = self;
  if (Strong)
  {
    _tiledView = [Strong _tiledView];

    _recentStrokesForAutoRefine = [_tiledView _recentStrokesForAutoRefine];
    if (_recentStrokesForAutoRefine)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      strokesCopy = selfCopy;
      selfCopy = _recentStrokesForAutoRefine;
    }
  }

  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

- (id)autoRefineTaskCoordinatorAutoRefineController:(id)controller
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)autoRefineTaskCoordinator:(id)coordinator replaceStrokes:(id)strokes withRefinedStrokes:(id)refinedStrokes
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  type metadata accessor for MainActor();
  selfCopy = self;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = selfCopy;
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
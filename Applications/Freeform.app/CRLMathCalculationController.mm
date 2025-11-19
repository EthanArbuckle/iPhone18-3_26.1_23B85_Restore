@interface CRLMathCalculationController
- (id)resultForExpressionWithUUID:(id)a3 locale:(id)a4;
- (int64_t)pkMathRecognitionViewControllerSolvingStyle;
- (uint64_t)mathHintsMode;
- (void)dealloc;
- (void)insertPKExpressionWithPkExpression:(id)a3;
- (void)resumeSolving;
- (void)suspendSolving;
- (void)updateCalculateDocument;
- (void)updateSingleDrawingSortIndexForFor:(id)a3 to:(double)a4;
- (void)updateStrokeGroupFor:(id)a3 strokeGroupId:(id)a4;
@end

@implementation CRLMathCalculationController

- (void)dealloc
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_mathHintsUserDefaultsObserver);
  v4 = self;
  if (v3)
  {
    v5 = v3;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLMathCalculationController();
  [(CRLMathCalculationController *)&v6 dealloc];
}

- (void)updateSingleDrawingSortIndexForFor:(id)a3 to:(double)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_100A84964(v9, a4);

  (*(v7 + 8))(v9, v6);
}

- (void)updateCalculateDocument
{
  v2 = self;
  sub_100A84F54();
}

- (id)resultForExpressionWithUUID:(id)a3 locale:(id)a4
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = self;
  CRLMathCalculationController.resultForExpressionWithUUID(_:locale:)(v12, v8);
  v15 = v14;

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (int64_t)pkMathRecognitionViewControllerSolvingStyle
{
  v2 = self;
  v3 = [CRLMathCalculationController mathHintsMode]_0();
  if (v3 >= 4)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v4 = qword_101492978[v3];

    return v4;
  }

  return result;
}

- (void)suspendSolving
{
  v2 = self;
  sub_100A8664C(1);
}

- (void)resumeSolving
{
  v2 = self;
  sub_100A8664C(0);
}

- (void)insertPKExpressionWithPkExpression:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100A86B1C(v4);
}

- (void)updateStrokeGroupFor:(id)a3 strokeGroupId:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a4;
  v11 = self;
  sub_100A875CC(v9, a4);

  (*(v7 + 8))(v9, v6);
}

- (uint64_t)mathHintsMode
{
  v8 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v9 = sub_10067BFD0();
  v7[0] = 0;
  v0 = isFeatureEnabled(_:)();
  sub_100005070(v7);
  if ((v0 & 1) == 0)
  {
    return 3;
  }

  v8 = &type metadata for CRLFeatureFlags;
  v9 = sub_100004D60();
  v7[0] = 15;
  v1 = isFeatureEnabled(_:)();
  sub_100005070(v7);
  if ((v1 & 1) == 0)
  {
    return 3;
  }

  if (qword_1019F2000 != -1)
  {
    swift_once();
  }

  v2 = qword_101A1AB00;
  v3 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  if (*(v2 + v3) != 1)
  {
    return 3;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = [v4 integerForKey:@"CRLMathRecognitionMode"];

  if (v5 >= 4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

@end
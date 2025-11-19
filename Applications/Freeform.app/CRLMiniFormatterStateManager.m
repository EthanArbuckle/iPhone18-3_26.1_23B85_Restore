@interface CRLMiniFormatterStateManager
- (_TtC8Freeform28CRLMiniFormatterStateManager)init;
- (void)processChanges:(id)a3 forChangeSource:(id)a4;
- (void)selectionPathDidChangeWithNotification:(id)a3;
- (void)teardown;
@end

@implementation CRLMiniFormatterStateManager

- (void)teardown
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6 = [v3 defaultCenter];
  v7 = v6;
  if (qword_1019F2368 != -1)
  {
    swift_once();
    v6 = v7;
  }

  [v6 removeObserver:v4 name:qword_101AD80C8 object:0];
}

- (void)processChanges:(id)a3 forChangeSource:(id)a4
{
  type metadata accessor for CRLChangeRecord();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  CRLMiniFormatterStateManager.processChanges(_:forChangeSource:)(v5, v7);

  sub_100005070(v7);
}

- (void)selectionPathDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10073554C(v4);
}

- (_TtC8Freeform28CRLMiniFormatterStateManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
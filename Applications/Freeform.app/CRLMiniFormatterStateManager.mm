@interface CRLMiniFormatterStateManager
- (_TtC8Freeform28CRLMiniFormatterStateManager)init;
- (void)processChanges:(id)changes forChangeSource:(id)source;
- (void)selectionPathDidChangeWithNotification:(id)notification;
- (void)teardown;
@end

@implementation CRLMiniFormatterStateManager

- (void)teardown
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  defaultCenter2 = [v3 defaultCenter];
  v7 = defaultCenter2;
  if (qword_1019F2368 != -1)
  {
    swift_once();
    defaultCenter2 = v7;
  }

  [defaultCenter2 removeObserver:selfCopy name:qword_101AD80C8 object:0];
}

- (void)processChanges:(id)changes forChangeSource:(id)source
{
  type metadata accessor for CRLChangeRecord();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  CRLMiniFormatterStateManager.processChanges(_:forChangeSource:)(v5, v7);

  sub_100005070(v7);
}

- (void)selectionPathDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10073554C(notificationCopy);
}

- (_TtC8Freeform28CRLMiniFormatterStateManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
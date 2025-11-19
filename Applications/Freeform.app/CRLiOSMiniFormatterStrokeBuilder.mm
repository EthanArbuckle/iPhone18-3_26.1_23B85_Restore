@interface CRLiOSMiniFormatterStrokeBuilder
- (void)interactionEnded:(id)a3;
- (void)interactionStarted:(id)a3;
- (void)segmentedControlChangedWithSelectedIndices:(id)a3;
- (void)stepperValueDidChange:(id)a3;
@end

@implementation CRLiOSMiniFormatterStrokeBuilder

- (void)segmentedControlChangedWithSelectedIndices:(id)a3
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100B30674();

  (*(v5 + 8))(v7, v4);
}

- (void)stepperValueDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100B31770(a3);
}

- (void)interactionStarted:(id)a3
{
  v4 = self + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)interactionEnded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100B320AC();
}

@end
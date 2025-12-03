@interface CRLiOSMiniFormatterStrokeBuilder
- (void)interactionEnded:(id)ended;
- (void)interactionStarted:(id)started;
- (void)segmentedControlChangedWithSelectedIndices:(id)indices;
- (void)stepperValueDidChange:(id)change;
@end

@implementation CRLiOSMiniFormatterStrokeBuilder

- (void)segmentedControlChangedWithSelectedIndices:(id)indices
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100B30674();

  (*(v5 + 8))(v7, v4);
}

- (void)stepperValueDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100B31770(change);
}

- (void)interactionStarted:(id)started
{
  v4 = self + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    selfCopy = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)interactionEnded:(id)ended
{
  endedCopy = ended;
  selfCopy = self;
  sub_100B320AC();
}

@end
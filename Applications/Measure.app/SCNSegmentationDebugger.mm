@interface SCNSegmentationDebugger
- (_TtC7Measure23SCNSegmentationDebugger)init;
- (_TtC7Measure23SCNSegmentationDebugger)initWithCoder:(id)coder;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SCNSegmentationDebugger

- (_TtC7Measure23SCNSegmentationDebugger)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointTrail) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointPool) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v16, 0, sizeof(v16));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v9 = 0;
  v11 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (change)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_100018F64();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_7:
  _s7Measure23SCNSegmentationDebuggerC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeye6ChangeG0aypGSgSvSgtF_0(v9, v11);

  sub_10002D238(v16);
}

- (_TtC7Measure23SCNSegmentationDebugger)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
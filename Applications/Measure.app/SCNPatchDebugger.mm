@interface SCNPatchDebugger
- (_TtC7Measure16SCNPatchDebugger)init;
- (_TtC7Measure16SCNPatchDebugger)initWithCoder:(id)coder;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SCNPatchDebugger

- (_TtC7Measure16SCNPatchDebugger)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointContainerNode) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintContainerNode) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointPool) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintPool) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___skRenderer) = 0;
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
  _s7Measure16SCNPatchDebuggerC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeye6ChangeG0aypGSgSvSgtF_0(v9, v11);

  sub_100018F04(v16, &unk_1004A6970);
}

- (_TtC7Measure16SCNPatchDebugger)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
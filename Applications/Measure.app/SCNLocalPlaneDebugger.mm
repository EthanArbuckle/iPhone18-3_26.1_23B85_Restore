@interface SCNLocalPlaneDebugger
- (_TtC7Measure21SCNLocalPlaneDebugger)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SCNLocalPlaneDebugger

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
  sub_10003B398(v9, v11);

  sub_10002D238(v16);
}

- (_TtC7Measure21SCNLocalPlaneDebugger)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
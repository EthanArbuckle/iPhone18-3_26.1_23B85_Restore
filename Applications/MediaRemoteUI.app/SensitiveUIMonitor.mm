@interface SensitiveUIMonitor
- (_TtC13MediaRemoteUI18SensitiveUIMonitor)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SensitiveUIMonitor

- (void)dealloc
{
  v2 = qword_10006FF60;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100070B50;
  if (qword_100070B50)
  {
    v5 = String._bridgeToObjectiveC()();
    [v4 removeObserver:selfCopy forKeyPath:v5];
  }

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for SensitiveUIMonitor();
  [(SensitiveUIMonitor *)&v6 dealloc];
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
    memset(v17, 0, sizeof(v17));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
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
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1000137F4();
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_10001365C(v9, v11, v17, v14);

  sub_1000080EC(v17);
}

- (_TtC13MediaRemoteUI18SensitiveUIMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
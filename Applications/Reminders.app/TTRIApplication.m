@interface TTRIApplication
- (BOOL)runTest:(id)a3 options:(id)a4;
- (_TtC9Reminders15TTRIApplication)init;
- (id)_extendLaunchTest;
@end

@implementation TTRIApplication

- (_TtC9Reminders15TTRIApplication)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRIApplication();
  return [(TTRIApplication *)&v3 init];
}

- (id)_extendLaunchTest
{
  type metadata accessor for PPTLaunch_ExtendedApp();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    LOBYTE(self) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    __break(1u);
    goto LABEL_11;
  }

  v6 = self;
  self = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v7;
  if (!a4)
  {
LABEL_11:
    if (v4)
    {
      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = self;
  self = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v4)
  {
    goto LABEL_12;
  }

  if (!self)
  {
LABEL_13:
    __break(1u);
    return self;
  }

  v9 = v6;
  if (sub_1005C5050(v8, v4, v9))
  {

    LOBYTE(self) = 1;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v14.receiver = v9;
    v14.super_class = type metadata accessor for TTRIApplication();
    v12 = [(TTRIApplication *)&v14 runTest:v10 options:isa];

    LOBYTE(self) = v12;
  }

  return self;
}

@end
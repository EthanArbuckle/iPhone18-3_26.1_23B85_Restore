@interface SimDisplay
- (FBSDisplayConfiguration)displayConfiguration;
- (NSString)name;
- (_TtC12PreviewShell10SimDisplay)init;
- (_TtC12PreviewShell10SimDisplay)initWithName:(id)a3 displayID:(unsigned int)a4 displayConfiguration:(id)a5 capabilitiesPath:(id)a6;
@end

@implementation SimDisplay

- (NSString)name
{
  v2 = *(self + OBJC_IVAR____TtC12PreviewShell10SimDisplay_name);
  v3 = *(self + OBJC_IVAR____TtC12PreviewShell10SimDisplay_name + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (FBSDisplayConfiguration)displayConfiguration
{
  v2 = [*(self + OBJC_IVAR____TtC12PreviewShell10SimDisplay_capabilities + 8) displayConfiguration];

  return v2;
}

- (_TtC12PreviewShell10SimDisplay)initWithName:(id)a3 displayID:(unsigned int)a4 displayConfiguration:(id)a5 capabilitiesPath:(id)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = a5;
  sub_10000FC78(v9, v11, a4, v12);
  v14 = v13;

  return v14;
}

- (_TtC12PreviewShell10SimDisplay)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
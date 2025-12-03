@interface SimDisplay
- (FBSDisplayConfiguration)displayConfiguration;
- (NSString)name;
- (_TtC12PreviewShell10SimDisplay)init;
- (_TtC12PreviewShell10SimDisplay)initWithName:(id)name displayID:(unsigned int)d displayConfiguration:(id)configuration capabilitiesPath:(id)path;
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
  displayConfiguration = [*(self + OBJC_IVAR____TtC12PreviewShell10SimDisplay_capabilities + 8) displayConfiguration];

  return displayConfiguration;
}

- (_TtC12PreviewShell10SimDisplay)initWithName:(id)name displayID:(unsigned int)d displayConfiguration:(id)configuration capabilitiesPath:(id)path
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (path)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  configurationCopy = configuration;
  sub_10000FC78(v9, v11, d, configurationCopy);
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
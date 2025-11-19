@interface CARSettingsUtilities
+ (_TtC5CAFUI26CAFUILoadingViewController)loadingViewController;
+ (id)lastPanelID:(id)a3 vehicle:(id)a4;
- (_TtC15CarPlaySettings20CARSettingsUtilities)init;
@end

@implementation CARSettingsUtilities

+ (_TtC5CAFUI26CAFUILoadingViewController)loadingViewController
{
  v2 = [objc_allocWithZone(type metadata accessor for CAFUILoadingViewController()) init];

  return v2;
}

+ (id)lastPanelID:(id)a3 vehicle:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = a4;
  sub_100058328(v5, v7, v8);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (_TtC15CarPlaySettings20CARSettingsUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CARSettingsUtilities();
  return [(CARSettingsUtilities *)&v3 init];
}

@end
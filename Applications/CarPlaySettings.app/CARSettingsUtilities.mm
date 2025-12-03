@interface CARSettingsUtilities
+ (_TtC5CAFUI26CAFUILoadingViewController)loadingViewController;
+ (id)lastPanelID:(id)d vehicle:(id)vehicle;
- (_TtC15CarPlaySettings20CARSettingsUtilities)init;
@end

@implementation CARSettingsUtilities

+ (_TtC5CAFUI26CAFUILoadingViewController)loadingViewController
{
  v2 = [objc_allocWithZone(type metadata accessor for CAFUILoadingViewController()) init];

  return v2;
}

+ (id)lastPanelID:(id)d vehicle:(id)vehicle
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  vehicleCopy = vehicle;
  sub_100058328(v5, v7, vehicleCopy);

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
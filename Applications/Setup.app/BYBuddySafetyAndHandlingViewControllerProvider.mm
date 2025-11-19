@interface BYBuddySafetyAndHandlingViewControllerProvider
- (BOOL)canShow;
- (BYBuddySafetyAndHandlingViewControllerProvider)init;
- (BYBuddySafetyAndHandlingViewControllerProvider)initWithLanguageCode:(id)a3 regionCode:(id)a4;
- (id)makeViewController;
@end

@implementation BYBuddySafetyAndHandlingViewControllerProvider

- (BYBuddySafetyAndHandlingViewControllerProvider)initWithLanguageCode:(id)a3 regionCode:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = [objc_allocWithZone(BYBuddySafetyAndHandlingBundleLocalizationProvider) initWithLanguageCode:a3];
  *(&self->super.isa + OBJC_IVAR___BYBuddySafetyAndHandlingViewControllerProvider_localizationProvider) = v9;
  v10 = (self + OBJC_IVAR___BYBuddySafetyAndHandlingViewControllerProvider_region);
  *v10 = v6;
  v10[1] = v8;
  v12.receiver = self;
  v12.super_class = type metadata accessor for BuddySafetyAndHandlingViewControllerProvider();
  return [(BYBuddySafetyAndHandlingViewControllerProvider *)&v12 init];
}

- (BOOL)canShow
{
  v2 = self;
  v3 = sub_10002AD44();

  return v3 & 1;
}

- (id)makeViewController
{
  v2 = self;
  v3 = sub_10002B024();

  return v3;
}

- (BYBuddySafetyAndHandlingViewControllerProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
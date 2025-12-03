@interface BYBuddySafetyAndHandlingViewControllerProvider
- (BOOL)canShow;
- (BYBuddySafetyAndHandlingViewControllerProvider)init;
- (BYBuddySafetyAndHandlingViewControllerProvider)initWithLanguageCode:(id)code regionCode:(id)regionCode;
- (id)makeViewController;
@end

@implementation BYBuddySafetyAndHandlingViewControllerProvider

- (BYBuddySafetyAndHandlingViewControllerProvider)initWithLanguageCode:(id)code regionCode:(id)regionCode
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = [objc_allocWithZone(BYBuddySafetyAndHandlingBundleLocalizationProvider) initWithLanguageCode:code];
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
  selfCopy = self;
  v3 = sub_10002AD44();

  return v3 & 1;
}

- (id)makeViewController
{
  selfCopy = self;
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
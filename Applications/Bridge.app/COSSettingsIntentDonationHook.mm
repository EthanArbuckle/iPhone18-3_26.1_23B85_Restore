@interface COSSettingsIntentDonationHook
- (COSSettingsIntentDonationHook)init;
- (void)registerHandler;
@end

@implementation COSSettingsIntentDonationHook

- (COSSettingsIntentDonationHook)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SettingsIntentDonationHook();
  return [(COSSettingsIntentDonationHook *)&v3 init];
}

- (void)registerHandler
{
  type metadata accessor for SettingsEventCenter();
  static SettingsEventCenter.default.getter();
  v2 = type metadata accessor for IntentDonationSettingsNavigationEventResponder();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntentDonationSettingsNavigationEventResponder.init(settingsHostApplicationBundleIdentifier:)();
  SettingsEventCenter.addResponder<A>(_:)();

  (*(v3 + 8))(v5, v2);
}

@end
@interface WhatsNewPlugin
- (BOOL)isAvailableInCurrentConfiguration;
- (id)badgeImageForDiscoverPlugin;
- (id)descriptionForDiscoverPlugin;
- (id)titleForDiscoverPlugin;
- (void)onUserTappedPlugin;
@end

@implementation WhatsNewPlugin

- (id)badgeImageForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIImage imageNamed:@"Discover_WhatsNew" inBundle:v2];

  return v3;
}

- (id)descriptionForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WHATS_NEW_PLUGIN_DESCRIPTION" value:&stru_40E0 table:@"WhatsNewPlugin"];
  v4 = BCDiscoverPluginDescriptionWithSymbol();

  return v4;
}

- (id)titleForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WHATS_NEW_PLUGIN_TITLE" value:&stru_40E0 table:@"WhatsNewPlugin"];

  return v3;
}

- (void)onUserTappedPlugin
{
  v2 = [NSURL URLWithString:@"x-apple-tips://open?collection=WhatsNewInWatchOS&referrer=com.apple.Bridge"];
  BPSOpenSensitiveURLAsync();
}

- (BOOL)isAvailableInCurrentConfiguration
{
  v2 = BPSGetActiveSetupCompletedDevice();
  if (v2)
  {
    HasCapabilityForString = BPSDeviceHasCapabilityForString();
  }

  else
  {
    HasCapabilityForString = 0;
  }

  return HasCapabilityForString;
}

@end
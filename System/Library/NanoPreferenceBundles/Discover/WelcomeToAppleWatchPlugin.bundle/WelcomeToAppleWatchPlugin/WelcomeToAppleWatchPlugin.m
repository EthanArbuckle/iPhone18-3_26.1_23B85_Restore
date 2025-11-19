@interface WelcomeToAppleWatchPlugin
- (BOOL)isAvailableInCurrentConfiguration;
- (id)badgeImageForDiscoverPlugin;
- (id)descriptionForDiscoverPlugin;
- (id)titleForDiscoverPlugin;
- (void)onUserTappedPlugin;
@end

@implementation WelcomeToAppleWatchPlugin

- (id)badgeImageForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIImage imageNamed:@"Discover_Welcome" inBundle:v2];

  return v3;
}

- (id)titleForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WELCOME_TO_APPLE_WATCH_PLUGIN_TITLE" value:&stru_40D0 table:@"WelcomeToAppleWatchPlugin"];

  return v3;
}

- (id)descriptionForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WELCOME_TO_APPLE_WATCH_PLUGIN_DESCRIPTION" value:&stru_40D0 table:@"WelcomeToAppleWatchPlugin"];
  v4 = BCDiscoverPluginDescriptionWithSymbol();

  return v4;
}

- (void)onUserTappedPlugin
{
  v2 = [NSURL URLWithString:@"x-apple-tips://open?collection=WelcomeToWatch&referrer=com.apple.Bridge"];
  BPSOpenSensitiveURLAsync();
}

- (BOOL)isAvailableInCurrentConfiguration
{
  v2 = BPSGetActiveSetupCompletedDevice();
  v3 = v2 != 0;

  return v3;
}

@end
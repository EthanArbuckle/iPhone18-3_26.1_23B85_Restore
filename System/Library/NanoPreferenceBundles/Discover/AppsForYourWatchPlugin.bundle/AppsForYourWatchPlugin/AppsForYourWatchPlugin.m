@interface AppsForYourWatchPlugin
- (id)badgeImageForDiscoverPlugin;
- (id)descriptionForDiscoverPlugin;
- (id)titleForDiscoverPlugin;
- (void)onUserTappedPlugin;
@end

@implementation AppsForYourWatchPlugin

- (id)badgeImageForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIImage imageNamed:@"Discover_App Store" inBundle:v2];

  return v3;
}

- (id)descriptionForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"APPS_FOR_YOUR_WATCH_PLUGIN_DESCRIPTION" value:&stru_4108 table:@"AppsForYourWatchPlugin"];
  v4 = BCDiscoverPluginDescriptionWithSymbol();

  return v4;
}

- (id)titleForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"APPS_FOR_YOUR_WATCH_PLUGIN_TITLE" value:&stru_4108 table:@"AppsForYourWatchPlugin"];

  return v3;
}

- (void)onUserTappedPlugin
{
  v3 = [NSURL URLWithString:@"itms-apps://?action=watchCategory"];
  v2 = +[UIApplication sharedApplication];
  [v2 openURL:v3 withCompletionHandler:&stru_4088];
}

@end
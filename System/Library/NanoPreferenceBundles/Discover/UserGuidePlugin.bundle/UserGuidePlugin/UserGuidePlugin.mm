@interface UserGuidePlugin
- (id)badgeImageForDiscoverPlugin;
- (id)descriptionForDiscoverPlugin;
- (id)detailViewControllerToLaunch;
- (id)titleForDiscoverPlugin;
@end

@implementation UserGuidePlugin

- (id)badgeImageForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIImage imageNamed:@"Discover_UserGuide" inBundle:v2];

  return v3;
}

- (id)descriptionForDiscoverPlugin
{
  v2 = [[NSMutableAttributedString alloc] initWithString:&stru_4088];

  return v2;
}

- (id)detailViewControllerToLaunch
{
  v2 = objc_alloc_init(BCUserGuide);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"USER_GUIDE_PLUGIN_TITLE" value:&stru_4088 table:@"UserGuidePlugin"];
  v5 = [v2 getUserGuideViewWithTitle:v4];

  return v5;
}

- (id)titleForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"USER_GUIDE_PLUGIN_TITLE" value:&stru_4088 table:@"UserGuidePlugin"];

  return v3;
}

@end
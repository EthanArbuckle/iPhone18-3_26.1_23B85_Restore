@interface GetToKnowCurrentSeriesPlugin
- (BOOL)isAvailableInCurrentConfiguration;
- (id)badgeImageForDiscoverPlugin;
- (id)descriptionForDiscoverPlugin;
- (id)detailViewControllerToLaunch;
- (id)titleForDiscoverPlugin;
@end

@implementation GetToKnowCurrentSeriesPlugin

- (id)badgeImageForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIImage imageNamed:@"GetToKnowSeries6" inBundle:v2];

  return v3;
}

- (id)titleForDiscoverPlugin
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"GET_TO_KNOW_CURRENT_SERIES_PLUGIN_TITLE" value:&stru_40E0 table:@"GetToKnowCurrentSeriesPlugin"];

  return v3;
}

- (id)descriptionForDiscoverPlugin
{
  v2 = [NSMutableAttributedString alloc];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"GET_TO_KNOW_CURRENT_SERIES_PLUGIN_DESCRIPTION" value:&stru_40E0 table:@"GetToKnowCurrentSeriesPlugin"];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (id)detailViewControllerToLaunch
{
  v2 = [NSURL URLWithString:@"https://www.apple.com/watch/"];
  v3 = BCViewContollerForModallyPresentingTheUrl();

  return v3;
}

- (BOOL)isAvailableInCurrentConfiguration
{
  v2 = BPSGetActiveSetupCompletedDevice();
  v3 = v2 == 0;

  return v3;
}

@end
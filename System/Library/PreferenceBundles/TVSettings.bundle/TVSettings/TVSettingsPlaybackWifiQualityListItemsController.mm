@interface TVSettingsPlaybackWifiQualityListItemsController
- (void)viewDidLoad;
@end

@implementation TVSettingsPlaybackWifiQualityListItemsController

- (void)viewDidLoad
{
  v3 = MGGetBoolAnswer();
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"WLAN_QUALITY_PLAYBACK_SELECTION_TITLE";
  }

  else
  {
    v6 = @"WIFI_QUALITY_PLAYBACK_SELECTION_TITLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_21328 table:@"TVSettings"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_21328;
  }

  v10 = v9;

  [(TVSettingsPlaybackWifiQualityListItemsController *)self setTitle:v10];
  v11.receiver = self;
  v11.super_class = TVSettingsPlaybackWifiQualityListItemsController;
  [(TVSettingsPlaybackWifiQualityListItemsController *)&v11 viewDidLoad];
}

@end
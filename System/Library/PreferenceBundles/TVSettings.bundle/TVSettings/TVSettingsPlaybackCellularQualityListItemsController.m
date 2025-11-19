@interface TVSettingsPlaybackCellularQualityListItemsController
- (void)viewDidLoad;
@end

@implementation TVSettingsPlaybackCellularQualityListItemsController

- (void)viewDidLoad
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CELLULAR_QUALITY_PLAYBACK_SELECTION_TITLE" value:&stru_21328 table:@"TVSettings"];
  [(TVSettingsPlaybackCellularQualityListItemsController *)self setTitle:v4];

  v5.receiver = self;
  v5.super_class = TVSettingsPlaybackCellularQualityListItemsController;
  [(TVSettingsPlaybackCellularQualityListItemsController *)&v5 viewDidLoad];
}

@end
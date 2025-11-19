@interface TVSettingsDownloadCellularQualityListItemsController
- (void)viewDidLoad;
@end

@implementation TVSettingsDownloadCellularQualityListItemsController

- (void)viewDidLoad
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CELLULAR_QUALITY_DOWNLOAD_SELECTION_TITLE" value:&stru_21328 table:@"TVSettings"];
  [(TVSettingsDownloadCellularQualityListItemsController *)self setTitle:v4];

  v5.receiver = self;
  v5.super_class = TVSettingsDownloadCellularQualityListItemsController;
  [(TVSettingsDownloadCellularQualityListItemsController *)&v5 viewDidLoad];
}

@end
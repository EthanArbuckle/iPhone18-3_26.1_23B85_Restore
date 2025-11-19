@interface STStorageDetailViewController
- (void)viewDidLoad;
@end

@implementation STStorageDetailViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = STStorageDetailViewController;
  [(STStorageDetailViewController *)&v6 viewDidLoad];
  v3 = +[STStorageAnalytics sharedInstance];
  v4 = [(STStorageDetailViewController *)self cellType];
  v5 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSValueKey];
  [v3 sendAnalyticsEventActionWithType:v4 andActionSize:v5];
}

@end
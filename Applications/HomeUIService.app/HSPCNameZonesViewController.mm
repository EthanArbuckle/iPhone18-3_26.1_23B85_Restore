@interface HSPCNameZonesViewController
+ (id)applicableServicesForAccessory:(id)accessory;
- (HSPCNameZonesViewController)initWithCoordinator:(id)coordinator config:(id)config;
@end

@implementation HSPCNameZonesViewController

+ (id)applicableServicesForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  hf_primaryService = [accessoryCopy hf_primaryService];
  hf_visibleServices = [accessoryCopy hf_visibleServices];

  hf_childServices = [hf_primaryService hf_childServices];
  v7 = [hf_visibleServices setByAddingObjectsFromSet:hf_childServices];

  v8 = [v7 na_filter:&stru_1000C7820];
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "+[HSPCNameZonesViewController applicableServicesForAccessory:]";
    v13 = 2048;
    v14 = [v7 count];
    v15 = 2048;
    v16 = [v8 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s found %ld total services, %ld should be shown to user", &v11, 0x20u);
  }

  return v8;
}

- (HSPCNameZonesViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  v7.receiver = self;
  v7.super_class = HSPCNameZonesViewController;
  v4 = [(HSPCNameServicesViewController *)&v7 initWithCoordinator:coordinator config:config];
  if (v4)
  {
    v5 = HULocalizedString();
    [(HSPCNameZonesViewController *)v4 setTitle:v5];

    [(HSPCNameZonesViewController *)v4 setSubtitle:0];
  }

  return v4;
}

@end
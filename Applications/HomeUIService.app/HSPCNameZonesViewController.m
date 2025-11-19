@interface HSPCNameZonesViewController
+ (id)applicableServicesForAccessory:(id)a3;
- (HSPCNameZonesViewController)initWithCoordinator:(id)a3 config:(id)a4;
@end

@implementation HSPCNameZonesViewController

+ (id)applicableServicesForAccessory:(id)a3
{
  v3 = a3;
  v4 = [v3 hf_primaryService];
  v5 = [v3 hf_visibleServices];

  v6 = [v4 hf_childServices];
  v7 = [v5 setByAddingObjectsFromSet:v6];

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

- (HSPCNameZonesViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7.receiver = self;
  v7.super_class = HSPCNameZonesViewController;
  v4 = [(HSPCNameServicesViewController *)&v7 initWithCoordinator:a3 config:a4];
  if (v4)
  {
    v5 = HULocalizedString();
    [(HSPCNameZonesViewController *)v4 setTitle:v5];

    [(HSPCNameZonesViewController *)v4 setSubtitle:0];
  }

  return v4;
}

@end
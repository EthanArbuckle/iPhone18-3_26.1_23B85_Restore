@interface MigratorPromotionTask
- (MigratorPromotionTask)initWithConfiguration:(id)a3;
- (id)copyConfiguration;
- (void)main;
@end

@implementation MigratorPromotionTask

- (MigratorPromotionTask)initWithConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MigratorPromotionTask;
  v5 = [(MigratorTask *)&v9 initWithConfiguration:v4];
  if (v5)
  {
    v6 = sub_1002C0C50(v4, @"bundleIDs");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_bundleIDs, v6);
    }

    v7 = sub_1002C0C50(v4, @"options");

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_options, v7);
    }
  }

  return v5;
}

- (id)copyConfiguration
{
  v3 = sub_1002C0A10([MigratorConfiguration alloc], @"DemotedApplications");
  sub_1002C0CB8(v3, self->_bundleIDs, @"bundleIDs");
  sub_1002C0CB8(v3, self->_options, @"options");
  return v3;
}

- (void)main
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSArray *)self->_bundleIDs componentsJoinedByString:@", "];
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to hydrate applications with bundleIDs: [%{public}@]", &v9, 0xCu);
  }

  v5 = sub_10027F51C([ImportJobsForDemotedAppsTask alloc], self->_bundleIDs);
  v6 = v5;
  if (v5)
  {
    *(v5 + 48) = 0;
  }

  v7 = sub_100284B90();
  v8 = v7;
  if (v7)
  {
    [*(v7 + 8) addOperation:v6];
  }
}

@end
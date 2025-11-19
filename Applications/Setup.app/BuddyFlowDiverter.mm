@interface BuddyFlowDiverter
- (BOOL)shouldSkipControllerClass:(Class)a3 reason:(id *)a4 humanReadableReason:(id *)a5;
- (BuddyFlowDiverter)initWithEnvironment:(id)a3;
- (void)didSkipControllerClass:(Class)a3 forReason:(id)a4;
- (void)prepareWithCompletion:(id)a3;
@end

@implementation BuddyFlowDiverter

- (BuddyFlowDiverter)initWithEnvironment:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v12 = 0;
  v10.receiver = v3;
  v10.super_class = BuddyFlowDiverter;
  v12 = [(BuddyFlowDiverter *)&v10 init];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    objc_storeStrong(v12 + 2, location[0]);
    v4 = +[BuddyDeviceManagementSupport sharedSupport];
    v5 = *(v12 + 1);
    *(v12 + 1) = v4;

    v6 = [location[0] flowItemDispositionProvider];
    v7 = *(v12 + 3);
    *(v12 + 3) = v6;
  }

  v8 = v12;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v8;
}

- (void)prepareWithCompletion:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v14;
    v4 = v13;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching skip keys...", buf, 2u);
  }

  objc_storeStrong(&v14, 0);
  v5 = [(BuddyFlowDiverter *)v16 deviceManagementSupport];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100162664;
  v10 = &unk_10032C630;
  v11 = location[0];
  [(BuddyDeviceManagementSupport *)v5 loadSkipKeys:&v6];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldSkipControllerClass:(Class)a3 reason:(id *)a4 humanReadableReason:(id *)a5
{
  v31 = self;
  v30 = a2;
  aClass = a3;
  v28 = a4;
  v27 = a5;
  v5 = +[BuddyCloudConfigManager sharedManager];
  v6 = [v5 cloudConfigWantsToSkipControllerClass:aClass];

  if (v6)
  {
    if (v27)
    {
      *v27 = @"cloud configuration";
    }

    if (v28)
    {
      *v28 = &off_10033D2B0;
    }

    return 1;
  }

  v7 = [(BuddyFlowDiverter *)v31 deviceManagementSupport];
  v8 = [(BuddyDeviceManagementSupport *)v7 deviceManagementWantsToSkipControllerClass:aClass];

  if (v8)
  {
    if (v27)
    {
      *v27 = @"device management";
    }

    if (v28)
    {
      *v28 = &off_10033D2C8;
    }

    return 1;
  }

  if (([(objc_class *)aClass conformsToProtocol:&OBJC_PROTOCOL___BFFFlowItem]& 1) == 0)
  {
    return 0;
  }

  v26 = +[UIApplication isRunningInStoreDemoMode]& 1;
  if (objc_opt_respondsToSelector() & 1) != 0 && ([(objc_class *)aClass hiddenFromStoreDemoMode]& 1) != 0 && (v26)
  {
    if (v27)
    {
      *v27 = @"store demo mode";
    }

    if (v28)
    {
      *v28 = &off_10033D2E0;
    }

    return 1;
  }

  v9 = +[BuddyCloudConfigManager sharedManager];
  v10 = [v9 isMultiUser];

  v25 = v10 & 1;
  if (objc_opt_respondsToSelector() & 1) != 0 && ([(objc_class *)aClass hiddenFromMultiUser]& 1) != 0 && (v25)
  {
    if (v27)
    {
      *v27 = @"multi user";
    }

    if (v28)
    {
      *v28 = &off_10033D2F8;
    }

    return 1;
  }

  v24 = [(objc_class *)aClass applicableDispositions];
  v11 = [(BuddyFlowDiverter *)v31 flowItemDispositionProvider];
  v12 = [(BuddyFlowItemDispositionProvider *)v11 dispositions];

  if (!v12)
  {
    return 0;
  }

  v13 = [(BuddyFlowDiverter *)v31 flowItemDispositionProvider];
  v14 = ([(BuddyFlowItemDispositionProvider *)v13 dispositions]& 2) == 2;

  v23 = v14;
  v15 = [(BuddyFlowDiverter *)v31 flowItemDispositionProvider];
  v16 = (v24 & [(BuddyFlowItemDispositionProvider *)v15 dispositions]) != 0;

  v22 = v16;
  if (v16)
  {
    return 0;
  }

  if (v23)
  {
    v17 = NSStringFromClass(aClass);
    v21 = [NSString stringWithFormat:@"Unexpected flow item (%@) with disposition prior disposition determination", v17];

    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(buf, v21);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    objc_exception_throw([NSException exceptionWithName:v21 reason:0 userInfo:0]);
  }

  if (v27)
  {
    v18 = BYStringForFlowItemDispositions();
    *v27 = [NSString stringWithFormat:@"inapplicable disposition (%@)", v18];
  }

  if (v28)
  {
    *v28 = &off_10033D2E0;
  }

  return 1;
}

- (void)didSkipControllerClass:(Class)a3 forReason:(id)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = [location unsignedIntegerValue];
  if (v4 && (v4 - 1) <= 2)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = v8;
      v6 = [(BuddyFlowDiverter *)v10 environment];
      [(objc_class *)v5 skippedByCloudConfigWithEnvironment:v6];
    }

    else if (objc_opt_respondsToSelector())
    {
      [(objc_class *)v8 skippedByCloudConfig];
    }
  }

  objc_storeStrong(&location, 0);
}

@end
@interface BuddyFlowDiverter
- (BOOL)shouldSkipControllerClass:(Class)class reason:(id *)reason humanReadableReason:(id *)readableReason;
- (BuddyFlowDiverter)initWithEnvironment:(id)environment;
- (void)didSkipControllerClass:(Class)class forReason:(id)reason;
- (void)prepareWithCompletion:(id)completion;
@end

@implementation BuddyFlowDiverter

- (BuddyFlowDiverter)initWithEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  v3 = selfCopy;
  selfCopy = 0;
  v10.receiver = v3;
  v10.super_class = BuddyFlowDiverter;
  selfCopy = [(BuddyFlowDiverter *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 2, location[0]);
    v4 = +[BuddyDeviceManagementSupport sharedSupport];
    v5 = *(selfCopy + 1);
    *(selfCopy + 1) = v4;

    flowItemDispositionProvider = [location[0] flowItemDispositionProvider];
    v7 = *(selfCopy + 3);
    *(selfCopy + 3) = flowItemDispositionProvider;
  }

  v8 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)prepareWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
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
  deviceManagementSupport = [(BuddyFlowDiverter *)selfCopy deviceManagementSupport];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100162664;
  v10 = &unk_10032C630;
  v11 = location[0];
  [(BuddyDeviceManagementSupport *)deviceManagementSupport loadSkipKeys:&v6];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldSkipControllerClass:(Class)class reason:(id *)reason humanReadableReason:(id *)readableReason
{
  selfCopy = self;
  v30 = a2;
  aClass = class;
  reasonCopy = reason;
  readableReasonCopy = readableReason;
  v5 = +[BuddyCloudConfigManager sharedManager];
  v6 = [v5 cloudConfigWantsToSkipControllerClass:aClass];

  if (v6)
  {
    if (readableReasonCopy)
    {
      *readableReasonCopy = @"cloud configuration";
    }

    if (reasonCopy)
    {
      *reasonCopy = &off_10033D2B0;
    }

    return 1;
  }

  deviceManagementSupport = [(BuddyFlowDiverter *)selfCopy deviceManagementSupport];
  v8 = [(BuddyDeviceManagementSupport *)deviceManagementSupport deviceManagementWantsToSkipControllerClass:aClass];

  if (v8)
  {
    if (readableReasonCopy)
    {
      *readableReasonCopy = @"device management";
    }

    if (reasonCopy)
    {
      *reasonCopy = &off_10033D2C8;
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
    if (readableReasonCopy)
    {
      *readableReasonCopy = @"store demo mode";
    }

    if (reasonCopy)
    {
      *reasonCopy = &off_10033D2E0;
    }

    return 1;
  }

  v9 = +[BuddyCloudConfigManager sharedManager];
  isMultiUser = [v9 isMultiUser];

  v25 = isMultiUser & 1;
  if (objc_opt_respondsToSelector() & 1) != 0 && ([(objc_class *)aClass hiddenFromMultiUser]& 1) != 0 && (v25)
  {
    if (readableReasonCopy)
    {
      *readableReasonCopy = @"multi user";
    }

    if (reasonCopy)
    {
      *reasonCopy = &off_10033D2F8;
    }

    return 1;
  }

  applicableDispositions = [(objc_class *)aClass applicableDispositions];
  flowItemDispositionProvider = [(BuddyFlowDiverter *)selfCopy flowItemDispositionProvider];
  dispositions = [(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider dispositions];

  if (!dispositions)
  {
    return 0;
  }

  flowItemDispositionProvider2 = [(BuddyFlowDiverter *)selfCopy flowItemDispositionProvider];
  v14 = ([(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider2 dispositions]& 2) == 2;

  v23 = v14;
  flowItemDispositionProvider3 = [(BuddyFlowDiverter *)selfCopy flowItemDispositionProvider];
  v16 = (applicableDispositions & [(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider3 dispositions]) != 0;

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

  if (readableReasonCopy)
  {
    v18 = BYStringForFlowItemDispositions();
    *readableReasonCopy = [NSString stringWithFormat:@"inapplicable disposition (%@)", v18];
  }

  if (reasonCopy)
  {
    *reasonCopy = &off_10033D2E0;
  }

  return 1;
}

- (void)didSkipControllerClass:(Class)class forReason:(id)reason
{
  selfCopy = self;
  v9 = a2;
  classCopy = class;
  location = 0;
  objc_storeStrong(&location, reason);
  unsignedIntegerValue = [location unsignedIntegerValue];
  if (unsignedIntegerValue && (unsignedIntegerValue - 1) <= 2)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = classCopy;
      environment = [(BuddyFlowDiverter *)selfCopy environment];
      [(objc_class *)v5 skippedByCloudConfigWithEnvironment:environment];
    }

    else if (objc_opt_respondsToSelector())
    {
      [(objc_class *)classCopy skippedByCloudConfig];
    }
  }

  objc_storeStrong(&location, 0);
}

@end
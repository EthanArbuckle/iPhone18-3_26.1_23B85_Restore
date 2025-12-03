@interface INUserActivityExecutionInfo
+ (void)initialize;
- (BOOL)canRunOnLocalDevice;
- (id)_initWithUserActivityType:(id)type launchableAppBundleId:(id)id containingAppBundleURL:(id)l extensionBundleId:(id)bundleId;
@end

@implementation INUserActivityExecutionInfo

- (BOOL)canRunOnLocalDevice
{
  _applicationRecord = [(INExecutionInfo *)self _applicationRecord];
  applicationState = [_applicationRecord applicationState];
  isInstalled = [applicationState isInstalled];

  if (!isInstalled)
  {
    return 0;
  }

  _appInfo = [(INExecutionInfo *)self _appInfo];
  supportedActions = [_appInfo supportedActions];
  userActivityType = [(INUserActivityExecutionInfo *)self userActivityType];
  v9 = [supportedActions containsObject:userActivityType];

  return (v9 & 1) != 0;
}

- (id)_initWithUserActivityType:(id)type launchableAppBundleId:(id)id containingAppBundleURL:(id)l extensionBundleId:(id)bundleId
{
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = INUserActivityExecutionInfo;
  v11 = [(INExecutionInfo *)&v15 _initWithLaunchableAppBundleId:id displayableAppBundleId:0 containingAppBundleURL:l extensionBundleId:bundleId];
  if (v11)
  {
    v12 = [typeCopy copy];
    v13 = v11[6];
    v11[6] = v12;
  }

  return v11;
}

+ (void)initialize
{
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

@end
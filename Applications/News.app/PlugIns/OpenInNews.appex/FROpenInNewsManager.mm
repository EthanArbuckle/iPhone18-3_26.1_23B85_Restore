@interface FROpenInNewsManager
- (FROpenInNewsManager)init;
- (FROpenInNewsManager)initWithConfigurationManager:(id)manager networkReachability:(id)reachability;
- (void)openArticleWithURL:(id)l completion:(id)completion;
@end

@implementation FROpenInNewsManager

- (FROpenInNewsManager)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FROpenInNewsManager init]";
    v8 = 2080;
    v9 = "FROpenInNewsManager.m";
    v10 = 1024;
    v11 = 35;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FROpenInNewsManager init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FROpenInNewsManager)initWithConfigurationManager:(id)manager networkReachability:(id)reachability
{
  managerCopy = manager;
  reachabilityCopy = reachability;
  v12.receiver = self;
  v12.super_class = FROpenInNewsManager;
  v9 = [(FROpenInNewsManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configurationManager, manager);
    objc_storeStrong(&v10->_networkReachability, reachability);
  }

  return v10;
}

- (void)openArticleWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = [FCWebURLResolutionEndpointConnection alloc];
  configurationManager = [(FROpenInNewsManager *)self configurationManager];
  v10 = FCURLForContainerizedUserAccountCachesDirectory();
  networkReachability = [(FROpenInNewsManager *)self networkReachability];
  v12 = [v8 initWithConfigurationManager:configurationManager cachesDirectoryURL:v10 networkReachability:networkReachability];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004018;
  v15[3] = &unk_10000C420;
  v16 = lCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = lCopy;
  [v12 resolveWebURL:v14 withQualityOfService:25 completion:v15];
}

@end
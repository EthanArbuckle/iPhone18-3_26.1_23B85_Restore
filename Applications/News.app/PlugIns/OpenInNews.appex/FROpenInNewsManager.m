@interface FROpenInNewsManager
- (FROpenInNewsManager)init;
- (FROpenInNewsManager)initWithConfigurationManager:(id)a3 networkReachability:(id)a4;
- (void)openArticleWithURL:(id)a3 completion:(id)a4;
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

- (FROpenInNewsManager)initWithConfigurationManager:(id)a3 networkReachability:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FROpenInNewsManager;
  v9 = [(FROpenInNewsManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configurationManager, a3);
    objc_storeStrong(&v10->_networkReachability, a4);
  }

  return v10;
}

- (void)openArticleWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [FCWebURLResolutionEndpointConnection alloc];
  v9 = [(FROpenInNewsManager *)self configurationManager];
  v10 = FCURLForContainerizedUserAccountCachesDirectory();
  v11 = [(FROpenInNewsManager *)self networkReachability];
  v12 = [v8 initWithConfigurationManager:v9 cachesDirectoryURL:v10 networkReachability:v11];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004018;
  v15[3] = &unk_10000C420;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  [v12 resolveWebURL:v14 withQualityOfService:25 completion:v15];
}

@end
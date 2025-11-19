@interface FRArticleNotificationArticleSource
- (FCContentContext)contentContext;
- (FRArticleNotificationArticleSource)init;
- (FRArticleNotificationArticleSource)initWithCachesDirectory:(id)a3;
- (void)dealloc;
- (void)fetchArticleWithID:(id)a3 completion:(id)a4;
@end

@implementation FRArticleNotificationArticleSource

- (FRArticleNotificationArticleSource)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRArticleNotificationArticleSource init]";
    v8 = 2080;
    v9 = "FRArticleNotificationArticleSource.m";
    v10 = 1024;
    v11 = 28;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRArticleNotificationArticleSource init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (void)dealloc
{
  +[FCExcerptURLProtocol unregister];
  v3.receiver = self;
  v3.super_class = FRArticleNotificationArticleSource;
  [(FRArticleNotificationArticleSource *)&v3 dealloc];
}

- (FRArticleNotificationArticleSource)initWithCachesDirectory:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100002F2C();
  }

  v11.receiver = self;
  v11.super_class = FRArticleNotificationArticleSource;
  v5 = [(FRArticleNotificationArticleSource *)&v11 init];
  if (v5)
  {
    v6 = [NSURL URLWithString:@"News" relativeToURL:v4];
    archiveFileURL = v5->_archiveFileURL;
    v5->_archiveFileURL = v6;

    v8 = [v4 copy];
    cachesDirectory = v5->_cachesDirectory;
    v5->_cachesDirectory = v8;
  }

  return v5;
}

- (FCContentContext)contentContext
{
  contentContext = self->_contentContext;
  if (!contentContext)
  {
    v4 = +[FCFeldsparIDProvider sharedInstance];
    v5 = [FCConfigurationManager alloc];
    v6 = +[FCContextConfiguration defaultConfiguration];
    v7 = [(FRArticleNotificationArticleSource *)self cachesDirectory];
    v8 = [v5 initWithContextConfiguration:v6 contentHostDirectoryFileURL:v7 feldsparIDProvider:v4];

    v9 = [FCContentContext alloc];
    v10 = +[FCContextConfiguration defaultConfiguration];
    v11 = [(FRArticleNotificationArticleSource *)self cachesDirectory];
    v12 = +[FCNetworkReachability sharedNetworkReachability];
    v13 = [v9 initWithConfiguration:v10 configurationManager:v8 contentHostDirectory:v11 networkBehaviorMonitor:0 networkReachability:v12 desiredHeadlineFieldOptions:82368 feedUsage:1 assetKeyManagerDelegate:0 appActivityMonitor:0 backgroundTaskable:0 pptContext:0];

    [v13 enableFlushingWithFlushingThreshold:0];
    v14 = self->_contentContext;
    self->_contentContext = v13;

    contentContext = self->_contentContext;
  }

  return contentContext;
}

- (void)fetchArticleWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000300C();
  }

  v8 = [(FRArticleNotificationArticleSource *)self contentContext];
  v9 = [v8 articleController];
  v10 = [v9 articleWithID:v6 qualityOfService:25 relativePriority:2];

  [(FRArticleNotificationArticleSource *)self setLoadedArticle:v10];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001600;
  v12[3] = &unk_100008308;
  objc_copyWeak(&v14, &location);
  v11 = v7;
  v13 = v11;
  [v10 performBlockWhenFullyLoaded:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end
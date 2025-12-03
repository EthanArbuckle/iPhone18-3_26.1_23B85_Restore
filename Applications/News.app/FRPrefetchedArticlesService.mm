@interface FRPrefetchedArticlesService
- (FRPrefetchedArticlesService)initWithFeldsparContext:(id)context assetManager:(id)manager;
- (id)ts_fetchArticlesWithURL:(id)l;
@end

@implementation FRPrefetchedArticlesService

- (FRPrefetchedArticlesService)initWithFeldsparContext:(id)context assetManager:(id)manager
{
  contextCopy = context;
  managerCopy = manager;
  if (!contextCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006EA34();
    if (managerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (managerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006EB14();
  }

LABEL_6:
  v12.receiver = self;
  v12.super_class = FRPrefetchedArticlesService;
  v9 = [(FRPrefetchedArticlesService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feldsparContext, context);
    objc_storeStrong(&v10->_assetManager, manager);
  }

  return v10;
}

- (id)ts_fetchArticlesWithURL:(id)l
{
  lCopy = l;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100009B98;
  v13 = sub_100009F20;
  v14 = 0;
  assetManager = [(FRPrefetchedArticlesService *)self assetManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003599C;
  v8[3] = &unk_1000C3BD8;
  v8[4] = self;
  v8[5] = &v9;
  [lCopy fr_feldsparArticleIDWithAssetManager:assetManager completion:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end
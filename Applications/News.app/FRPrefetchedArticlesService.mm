@interface FRPrefetchedArticlesService
- (FRPrefetchedArticlesService)initWithFeldsparContext:(id)a3 assetManager:(id)a4;
- (id)ts_fetchArticlesWithURL:(id)a3;
@end

@implementation FRPrefetchedArticlesService

- (FRPrefetchedArticlesService)initWithFeldsparContext:(id)a3 assetManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006EA34();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
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
    objc_storeStrong(&v9->_feldsparContext, a3);
    objc_storeStrong(&v10->_assetManager, a4);
  }

  return v10;
}

- (id)ts_fetchArticlesWithURL:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100009B98;
  v13 = sub_100009F20;
  v14 = 0;
  v5 = [(FRPrefetchedArticlesService *)self assetManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003599C;
  v8[3] = &unk_1000C3BD8;
  v8[4] = self;
  v8[5] = &v9;
  [v4 fr_feldsparArticleIDWithAssetManager:v5 completion:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end
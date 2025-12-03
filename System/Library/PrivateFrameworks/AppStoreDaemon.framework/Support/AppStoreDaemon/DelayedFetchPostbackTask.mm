@interface DelayedFetchPostbackTask
- (DelayedFetchPostbackTask)initWithAppAdamID:(id)d usingProxy:(BOOL)proxy;
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation DelayedFetchPostbackTask

- (DelayedFetchPostbackTask)initWithAppAdamID:(id)d usingProxy:(BOOL)proxy
{
  dCopy = d;
  v22.receiver = self;
  v22.super_class = DelayedFetchPostbackTask;
  v8 = [(Task *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 82), d);
    v10 = [InstallAttributionDatabaseStore alloc];
    v11 = sub_1001C0DF0();
    v12 = sub_1001C0FB8(v11);
    v13 = [(SQLiteDatabaseStore *)v10 initWithDatabase:v12];
    v14 = *(v9 + 98);
    *(v9 + 98) = v13;

    v15 = objc_opt_new();
    v16 = *(v9 + 50);
    *(v9 + 50) = v15;

    v17 = objc_opt_new();
    v18 = *(v9 + 66);
    *(v9 + 66) = v17;

    v19 = objc_opt_new();
    v20 = *(v9 + 74);
    *(v9 + 74) = v19;

    v9[58] = proxy;
  }

  return v9;
}

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (*(&self->_rejectedImpressionResults + 2))
  {
    v5 = +[BagService appstoredService];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100256E68;
    v7[3] = &unk_10051ED90;
    v7[4] = self;
    v8 = handlerCopy;
    [v5 bagWithCompletionHandler:v7];
  }

  else
  {
    v6 = ASDErrorWithDescription();
    (*(handlerCopy + 2))(handlerCopy, v6);
  }
}

@end
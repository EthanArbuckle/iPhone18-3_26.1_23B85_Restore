@interface PLCacheUpdatesMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLCacheUpdatesMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [(PLMaintenanceTask *)self photoLibrary];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002C34;
  v10[3] = &unk_10002D458;
  v10[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002D9C;
  v8[3] = &unk_10002D9D8;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [v5 performTransactionAndWait:v10 completionHandler:v8];

  return 1;
}

@end
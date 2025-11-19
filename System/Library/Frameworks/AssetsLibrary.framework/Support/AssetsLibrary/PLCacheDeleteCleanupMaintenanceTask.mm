@interface PLCacheDeleteCleanupMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLCacheDeleteCleanupMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v4 = [(PLMaintenanceTask *)self photoLibrary];
  v5 = [v4 managedObjectContext];

  v6 = [(PLMaintenanceTask *)self photoLibrary];
  v7 = [v6 pathManager];

  v8 = [(PLMaintenanceTask *)self photoLibrary];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100007850;
  v17[3] = &unk_10002D9D8;
  v9 = v7;
  v18 = v9;
  v10 = v5;
  v19 = v10;
  [v8 performTransactionAndWait:v17];

  v11 = [v9 capabilities];
  LODWORD(v8) = [v11 isCentralizedCacheDeleteCapable];

  if (v8)
  {
    v12 = [(PLMaintenanceTask *)self photoLibrary];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000790C;
    v14[3] = &unk_10002D9D8;
    v15 = v10;
    v16 = v9;
    [v12 performBlockAndWait:v14];
  }

  return 1;
}

@end
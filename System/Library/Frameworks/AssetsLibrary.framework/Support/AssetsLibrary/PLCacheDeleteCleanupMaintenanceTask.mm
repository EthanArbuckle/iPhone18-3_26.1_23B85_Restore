@interface PLCacheDeleteCleanupMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLCacheDeleteCleanupMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];

  photoLibrary2 = [(PLMaintenanceTask *)self photoLibrary];
  pathManager = [photoLibrary2 pathManager];

  photoLibrary3 = [(PLMaintenanceTask *)self photoLibrary];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100007850;
  v17[3] = &unk_10002D9D8;
  v9 = pathManager;
  v18 = v9;
  v10 = managedObjectContext;
  v19 = v10;
  [photoLibrary3 performTransactionAndWait:v17];

  capabilities = [v9 capabilities];
  LODWORD(photoLibrary3) = [capabilities isCentralizedCacheDeleteCapable];

  if (photoLibrary3)
  {
    photoLibrary4 = [(PLMaintenanceTask *)self photoLibrary];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000790C;
    v14[3] = &unk_10002D9D8;
    v15 = v10;
    v16 = v9;
    [photoLibrary4 performBlockAndWait:v14];
  }

  return 1;
}

@end
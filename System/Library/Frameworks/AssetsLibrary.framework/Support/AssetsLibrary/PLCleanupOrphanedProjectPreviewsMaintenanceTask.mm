@interface PLCleanupOrphanedProjectPreviewsMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLCleanupOrphanedProjectPreviewsMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004A70;
  v8[3] = &unk_10002D9D8;
  v8[4] = self;
  v9 = transactionCopy;
  v6 = transactionCopy;
  [photoLibrary performTransaction:v8];

  return 1;
}

@end
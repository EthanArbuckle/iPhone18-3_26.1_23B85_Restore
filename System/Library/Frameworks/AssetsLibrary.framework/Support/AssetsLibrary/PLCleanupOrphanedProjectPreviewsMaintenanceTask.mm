@interface PLCleanupOrphanedProjectPreviewsMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLCleanupOrphanedProjectPreviewsMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [(PLMaintenanceTask *)self photoLibrary];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004A70;
  v8[3] = &unk_10002D9D8;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [v5 performTransaction:v8];

  return 1;
}

@end
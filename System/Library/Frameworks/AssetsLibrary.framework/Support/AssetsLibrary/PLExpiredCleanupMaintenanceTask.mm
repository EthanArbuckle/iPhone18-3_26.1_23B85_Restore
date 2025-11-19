@interface PLExpiredCleanupMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLExpiredCleanupMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v4 = [(PLMaintenanceTask *)self photoLibrary];
  [v4 deleteExpiredTrashedAssetsAndAlbums];

  v5 = [(PLMaintenanceTask *)self photoLibrary];
  [v5 deleteExpiredTrashedResources];

  return 1;
}

@end
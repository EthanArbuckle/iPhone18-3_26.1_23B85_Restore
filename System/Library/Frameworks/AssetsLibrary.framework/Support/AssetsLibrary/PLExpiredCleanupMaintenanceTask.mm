@interface PLExpiredCleanupMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLExpiredCleanupMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  [photoLibrary deleteExpiredTrashedAssetsAndAlbums];

  photoLibrary2 = [(PLMaintenanceTask *)self photoLibrary];
  [photoLibrary2 deleteExpiredTrashedResources];

  return 1;
}

@end
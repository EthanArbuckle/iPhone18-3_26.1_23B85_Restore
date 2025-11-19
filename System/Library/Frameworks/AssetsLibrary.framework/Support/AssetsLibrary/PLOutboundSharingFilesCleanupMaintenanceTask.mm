@interface PLOutboundSharingFilesCleanupMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLOutboundSharingFilesCleanupMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v3 = [(PLMaintenanceTask *)self libraryServicesManager];
  v4 = [v3 pathManager];
  v5 = [v4 isDCIM];

  if (v5)
  {
    v6 = +[PLPhotoLibraryPathManager systemLibraryPathManager];
    [v6 cleanupOutboundSharingFilesWithExpiryInterval:60.0];
  }

  return 1;
}

@end
@interface PLOutboundSharingFilesCleanupMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLOutboundSharingFilesCleanupMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  libraryServicesManager = [(PLMaintenanceTask *)self libraryServicesManager];
  pathManager = [libraryServicesManager pathManager];
  isDCIM = [pathManager isDCIM];

  if (isDCIM)
  {
    v6 = +[PLPhotoLibraryPathManager systemLibraryPathManager];
    [v6 cleanupOutboundSharingFilesWithExpiryInterval:60.0];
  }

  return 1;
}

@end
@interface PLSearchRemoveUnusedGroupsMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLSearchRemoveUnusedGroupsMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];
  searchIndexingEngine = [libraryServicesManager searchIndexingEngine];
  [searchIndexingEngine removeUnusedGroupsFromPSI];

  return 1;
}

@end
@interface PLSearchRemoveUnusedGroupsMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLSearchRemoveUnusedGroupsMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v3 = [(PLMaintenanceTask *)self photoLibrary];
  v4 = [v3 libraryServicesManager];
  v5 = [v4 searchIndexingEngine];
  [v5 removeUnusedGroupsFromPSI];

  return 1;
}

@end
@interface PLJournalMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
- (void)coalesceRebuildJournals;
- (void)snapshotComputeCacheJournals;
@end

@implementation PLJournalMaintenanceTask

- (void)snapshotComputeCacheJournals
{
  libraryServicesManager = [(PLMaintenanceTask *)self libraryServicesManager];
  computeCacheManager = [libraryServicesManager computeCacheManager];

  v7 = 0;
  v4 = [computeCacheManager snapshotComputeCacheAndBackupIfNeededWithError:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Maintenance task: Failed to generate compute cache backup. Error: %@", buf, 0xCu);
    }
  }
}

- (void)coalesceRebuildJournals
{
  libraryServicesManager = [(PLMaintenanceTask *)self libraryServicesManager];
  pathManager = [libraryServicesManager pathManager];
  v5 = [PLRebuildJournalManager isEnabledWithPathManager:pathManager error:0];

  if (v5)
  {
    libraryServicesManager2 = [(PLMaintenanceTask *)self libraryServicesManager];
    rebuildJournalManager = [libraryServicesManager2 rebuildJournalManager];
    LODWORD(v7) = 0.5;
    [rebuildJournalManager coalesceJournalsForPayloadClassIDs:0 withChangeJournalOverThreshold:0 error:v7];
  }
}

- (BOOL)runTaskWithTransaction:(id)transaction
{
  [(PLJournalMaintenanceTask *)self coalesceRebuildJournals];
  [(PLJournalMaintenanceTask *)self snapshotComputeCacheJournals];
  return 1;
}

@end
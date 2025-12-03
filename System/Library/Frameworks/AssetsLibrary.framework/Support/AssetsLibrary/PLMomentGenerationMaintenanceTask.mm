@interface PLMomentGenerationMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLMomentGenerationMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  libraryServicesManager = [(PLMaintenanceTask *)self libraryServicesManager];
  momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];

  [momentGenerationDataManager runPeriodicMaintenanceTasks:50 withTransaction:transactionCopy progressReportBlock:0];
  return 1;
}

@end
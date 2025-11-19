@interface PLMomentGenerationMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLMomentGenerationMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [(PLMaintenanceTask *)self libraryServicesManager];
  v6 = [v5 momentGenerationDataManager];

  [v6 runPeriodicMaintenanceTasks:50 withTransaction:v4 progressReportBlock:0];
  return 1;
}

@end
@interface PLCrashRecoveryMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLCrashRecoveryMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting recoverFromCrashIfNeededWithImageWriter:", v10, 2u);
  }

  libraryServicesManager = [(PLMaintenanceTask *)self libraryServicesManager];
  crashRecoverySupport = [libraryServicesManager crashRecoverySupport];
  libraryServicesManager2 = [(PLMaintenanceTask *)self libraryServicesManager];
  imageWriter = [libraryServicesManager2 imageWriter];
  [crashRecoverySupport recoverFromCrashIfNeededWithImageWriter:imageWriter];

  return 1;
}

@end
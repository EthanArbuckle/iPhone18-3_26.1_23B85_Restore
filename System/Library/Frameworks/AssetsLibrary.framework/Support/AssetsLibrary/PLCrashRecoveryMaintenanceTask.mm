@interface PLCrashRecoveryMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLCrashRecoveryMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting recoverFromCrashIfNeededWithImageWriter:", v10, 2u);
  }

  v5 = [(PLMaintenanceTask *)self libraryServicesManager];
  v6 = [v5 crashRecoverySupport];
  v7 = [(PLMaintenanceTask *)self libraryServicesManager];
  v8 = [v7 imageWriter];
  [v6 recoverFromCrashIfNeededWithImageWriter:v8];

  return 1;
}

@end
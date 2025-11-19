@interface MCMContainerDataMigrator
- (BOOL)performMigration;
@end

@implementation MCMContainerDataMigrator

- (BOOL)performMigration
{
  v2 = container_perform_data_migration();
  if ((v2 & 1) == 0)
  {
    v3 = container_log_handle_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v6 = 1;
      _os_log_fault_impl(&dword_0, v3, OS_LOG_TYPE_FAULT, "Migration failed with error %llu. Please include a sysdiagnose in a bug report for MobileContainerManager | all.", buf, 0xCu);
    }
  }

  return v2;
}

@end
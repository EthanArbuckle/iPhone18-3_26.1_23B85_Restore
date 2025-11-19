@interface ICReindexEverythingAfterBackupRestoreTask
- (void)runOneTimePerBackupRestoreLaunchTask;
@end

@implementation ICReindexEverythingAfterBackupRestoreTask

- (void)runOneTimePerBackupRestoreLaunchTask
{
  if (ICUseCoreDataCoreSpotlightIntegration())
  {
    v2 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_1004E0378(v2);
    }
  }

  else
  {
    v3 = kICReindexOnLaunchKey;

    [ICSettingsUtilities setObject:&__kCFBooleanTrue forKey:v3];
  }
}

@end
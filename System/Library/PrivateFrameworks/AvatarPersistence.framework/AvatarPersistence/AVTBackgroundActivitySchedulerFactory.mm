@interface AVTBackgroundActivitySchedulerFactory
+ (id)schedulerForPostInstallMigrationActivity;
+ (id)schedulerForUserRequestedBackupActivity;
@end

@implementation AVTBackgroundActivitySchedulerFactory

+ (id)schedulerForPostInstallMigrationActivity
{
  v2 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:@"com.apple.avatar.activity.PostInstallMigration"];
  [v2 setPreregistered:1];

  return v2;
}

+ (id)schedulerForUserRequestedBackupActivity
{
  v2 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:@"com.apple.avatar.activity.UserRequestedBackup"];
  [v2 setPreregistered:1];

  return v2;
}

@end
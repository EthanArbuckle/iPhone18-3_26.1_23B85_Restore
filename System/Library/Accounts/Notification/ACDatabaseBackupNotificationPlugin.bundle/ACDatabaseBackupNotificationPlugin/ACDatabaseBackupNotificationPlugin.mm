@interface ACDatabaseBackupNotificationPlugin
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation ACDatabaseBackupNotificationPlugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  if ((type & 0xFFFFFFFD) == 1)
  {
    databaseBackupActivity = [store databaseBackupActivity];
    [databaseBackupActivity scheduleBackup];
  }
}

@end
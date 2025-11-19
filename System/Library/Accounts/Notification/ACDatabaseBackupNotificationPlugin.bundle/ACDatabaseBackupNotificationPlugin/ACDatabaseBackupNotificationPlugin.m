@interface ACDatabaseBackupNotificationPlugin
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation ACDatabaseBackupNotificationPlugin

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  if ((a4 & 0xFFFFFFFD) == 1)
  {
    v7 = [a5 databaseBackupActivity];
    [v7 scheduleBackup];
  }
}

@end
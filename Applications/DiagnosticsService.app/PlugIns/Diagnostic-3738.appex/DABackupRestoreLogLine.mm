@interface DABackupRestoreLogLine
- (NSString)eventSubType;
- (int64_t)backupRestoreEventType;
@end

@implementation DABackupRestoreLogLine

- (NSString)eventSubType
{
  v3 = [(DABackupRestoreLogLine *)self fields];
  v4 = [v3 count];

  if (v4 < 3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(DABackupRestoreLogLine *)self fields];
    v6 = [v5 objectAtIndexedSubscript:2];
  }

  return v6;
}

- (int64_t)backupRestoreEventType
{
  v3 = [(DABackupRestoreLogLine *)self eventSubType];
  if ([v3 isEqualToString:@"iCloudBackup"])
  {

    return 1000;
  }

  v4 = [(DABackupRestoreLogLine *)self eventSubType];
  v5 = [v4 isEqualToString:@"iTunesBackup"];

  if (v5)
  {
    return 1000;
  }

  return 1001;
}

@end
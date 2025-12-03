@interface DABackupRestoreLogLine
- (NSString)eventSubType;
- (int64_t)backupRestoreEventType;
@end

@implementation DABackupRestoreLogLine

- (NSString)eventSubType
{
  fields = [(DABackupRestoreLogLine *)self fields];
  v4 = [fields count];

  if (v4 < 3)
  {
    v6 = 0;
  }

  else
  {
    fields2 = [(DABackupRestoreLogLine *)self fields];
    v6 = [fields2 objectAtIndexedSubscript:2];
  }

  return v6;
}

- (int64_t)backupRestoreEventType
{
  eventSubType = [(DABackupRestoreLogLine *)self eventSubType];
  if ([eventSubType isEqualToString:@"iCloudBackup"])
  {

    return 1000;
  }

  eventSubType2 = [(DABackupRestoreLogLine *)self eventSubType];
  v5 = [eventSubType2 isEqualToString:@"iTunesBackup"];

  if (v5)
  {
    return 1000;
  }

  return 1001;
}

@end
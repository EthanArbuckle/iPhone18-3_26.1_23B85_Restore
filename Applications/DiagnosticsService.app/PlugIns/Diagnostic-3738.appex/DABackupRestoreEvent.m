@interface DABackupRestoreEvent
- (DABackupRestoreEvent)initWithDate:(id)a3 eventSubType:(id)a4 successfulBackup:(BOOL)a5 eventCode:(int64_t)a6;
- (id)dictionary;
@end

@implementation DABackupRestoreEvent

- (DABackupRestoreEvent)initWithDate:(id)a3 eventSubType:(id)a4 successfulBackup:(BOOL)a5 eventCode:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = DABackupRestoreEvent;
  v13 = [(DABackupRestoreEvent *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_date, a3);
    v14->_backupRestoreEventCode = a6;
    v14->_successfulBackup = a5;
    if ([v12 isEqualToString:@"iTunesBackup"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"iTunesRestore"))
    {
      v15 = @"iTunes";
LABEL_5:
      engine = v14->_engine;
      v14->_engine = &v15->isa;

      goto LABEL_6;
    }

    if (([v12 isEqualToString:@"iCloudBackup"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"iCloudRestore"))
    {
      v15 = @"iCloud";
      goto LABEL_5;
    }
  }

LABEL_6:

  return v14;
}

- (id)dictionary
{
  v14[0] = @"date";
  v3 = +[DSDateFormatter sharedFormatter];
  v4 = [v3 formatterWithType:0];
  v5 = [(DABackupRestoreEvent *)self date];
  v6 = [v4 stringFromDate:v5];
  v7 = stringOrNull(v6);
  v15[0] = v7;
  v14[1] = @"engine";
  v8 = [(DABackupRestoreEvent *)self engine];
  v9 = stringOrNull(v8);
  v15[1] = v9;
  v14[2] = @"code";
  v10 = [NSNumber numberWithInteger:[(DABackupRestoreEvent *)self backupRestoreEventCode]];
  v11 = numberOrNull(v10);
  v15[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

@end
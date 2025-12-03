@interface DABackupRestoreEvent
- (DABackupRestoreEvent)initWithDate:(id)date eventSubType:(id)type successfulBackup:(BOOL)backup eventCode:(int64_t)code;
- (id)dictionary;
@end

@implementation DABackupRestoreEvent

- (DABackupRestoreEvent)initWithDate:(id)date eventSubType:(id)type successfulBackup:(BOOL)backup eventCode:(int64_t)code
{
  dateCopy = date;
  typeCopy = type;
  v18.receiver = self;
  v18.super_class = DABackupRestoreEvent;
  v13 = [(DABackupRestoreEvent *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_date, date);
    v14->_backupRestoreEventCode = code;
    v14->_successfulBackup = backup;
    if ([typeCopy isEqualToString:@"iTunesBackup"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"iTunesRestore"))
    {
      v15 = @"iTunes";
LABEL_5:
      engine = v14->_engine;
      v14->_engine = &v15->isa;

      goto LABEL_6;
    }

    if (([typeCopy isEqualToString:@"iCloudBackup"] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"iCloudRestore"))
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
  date = [(DABackupRestoreEvent *)self date];
  v6 = [v4 stringFromDate:date];
  v7 = stringOrNull(v6);
  v15[0] = v7;
  v14[1] = @"engine";
  engine = [(DABackupRestoreEvent *)self engine];
  v9 = stringOrNull(engine);
  v15[1] = v9;
  v14[2] = @"code";
  v10 = [NSNumber numberWithInteger:[(DABackupRestoreEvent *)self backupRestoreEventCode]];
  v11 = numberOrNull(v10);
  v15[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

@end
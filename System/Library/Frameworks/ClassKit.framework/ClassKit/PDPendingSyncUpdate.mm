@interface PDPendingSyncUpdate
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDPendingSyncUpdate)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDPendingSyncUpdate

- (PDPendingSyncUpdate)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v14.receiver = self;
  v14.super_class = PDPendingSyncUpdate;
  v5 = [(PDPendingSyncUpdate *)&v14 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"recordID");
    recordID = v5->_recordID;
    v5->_recordID = v6;

    v8 = sub_10016D778(rowCopy, @"parentRecordID");
    parentRecordID = v5->_parentRecordID;
    v5->_parentRecordID = v8;

    v10 = sub_10016D778(rowCopy, @"record");
    if (v10)
    {
      v11 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClass:objc_opt_class() withData:v10];
      record = v5->_record;
      v5->_record = v11;
    }
  }

  return v5;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  sub_1000982FC(toCopy, self->_recordID, @"recordID");
  sub_1000982FC(toCopy, self->_parentRecordID, @"parentRecordID");
  record = self->_record;
  if (record)
  {
    v9 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:record requiringSecureCoding:1 error:&v9];
    v7 = v9;
    v8 = v7;
    if (v7)
    {
      [v7 cls_debug:CLSLogDatabase];
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1000982FC(toCopy, v6, @"record");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(databaseCopy, @"create table PDPendingSyncUpdate(   recordID text not null,    parentRecordID text not null,    record blob)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index PDPendingSyncUpdate_recordID on PDPendingSyncUpdate (recordID)", 0, 0, 0) && sub_1000B9298(v8, @"create index PDPendingSyncUpdate_parentRecordID on PDPendingSyncUpdate (parentRecordID)", 0, 0, 0))
  {
    v9 = 1;
    *finalVersion = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
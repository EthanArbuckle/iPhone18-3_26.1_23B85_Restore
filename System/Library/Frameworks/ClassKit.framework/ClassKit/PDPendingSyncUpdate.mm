@interface PDPendingSyncUpdate
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDPendingSyncUpdate)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation PDPendingSyncUpdate

- (PDPendingSyncUpdate)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PDPendingSyncUpdate;
  v5 = [(PDPendingSyncUpdate *)&v14 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"recordID");
    recordID = v5->_recordID;
    v5->_recordID = v6;

    v8 = sub_10016D778(v4, @"parentRecordID");
    parentRecordID = v5->_parentRecordID;
    v5->_parentRecordID = v8;

    v10 = sub_10016D778(v4, @"record");
    if (v10)
    {
      v11 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClass:objc_opt_class() withData:v10];
      record = v5->_record;
      v5->_record = v11;
    }
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  sub_1000982FC(v4, self->_recordID, @"recordID");
  sub_1000982FC(v4, self->_parentRecordID, @"parentRecordID");
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

  sub_1000982FC(v4, v6, @"record");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(v7, @"create table PDPendingSyncUpdate(   recordID text not null,    parentRecordID text not null,    record blob)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index PDPendingSyncUpdate_recordID on PDPendingSyncUpdate (recordID)", 0, 0, 0) && sub_1000B9298(v8, @"create index PDPendingSyncUpdate_parentRecordID on PDPendingSyncUpdate (parentRecordID)", 0, 0, 0))
  {
    v9 = 1;
    *a4 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
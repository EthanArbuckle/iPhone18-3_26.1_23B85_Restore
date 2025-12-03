@interface CLSBlob
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSBlob)initWithCKRecord:(id)record;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
@end

@implementation CLSBlob

- (CLSBlob)initWithCKRecord:(id)record
{
  recordCopy = record;
  _init = [(CLSBlob *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithRecord:recordCopy];
    v7 = [recordCopy objectForKeyedSubscript:CLSBlobPropertyType];
    if (!v7)
    {
      CLSInitLog();
      v8 = CLSLogSync;
      if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CLSBlob synced from CloudKit is missing type information", v11, 2u);
      }
    }

    [v6 setType:{objc_msgSend(v7, "intValue")}];
    v9 = [recordCopy objectForKeyedSubscript:CLSBlobPropertyData];
    [v6 setData:v9];
  }

  return v6;
}

- (void)populate:(id)populate
{
  v7.receiver = self;
  v7.super_class = CLSBlob;
  populateCopy = populate;
  [(CLSBlob *)&v7 populate:populateCopy];
  v5 = [NSNumber numberWithInt:[(CLSBlob *)self type:v7.receiver]];
  [populateCopy setObject:v5 forKeyedSubscript:CLSBlobPropertyType];

  data = [(CLSBlob *)self data];
  [populateCopy setObject:data forKeyedSubscript:CLSBlobPropertyData];

  [(CLSBlob *)self updateParentReferencesForRecord:populateCopy];
}

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSBlob *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, CLSPredicateKeyPathParentObjectID);
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(rowCopy, @"data");
    [v6 setData:v9];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v9.receiver = self;
  v9.super_class = CLSBlob;
  toCopy = to;
  [(CLSBlob *)&v9 bindTo:toCopy];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSBlob *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, CLSPredicateKeyPathParentObjectID);

  v7 = [NSNumber numberWithInt:[(CLSBlob *)self type]];
  sub_1000982FC(toCopy, v7, @"type");

  data = [(CLSBlob *)self data];
  sub_1000982FC(toCopy, data, @"data");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSBlob(   objectID          text not null,    parentObjectID    text not null,    dateCreated       real not null,    dateLastModified  real not null,    type              integer,    data              blob not null,    foreign key (parentObjectID) references CLSContext(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSBlob_objectID on CLSBlob (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_7:

  return v9;
}

@end
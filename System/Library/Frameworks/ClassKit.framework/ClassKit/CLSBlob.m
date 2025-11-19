@interface CLSBlob
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSBlob)initWithCKRecord:(id)a3;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
@end

@implementation CLSBlob

- (CLSBlob)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CLSBlob *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithRecord:v4];
    v7 = [v4 objectForKeyedSubscript:CLSBlobPropertyType];
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
    v9 = [v4 objectForKeyedSubscript:CLSBlobPropertyData];
    [v6 setData:v9];
  }

  return v6;
}

- (void)populate:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLSBlob;
  v4 = a3;
  [(CLSBlob *)&v7 populate:v4];
  v5 = [NSNumber numberWithInt:[(CLSBlob *)self type:v7.receiver]];
  [v4 setObject:v5 forKeyedSubscript:CLSBlobPropertyType];

  v6 = [(CLSBlob *)self data];
  [v4 setObject:v6 forKeyedSubscript:CLSBlobPropertyData];

  [(CLSBlob *)self updateParentReferencesForRecord:v4];
}

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSBlob *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, CLSPredicateKeyPathParentObjectID);
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"type");
    [v6 setType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(v4, @"data");
    [v6 setData:v9];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLSBlob;
  v4 = a3;
  [(CLSBlob *)&v9 bindTo:v4];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSBlob *)self parentObjectID];
  sub_1000982FC(v4, v6, CLSPredicateKeyPathParentObjectID);

  v7 = [NSNumber numberWithInt:[(CLSBlob *)self type]];
  sub_1000982FC(v4, v7, @"type");

  v8 = [(CLSBlob *)self data];
  sub_1000982FC(v4, v8, @"data");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSBlob(   objectID          text not null,    parentObjectID    text not null,    dateCreated       real not null,    dateLastModified  real not null,    type              integer,    data              blob not null,    foreign key (parentObjectID) references CLSContext(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSBlob_objectID on CLSBlob (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    a3 = 1;
  }

  *a4 = a3;
  v9 = 1;
LABEL_7:

  return v9;
}

@end
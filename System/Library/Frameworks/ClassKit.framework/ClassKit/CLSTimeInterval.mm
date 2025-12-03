@interface CLSTimeInterval
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSTimeInterval)initWithCKRecord:(id)record;
- (id)generateInsightEventsWithDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
@end

@implementation CLSTimeInterval

- (CLSTimeInterval)initWithCKRecord:(id)record
{
  recordCopy = record;
  _init = [(CLSTimeInterval *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithRecord:recordCopy];
    v7 = [recordCopy objectForKeyedSubscript:@"startTime"];
    [v6 setStartTime:v7];

    v8 = [recordCopy objectForKeyedSubscript:@"length"];
    [v8 doubleValue];
    [v6 setLength:?];
  }

  return v6;
}

- (void)populate:(id)populate
{
  populateCopy = populate;
  v22.receiver = self;
  v22.super_class = CLSTimeInterval;
  [(CLSTimeInterval *)&v22 populate:populateCopy];
  v6 = [populateCopy objectForKeyedSubscript:@"startTime"];
  if (!v6)
  {
    startTime = [(CLSTimeInterval *)self startTime];
    if (!startTime)
    {
      goto LABEL_13;
    }
  }

  v7 = [populateCopy objectForKeyedSubscript:@"startTime"];
  if (!v7)
  {
LABEL_9:
    if (!v6)
    {
    }

    goto LABEL_12;
  }

  v8 = v7;
  startTime2 = [(CLSTimeInterval *)self startTime];
  if (!startTime2)
  {

    goto LABEL_9;
  }

  v10 = startTime2;
  v11 = [populateCopy objectForKeyedSubscript:@"startTime"];
  startTime3 = [(CLSTimeInterval *)self startTime];
  v13 = [v11 isEqualToDate:startTime3];

  if (v6)
  {

    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    startTime4 = [(CLSTimeInterval *)self startTime];
    [populateCopy setObject:startTime4 forKeyedSubscript:@"startTime"];

    goto LABEL_13;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  [(CLSTimeInterval *)self length];
  v15 = [NSNumber numberWithDouble:?];
  v16 = [populateCopy objectForKeyedSubscript:@"length"];
  if (v16 | v15)
  {
    v17 = v16;
    v18 = [populateCopy objectForKeyedSubscript:@"length"];
    v19 = v18;
    if (v18 && v15)
    {
      v20 = [populateCopy objectForKeyedSubscript:@"length"];
      v21 = [v20 isEqualToNumber:v15];

      if (v21)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    [populateCopy setObject:v15 forKeyedSubscript:@"length"];
  }

LABEL_20:
  [(CLSTimeInterval *)self updateParentReferencesForRecord:populateCopy];
}

- (id)generateInsightEventsWithDatabase:(id)database
{
  databaseCopy = database;
  [(CLSTimeInterval *)self length];
  if (v5 < 1.0)
  {
LABEL_14:
    v12 = &__NSArray0__struct;
    goto LABEL_15;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_class();
  parentObjectID = [(CLSTimeInterval *)self parentObjectID];
  v9 = [databaseCopy select:v7 identity:parentObjectID];

  if (!v9)
  {
    CLSInitLog();
    v19 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v21 = v19;
      parentObjectID2 = [(CLSTimeInterval *)self parentObjectID];
      *buf = 138412290;
      v29 = parentObjectID2;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "CLSTimeInterval failed to find parent activity: %@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    goto LABEL_14;
  }

  objectID = [(CLSTimeInterval *)self objectID];
  v11 = sub_10004BE2C(databaseCopy, v9, 202, objectID);

  objc_autoreleasePoolPop(v6);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        [v17 setTimeIntervalInfo:{self, v23}];
        parentObjectID3 = [(CLSTimeInterval *)self parentObjectID];
        [v17 setParentObjectID:parentObjectID3];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

LABEL_15:

  return v12;
}

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSTimeInterval *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D6F0(rowCopy, @"startTime");
    [v6 setStartTime:v8];

    v9 = sub_10016D778(rowCopy, @"length");
    [v9 doubleValue];
    [v6 setLength:?];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v8.receiver = self;
  v8.super_class = CLSTimeInterval;
  toCopy = to;
  [(CLSTimeInterval *)&v8 bindTo:toCopy];
  v5 = [(CLSTimeInterval *)self parentObjectID:v8.receiver];
  sub_1000982FC(toCopy, v5, @"parentObjectID");

  startTime = [(CLSTimeInterval *)self startTime];
  sub_1000982FC(toCopy, startTime, @"startTime");

  [(CLSTimeInterval *)self length];
  v7 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v7, @"length");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(databaseCopy, @"create table CLSTimeInterval(   objectID          text not null,    parentObjectID    text not null,    appIdentifier     text not null,    dateCreated       real not null,    dateLastModified  real not null,    startTime         real not null,    length            real not null,    foreign key (parentObjectID) references CLSActivity(objectID) on delete cascade on update cascade)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSTimeInterval_objectID on CLSTimeInterval (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index CLSTimeInterval_parentObjectID on CLSTimeInterval (parentObjectID)", 0, 0, 0))
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
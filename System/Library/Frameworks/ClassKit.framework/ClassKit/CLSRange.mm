@interface CLSRange
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSRange)initWithCKRecord:(id)record;
- (CLSRange)initWithDatabaseRow:(id)row;
- (id)generateInsightEventsWithDatabase:(id)database;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
@end

@implementation CLSRange

- (CLSRange)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"start");
  [v5 doubleValue];
  v7 = v6;

  v8 = sub_10016D778(rowCopy, @"end");
  [v8 doubleValue];
  v10 = v9;

  v11 = [(CLSRange *)self initWithStart:v7 end:v10];
  v12 = v11;
  if (v11)
  {
    [(CLSRange *)v11 _initCommonPropsWithDatabaseRow:rowCopy];
    v13 = sub_10016D778(rowCopy, @"parentObjectID");
    [(CLSRange *)v12 setParentObjectID:v13];
  }

  return v12;
}

- (void)bindTo:(id)to
{
  v8.receiver = self;
  v8.super_class = CLSRange;
  toCopy = to;
  [(CLSRange *)&v8 bindTo:toCopy];
  v5 = [(CLSRange *)self parentObjectID:v8.receiver];
  sub_1000982FC(toCopy, v5, @"parentObjectID");

  [(CLSRange *)self start];
  v6 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v6, @"start");

  [(CLSRange *)self end];
  v7 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v7, @"end");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(databaseCopy, @"create table CLSRange(   objectID          text not null,    parentObjectID    text not null,    appIdentifier     text not null,    dateCreated       real not null,    dateLastModified  real not null,    start             real not null,    end               real not null,    foreign key (parentObjectID) references CLSActivity(objectID) on delete cascade on update cascade)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSRange_objectID on CLSRange (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index CLSRange_parentObjectID on CLSRange (parentObjectID)", 0, 0, 0))
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

- (CLSRange)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;
  v8 = [recordCopy objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = [(CLSRange *)self initWithStart:v7 end:v9];

  if (v10)
  {
    [(CLSRange *)v10 _initCommonPropsWithRecord:recordCopy];
  }

  return v10;
}

- (void)populate:(id)populate
{
  populateCopy = populate;
  v19.receiver = self;
  v19.super_class = CLSRange;
  [(CLSRange *)&v19 populate:populateCopy];
  [(CLSRange *)self end];
  v5 = [NSNumber numberWithDouble:?];
  v6 = [populateCopy objectForKeyedSubscript:@"end"];
  if (v6 | v5)
  {
    v7 = v6;
    v8 = [populateCopy objectForKeyedSubscript:@"end"];
    v9 = v8;
    if (v8 && v5)
    {
      v10 = [populateCopy objectForKeyedSubscript:@"end"];
      v11 = [v10 isEqualToNumber:v5];

      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    [populateCopy setObject:v5 forKeyedSubscript:@"end"];
  }

LABEL_8:
  [(CLSRange *)self start];
  v12 = [NSNumber numberWithDouble:?];
  v13 = [populateCopy objectForKeyedSubscript:@"start"];
  if (v13 | v12)
  {
    v14 = v13;
    v15 = [populateCopy objectForKeyedSubscript:@"start"];
    v16 = v15;
    if (v15 && v12)
    {
      v17 = [populateCopy objectForKeyedSubscript:@"start"];
      v18 = [v17 isEqualToNumber:v12];

      if (v18)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    [populateCopy setObject:v12 forKeyedSubscript:@"start"];
  }

LABEL_15:
  [(CLSRange *)self updateParentReferencesForRecord:populateCopy];
}

- (id)generateInsightEventsWithDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  parentObjectID = [(CLSRange *)self parentObjectID];
  v8 = [databaseCopy select:v6 identity:parentObjectID];

  if (v8)
  {
    objectID = [(CLSRange *)self objectID];
    v10 = sub_10004BE2C(databaseCopy, v8, 205, objectID);

    objc_autoreleasePoolPop(v5);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          [v16 setRangeInfo:{self, v22}];
          parentObjectID2 = [(CLSRange *)self parentObjectID];
          [v16 setParentObjectID:parentObjectID2];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  else
  {
    CLSInitLog();
    v18 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v20 = v18;
      parentObjectID3 = [(CLSRange *)self parentObjectID];
      *buf = 138412290;
      v28 = parentObjectID3;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "CLSRange failed to find parent activity: %@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = &__NSArray0__struct;
  }

  return v11;
}

@end
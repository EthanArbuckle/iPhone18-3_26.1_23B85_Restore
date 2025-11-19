@interface CLSTimeInterval
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSTimeInterval)initWithCKRecord:(id)a3;
- (id)generateInsightEventsWithDatabase:(id)a3;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
@end

@implementation CLSTimeInterval

- (CLSTimeInterval)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CLSTimeInterval *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithRecord:v4];
    v7 = [v4 objectForKeyedSubscript:@"startTime"];
    [v6 setStartTime:v7];

    v8 = [v4 objectForKeyedSubscript:@"length"];
    [v8 doubleValue];
    [v6 setLength:?];
  }

  return v6;
}

- (void)populate:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = CLSTimeInterval;
  [(CLSTimeInterval *)&v22 populate:v5];
  v6 = [v5 objectForKeyedSubscript:@"startTime"];
  if (!v6)
  {
    v3 = [(CLSTimeInterval *)self startTime];
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  v7 = [v5 objectForKeyedSubscript:@"startTime"];
  if (!v7)
  {
LABEL_9:
    if (!v6)
    {
    }

    goto LABEL_12;
  }

  v8 = v7;
  v9 = [(CLSTimeInterval *)self startTime];
  if (!v9)
  {

    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v5 objectForKeyedSubscript:@"startTime"];
  v12 = [(CLSTimeInterval *)self startTime];
  v13 = [v11 isEqualToDate:v12];

  if (v6)
  {

    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = [(CLSTimeInterval *)self startTime];
    [v5 setObject:v14 forKeyedSubscript:@"startTime"];

    goto LABEL_13;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  [(CLSTimeInterval *)self length];
  v15 = [NSNumber numberWithDouble:?];
  v16 = [v5 objectForKeyedSubscript:@"length"];
  if (v16 | v15)
  {
    v17 = v16;
    v18 = [v5 objectForKeyedSubscript:@"length"];
    v19 = v18;
    if (v18 && v15)
    {
      v20 = [v5 objectForKeyedSubscript:@"length"];
      v21 = [v20 isEqualToNumber:v15];

      if (v21)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    [v5 setObject:v15 forKeyedSubscript:@"length"];
  }

LABEL_20:
  [(CLSTimeInterval *)self updateParentReferencesForRecord:v5];
}

- (id)generateInsightEventsWithDatabase:(id)a3
{
  v4 = a3;
  [(CLSTimeInterval *)self length];
  if (v5 < 1.0)
  {
LABEL_14:
    v12 = &__NSArray0__struct;
    goto LABEL_15;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_class();
  v8 = [(CLSTimeInterval *)self parentObjectID];
  v9 = [v4 select:v7 identity:v8];

  if (!v9)
  {
    CLSInitLog();
    v19 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v21 = v19;
      v22 = [(CLSTimeInterval *)self parentObjectID];
      *buf = 138412290;
      v29 = v22;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "CLSTimeInterval failed to find parent activity: %@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    goto LABEL_14;
  }

  v10 = [(CLSTimeInterval *)self objectID];
  v11 = sub_10004BE2C(v4, v9, 202, v10);

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
        v18 = [(CLSTimeInterval *)self parentObjectID];
        [v17 setParentObjectID:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

LABEL_15:

  return v12;
}

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSTimeInterval *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D6F0(v4, @"startTime");
    [v6 setStartTime:v8];

    v9 = sub_10016D778(v4, @"length");
    [v9 doubleValue];
    [v6 setLength:?];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLSTimeInterval;
  v4 = a3;
  [(CLSTimeInterval *)&v8 bindTo:v4];
  v5 = [(CLSTimeInterval *)self parentObjectID:v8.receiver];
  sub_1000982FC(v4, v5, @"parentObjectID");

  v6 = [(CLSTimeInterval *)self startTime];
  sub_1000982FC(v4, v6, @"startTime");

  [(CLSTimeInterval *)self length];
  v7 = [NSNumber numberWithDouble:?];
  sub_1000982FC(v4, v7, @"length");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(v7, @"create table CLSTimeInterval(   objectID          text not null,    parentObjectID    text not null,    appIdentifier     text not null,    dateCreated       real not null,    dateLastModified  real not null,    startTime         real not null,    length            real not null,    foreign key (parentObjectID) references CLSActivity(objectID) on delete cascade on update cascade)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSTimeInterval_objectID on CLSTimeInterval (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index CLSTimeInterval_parentObjectID on CLSTimeInterval (parentObjectID)", 0, 0, 0))
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
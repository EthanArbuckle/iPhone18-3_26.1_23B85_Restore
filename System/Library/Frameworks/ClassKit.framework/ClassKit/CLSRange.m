@interface CLSRange
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSRange)initWithCKRecord:(id)a3;
- (CLSRange)initWithDatabaseRow:(id)a3;
- (id)generateInsightEventsWithDatabase:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
@end

@implementation CLSRange

- (CLSRange)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = sub_10016D778(v4, @"start");
  [v5 doubleValue];
  v7 = v6;

  v8 = sub_10016D778(v4, @"end");
  [v8 doubleValue];
  v10 = v9;

  v11 = [(CLSRange *)self initWithStart:v7 end:v10];
  v12 = v11;
  if (v11)
  {
    [(CLSRange *)v11 _initCommonPropsWithDatabaseRow:v4];
    v13 = sub_10016D778(v4, @"parentObjectID");
    [(CLSRange *)v12 setParentObjectID:v13];
  }

  return v12;
}

- (void)bindTo:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLSRange;
  v4 = a3;
  [(CLSRange *)&v8 bindTo:v4];
  v5 = [(CLSRange *)self parentObjectID:v8.receiver];
  sub_1000982FC(v4, v5, @"parentObjectID");

  [(CLSRange *)self start];
  v6 = [NSNumber numberWithDouble:?];
  sub_1000982FC(v4, v6, @"start");

  [(CLSRange *)self end];
  v7 = [NSNumber numberWithDouble:?];
  sub_1000982FC(v4, v7, @"end");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(v7, @"create table CLSRange(   objectID          text not null,    parentObjectID    text not null,    appIdentifier     text not null,    dateCreated       real not null,    dateLastModified  real not null,    start             real not null,    end               real not null,    foreign key (parentObjectID) references CLSActivity(objectID) on delete cascade on update cascade)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSRange_objectID on CLSRange (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index CLSRange_parentObjectID on CLSRange (parentObjectID)", 0, 0, 0))
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

- (CLSRange)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;
  v8 = [v4 objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = [(CLSRange *)self initWithStart:v7 end:v9];

  if (v10)
  {
    [(CLSRange *)v10 _initCommonPropsWithRecord:v4];
  }

  return v10;
}

- (void)populate:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CLSRange;
  [(CLSRange *)&v19 populate:v4];
  [(CLSRange *)self end];
  v5 = [NSNumber numberWithDouble:?];
  v6 = [v4 objectForKeyedSubscript:@"end"];
  if (v6 | v5)
  {
    v7 = v6;
    v8 = [v4 objectForKeyedSubscript:@"end"];
    v9 = v8;
    if (v8 && v5)
    {
      v10 = [v4 objectForKeyedSubscript:@"end"];
      v11 = [v10 isEqualToNumber:v5];

      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    [v4 setObject:v5 forKeyedSubscript:@"end"];
  }

LABEL_8:
  [(CLSRange *)self start];
  v12 = [NSNumber numberWithDouble:?];
  v13 = [v4 objectForKeyedSubscript:@"start"];
  if (v13 | v12)
  {
    v14 = v13;
    v15 = [v4 objectForKeyedSubscript:@"start"];
    v16 = v15;
    if (v15 && v12)
    {
      v17 = [v4 objectForKeyedSubscript:@"start"];
      v18 = [v17 isEqualToNumber:v12];

      if (v18)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    [v4 setObject:v12 forKeyedSubscript:@"start"];
  }

LABEL_15:
  [(CLSRange *)self updateParentReferencesForRecord:v4];
}

- (id)generateInsightEventsWithDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = [(CLSRange *)self parentObjectID];
  v8 = [v4 select:v6 identity:v7];

  if (v8)
  {
    v9 = [(CLSRange *)self objectID];
    v10 = sub_10004BE2C(v4, v8, 205, v9);

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
          v17 = [(CLSRange *)self parentObjectID];
          [v16 setParentObjectID:v17];
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
      v21 = [(CLSRange *)self parentObjectID];
      *buf = 138412290;
      v28 = v21;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "CLSRange failed to find parent activity: %@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = &__NSArray0__struct;
  }

  return v11;
}

@end
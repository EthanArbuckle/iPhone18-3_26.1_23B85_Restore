@interface CLSScoreItem
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSScoreItem)initWithCKRecord:(id)a3;
- (CLSScoreItem)initWithDatabaseRow:(id)a3;
- (id)generateInsightEventsWithDatabase:(id)a3;
- (id)generateReportFromDataInDatabase:(id)a3;
- (void)_populateReportItem:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
@end

@implementation CLSScoreItem

- (id)generateInsightEventsWithDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = [(CLSScoreItem *)self parentObjectID];
  v8 = [v4 select:v6 identity:v7];

  if (v8)
  {
    v9 = [(CLSScoreItem *)self objectID];
    v10 = sub_10004BE2C(v4, v8, 201, v9);

    objc_autoreleasePoolPop(v5);
    v5 = objc_autoreleasePoolPush();
    v11 = [(CLSScoreItem *)self generateReportFromDataInDatabase:v4];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v10;
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
          [v17 setActivityItemInfo:{v11, v23}];
          v18 = [(CLSScoreItem *)self parentObjectID];
          [v17 setParentObjectID:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }
  }

  else
  {
    CLSInitLog();
    v19 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v21 = v19;
      v22 = [(CLSScoreItem *)self parentObjectID];
      *buf = 138412290;
      v29 = v22;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "CLSScoreItem failed to find parent activity: %@", buf, 0xCu);
    }

    v12 = &__NSArray0__struct;
  }

  objc_autoreleasePoolPop(v5);

  return v12;
}

- (CLSScoreItem)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = sub_10016D778(v4, @"identifier");
  v6 = sub_10016D778(v4, @"title");
  v7 = sub_10016D778(v4, @"score");
  [v7 doubleValue];
  v9 = v8;

  v10 = sub_10016D778(v4, @"maxScore");
  [v10 doubleValue];
  v12 = v11;

  v13 = [(CLSScoreItem *)self initWithIdentifier:v5 title:v6 score:v9 maxScore:v12];
  v14 = v13;
  if (v13)
  {
    [(CLSScoreItem *)v13 _initCommonPropsWithDatabaseRow:v4];
    v15 = sub_10016D778(v4, @"parentObjectID");
    [(CLSScoreItem *)v14 setParentObjectID:v15];
  }

  return v14;
}

- (void)bindTo:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLSScoreItem;
  v4 = a3;
  [(CLSScoreItem *)&v10 bindTo:v4];
  v5 = [(CLSScoreItem *)self parentObjectID:v10.receiver];
  sub_1000982FC(v4, v5, @"parentObjectID");

  v6 = [(CLSScoreItem *)self identifier];
  sub_1000982FC(v4, v6, @"identifier");

  v7 = [(CLSScoreItem *)self title];
  sub_1000982FC(v4, v7, @"title");

  [(CLSScoreItem *)self score];
  v8 = [NSNumber numberWithDouble:?];
  sub_1000982FC(v4, v8, @"score");

  [(CLSScoreItem *)self maxScore];
  v9 = [NSNumber numberWithDouble:?];
  sub_1000982FC(v4, v9, @"maxScore");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(v7, @"create table CLSScoreItem(   objectID           text not null,    parentObjectID     text not null,    appIdentifier      text not null,    dateCreated        real not null,    identifier         text not null,    dateLastModified   real not null,    title              text,    score              real,    maxScore           real,    foreign key(parentObjectID) references CLSActivity(objectID) on delete cascade on update cascade)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSScoreItem_objectID on CLSScoreItem (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index CLSScoreItem_parentObjectID on CLSScoreItem (parentObjectID)", 0, 0, 0))
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

- (CLSScoreItem)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  v6 = [v4 objectForKeyedSubscript:@"title"];
  v7 = [v4 objectForKeyedSubscript:@"score"];
  [v7 doubleValue];
  v9 = v8;
  v10 = [v4 objectForKeyedSubscript:@"maxScore"];
  [v10 doubleValue];
  v12 = [(CLSScoreItem *)self initWithIdentifier:v5 title:v6 score:v9 maxScore:v11];

  if (v12)
  {
    [(CLSScoreItem *)v12 _initCommonPropsWithRecord:v4];
    v13 = [v4 objectForKeyedSubscript:@"identifier"];
    [(CLSScoreItem *)v12 setIdentifier:v13];

    v14 = [v4 objectForKeyedSubscript:@"title"];
    [(CLSScoreItem *)v12 setTitle:v14];
  }

  return v12;
}

- (void)populate:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLSScoreItem;
  v4 = a3;
  [(CLSScoreItem *)&v9 populate:v4];
  v5 = [(CLSScoreItem *)self identifier:v9.receiver];
  [v4 setObject:v5 forKeyedSubscript:@"identifier"];

  v6 = [(CLSScoreItem *)self title];
  [v4 setObject:v6 forKeyedSubscript:@"title"];

  [(CLSScoreItem *)self score];
  v7 = [NSNumber numberWithDouble:?];
  [v4 setObject:v7 forKeyedSubscript:@"score"];

  [(CLSScoreItem *)self maxScore];
  v8 = [NSNumber numberWithDouble:?];
  [v4 setObject:v8 forKeyedSubscript:@"maxScore"];

  [(CLSScoreItem *)self updateParentReferencesForRecord:v4];
}

- (id)generateReportFromDataInDatabase:(id)a3
{
  v4 = objc_opt_new();
  [(CLSScoreItem *)self _populateReportItem:v4];

  return v4;
}

- (void)_populateReportItem:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLSScoreItem;
  v4 = a3;
  [(CLSScoreItem *)&v5 _populateReportItem:v4];
  [(CLSScoreItem *)self score:v5.receiver];
  [v4 setValue:?];
  [(CLSScoreItem *)self maxScore];
  [v4 setMaxValue:?];
}

@end
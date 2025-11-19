@interface CLSQuantityItem
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSQuantityItem)initWithCKRecord:(id)a3;
- (CLSQuantityItem)initWithDatabaseRow:(id)a3;
- (id)generateInsightEventsWithDatabase:(id)a3;
- (id)generateReportFromDataInDatabase:(id)a3;
- (void)_populateReportItem:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
@end

@implementation CLSQuantityItem

- (CLSQuantityItem)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  v6 = [v4 objectForKeyedSubscript:@"title"];
  v7 = [(CLSQuantityItem *)self initWithIdentifier:v5 title:v6];

  if (v7)
  {
    [(CLSQuantityItem *)v7 _initCommonPropsWithRecord:v4];
    v8 = [v4 objectForKeyedSubscript:@"quantity"];
    [v8 doubleValue];
    [(CLSQuantityItem *)v7 setQuantity:?];
  }

  return v7;
}

- (void)populate:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLSQuantityItem;
  v4 = a3;
  [(CLSQuantityItem *)&v8 populate:v4];
  v5 = [(CLSQuantityItem *)self identifier:v8.receiver];
  [v4 setObject:v5 forKeyedSubscript:@"identifier"];

  v6 = [(CLSQuantityItem *)self title];
  [v4 setObject:v6 forKeyedSubscript:@"title"];

  [(CLSQuantityItem *)self quantity];
  v7 = [NSNumber numberWithDouble:?];
  [v4 setObject:v7 forKeyedSubscript:@"quantity"];

  [(CLSQuantityItem *)self updateParentReferencesForRecord:v4];
}

- (id)generateInsightEventsWithDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = [(CLSQuantityItem *)self parentObjectID];
  v8 = [v4 select:v6 identity:v7];

  if (v8)
  {
    v9 = [(CLSQuantityItem *)self objectID];
    v10 = sub_10004BE2C(v4, v8, 204, v9);

    objc_autoreleasePoolPop(v5);
    v5 = objc_autoreleasePoolPush();
    v11 = [(CLSQuantityItem *)self generateReportFromDataInDatabase:v4];
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
          v18 = [(CLSQuantityItem *)self parentObjectID];
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
      v22 = [(CLSQuantityItem *)self parentObjectID];
      *buf = 138412290;
      v29 = v22;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "CLSQuantityItem failed to find parent activity: %@", buf, 0xCu);
    }

    v12 = &__NSArray0__struct;
  }

  objc_autoreleasePoolPop(v5);

  return v12;
}

- (CLSQuantityItem)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = sub_10016D778(v4, @"identifier");
  v6 = sub_10016D778(v4, @"title");
  v7 = [(CLSQuantityItem *)self initWithIdentifier:v5 title:v6];
  v8 = v7;
  if (v7)
  {
    [(CLSQuantityItem *)v7 _initCommonPropsWithDatabaseRow:v4];
    v9 = sub_10016D778(v4, @"parentObjectID");
    [(CLSQuantityItem *)v8 setParentObjectID:v9];

    v10 = sub_10016D778(v4, @"quantity");
    [v10 doubleValue];
    [(CLSQuantityItem *)v8 setQuantity:?];
  }

  return v8;
}

- (void)bindTo:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLSQuantityItem;
  v4 = a3;
  [(CLSQuantityItem *)&v9 bindTo:v4];
  v5 = [(CLSQuantityItem *)self parentObjectID:v9.receiver];
  sub_1000982FC(v4, v5, @"parentObjectID");

  v6 = [(CLSQuantityItem *)self identifier];
  sub_1000982FC(v4, v6, @"identifier");

  v7 = [(CLSQuantityItem *)self title];
  sub_1000982FC(v4, v7, @"title");

  [(CLSQuantityItem *)self quantity];
  v8 = [NSNumber numberWithDouble:?];
  sub_1000982FC(v4, v8, @"quantity");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(v7, @"create table CLSQuantityItem(   objectID          text not null,    parentObjectID    text not null,    appIdentifier     text not null,    dateCreated       real not null,    dateLastModified  real not null,    identifier        text not null,    quantity          real,    title             text,    foreign key(parentObjectID) references CLSActivity(objectID) on delete cascade on update cascade)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSQuantityItem_objectID on CLSQuantityItem (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index CLSQuantityItem_parentObjectID on CLSQuantityItem (parentObjectID)", 0, 0, 0))
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

- (id)generateReportFromDataInDatabase:(id)a3
{
  v4 = objc_opt_new();
  [(CLSQuantityItem *)self _populateReportItem:v4];

  return v4;
}

- (void)_populateReportItem:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLSQuantityItem;
  v4 = a3;
  [(CLSQuantityItem *)&v5 _populateReportItem:v4];
  [(CLSQuantityItem *)self quantity:v5.receiver];
  [v4 setQuantity:?];
}

@end
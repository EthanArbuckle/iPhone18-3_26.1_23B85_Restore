@interface CLSQuantityItem
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSQuantityItem)initWithCKRecord:(id)record;
- (CLSQuantityItem)initWithDatabaseRow:(id)row;
- (id)generateInsightEventsWithDatabase:(id)database;
- (id)generateReportFromDataInDatabase:(id)database;
- (void)_populateReportItem:(id)item;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
@end

@implementation CLSQuantityItem

- (CLSQuantityItem)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"identifier"];
  v6 = [recordCopy objectForKeyedSubscript:@"title"];
  v7 = [(CLSQuantityItem *)self initWithIdentifier:v5 title:v6];

  if (v7)
  {
    [(CLSQuantityItem *)v7 _initCommonPropsWithRecord:recordCopy];
    v8 = [recordCopy objectForKeyedSubscript:@"quantity"];
    [v8 doubleValue];
    [(CLSQuantityItem *)v7 setQuantity:?];
  }

  return v7;
}

- (void)populate:(id)populate
{
  v8.receiver = self;
  v8.super_class = CLSQuantityItem;
  populateCopy = populate;
  [(CLSQuantityItem *)&v8 populate:populateCopy];
  v5 = [(CLSQuantityItem *)self identifier:v8.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"identifier"];

  title = [(CLSQuantityItem *)self title];
  [populateCopy setObject:title forKeyedSubscript:@"title"];

  [(CLSQuantityItem *)self quantity];
  v7 = [NSNumber numberWithDouble:?];
  [populateCopy setObject:v7 forKeyedSubscript:@"quantity"];

  [(CLSQuantityItem *)self updateParentReferencesForRecord:populateCopy];
}

- (id)generateInsightEventsWithDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  parentObjectID = [(CLSQuantityItem *)self parentObjectID];
  v8 = [databaseCopy select:v6 identity:parentObjectID];

  if (v8)
  {
    objectID = [(CLSQuantityItem *)self objectID];
    v10 = sub_10004BE2C(databaseCopy, v8, 204, objectID);

    objc_autoreleasePoolPop(v5);
    v5 = objc_autoreleasePoolPush();
    v11 = [(CLSQuantityItem *)self generateReportFromDataInDatabase:databaseCopy];
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
          parentObjectID2 = [(CLSQuantityItem *)self parentObjectID];
          [v17 setParentObjectID:parentObjectID2];
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
      parentObjectID3 = [(CLSQuantityItem *)self parentObjectID];
      *buf = 138412290;
      v29 = parentObjectID3;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "CLSQuantityItem failed to find parent activity: %@", buf, 0xCu);
    }

    v12 = &__NSArray0__struct;
  }

  objc_autoreleasePoolPop(v5);

  return v12;
}

- (CLSQuantityItem)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"identifier");
  v6 = sub_10016D778(rowCopy, @"title");
  v7 = [(CLSQuantityItem *)self initWithIdentifier:v5 title:v6];
  v8 = v7;
  if (v7)
  {
    [(CLSQuantityItem *)v7 _initCommonPropsWithDatabaseRow:rowCopy];
    v9 = sub_10016D778(rowCopy, @"parentObjectID");
    [(CLSQuantityItem *)v8 setParentObjectID:v9];

    v10 = sub_10016D778(rowCopy, @"quantity");
    [v10 doubleValue];
    [(CLSQuantityItem *)v8 setQuantity:?];
  }

  return v8;
}

- (void)bindTo:(id)to
{
  v9.receiver = self;
  v9.super_class = CLSQuantityItem;
  toCopy = to;
  [(CLSQuantityItem *)&v9 bindTo:toCopy];
  v5 = [(CLSQuantityItem *)self parentObjectID:v9.receiver];
  sub_1000982FC(toCopy, v5, @"parentObjectID");

  identifier = [(CLSQuantityItem *)self identifier];
  sub_1000982FC(toCopy, identifier, @"identifier");

  title = [(CLSQuantityItem *)self title];
  sub_1000982FC(toCopy, title, @"title");

  [(CLSQuantityItem *)self quantity];
  v8 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v8, @"quantity");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(databaseCopy, @"create table CLSQuantityItem(   objectID          text not null,    parentObjectID    text not null,    appIdentifier     text not null,    dateCreated       real not null,    dateLastModified  real not null,    identifier        text not null,    quantity          real,    title             text,    foreign key(parentObjectID) references CLSActivity(objectID) on delete cascade on update cascade)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSQuantityItem_objectID on CLSQuantityItem (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index CLSQuantityItem_parentObjectID on CLSQuantityItem (parentObjectID)", 0, 0, 0))
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

- (id)generateReportFromDataInDatabase:(id)database
{
  v4 = objc_opt_new();
  [(CLSQuantityItem *)self _populateReportItem:v4];

  return v4;
}

- (void)_populateReportItem:(id)item
{
  v5.receiver = self;
  v5.super_class = CLSQuantityItem;
  itemCopy = item;
  [(CLSQuantityItem *)&v5 _populateReportItem:itemCopy];
  [(CLSQuantityItem *)self quantity:v5.receiver];
  [itemCopy setQuantity:?];
}

@end
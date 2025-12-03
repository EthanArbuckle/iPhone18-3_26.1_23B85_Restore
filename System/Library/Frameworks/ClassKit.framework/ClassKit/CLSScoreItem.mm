@interface CLSScoreItem
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSScoreItem)initWithCKRecord:(id)record;
- (CLSScoreItem)initWithDatabaseRow:(id)row;
- (id)generateInsightEventsWithDatabase:(id)database;
- (id)generateReportFromDataInDatabase:(id)database;
- (void)_populateReportItem:(id)item;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
@end

@implementation CLSScoreItem

- (id)generateInsightEventsWithDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  parentObjectID = [(CLSScoreItem *)self parentObjectID];
  v8 = [databaseCopy select:v6 identity:parentObjectID];

  if (v8)
  {
    objectID = [(CLSScoreItem *)self objectID];
    v10 = sub_10004BE2C(databaseCopy, v8, 201, objectID);

    objc_autoreleasePoolPop(v5);
    v5 = objc_autoreleasePoolPush();
    v11 = [(CLSScoreItem *)self generateReportFromDataInDatabase:databaseCopy];
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
          parentObjectID2 = [(CLSScoreItem *)self parentObjectID];
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
      parentObjectID3 = [(CLSScoreItem *)self parentObjectID];
      *buf = 138412290;
      v29 = parentObjectID3;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "CLSScoreItem failed to find parent activity: %@", buf, 0xCu);
    }

    v12 = &__NSArray0__struct;
  }

  objc_autoreleasePoolPop(v5);

  return v12;
}

- (CLSScoreItem)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"identifier");
  v6 = sub_10016D778(rowCopy, @"title");
  v7 = sub_10016D778(rowCopy, @"score");
  [v7 doubleValue];
  v9 = v8;

  v10 = sub_10016D778(rowCopy, @"maxScore");
  [v10 doubleValue];
  v12 = v11;

  v13 = [(CLSScoreItem *)self initWithIdentifier:v5 title:v6 score:v9 maxScore:v12];
  v14 = v13;
  if (v13)
  {
    [(CLSScoreItem *)v13 _initCommonPropsWithDatabaseRow:rowCopy];
    v15 = sub_10016D778(rowCopy, @"parentObjectID");
    [(CLSScoreItem *)v14 setParentObjectID:v15];
  }

  return v14;
}

- (void)bindTo:(id)to
{
  v10.receiver = self;
  v10.super_class = CLSScoreItem;
  toCopy = to;
  [(CLSScoreItem *)&v10 bindTo:toCopy];
  v5 = [(CLSScoreItem *)self parentObjectID:v10.receiver];
  sub_1000982FC(toCopy, v5, @"parentObjectID");

  identifier = [(CLSScoreItem *)self identifier];
  sub_1000982FC(toCopy, identifier, @"identifier");

  title = [(CLSScoreItem *)self title];
  sub_1000982FC(toCopy, title, @"title");

  [(CLSScoreItem *)self score];
  v8 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v8, @"score");

  [(CLSScoreItem *)self maxScore];
  v9 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v9, @"maxScore");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(databaseCopy, @"create table CLSScoreItem(   objectID           text not null,    parentObjectID     text not null,    appIdentifier      text not null,    dateCreated        real not null,    identifier         text not null,    dateLastModified   real not null,    title              text,    score              real,    maxScore           real,    foreign key(parentObjectID) references CLSActivity(objectID) on delete cascade on update cascade)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSScoreItem_objectID on CLSScoreItem (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index CLSScoreItem_parentObjectID on CLSScoreItem (parentObjectID)", 0, 0, 0))
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

- (CLSScoreItem)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"identifier"];
  v6 = [recordCopy objectForKeyedSubscript:@"title"];
  v7 = [recordCopy objectForKeyedSubscript:@"score"];
  [v7 doubleValue];
  v9 = v8;
  v10 = [recordCopy objectForKeyedSubscript:@"maxScore"];
  [v10 doubleValue];
  v12 = [(CLSScoreItem *)self initWithIdentifier:v5 title:v6 score:v9 maxScore:v11];

  if (v12)
  {
    [(CLSScoreItem *)v12 _initCommonPropsWithRecord:recordCopy];
    v13 = [recordCopy objectForKeyedSubscript:@"identifier"];
    [(CLSScoreItem *)v12 setIdentifier:v13];

    v14 = [recordCopy objectForKeyedSubscript:@"title"];
    [(CLSScoreItem *)v12 setTitle:v14];
  }

  return v12;
}

- (void)populate:(id)populate
{
  v9.receiver = self;
  v9.super_class = CLSScoreItem;
  populateCopy = populate;
  [(CLSScoreItem *)&v9 populate:populateCopy];
  v5 = [(CLSScoreItem *)self identifier:v9.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"identifier"];

  title = [(CLSScoreItem *)self title];
  [populateCopy setObject:title forKeyedSubscript:@"title"];

  [(CLSScoreItem *)self score];
  v7 = [NSNumber numberWithDouble:?];
  [populateCopy setObject:v7 forKeyedSubscript:@"score"];

  [(CLSScoreItem *)self maxScore];
  v8 = [NSNumber numberWithDouble:?];
  [populateCopy setObject:v8 forKeyedSubscript:@"maxScore"];

  [(CLSScoreItem *)self updateParentReferencesForRecord:populateCopy];
}

- (id)generateReportFromDataInDatabase:(id)database
{
  v4 = objc_opt_new();
  [(CLSScoreItem *)self _populateReportItem:v4];

  return v4;
}

- (void)_populateReportItem:(id)item
{
  v5.receiver = self;
  v5.super_class = CLSScoreItem;
  itemCopy = item;
  [(CLSScoreItem *)&v5 _populateReportItem:itemCopy];
  [(CLSScoreItem *)self score:v5.receiver];
  [itemCopy setValue:?];
  [(CLSScoreItem *)self maxScore];
  [itemCopy setMaxValue:?];
}

@end
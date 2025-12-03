@interface CLSBinaryItem
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSBinaryItem)initWithCKRecord:(id)record;
- (CLSBinaryItem)initWithDatabaseRow:(id)row;
- (id)generateInsightEventsWithDatabase:(id)database;
- (id)generateReportFromDataInDatabase:(id)database;
- (void)_populateReportItem:(id)item;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
@end

@implementation CLSBinaryItem

- (id)generateInsightEventsWithDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  parentObjectID = [(CLSBinaryItem *)self parentObjectID];
  v8 = [databaseCopy select:v6 identity:parentObjectID];

  if (v8)
  {
    objectID = [(CLSBinaryItem *)self objectID];
    v10 = sub_10004BE2C(databaseCopy, v8, 203, objectID);

    objc_autoreleasePoolPop(v5);
    v5 = objc_autoreleasePoolPush();
    v11 = [(CLSBinaryItem *)self generateReportFromDataInDatabase:databaseCopy];
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
          parentObjectID2 = [(CLSBinaryItem *)self parentObjectID];
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
      parentObjectID3 = [(CLSBinaryItem *)self parentObjectID];
      *buf = 138412290;
      v29 = parentObjectID3;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "CLSBinaryItem failed to find parent activity: %@", buf, 0xCu);
    }

    v12 = &__NSArray0__struct;
  }

  objc_autoreleasePoolPop(v5);

  return v12;
}

- (CLSBinaryItem)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"identifier");
  v6 = sub_10016D778(rowCopy, @"title");
  v7 = sub_10016D778(rowCopy, @"valueType");
  v8 = -[CLSBinaryItem initWithIdentifier:title:type:](self, "initWithIdentifier:title:type:", v5, v6, [v7 integerValue]);

  if (v8)
  {
    [(CLSBinaryItem *)v8 _initCommonPropsWithDatabaseRow:rowCopy];
    v9 = sub_10016D778(rowCopy, @"parentObjectID");
    [(CLSBinaryItem *)v8 setParentObjectID:v9];

    v10 = sub_10016D778(rowCopy, @"value");
    -[CLSBinaryItem setValue:](v8, "setValue:", [v10 BOOLValue]);
  }

  return v8;
}

- (void)bindTo:(id)to
{
  v10.receiver = self;
  v10.super_class = CLSBinaryItem;
  toCopy = to;
  [(CLSBinaryItem *)&v10 bindTo:toCopy];
  v5 = [(CLSBinaryItem *)self parentObjectID:v10.receiver];
  sub_1000982FC(toCopy, v5, @"parentObjectID");

  identifier = [(CLSBinaryItem *)self identifier];
  sub_1000982FC(toCopy, identifier, @"identifier");

  title = [(CLSBinaryItem *)self title];
  sub_1000982FC(toCopy, title, @"title");

  v8 = [NSNumber numberWithBool:[(CLSBinaryItem *)self value]];
  sub_1000982FC(toCopy, v8, @"value");

  v9 = [NSNumber numberWithInteger:[(CLSBinaryItem *)self valueType]];
  sub_1000982FC(toCopy, v9, @"valueType");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(databaseCopy, @"create table CLSBinaryItem(   objectID           text not null,    parentObjectID     text not null,    appIdentifier      text not null,    dateCreated        real not null,    dateLastModified  real not null,    identifier         text not null,    title              text,    valueType          integer,    value              integer,    foreign key(parentObjectID) references CLSActivity(objectID) on delete cascade on update cascade)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSBinaryItem_objectID on CLSBinaryItem (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index CLSBinaryItem_parentObjectID on CLSBinaryItem (parentObjectID)", 0, 0, 0))
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

- (CLSBinaryItem)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"identifier"];
  v6 = [recordCopy objectForKeyedSubscript:@"title"];
  v7 = [(CLSBinaryItem *)self initWithIdentifier:v5 title:v6];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  [(CLSBinaryItem *)v7 _initCommonPropsWithRecord:recordCopy];
  v9 = [recordCopy objectForKeyedSubscript:@"identifier"];
  [(CLSBinaryItem *)v8 setIdentifier:v9];

  v10 = [recordCopy objectForKeyedSubscript:@"title"];
  [(CLSBinaryItem *)v8 setTitle:v10];

  v11 = [recordCopy objectForKeyedSubscript:@"valueType"];
  if (v11)
  {
    [(CLSBinaryItem *)v8 setValueType:CLSBinaryValueTypeFromString()];
    v12 = [recordCopy objectForKeyedSubscript:@"value"];
    -[CLSBinaryItem setValue:](v8, "setValue:", [v12 BOOLValue]);

LABEL_4:
    v11 = v8;
  }

  return v11;
}

- (void)populate:(id)populate
{
  v9.receiver = self;
  v9.super_class = CLSBinaryItem;
  populateCopy = populate;
  [(CLSBinaryItem *)&v9 populate:populateCopy];
  v5 = [(CLSBinaryItem *)self identifier:v9.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"identifier"];

  title = [(CLSBinaryItem *)self title];
  [populateCopy setObject:title forKeyedSubscript:@"title"];

  [(CLSBinaryItem *)self valueType];
  v7 = NSStringFromBinaryValueType();
  [populateCopy setObject:v7 forKeyedSubscript:@"valueType"];

  v8 = [NSNumber numberWithBool:[(CLSBinaryItem *)self value]];
  [populateCopy setObject:v8 forKeyedSubscript:@"value"];

  [(CLSBinaryItem *)self updateParentReferencesForRecord:populateCopy];
}

- (id)generateReportFromDataInDatabase:(id)database
{
  v4 = objc_opt_new();
  [(CLSBinaryItem *)self _populateReportItem:v4];

  return v4;
}

- (void)_populateReportItem:(id)item
{
  v5.receiver = self;
  v5.super_class = CLSBinaryItem;
  itemCopy = item;
  [(CLSBinaryItem *)&v5 _populateReportItem:itemCopy];
  [itemCopy setValue:{-[CLSBinaryItem value](self, "value", v5.receiver, v5.super_class)}];
  [itemCopy setValueType:{-[CLSBinaryItem valueType](self, "valueType")}];
}

@end
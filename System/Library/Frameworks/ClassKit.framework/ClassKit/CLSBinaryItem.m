@interface CLSBinaryItem
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSBinaryItem)initWithCKRecord:(id)a3;
- (CLSBinaryItem)initWithDatabaseRow:(id)a3;
- (id)generateInsightEventsWithDatabase:(id)a3;
- (id)generateReportFromDataInDatabase:(id)a3;
- (void)_populateReportItem:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
@end

@implementation CLSBinaryItem

- (id)generateInsightEventsWithDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = [(CLSBinaryItem *)self parentObjectID];
  v8 = [v4 select:v6 identity:v7];

  if (v8)
  {
    v9 = [(CLSBinaryItem *)self objectID];
    v10 = sub_10004BE2C(v4, v8, 203, v9);

    objc_autoreleasePoolPop(v5);
    v5 = objc_autoreleasePoolPush();
    v11 = [(CLSBinaryItem *)self generateReportFromDataInDatabase:v4];
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
          v18 = [(CLSBinaryItem *)self parentObjectID];
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
      v22 = [(CLSBinaryItem *)self parentObjectID];
      *buf = 138412290;
      v29 = v22;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "CLSBinaryItem failed to find parent activity: %@", buf, 0xCu);
    }

    v12 = &__NSArray0__struct;
  }

  objc_autoreleasePoolPop(v5);

  return v12;
}

- (CLSBinaryItem)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = sub_10016D778(v4, @"identifier");
  v6 = sub_10016D778(v4, @"title");
  v7 = sub_10016D778(v4, @"valueType");
  v8 = -[CLSBinaryItem initWithIdentifier:title:type:](self, "initWithIdentifier:title:type:", v5, v6, [v7 integerValue]);

  if (v8)
  {
    [(CLSBinaryItem *)v8 _initCommonPropsWithDatabaseRow:v4];
    v9 = sub_10016D778(v4, @"parentObjectID");
    [(CLSBinaryItem *)v8 setParentObjectID:v9];

    v10 = sub_10016D778(v4, @"value");
    -[CLSBinaryItem setValue:](v8, "setValue:", [v10 BOOLValue]);
  }

  return v8;
}

- (void)bindTo:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLSBinaryItem;
  v4 = a3;
  [(CLSBinaryItem *)&v10 bindTo:v4];
  v5 = [(CLSBinaryItem *)self parentObjectID:v10.receiver];
  sub_1000982FC(v4, v5, @"parentObjectID");

  v6 = [(CLSBinaryItem *)self identifier];
  sub_1000982FC(v4, v6, @"identifier");

  v7 = [(CLSBinaryItem *)self title];
  sub_1000982FC(v4, v7, @"title");

  v8 = [NSNumber numberWithBool:[(CLSBinaryItem *)self value]];
  sub_1000982FC(v4, v8, @"value");

  v9 = [NSNumber numberWithInteger:[(CLSBinaryItem *)self valueType]];
  sub_1000982FC(v4, v9, @"valueType");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(v7, @"create table CLSBinaryItem(   objectID           text not null,    parentObjectID     text not null,    appIdentifier      text not null,    dateCreated        real not null,    dateLastModified  real not null,    identifier         text not null,    title              text,    valueType          integer,    value              integer,    foreign key(parentObjectID) references CLSActivity(objectID) on delete cascade on update cascade)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSBinaryItem_objectID on CLSBinaryItem (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index CLSBinaryItem_parentObjectID on CLSBinaryItem (parentObjectID)", 0, 0, 0))
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

- (CLSBinaryItem)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  v6 = [v4 objectForKeyedSubscript:@"title"];
  v7 = [(CLSBinaryItem *)self initWithIdentifier:v5 title:v6];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  [(CLSBinaryItem *)v7 _initCommonPropsWithRecord:v4];
  v9 = [v4 objectForKeyedSubscript:@"identifier"];
  [(CLSBinaryItem *)v8 setIdentifier:v9];

  v10 = [v4 objectForKeyedSubscript:@"title"];
  [(CLSBinaryItem *)v8 setTitle:v10];

  v11 = [v4 objectForKeyedSubscript:@"valueType"];
  if (v11)
  {
    [(CLSBinaryItem *)v8 setValueType:CLSBinaryValueTypeFromString()];
    v12 = [v4 objectForKeyedSubscript:@"value"];
    -[CLSBinaryItem setValue:](v8, "setValue:", [v12 BOOLValue]);

LABEL_4:
    v11 = v8;
  }

  return v11;
}

- (void)populate:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLSBinaryItem;
  v4 = a3;
  [(CLSBinaryItem *)&v9 populate:v4];
  v5 = [(CLSBinaryItem *)self identifier:v9.receiver];
  [v4 setObject:v5 forKeyedSubscript:@"identifier"];

  v6 = [(CLSBinaryItem *)self title];
  [v4 setObject:v6 forKeyedSubscript:@"title"];

  [(CLSBinaryItem *)self valueType];
  v7 = NSStringFromBinaryValueType();
  [v4 setObject:v7 forKeyedSubscript:@"valueType"];

  v8 = [NSNumber numberWithBool:[(CLSBinaryItem *)self value]];
  [v4 setObject:v8 forKeyedSubscript:@"value"];

  [(CLSBinaryItem *)self updateParentReferencesForRecord:v4];
}

- (id)generateReportFromDataInDatabase:(id)a3
{
  v4 = objc_opt_new();
  [(CLSBinaryItem *)self _populateReportItem:v4];

  return v4;
}

- (void)_populateReportItem:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLSBinaryItem;
  v4 = a3;
  [(CLSBinaryItem *)&v5 _populateReportItem:v4];
  [v4 setValue:{-[CLSBinaryItem value](self, "value", v5.receiver, v5.super_class)}];
  [v4 setValueType:{-[CLSBinaryItem valueType](self, "valueType")}];
}

@end
@interface CLSCollection
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
+ (void)endpointServer:(id)a3 willQueryForObjectWithPredicate:(id)a4;
- (CLSCollection)initWithCKRecord:(id)a3;
- (CLSCollection)initWithDatabaseRow:(id)a3;
- (NSArray)immutableColumnNames;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSCollection

+ (void)endpointServer:(id)a3 willQueryForObjectWithPredicate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    goto LABEL_7;
  }

  CLSInitLog();
  v7 = CLSLogCollection;
  if (os_log_type_enabled(CLSLogCollection, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412290;
    v21 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "CLSCollection Query predicate: %@", &v20, 0xCu);
  }

  v8 = [v6 pd_keypathValueMap];
  v9 = [v8 objectForKey:@"type"];
  if (!v9 || ([NSNumber numberWithInteger:3], v10 = objc_claimAutoreleasedReturnValue(), v10, v9 != v10))
  {

LABEL_7:
    v8 = [v5 database];
    v9 = [v5 daemon];
    v11 = [[PDCollectionSearchOperation alloc] initForCollectionsWithDatabase:v8];
    v12 = [v5 client];
    v13 = sub_1000B2528(v12);
    [v11 setSourceApplicationBundleIdentifier:v13];

    v14 = [[PDCollectionSearchOperation alloc] initForCollectionItemsWithDatabase:v8];
    v15 = [v5 client];
    v16 = sub_1000B2528(v15);
    [v14 setSourceApplicationBundleIdentifier:v16];

    [v14 addDependency:v11];
    v17 = [v9 operationsManager];
    sub_100123A84(v17, v11);

    v18 = [v9 operationsManager];
    sub_100123A84(v18, v14);

    goto LABEL_8;
  }

  CLSInitLog();
  v19 = CLSLogCollection;
  if (os_log_type_enabled(CLSLogCollection, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v20) = 0;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "CLSCollection Predicate specifies type=Tag.  Not querying endpoint", &v20, 2u);
  }

LABEL_8:
}

- (void)bindTo:(id)a3
{
  v12.receiver = self;
  v12.super_class = CLSCollection;
  v4 = a3;
  [(CLSCollection *)&v12 bindTo:v4];
  v13 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v13 count:1, v12.receiver, v12.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSCollection *)self name];
  sub_1000982FC(v4, v6, @"name");

  v7 = [NSNumber numberWithInteger:[(CLSCollection *)self type]];
  sub_1000982FC(v4, v7, @"type");

  v8 = [(CLSCollection *)self location];
  sub_1000982FC(v4, v8, @"location");

  v9 = [(CLSCollection *)self iconID];
  sub_1000982FC(v4, v9, @"iconID");

  v10 = [(CLSCollection *)self colorName];
  sub_1000982FC(v4, v10, @"colorName");

  v11 = [(CLSCollection *)self dateClassCreated];
  sub_1000982FC(v4, v11, @"dateClassCreated");
}

- (CLSCollection)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSCollection *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"location");
    [v6 setLocation:v7];

    v8 = sub_10016D778(v4, @"name");
    [v6 setName:v8];

    v9 = sub_10016D778(v4, @"type");
    [v6 setType:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(v4, @"iconID");
    [v6 setIconID:v10];

    v11 = sub_10016D778(v4, @"colorName");
    [v6 setColorName:v11];

    v12 = sub_10016D6F0(v4, @"dateClassCreated");
    [v6 setDateClassCreated:v12];

    v13 = [v6 type] == 2 || objc_msgSend(v6, "type") == 5;
    [v6 setEnforceImmutability:v13];
  }

  return v6;
}

- (NSArray)immutableColumnNames
{
  v4[0] = @"name";
  v4[1] = @"type";
  v4[2] = @"iconID";
  v4[3] = @"location";
  v4[4] = @"colorName";
  v4[5] = @"dateClassCreated";
  v2 = [NSArray arrayWithObjects:v4 count:6];

  return v2;
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  switch(a3)
  {
    case 2uLL:
LABEL_7:
      if (sub_1000B9298(v8, @"create table CLSCollection_copy (\n    objectID           text not null,\n    name               text not null,\n    type               integer,\n    dateCreated        real not null,\n    dateLastModified   real not null,\n    location           text not null,\n    iconID             text,\n    colorName          text,\n    dateClassCreated   real\n)", 0, 0, 0) && sub_1000B9298(v8, @"insert into CLSCollection_copy (objectID, name, type, dateCreated, dateLastModified, location, iconID, colorName, dateClassCreated) select objectID, name, type, dateCreated, dateLastModified, location, iconID, colorName, dateClassCreated from CLSCollection", 0, 0, 0) && sub_1000B9298(v8, @"drop table CLSCollection", 0, 0, 0) && sub_1000B9298(v8, @"alter table CLSCollection_copy rename to CLSCollection", 0, 0, 0) && sub_1000B9298(v8, @"create unique index if not exists CLSCollection_objectID on CLSCollection (objectID)", 0, 0, 0))
      {
        a3 = 3;
        break;
      }

LABEL_14:
      v9 = 0;
      goto LABEL_15;
    case 1uLL:
LABEL_6:
      if (!sub_1000B9298(v8, @"alter table CLSCollection add column dateClassCreated real", 0, 0, 0))
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    case 0uLL:
      if (!sub_1000B9298(v7, @"create table CLSCollection(   objectID           text not null,    name               text not null,    type               integer,    dateCreated        real not null,    dateLastModified   real not null,    location           text not null,    appIdentifier      text not null,    iconID             text,    colorName          text)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSCollection_objectID on CLSCollection (objectID)", 0, 0, 0))
      {
        goto LABEL_14;
      }

      goto LABEL_6;
  }

  *a4 = a3;
  v9 = 1;
LABEL_15:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSCollection *)self objectID];
  if ([(CLSCollection *)self type]== 2 || [(CLSCollection *)self type]== 5)
  {
    v7 = v5;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
  }
}

- (CLSCollection)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CLSCollection *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithRecord:v4];
    v7 = [v4 objectForKeyedSubscript:@"name"];
    [v6 setName:v7];

    v8 = [v4 objectForKeyedSubscript:@"type"];
    [v6 setType:CLSCollectionTypeFromString()];

    v9 = [v4 objectForKeyedSubscript:@"colorName"];
    [v6 setColorName:v9];

    v10 = [v4 objectForKeyedSubscript:@"iconID"];
    [v6 setIconID:v10];

    v11 = [v4 objectForKeyedSubscript:@"location"];
    [v6 setLocation:v11];
  }

  return v6;
}

- (void)populate:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLSCollection;
  v4 = a3;
  [(CLSCollection *)&v10 populate:v4];
  v5 = [(CLSCollection *)self name:v10.receiver];
  [v4 setObject:v5 forKeyedSubscript:@"name"];

  [(CLSCollection *)self type];
  v6 = NSStringFromCollectionType();
  [v4 setObject:v6 forKeyedSubscript:@"type"];

  v7 = [(CLSCollection *)self colorName];
  [v4 setObject:v7 forKeyedSubscript:@"colorName"];

  v8 = [(CLSCollection *)self iconID];
  [v4 setObject:v8 forKeyedSubscript:@"iconID"];

  v9 = [(CLSCollection *)self location];
  [v4 setObject:v9 forKeyedSubscript:@"location"];

  [(CLSCollection *)self updateParentReferencesForRecord:v4];
}

@end
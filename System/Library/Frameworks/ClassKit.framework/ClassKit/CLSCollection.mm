@interface CLSCollection
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
+ (void)endpointServer:(id)server willQueryForObjectWithPredicate:(id)predicate;
- (CLSCollection)initWithCKRecord:(id)record;
- (CLSCollection)initWithDatabaseRow:(id)row;
- (NSArray)immutableColumnNames;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSCollection

+ (void)endpointServer:(id)server willQueryForObjectWithPredicate:(id)predicate
{
  serverCopy = server;
  predicateCopy = predicate;
  if (!predicateCopy)
  {
    goto LABEL_7;
  }

  CLSInitLog();
  v7 = CLSLogCollection;
  if (os_log_type_enabled(CLSLogCollection, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412290;
    v21 = predicateCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "CLSCollection Query predicate: %@", &v20, 0xCu);
  }

  pd_keypathValueMap = [predicateCopy pd_keypathValueMap];
  daemon = [pd_keypathValueMap objectForKey:@"type"];
  if (!daemon || ([NSNumber numberWithInteger:3], v10 = objc_claimAutoreleasedReturnValue(), v10, daemon != v10))
  {

LABEL_7:
    pd_keypathValueMap = [serverCopy database];
    daemon = [serverCopy daemon];
    v11 = [[PDCollectionSearchOperation alloc] initForCollectionsWithDatabase:pd_keypathValueMap];
    client = [serverCopy client];
    v13 = sub_1000B2528(client);
    [v11 setSourceApplicationBundleIdentifier:v13];

    v14 = [[PDCollectionSearchOperation alloc] initForCollectionItemsWithDatabase:pd_keypathValueMap];
    client2 = [serverCopy client];
    v16 = sub_1000B2528(client2);
    [v14 setSourceApplicationBundleIdentifier:v16];

    [v14 addDependency:v11];
    operationsManager = [daemon operationsManager];
    sub_100123A84(operationsManager, v11);

    operationsManager2 = [daemon operationsManager];
    sub_100123A84(operationsManager2, v14);

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

- (void)bindTo:(id)to
{
  v12.receiver = self;
  v12.super_class = CLSCollection;
  toCopy = to;
  [(CLSCollection *)&v12 bindTo:toCopy];
  v13 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v13 count:1, v12.receiver, v12.super_class];
  sub_1000983A8(toCopy, v5);

  name = [(CLSCollection *)self name];
  sub_1000982FC(toCopy, name, @"name");

  v7 = [NSNumber numberWithInteger:[(CLSCollection *)self type]];
  sub_1000982FC(toCopy, v7, @"type");

  location = [(CLSCollection *)self location];
  sub_1000982FC(toCopy, location, @"location");

  iconID = [(CLSCollection *)self iconID];
  sub_1000982FC(toCopy, iconID, @"iconID");

  colorName = [(CLSCollection *)self colorName];
  sub_1000982FC(toCopy, colorName, @"colorName");

  dateClassCreated = [(CLSCollection *)self dateClassCreated];
  sub_1000982FC(toCopy, dateClassCreated, @"dateClassCreated");
}

- (CLSCollection)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSCollection *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"location");
    [v6 setLocation:v7];

    v8 = sub_10016D778(rowCopy, @"name");
    [v6 setName:v8];

    v9 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(rowCopy, @"iconID");
    [v6 setIconID:v10];

    v11 = sub_10016D778(rowCopy, @"colorName");
    [v6 setColorName:v11];

    v12 = sub_10016D6F0(rowCopy, @"dateClassCreated");
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

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  switch(version)
  {
    case 2uLL:
LABEL_7:
      if (sub_1000B9298(v8, @"create table CLSCollection_copy (\n    objectID           text not null,\n    name               text not null,\n    type               integer,\n    dateCreated        real not null,\n    dateLastModified   real not null,\n    location           text not null,\n    iconID             text,\n    colorName          text,\n    dateClassCreated   real\n)", 0, 0, 0) && sub_1000B9298(v8, @"insert into CLSCollection_copy (objectID, name, type, dateCreated, dateLastModified, location, iconID, colorName, dateClassCreated) select objectID, name, type, dateCreated, dateLastModified, location, iconID, colorName, dateClassCreated from CLSCollection", 0, 0, 0) && sub_1000B9298(v8, @"drop table CLSCollection", 0, 0, 0) && sub_1000B9298(v8, @"alter table CLSCollection_copy rename to CLSCollection", 0, 0, 0) && sub_1000B9298(v8, @"create unique index if not exists CLSCollection_objectID on CLSCollection (objectID)", 0, 0, 0))
      {
        version = 3;
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
      if (!sub_1000B9298(databaseCopy, @"create table CLSCollection(   objectID           text not null,    name               text not null,    type               integer,    dateCreated        real not null,    dateLastModified   real not null,    location           text not null,    appIdentifier      text not null,    iconID             text,    colorName          text)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSCollection_objectID on CLSCollection (objectID)", 0, 0, 0))
      {
        goto LABEL_14;
      }

      goto LABEL_6;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_15:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSCollection *)self objectID];
  if ([(CLSCollection *)self type]== 2 || [(CLSCollection *)self type]== 5)
  {
    v7 = objectID;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
  }
}

- (CLSCollection)initWithCKRecord:(id)record
{
  recordCopy = record;
  _init = [(CLSCollection *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithRecord:recordCopy];
    v7 = [recordCopy objectForKeyedSubscript:@"name"];
    [v6 setName:v7];

    v8 = [recordCopy objectForKeyedSubscript:@"type"];
    [v6 setType:CLSCollectionTypeFromString()];

    v9 = [recordCopy objectForKeyedSubscript:@"colorName"];
    [v6 setColorName:v9];

    v10 = [recordCopy objectForKeyedSubscript:@"iconID"];
    [v6 setIconID:v10];

    v11 = [recordCopy objectForKeyedSubscript:@"location"];
    [v6 setLocation:v11];
  }

  return v6;
}

- (void)populate:(id)populate
{
  v10.receiver = self;
  v10.super_class = CLSCollection;
  populateCopy = populate;
  [(CLSCollection *)&v10 populate:populateCopy];
  v5 = [(CLSCollection *)self name:v10.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"name"];

  [(CLSCollection *)self type];
  v6 = NSStringFromCollectionType();
  [populateCopy setObject:v6 forKeyedSubscript:@"type"];

  colorName = [(CLSCollection *)self colorName];
  [populateCopy setObject:colorName forKeyedSubscript:@"colorName"];

  iconID = [(CLSCollection *)self iconID];
  [populateCopy setObject:iconID forKeyedSubscript:@"iconID"];

  location = [(CLSCollection *)self location];
  [populateCopy setObject:location forKeyedSubscript:@"location"];

  [(CLSCollection *)self updateParentReferencesForRecord:populateCopy];
}

@end
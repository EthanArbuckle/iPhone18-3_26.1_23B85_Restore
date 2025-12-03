@interface CLSLocation
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSLocation)initWithDatabaseRow:(id)row;
- (NSArray)immutableColumnNames;
- (NSArray)searchableColumnNames;
- (void)bindTo:(id)to;
@end

@implementation CLSLocation

- (NSArray)searchableColumnNames
{
  v4 = @"locationName";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (NSArray)immutableColumnNames
{
  v4 = @"dateExpires";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (CLSLocation)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSLocation *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"locationName");
    [v6 setLocationName:v7];

    v8 = sub_10016D778(rowCopy, @"searchText");
    [v6 setSearchText:v8];

    v9 = sub_10016D778(rowCopy, @"sourceType");
    [v6 setSourceType:{objc_msgSend(v9, "intValue")}];

    v10 = sub_10016D778(rowCopy, @"isEditable");
    [v6 setIsEditable:{objc_msgSend(v10, "BOOLValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v9.receiver = self;
  v9.super_class = CLSLocation;
  toCopy = to;
  [(CLSLocation *)&v9 bindTo:toCopy];
  v5 = [(CLSLocation *)self locationName:v9.receiver];
  sub_1000982FC(toCopy, v5, @"locationName");

  searchText = [(CLSLocation *)self searchText];
  sub_1000982FC(toCopy, searchText, @"searchText");

  v7 = [NSNumber numberWithInteger:[(CLSLocation *)self sourceType]];
  sub_1000982FC(toCopy, v7, @"sourceType");

  v8 = [NSNumber numberWithBool:[(CLSLocation *)self isEditable]];
  sub_1000982FC(toCopy, v8, @"isEditable");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  switch(version)
  {
    case 2uLL:
LABEL_8:
      if (sub_1000B9298(v8, @"alter table CLSLocation add column dateExpires real", 0, 0, 0))
      {
        version = 3;
        break;
      }

LABEL_11:
      v9 = 0;
      goto LABEL_12;
    case 1uLL:
LABEL_6:
      if (!sub_1000B9298(v8, @"alter table CLSLocation add column searchText text", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSLocation_searchText on CLSLocation (searchText)", 0, 0, 0))
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    case 0uLL:
      if (!sub_1000B9298(databaseCopy, @"create table CLSLocation (\n    objectID               text not null,\n    dateCreated            real not null,\n    dateLastModified       real not null,\n    locationName           text,\n    sourceType             integer,\n    isEditable             integer\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSLocation_objectID on CLSLocation (objectID)", 0, 0, 0))
      {
        goto LABEL_11;
      }

      goto LABEL_6;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_12:

  return v9;
}

@end
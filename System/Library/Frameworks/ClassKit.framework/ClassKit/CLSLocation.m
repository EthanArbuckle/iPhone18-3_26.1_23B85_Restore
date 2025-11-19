@interface CLSLocation
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSLocation)initWithDatabaseRow:(id)a3;
- (NSArray)immutableColumnNames;
- (NSArray)searchableColumnNames;
- (void)bindTo:(id)a3;
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

- (CLSLocation)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSLocation *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"locationName");
    [v6 setLocationName:v7];

    v8 = sub_10016D778(v4, @"searchText");
    [v6 setSearchText:v8];

    v9 = sub_10016D778(v4, @"sourceType");
    [v6 setSourceType:{objc_msgSend(v9, "intValue")}];

    v10 = sub_10016D778(v4, @"isEditable");
    [v6 setIsEditable:{objc_msgSend(v10, "BOOLValue")}];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLSLocation;
  v4 = a3;
  [(CLSLocation *)&v9 bindTo:v4];
  v5 = [(CLSLocation *)self locationName:v9.receiver];
  sub_1000982FC(v4, v5, @"locationName");

  v6 = [(CLSLocation *)self searchText];
  sub_1000982FC(v4, v6, @"searchText");

  v7 = [NSNumber numberWithInteger:[(CLSLocation *)self sourceType]];
  sub_1000982FC(v4, v7, @"sourceType");

  v8 = [NSNumber numberWithBool:[(CLSLocation *)self isEditable]];
  sub_1000982FC(v4, v8, @"isEditable");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  switch(a3)
  {
    case 2uLL:
LABEL_8:
      if (sub_1000B9298(v8, @"alter table CLSLocation add column dateExpires real", 0, 0, 0))
      {
        a3 = 3;
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
      if (!sub_1000B9298(v7, @"create table CLSLocation (\n    objectID               text not null,\n    dateCreated            real not null,\n    dateLastModified       real not null,\n    locationName           text,\n    sourceType             integer,\n    isEditable             integer\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSLocation_objectID on CLSLocation (objectID)", 0, 0, 0))
      {
        goto LABEL_11;
      }

      goto LABEL_6;
  }

  *a4 = a3;
  v9 = 1;
LABEL_12:

  return v9;
}

@end
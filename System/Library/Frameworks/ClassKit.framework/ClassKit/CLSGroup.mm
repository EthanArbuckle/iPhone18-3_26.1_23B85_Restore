@interface CLSGroup
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSGroup)initWithDatabaseRow:(id)row;
- (NSArray)immutableColumnNames;
- (NSArray)searchableColumnNames;
- (NSArray)tokenizableColumnNames;
- (void)bindTo:(id)to;
- (void)setExpiration:(double)expiration;
@end

@implementation CLSGroup

- (NSArray)searchableColumnNames
{
  v4[0] = @"groupName";
  v4[1] = @"emailAddress";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (NSArray)tokenizableColumnNames
{
  v4 = @"groupName";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (NSArray)immutableColumnNames
{
  v4 = @"dateExpires";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (CLSGroup)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSGroup *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"groupName");
    [v6 setGroupName:v7];

    v8 = sub_10016D778(rowCopy, @"emailAddress");
    [v6 setEmailAddress:v8];

    v9 = sub_10016D778(rowCopy, @"locationID");
    [v6 setLocationID:v9];

    v10 = sub_10016D778(rowCopy, @"searchText");
    [v6 setSearchText:v10];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v10.receiver = self;
  v10.super_class = CLSGroup;
  toCopy = to;
  [(CLSGroup *)&v10 bindTo:toCopy];
  v11 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v11 count:1, v10.receiver, v10.super_class];
  sub_1000983A8(toCopy, v5);

  groupName = [(CLSGroup *)self groupName];
  sub_1000982FC(toCopy, groupName, @"groupName");

  locationID = [(CLSGroup *)self locationID];
  sub_1000982FC(toCopy, locationID, @"locationID");

  emailAddress = [(CLSGroup *)self emailAddress];
  sub_1000982FC(toCopy, emailAddress, @"emailAddress");

  searchText = [(CLSGroup *)self searchText];
  sub_1000982FC(toCopy, searchText, @"searchText");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSGroup (\n    objectID            text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    dateExpires         real,\n    groupName           text not null,\n    emailAddress        text,\n    locationID          text,\n    searchText          text\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSGroup_objectID on CLSGroup (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSGroup_searchText on CLSGroup (searchText)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSGroup_dateExpires on CLSGroup (dateExpires)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_9;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_9:

  return v9;
}

- (void)setExpiration:(double)expiration
{
  v3.receiver = self;
  v3.super_class = CLSGroup;
  [(CLSGroup *)&v3 setExpiration:expiration];
}

@end
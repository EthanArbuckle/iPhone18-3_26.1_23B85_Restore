@interface CLSOrganization
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (NSArray)immutableColumnNames;
- (NSArray)searchableColumnNames;
- (id)initWithDatabaseRow:(id)row;
- (id)tokensForSearchableColumn:(id)column withValue:(id)value tokenize:(BOOL)tokenize;
- (unint64_t)changeHash;
- (void)bindTo:(id)to;
@end

@implementation CLSOrganization

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSOrganization *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"name");
    [v6 setName:v7];

    v8 = sub_10016D778(rowCopy, @"searchText");
    [v6 setSearchText:v8];

    v9 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v9, "intValue")}];

    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v12 = sub_10016D778(rowCopy, @"locationIDs");
    if (v12)
    {
      v13 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v11 withData:v12];
      [v6 setLocationIDs:v13];
    }

    else
    {
      [v6 setLocationIDs:&__NSArray0__struct];
    }

    v14 = sub_10016D778(rowCopy, @"emailDomains");

    if (v14)
    {
      v15 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v11 withData:v14];
      [v6 setEmailDomains:v15];
    }

    else
    {
      [v6 setEmailDomains:&__NSArray0__struct];
    }
  }

  return v6;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  v18.receiver = self;
  v18.super_class = CLSOrganization;
  [(CLSOrganization *)&v18 bindTo:toCopy];
  name = [(CLSOrganization *)self name];
  sub_1000982FC(toCopy, name, @"name");

  searchText = [(CLSOrganization *)self searchText];
  sub_1000982FC(toCopy, searchText, @"searchText");

  v7 = [NSNumber numberWithInteger:[(CLSOrganization *)self type]];
  sub_1000982FC(toCopy, v7, @"type");

  locationIDs = [(CLSOrganization *)self locationIDs];
  if (locationIDs)
  {
    v17 = 0;
    v9 = [NSKeyedArchiver archivedDataWithRootObject:locationIDs requiringSecureCoding:1 error:&v17];
    v10 = v17;
    v11 = v10;
    if (v10)
    {
      [v10 cls_debug:CLSLogDatabase];
    }

    sub_1000982FC(toCopy, v9, @"locationIDs");
  }

  emailDomains = [(CLSOrganization *)self emailDomains];
  if (emailDomains)
  {
    v16 = 0;
    v13 = [NSKeyedArchiver archivedDataWithRootObject:emailDomains requiringSecureCoding:1 error:&v16];
    v14 = v16;
    v15 = v14;
    if (v14)
    {
      [v14 cls_debug:CLSLogDatabase];
    }

    sub_1000982FC(toCopy, v13, @"emailDomains");
  }
}

- (unint64_t)changeHash
{
  v7.receiver = self;
  v7.super_class = CLSOrganization;
  changeHash = [(CLSOrganization *)&v7 changeHash];
  name = [(CLSOrganization *)self name];
  v5 = [name _cls_stableHash] ^ changeHash;

  return v5 ^ (2 * [(CLSOrganization *)self type]);
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSOrganization (\n    objectID               text not null,\n    dateCreated            real not null,\n    dateLastModified       real not null,\n    dateExpires            real,\n    name                   text not null,\n    type                   integer,\n    locationIDs            blob,\n    emailDomains           blob,\n    searchText             text\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSOrganization_objectID on CLSOrganization (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSOrganization_searchText on CLSOrganization (searchText)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSOrganization_dateExpires on CLSOrganization (dateExpires)", 0, 0, 0))
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

- (NSArray)searchableColumnNames
{
  v4 = @"emailDomains";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (NSArray)immutableColumnNames
{
  v4 = @"dateExpires";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)tokensForSearchableColumn:(id)column withValue:(id)value tokenize:(BOOL)tokenize
{
  columnCopy = column;
  valueCopy = value;
  v9 = valueCopy;
  v10 = 0;
  if (columnCopy && valueCopy)
  {
    if ([columnCopy isEqualToString:@"emailDomains"])
    {
      emailDomains = [(CLSOrganization *)self emailDomains];
      v10 = [NSSet setWithArray:emailDomains];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end
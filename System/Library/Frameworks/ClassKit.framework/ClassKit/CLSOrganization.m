@interface CLSOrganization
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (NSArray)immutableColumnNames;
- (NSArray)searchableColumnNames;
- (id)initWithDatabaseRow:(id)a3;
- (id)tokensForSearchableColumn:(id)a3 withValue:(id)a4 tokenize:(BOOL)a5;
- (unint64_t)changeHash;
- (void)bindTo:(id)a3;
@end

@implementation CLSOrganization

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSOrganization *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"name");
    [v6 setName:v7];

    v8 = sub_10016D778(v4, @"searchText");
    [v6 setSearchText:v8];

    v9 = sub_10016D778(v4, @"type");
    [v6 setType:{objc_msgSend(v9, "intValue")}];

    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v12 = sub_10016D778(v4, @"locationIDs");
    if (v12)
    {
      v13 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v11 withData:v12];
      [v6 setLocationIDs:v13];
    }

    else
    {
      [v6 setLocationIDs:&__NSArray0__struct];
    }

    v14 = sub_10016D778(v4, @"emailDomains");

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

- (void)bindTo:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CLSOrganization;
  [(CLSOrganization *)&v18 bindTo:v4];
  v5 = [(CLSOrganization *)self name];
  sub_1000982FC(v4, v5, @"name");

  v6 = [(CLSOrganization *)self searchText];
  sub_1000982FC(v4, v6, @"searchText");

  v7 = [NSNumber numberWithInteger:[(CLSOrganization *)self type]];
  sub_1000982FC(v4, v7, @"type");

  v8 = [(CLSOrganization *)self locationIDs];
  if (v8)
  {
    v17 = 0;
    v9 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v17];
    v10 = v17;
    v11 = v10;
    if (v10)
    {
      [v10 cls_debug:CLSLogDatabase];
    }

    sub_1000982FC(v4, v9, @"locationIDs");
  }

  v12 = [(CLSOrganization *)self emailDomains];
  if (v12)
  {
    v16 = 0;
    v13 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v16];
    v14 = v16;
    v15 = v14;
    if (v14)
    {
      [v14 cls_debug:CLSLogDatabase];
    }

    sub_1000982FC(v4, v13, @"emailDomains");
  }
}

- (unint64_t)changeHash
{
  v7.receiver = self;
  v7.super_class = CLSOrganization;
  v3 = [(CLSOrganization *)&v7 changeHash];
  v4 = [(CLSOrganization *)self name];
  v5 = [v4 _cls_stableHash] ^ v3;

  return v5 ^ (2 * [(CLSOrganization *)self type]);
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSOrganization (\n    objectID               text not null,\n    dateCreated            real not null,\n    dateLastModified       real not null,\n    dateExpires            real,\n    name                   text not null,\n    type                   integer,\n    locationIDs            blob,\n    emailDomains           blob,\n    searchText             text\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSOrganization_objectID on CLSOrganization (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSOrganization_searchText on CLSOrganization (searchText)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSOrganization_dateExpires on CLSOrganization (dateExpires)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_9;
    }

    a3 = 1;
  }

  *a4 = a3;
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

- (id)tokensForSearchableColumn:(id)a3 withValue:(id)a4 tokenize:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    if ([v7 isEqualToString:@"emailDomains"])
    {
      v11 = [(CLSOrganization *)self emailDomains];
      v10 = [NSSet setWithArray:v11];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end
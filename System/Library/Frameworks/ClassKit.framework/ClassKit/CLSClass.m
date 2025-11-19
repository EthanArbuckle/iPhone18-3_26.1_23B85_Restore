@interface CLSClass
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSClass)initWithDatabaseRow:(id)a3;
- (NSArray)immutableColumnNames;
- (NSArray)searchableColumnNames;
- (void)bindTo:(id)a3;
- (void)setExpiration:(double)a3;
@end

@implementation CLSClass

- (NSArray)searchableColumnNames
{
  v4[0] = @"className";
  v4[1] = @"customClassName";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (NSArray)immutableColumnNames
{
  v4 = @"dateExpires";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (CLSClass)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSClass *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"className");
    [v6 setClassName:v7];

    v8 = sub_10016D778(v4, @"source");
    [v6 setSource:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(v4, @"customClassName");
    [v6 setCustomClassName:v9];

    v10 = sub_10016D778(v4, @"locationID");
    [v6 setLocationID:v10];

    v11 = sub_10016D778(v4, @"iconID");
    [v6 setIconID:v11];

    v12 = sub_10016D778(v4, @"searchText");
    [v6 setSearchText:v12];

    v13 = sub_10016D778(v4, @"isEditable");
    [v6 setIsEditable:{objc_msgSend(v13, "BOOLValue")}];

    v14 = sub_10016D778(v4, @"originatingSource");
    [v6 setOriginatingSource:{objc_msgSend(v14, "intValue")}];

    v15 = sub_10016D778(v4, @"tempObjectID");
    [v6 setTempObjectID:v15];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v15.receiver = self;
  v15.super_class = CLSClass;
  v4 = a3;
  [(CLSClass *)&v15 bindTo:v4];
  v16 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v16 count:1, v15.receiver, v15.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSClass *)self className];
  sub_1000982FC(v4, v6, @"className");

  v7 = [(CLSClass *)self customClassName];
  sub_1000982FC(v4, v7, @"customClassName");

  v8 = [NSNumber numberWithInteger:[(CLSClass *)self source]];
  sub_1000982FC(v4, v8, @"source");

  v9 = [(CLSClass *)self locationID];
  sub_1000982FC(v4, v9, @"locationID");

  v10 = [(CLSClass *)self iconID];
  sub_1000982FC(v4, v10, @"iconID");

  v11 = [(CLSClass *)self searchText];
  sub_1000982FC(v4, v11, @"searchText");

  v12 = [NSNumber numberWithBool:[(CLSClass *)self isEditable]];
  sub_1000982FC(v4, v12, @"isEditable");

  v13 = [NSNumber numberWithInteger:[(CLSClass *)self originatingSource]];
  sub_1000982FC(v4, v13, @"originatingSource");

  v14 = [(CLSClass *)self tempObjectID];
  sub_1000982FC(v4, v14, @"tempObjectID");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 == 2)
  {
LABEL_19:
    if (sub_1000B9298(v8, @"create table CLSClass_temp (\n    objectID            text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    className           text not null,\n    source              integer,\n    customClassName     text,\n    iconID              text,\n    locationID          text,\n    isEditable          integer,\n    searchText          text,\n    tempObjectID        text,\n    dateExpires         real,\n    originatingSource   integer\n)\n", 0, 0, 0) && sub_1000B9298(v8, @"insert into CLSClass_temp select objectID, dateCreated, dateLastModified, className, source, customClassName, iconID, locationID, isEditable, searchText, tempObjectID, dateExpires, originatingSource from CLSClass", 0, 0, 0) && sub_1000B9298(v8, @"drop table CLSClass", 0, 0, 0) && sub_1000B9298(v8, @"create unique index if not exists CLSClass_objectID on CLSClass_temp (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index if not exists CLSClass_searchText on CLSClass_temp (searchText)", 0, 0, 0) && sub_1000B9298(v8, @"create index if not exists CLSClass_locationID on CLSClass_temp (locationID)", 0, 0, 0) && sub_1000B9298(v8, @"create index if not exists CLSClass_dateExpires on CLSClass_temp (dateExpires)", 0, 0, 0) && sub_1000B9298(v8, @"alter table CLSClass_temp rename to CLSClass", 0, 0, 0))
    {
      a3 = 3;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (a3 != 1)
  {
    if (a3)
    {
LABEL_28:
      *a4 = a3;
      v15 = 1;
      goto LABEL_30;
    }

    if (!sub_1000B9298(v7, @"create table CLSClass(   objectID            text not null,    dateCreated         real not null,    dateLastModified    real not null,    className           text not null)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSClass_objectID on CLSClass (objectID)", 0, 0, 0))
    {
LABEL_29:
      v15 = 0;
      goto LABEL_30;
    }
  }

  v9 = sub_1000B9298(v8, @"alter table CLSClass add column source integer", 0, 0, 0);
  v10 = sub_1000B9298(v8, @"alter table CLSClass add column customClassName text", 0, 0, 0);
  v11 = sub_1000B9298(v8, @"alter table CLSClass add column appIdentifier text", 0, 0, 0);
  v12 = sub_1000B9298(v8, @"alter table CLSClass add column iconID text", 0, 0, 0);
  v13 = sub_1000B9298(v8, @"alter table CLSClass add column locationID text", 0, 0, 0);
  v14 = sub_1000B9298(v8, @"alter table CLSClass add column isEditable integer", 0, 0, 0);
  v15 = 0;
  if (v11 && v9 && v10 && v12 && v13 && v14)
  {
    if (!sub_1000B9298(v8, @"alter table CLSClass add column searchText text", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSClass_searchText on CLSClass (searchText)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSClass_locationID on CLSClass (locationID)", 0, 0, 0) || !sub_1000B9298(v8, @"alter table CLSClass add column tempObjectID text", 0, 0, 0) || !sub_1000B9298(v8, @"alter table CLSClass add column dateExpires real", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSClass_dateExpires on CLSClass (dateExpires)", 0, 0, 0) || !sub_1000B9298(v8, @"alter table CLSClass add column originatingSource integer", 0, 0, 0))
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

LABEL_30:

  return v15;
}

- (void)setExpiration:(double)a3
{
  v3.receiver = self;
  v3.super_class = CLSClass;
  [(CLSClass *)&v3 setExpiration:a3];
}

@end
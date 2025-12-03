@interface CLSGroupMember
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSGroupMember)initWithDatabaseRow:(id)row;
- (NSArray)immutableColumnNames;
- (void)bindTo:(id)to;
@end

@implementation CLSGroupMember

- (NSArray)immutableColumnNames
{
  v4 = @"dateExpires";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (CLSGroupMember)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSGroupMember *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"personID");
    [v6 setPersonID:v8];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v8.receiver = self;
  v8.super_class = CLSGroupMember;
  toCopy = to;
  [(CLSGroupMember *)&v8 bindTo:toCopy];
  v9 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v9 count:1, v8.receiver, v8.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSGroupMember *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  personID = [(CLSGroupMember *)self personID];
  sub_1000982FC(toCopy, personID, @"personID");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSGroupMember (\n    objectID            text not null,\n    parentObjectID      text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    personID            text not null,\n    dateExpires         real,\n    foreign key (parentObjectID) references CLSGroup(objectID) on delete cascade on update cascade\n    foreign key (personID) references CLSPerson(objectID) on delete cascade on update cascade\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSGroupMember_objectID on CLSGroupMember (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSGroupMember_parentObjectID on CLSGroupMember (parentObjectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSGroupMember_dateExpires on CLSGroupMember(dateExpires)", 0, 0, 0))
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

@end
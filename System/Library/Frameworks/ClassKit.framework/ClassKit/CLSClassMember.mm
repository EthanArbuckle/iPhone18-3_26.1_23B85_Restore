@interface CLSClassMember
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (unint64_t)changeHash;
- (void)bindTo:(id)to;
@end

@implementation CLSClassMember

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSClassMember *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"personID");
    [v6 setPersonID:v8];

    v9 = sub_10016D778(rowCopy, @"roles");
    [v6 setRoles:{objc_msgSend(v9, "intValue")}];
  }

  return v6;
}

- (unint64_t)changeHash
{
  v5.receiver = self;
  v5.super_class = CLSClassMember;
  changeHash = [(CLSClassMember *)&v5 changeHash];
  return changeHash ^ (2 * [(CLSClassMember *)self roles]);
}

- (void)bindTo:(id)to
{
  v9.receiver = self;
  v9.super_class = CLSClassMember;
  toCopy = to;
  [(CLSClassMember *)&v9 bindTo:toCopy];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSClassMember *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  personID = [(CLSClassMember *)self personID];
  sub_1000982FC(toCopy, personID, @"personID");

  v8 = [NSNumber numberWithUnsignedInteger:[(CLSClassMember *)self roles]];
  sub_1000982FC(toCopy, v8, @"roles");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  switch(version)
  {
    case 2uLL:
LABEL_8:
      if (sub_1000B9298(v8, @"create table CLSClassMember_temp (\n    objectID            text not null,\n    parentObjectID      text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    personID            text not null,\n    roles               integer default 0,\n    foreign key (parentObjectID) references CLSClass(objectID) on delete cascade on update cascade\n    foreign key (personID) references CLSPerson(objectID) on delete cascade on update cascade\n)\n", 0, 0, 0) && sub_1000B9298(v8, @"insert into CLSClassMember_temp select objectID, parentObjectID, dateCreated, dateLastModified, personID, roles from CLSClassMember", 0, 0, 0) && sub_1000B9298(v8, @"drop table CLSClassMember", 0, 0, 0) && sub_1000B9298(v8, @"create unique index if not exists CLSClassMember_objectID on CLSClassMember_temp (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index if not exists CLSClassMember_parentObjectID on CLSClassMember_temp (parentObjectID)", 0, 0, 0) && sub_1000B9298(v8, @"alter table CLSClassMember_temp rename to CLSClassMember", 0, 0, 0))
      {
        version = 3;
        break;
      }

LABEL_16:
      v9 = 0;
      goto LABEL_17;
    case 1uLL:
LABEL_7:
      if (!sub_1000B9298(v8, @"alter table CLSClassMember add column appIdentifier text", 0, 0, 0))
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    case 0uLL:
      if (!sub_1000B9298(databaseCopy, @"create table CLSClassMember(   objectID            text not null,    parentObjectID      text not null,    dateCreated         real not null,    dateLastModified    real not null,    personID            text not null,    roles               integer default 0,    foreign key (parentObjectID) references CLSClass(objectID) on delete cascade on update cascade    foreign key (personID) references CLSPerson(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSClassMember_objectID on CLSClassMember (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSClassMember_parentObjectID on CLSClassMember (parentObjectID)", 0, 0, 0))
      {
        goto LABEL_16;
      }

      goto LABEL_7;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_17:

  return v9;
}

@end
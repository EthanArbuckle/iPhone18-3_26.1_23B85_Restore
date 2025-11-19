@interface CLSClassMember
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (id)initWithDatabaseRow:(id)a3;
- (unint64_t)changeHash;
- (void)bindTo:(id)a3;
@end

@implementation CLSClassMember

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSClassMember *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"personID");
    [v6 setPersonID:v8];

    v9 = sub_10016D778(v4, @"roles");
    [v6 setRoles:{objc_msgSend(v9, "intValue")}];
  }

  return v6;
}

- (unint64_t)changeHash
{
  v5.receiver = self;
  v5.super_class = CLSClassMember;
  v3 = [(CLSClassMember *)&v5 changeHash];
  return v3 ^ (2 * [(CLSClassMember *)self roles]);
}

- (void)bindTo:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLSClassMember;
  v4 = a3;
  [(CLSClassMember *)&v9 bindTo:v4];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSClassMember *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [(CLSClassMember *)self personID];
  sub_1000982FC(v4, v7, @"personID");

  v8 = [NSNumber numberWithUnsignedInteger:[(CLSClassMember *)self roles]];
  sub_1000982FC(v4, v8, @"roles");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  switch(a3)
  {
    case 2uLL:
LABEL_8:
      if (sub_1000B9298(v8, @"create table CLSClassMember_temp (\n    objectID            text not null,\n    parentObjectID      text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    personID            text not null,\n    roles               integer default 0,\n    foreign key (parentObjectID) references CLSClass(objectID) on delete cascade on update cascade\n    foreign key (personID) references CLSPerson(objectID) on delete cascade on update cascade\n)\n", 0, 0, 0) && sub_1000B9298(v8, @"insert into CLSClassMember_temp select objectID, parentObjectID, dateCreated, dateLastModified, personID, roles from CLSClassMember", 0, 0, 0) && sub_1000B9298(v8, @"drop table CLSClassMember", 0, 0, 0) && sub_1000B9298(v8, @"create unique index if not exists CLSClassMember_objectID on CLSClassMember_temp (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"create index if not exists CLSClassMember_parentObjectID on CLSClassMember_temp (parentObjectID)", 0, 0, 0) && sub_1000B9298(v8, @"alter table CLSClassMember_temp rename to CLSClassMember", 0, 0, 0))
      {
        a3 = 3;
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
      if (!sub_1000B9298(v7, @"create table CLSClassMember(   objectID            text not null,    parentObjectID      text not null,    dateCreated         real not null,    dateLastModified    real not null,    personID            text not null,    roles               integer default 0,    foreign key (parentObjectID) references CLSClass(objectID) on delete cascade on update cascade    foreign key (personID) references CLSPerson(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSClassMember_objectID on CLSClassMember (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSClassMember_parentObjectID on CLSClassMember (parentObjectID)", 0, 0, 0))
      {
        goto LABEL_16;
      }

      goto LABEL_7;
  }

  *a4 = a3;
  v9 = 1;
LABEL_17:

  return v9;
}

@end
@interface CLSGroupMember
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSGroupMember)initWithDatabaseRow:(id)a3;
- (NSArray)immutableColumnNames;
- (void)bindTo:(id)a3;
@end

@implementation CLSGroupMember

- (NSArray)immutableColumnNames
{
  v4 = @"dateExpires";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (CLSGroupMember)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSGroupMember *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"personID");
    [v6 setPersonID:v8];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLSGroupMember;
  v4 = a3;
  [(CLSGroupMember *)&v8 bindTo:v4];
  v9 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v9 count:1, v8.receiver, v8.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSGroupMember *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [(CLSGroupMember *)self personID];
  sub_1000982FC(v4, v7, @"personID");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSGroupMember (\n    objectID            text not null,\n    parentObjectID      text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    personID            text not null,\n    dateExpires         real,\n    foreign key (parentObjectID) references CLSGroup(objectID) on delete cascade on update cascade\n    foreign key (personID) references CLSPerson(objectID) on delete cascade on update cascade\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSGroupMember_objectID on CLSGroupMember (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSGroupMember_parentObjectID on CLSGroupMember (parentObjectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSGroupMember_dateExpires on CLSGroupMember(dateExpires)", 0, 0, 0))
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

@end
@interface CLSContextNavigationNode
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSContextNavigationNode)initWithDatabaseRow:(id)a3;
- (id)initWithCKRecord:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
@end

@implementation CLSContextNavigationNode

- (CLSContextNavigationNode)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSContextNavigationNode *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, CLSPredicateKeyPathParentObjectID);
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"childObjectID");
    [v6 setChildObjectID:v8];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLSContextNavigationNode;
  v4 = a3;
  [(CLSContextNavigationNode *)&v8 bindTo:v4];
  v9 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v9 count:1, v8.receiver, v8.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSContextNavigationNode *)self parentObjectID];
  sub_1000982FC(v4, v6, CLSPredicateKeyPathParentObjectID);

  v7 = [(CLSContextNavigationNode *)self childObjectID];
  sub_1000982FC(v4, v7, @"childObjectID");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSContextNavigationNode (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    childObjectID     text not null,\n    foreign key (parentObjectID) references CLSContext(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSContextNavigationNode_objectID on CLSContextNavigationNode (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    a3 = 1;
  }

  *a4 = a3;
  v9 = 1;
LABEL_7:

  return v9;
}

- (id)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CLSContextNavigationNode *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithRecord:v4];
    v7 = [v4 objectForKeyedSubscript:@"childObjectID"];
    [v6 setChildObjectID:v7];
  }

  return v6;
}

- (void)populate:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLSContextNavigationNode;
  v4 = a3;
  [(CLSContextNavigationNode *)&v6 populate:v4];
  v5 = [(CLSContextNavigationNode *)self childObjectID:v6.receiver];
  [v4 setObject:v5 forKeyedSubscript:@"childObjectID"];

  [(CLSContextNavigationNode *)self updateParentReferencesForRecord:v4];
}

@end
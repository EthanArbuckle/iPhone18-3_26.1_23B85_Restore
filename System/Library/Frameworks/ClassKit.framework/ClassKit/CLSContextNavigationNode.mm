@interface CLSContextNavigationNode
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSContextNavigationNode)initWithDatabaseRow:(id)row;
- (id)initWithCKRecord:(id)record;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
@end

@implementation CLSContextNavigationNode

- (CLSContextNavigationNode)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSContextNavigationNode *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, CLSPredicateKeyPathParentObjectID);
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"childObjectID");
    [v6 setChildObjectID:v8];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v8.receiver = self;
  v8.super_class = CLSContextNavigationNode;
  toCopy = to;
  [(CLSContextNavigationNode *)&v8 bindTo:toCopy];
  v9 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v9 count:1, v8.receiver, v8.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSContextNavigationNode *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, CLSPredicateKeyPathParentObjectID);

  childObjectID = [(CLSContextNavigationNode *)self childObjectID];
  sub_1000982FC(toCopy, childObjectID, @"childObjectID");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSContextNavigationNode (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    childObjectID     text not null,\n    foreign key (parentObjectID) references CLSContext(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSContextNavigationNode_objectID on CLSContextNavigationNode (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_7:

  return v9;
}

- (id)initWithCKRecord:(id)record
{
  recordCopy = record;
  _init = [(CLSContextNavigationNode *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithRecord:recordCopy];
    v7 = [recordCopy objectForKeyedSubscript:@"childObjectID"];
    [v6 setChildObjectID:v7];
  }

  return v6;
}

- (void)populate:(id)populate
{
  v6.receiver = self;
  v6.super_class = CLSContextNavigationNode;
  populateCopy = populate;
  [(CLSContextNavigationNode *)&v6 populate:populateCopy];
  v5 = [(CLSContextNavigationNode *)self childObjectID:v6.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"childObjectID"];

  [(CLSContextNavigationNode *)self updateParentReferencesForRecord:populateCopy];
}

@end
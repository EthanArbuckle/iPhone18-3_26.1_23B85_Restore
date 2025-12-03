@interface CLSActivity
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSActivity)initWithCKRecord:(id)record;
- (CLSActivity)initWithDatabaseRow:(id)row;
- (NSString)parentReferenceName;
- (id)generateInsightEventsWithDatabase:(id)database;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSActivity

- (CLSActivity)initWithCKRecord:(id)record
{
  recordCopy = record;
  _init = [(CLSActivity *)self _init];
  if (_init)
  {
    v6 = [recordCopy objectForKeyedSubscript:@"parentEntityName"];
    [(CLSActivity *)_init setParentEntityName:v6];

    [(CLSActivity *)_init _initCommonPropsWithRecord:recordCopy];
    v7 = [recordCopy objectForKeyedSubscript:@"primaryActivityItemIdentifier"];
    [(CLSActivity *)_init setPrimaryActivityItemIdentifier:v7];
  }

  return _init;
}

- (void)populate:(id)populate
{
  v7.receiver = self;
  v7.super_class = CLSActivity;
  populateCopy = populate;
  [(CLSActivity *)&v7 populate:populateCopy];
  v5 = [(CLSActivity *)self primaryActivityItemIdentifier:v7.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"primaryActivityItemIdentifier"];

  parentEntityName = [(CLSActivity *)self parentEntityName];
  [populateCopy setObject:parentEntityName forKeyedSubscript:@"parentEntityName"];

  [(CLSActivity *)self updateParentReferencesForRecord:populateCopy];
}

- (NSString)parentReferenceName
{
  parentEntityName = [(CLSActivity *)self parentEntityName];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [parentEntityName isEqualToString:v4];

  if (v5)
  {
    return @"handoutAssignedItem";
  }

  else
  {
    return @"context";
  }
}

- (id)generateInsightEventsWithDatabase:(id)database
{
  databaseCopy = database;
  primaryActivityItemIdentifier = [(CLSActivity *)self primaryActivityItemIdentifier];

  if (primaryActivityItemIdentifier)
  {
    v6 = sub_10004BE2C(databaseCopy, self, 206, 0);
    v7 = objc_autoreleasePoolPush();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          objectID = [(CLSActivity *)self objectID];
          [v13 setActivityID:objectID];

          parentObjectID = [(CLSActivity *)self parentObjectID];
          [v13 setParentObjectID:parentObjectID];

          primaryActivityItemIdentifier2 = [(CLSActivity *)self primaryActivityItemIdentifier];
          [v13 setPrimaryActivityItemIdentifier:primaryActivityItemIdentifier2];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (CLSActivity)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSActivity *)self _init];
  if (_init)
  {
    v6 = sub_10016D778(rowCopy, @"parentEntityName");
    [(CLSActivity *)_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"primaryActivityItemIdentifier");
    [(CLSActivity *)_init setPrimaryActivityItemIdentifier:v7];

    [(CLSActivity *)_init setParentEntityName:v6];
    v8 = sub_10016D778(rowCopy, @"parentObjectID");
    [(CLSActivity *)_init setParentObjectID:v8];
  }

  return _init;
}

- (void)bindTo:(id)to
{
  v8.receiver = self;
  v8.super_class = CLSActivity;
  toCopy = to;
  [(CLSActivity *)&v8 bindTo:toCopy];
  v5 = [(CLSActivity *)self primaryActivityItemIdentifier:v8.receiver];
  sub_1000982FC(toCopy, v5, @"primaryActivityItemIdentifier");

  parentEntityName = [(CLSActivity *)self parentEntityName];
  sub_1000982FC(toCopy, parentEntityName, @"parentEntityName");

  parentObjectID = [(CLSActivity *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  switch(version)
  {
    case 2uLL:
LABEL_13:
      if (sub_1000B9298(v8, @"drop index CLSActivityClone_objectID", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSActivity_objectID on CLSActivity (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"drop index CLSActivityClone_parentObjectID", 0, 0, 0) && sub_1000B9298(v8, @"create index CLSActivity_parentObjectID on CLSActivity (parentObjectID)", 0, 0, 0))
      {
        version = 3;
        break;
      }

LABEL_19:
      v9 = 0;
      goto LABEL_20;
    case 1uLL:
LABEL_7:
      if (!sub_1000B9298(v8, @"create table CLSActivityClone(   objectID                       text not null,\n    parentObjectID                 text not null,\n    appIdentifier                  text,\n    dateCreated                    real not null,\n    dateLastModified               real not null,\n    primaryActivityItemIdentifier  text,\n    parentEntityName               text\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index CLSActivityClone_objectID on CLSActivityClone (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index CLSActivityClone_parentObjectID on CLSActivityClone (parentObjectID)", 0, 0, 0) || !sub_1000B9298(v8, @"insert into CLSActivityClone (objectID, parentObjectID, appIdentifier, dateCreated, dateLastModified, primaryActivityItemIdentifier) select objectID, parentObjectID, appIdentifier, dateCreated, dateLastModified, primaryActivityItemIdentifier from CLSActivity", 0, 0, 0) || !sub_1000B9298(v8, @"drop table CLSActivity", 0, 0, 0) || !sub_1000B9298(v8, @"alter table CLSActivityClone rename to CLSActivity", 0, 0, 0))
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    case 0uLL:
      if (!sub_1000B9298(databaseCopy, @"create table CLSActivity(   objectID          text not null,    parentObjectID    text not null,    appIdentifier     text not null,    dateCreated       real not null,    dateLastModified  real not null,    primaryActivityItemIdentifier text,    foreign key(parentObjectID) references CLSContext(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index CLSActivity_objectID on CLSActivity (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index CLSActivity_parentObjectID on CLSActivity (parentObjectID)", 0, 0, 0))
      {
        goto LABEL_19;
      }

      goto LABEL_7;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_20:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSActivity *)self objectID];
  v7 = objectID;
  v6 = [NSArray arrayWithObjects:&v7 count:1];

  [databaseCopy deleteAll:objc_opt_class() where:@"activityID = ?" bindings:v6];
}

@end
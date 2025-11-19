@interface CLSActivity
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSActivity)initWithCKRecord:(id)a3;
- (CLSActivity)initWithDatabaseRow:(id)a3;
- (NSString)parentReferenceName;
- (id)generateInsightEventsWithDatabase:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSActivity

- (CLSActivity)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CLSActivity *)self _init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"parentEntityName"];
    [(CLSActivity *)v5 setParentEntityName:v6];

    [(CLSActivity *)v5 _initCommonPropsWithRecord:v4];
    v7 = [v4 objectForKeyedSubscript:@"primaryActivityItemIdentifier"];
    [(CLSActivity *)v5 setPrimaryActivityItemIdentifier:v7];
  }

  return v5;
}

- (void)populate:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLSActivity;
  v4 = a3;
  [(CLSActivity *)&v7 populate:v4];
  v5 = [(CLSActivity *)self primaryActivityItemIdentifier:v7.receiver];
  [v4 setObject:v5 forKeyedSubscript:@"primaryActivityItemIdentifier"];

  v6 = [(CLSActivity *)self parentEntityName];
  [v4 setObject:v6 forKeyedSubscript:@"parentEntityName"];

  [(CLSActivity *)self updateParentReferencesForRecord:v4];
}

- (NSString)parentReferenceName
{
  v2 = [(CLSActivity *)self parentEntityName];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 isEqualToString:v4];

  if (v5)
  {
    return @"handoutAssignedItem";
  }

  else
  {
    return @"context";
  }
}

- (id)generateInsightEventsWithDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSActivity *)self primaryActivityItemIdentifier];

  if (v5)
  {
    v6 = sub_10004BE2C(v4, self, 206, 0);
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
          v14 = [(CLSActivity *)self objectID];
          [v13 setActivityID:v14];

          v15 = [(CLSActivity *)self parentObjectID];
          [v13 setParentObjectID:v15];

          v16 = [(CLSActivity *)self primaryActivityItemIdentifier];
          [v13 setPrimaryActivityItemIdentifier:v16];
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

- (CLSActivity)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSActivity *)self _init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"parentEntityName");
    [(CLSActivity *)v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"primaryActivityItemIdentifier");
    [(CLSActivity *)v5 setPrimaryActivityItemIdentifier:v7];

    [(CLSActivity *)v5 setParentEntityName:v6];
    v8 = sub_10016D778(v4, @"parentObjectID");
    [(CLSActivity *)v5 setParentObjectID:v8];
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLSActivity;
  v4 = a3;
  [(CLSActivity *)&v8 bindTo:v4];
  v5 = [(CLSActivity *)self primaryActivityItemIdentifier:v8.receiver];
  sub_1000982FC(v4, v5, @"primaryActivityItemIdentifier");

  v6 = [(CLSActivity *)self parentEntityName];
  sub_1000982FC(v4, v6, @"parentEntityName");

  v7 = [(CLSActivity *)self parentObjectID];
  sub_1000982FC(v4, v7, @"parentObjectID");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  switch(a3)
  {
    case 2uLL:
LABEL_13:
      if (sub_1000B9298(v8, @"drop index CLSActivityClone_objectID", 0, 0, 0) && sub_1000B9298(v8, @"create unique index CLSActivity_objectID on CLSActivity (objectID)", 0, 0, 0) && sub_1000B9298(v8, @"drop index CLSActivityClone_parentObjectID", 0, 0, 0) && sub_1000B9298(v8, @"create index CLSActivity_parentObjectID on CLSActivity (parentObjectID)", 0, 0, 0))
      {
        a3 = 3;
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
      if (!sub_1000B9298(v7, @"create table CLSActivity(   objectID          text not null,    parentObjectID    text not null,    appIdentifier     text not null,    dateCreated       real not null,    dateLastModified  real not null,    primaryActivityItemIdentifier text,    foreign key(parentObjectID) references CLSContext(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index CLSActivity_objectID on CLSActivity (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index CLSActivity_parentObjectID on CLSActivity (parentObjectID)", 0, 0, 0))
      {
        goto LABEL_19;
      }

      goto LABEL_7;
  }

  *a4 = a3;
  v9 = 1;
LABEL_20:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSActivity *)self objectID];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];

  [v4 deleteAll:objc_opt_class() where:@"activityID = ?" bindings:v6];
}

@end
@interface CLSHandoutAssignedItem
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSHandoutAssignedItem)initWithDatabaseRow:(id)a3;
- (id)initWithCKRecord:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSHandoutAssignedItem

- (CLSHandoutAssignedItem)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = sub_10016D778(v4, @"type");
  v6 = [v5 intValue];
  v7 = sub_10016D778(v4, @"title");
  v8 = sub_10016D778(v4, @"parentObjectID");
  v9 = [(CLSHandoutAssignedItem *)self initWithType:v6 title:v7 handoutAttachmentID:v8];

  if (v9)
  {
    [(CLSHandoutAssignedItem *)v9 _initCommonPropsWithDatabaseRow:v4];
    v10 = sub_10016D778(v4, @"currentActivityID");
    [(CLSHandoutAssignedItem *)v9 setCurrentActivityID:v10];

    v11 = sub_10016D778(v4, @"identifier");
    [(CLSHandoutAssignedItem *)v9 setIdentifier:v11];

    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v12, v13, objc_opt_class(), 0];
    v15 = sub_10016D778(v4, @"bundleIDs");
    if (v15)
    {
      v16 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v14 withData:v15];
      if (v16)
      {
        [(CLSHandoutAssignedItem *)v9 addBundleIDs:v16];
      }
    }
  }

  return v9;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CLSHandoutAssignedItem;
  [(CLSHandoutAssignedItem *)&v15 bindTo:v4];
  v5 = [(CLSHandoutAssignedItem *)self parentObjectID];
  sub_1000982FC(v4, v5, @"parentObjectID");

  v6 = [(CLSHandoutAssignedItem *)self title];
  sub_1000982FC(v4, v6, @"title");

  v7 = [NSNumber numberWithInt:[(CLSHandoutAssignedItem *)self type]];
  sub_1000982FC(v4, v7, @"type");

  v8 = [(CLSHandoutAssignedItem *)self identifier];
  sub_1000982FC(v4, v8, @"identifier");

  v9 = [(CLSHandoutAssignedItem *)self currentActivityID];
  sub_1000982FC(v4, v9, @"currentActivityID");

  v10 = [(CLSHandoutAssignedItem *)self bundleIDs];
  if (v10)
  {
    v14 = 0;
    v11 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v14];
    v12 = v14;
    v13 = v12;
    if (v12)
    {
      [v12 cls_debug:CLSLogDatabase];
    }

    sub_1000982FC(v4, v11, @"bundleIDs");
  }
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 == 1)
  {
LABEL_7:
    if (sub_1000B9298(v8, @"alter table CLSHandoutAssignedItem add column bundleIDs blob", 0, 0, 0))
    {
      a3 = 2;
      goto LABEL_9;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSHandoutAssignedItem (\n    objectID            text not null,\n    parentObjectID      text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    title               text,\n    identifier          text,\n    appIdentifier       text,\n    type                integer,\n    currentActivityID   text\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSHandoutAssignedItem_objectID on CLSHandoutAssignedItem (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSHandoutAssignedItem_parentObjectID on CLSHandoutAssignedItem (parentObjectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create trigger if not exists trigger_cascade_delete_activity_for_delete_objectID\n  after delete\n  on CLSHandoutAssignedItem\n  for each row\n  begin\n  delete from CLSActivity where parentObjectID=OLD.objectID;\n end\n", 0, 0, 0))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_9:
  *a4 = a3;
  v9 = 1;
LABEL_11:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSHandoutAssignedItem *)self objectID];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];

  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

- (id)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"parentObjectType"];
  v6 = CLSHandoutAttachmentTypeFromString();

  v7 = [v4 objectForKeyedSubscript:@"parentObjectID"];
  v8 = [v4 objectForKeyedSubscript:@"title"];
  v9 = [(CLSHandoutAssignedItem *)self initWithType:v6 title:v8 handoutAttachmentID:v7];
  v10 = v9;
  if (v9)
  {
    [(CLSHandoutAssignedItem *)v9 _initCommonPropsWithRecord:v4];
    v11 = [v4 objectForKeyedSubscript:@"identifier"];
    [(CLSHandoutAssignedItem *)v10 setIdentifier:v11];

    v12 = [v4 objectForKeyedSubscript:@"currentActivityID"];
    [(CLSHandoutAssignedItem *)v10 setCurrentActivityID:v12];

    v13 = [v4 objectForKeyedSubscript:@"bundleIDs"];
    if (v13)
    {
      [(CLSHandoutAssignedItem *)v10 addBundleIDs:v13];
    }
  }

  return v10;
}

- (void)populate:(id)a3
{
  v12.receiver = self;
  v12.super_class = CLSHandoutAssignedItem;
  v4 = a3;
  [(CLSHandoutAssignedItem *)&v12 populate:v4];
  v5 = [(CLSHandoutAssignedItem *)self title:v12.receiver];
  [v4 setObject:v5 forKeyedSubscript:@"title"];

  v6 = [(CLSHandoutAssignedItem *)self identifier];
  [v4 setObject:v6 forKeyedSubscript:@"identifier"];

  v7 = [(CLSHandoutAssignedItem *)self currentActivityID];
  [v4 setObject:v7 forKeyedSubscript:@"currentActivityID"];

  v8 = [(CLSHandoutAssignedItem *)self parentObjectID];
  [v4 setObject:v8 forKeyedSubscript:@"parentObjectID"];

  [(CLSHandoutAssignedItem *)self type];
  v9 = NSStringFromHandoutAttachmentType();
  [v4 setObject:v9 forKeyedSubscript:@"parentObjectType"];

  v10 = [(CLSHandoutAssignedItem *)self bundleIDs];
  v11 = [v10 allObjects];

  [v4 setObject:v11 forKeyedSubscript:@"bundleIDs"];
}

@end
@interface CLSHandoutAssignedItem
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSHandoutAssignedItem)initWithDatabaseRow:(id)row;
- (id)initWithCKRecord:(id)record;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSHandoutAssignedItem

- (CLSHandoutAssignedItem)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"type");
  intValue = [v5 intValue];
  v7 = sub_10016D778(rowCopy, @"title");
  v8 = sub_10016D778(rowCopy, @"parentObjectID");
  v9 = [(CLSHandoutAssignedItem *)self initWithType:intValue title:v7 handoutAttachmentID:v8];

  if (v9)
  {
    [(CLSHandoutAssignedItem *)v9 _initCommonPropsWithDatabaseRow:rowCopy];
    v10 = sub_10016D778(rowCopy, @"currentActivityID");
    [(CLSHandoutAssignedItem *)v9 setCurrentActivityID:v10];

    v11 = sub_10016D778(rowCopy, @"identifier");
    [(CLSHandoutAssignedItem *)v9 setIdentifier:v11];

    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v12, v13, objc_opt_class(), 0];
    v15 = sub_10016D778(rowCopy, @"bundleIDs");
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

- (void)bindTo:(id)to
{
  toCopy = to;
  v15.receiver = self;
  v15.super_class = CLSHandoutAssignedItem;
  [(CLSHandoutAssignedItem *)&v15 bindTo:toCopy];
  parentObjectID = [(CLSHandoutAssignedItem *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  title = [(CLSHandoutAssignedItem *)self title];
  sub_1000982FC(toCopy, title, @"title");

  v7 = [NSNumber numberWithInt:[(CLSHandoutAssignedItem *)self type]];
  sub_1000982FC(toCopy, v7, @"type");

  identifier = [(CLSHandoutAssignedItem *)self identifier];
  sub_1000982FC(toCopy, identifier, @"identifier");

  currentActivityID = [(CLSHandoutAssignedItem *)self currentActivityID];
  sub_1000982FC(toCopy, currentActivityID, @"currentActivityID");

  bundleIDs = [(CLSHandoutAssignedItem *)self bundleIDs];
  if (bundleIDs)
  {
    v14 = 0;
    v11 = [NSKeyedArchiver archivedDataWithRootObject:bundleIDs requiringSecureCoding:1 error:&v14];
    v12 = v14;
    v13 = v12;
    if (v12)
    {
      [v12 cls_debug:CLSLogDatabase];
    }

    sub_1000982FC(toCopy, v11, @"bundleIDs");
  }
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version == 1)
  {
LABEL_7:
    if (sub_1000B9298(v8, @"alter table CLSHandoutAssignedItem add column bundleIDs blob", 0, 0, 0))
    {
      version = 2;
      goto LABEL_9;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSHandoutAssignedItem (\n    objectID            text not null,\n    parentObjectID      text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    title               text,\n    identifier          text,\n    appIdentifier       text,\n    type                integer,\n    currentActivityID   text\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSHandoutAssignedItem_objectID on CLSHandoutAssignedItem (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSHandoutAssignedItem_parentObjectID on CLSHandoutAssignedItem (parentObjectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create trigger if not exists trigger_cascade_delete_activity_for_delete_objectID\n  after delete\n  on CLSHandoutAssignedItem\n  for each row\n  begin\n  delete from CLSActivity where parentObjectID=OLD.objectID;\n end\n", 0, 0, 0))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_9:
  *finalVersion = version;
  v9 = 1;
LABEL_11:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSHandoutAssignedItem *)self objectID];
  v7 = objectID;
  v6 = [NSArray arrayWithObjects:&v7 count:1];

  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

- (id)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"parentObjectType"];
  v6 = CLSHandoutAttachmentTypeFromString();

  v7 = [recordCopy objectForKeyedSubscript:@"parentObjectID"];
  v8 = [recordCopy objectForKeyedSubscript:@"title"];
  v9 = [(CLSHandoutAssignedItem *)self initWithType:v6 title:v8 handoutAttachmentID:v7];
  v10 = v9;
  if (v9)
  {
    [(CLSHandoutAssignedItem *)v9 _initCommonPropsWithRecord:recordCopy];
    v11 = [recordCopy objectForKeyedSubscript:@"identifier"];
    [(CLSHandoutAssignedItem *)v10 setIdentifier:v11];

    v12 = [recordCopy objectForKeyedSubscript:@"currentActivityID"];
    [(CLSHandoutAssignedItem *)v10 setCurrentActivityID:v12];

    v13 = [recordCopy objectForKeyedSubscript:@"bundleIDs"];
    if (v13)
    {
      [(CLSHandoutAssignedItem *)v10 addBundleIDs:v13];
    }
  }

  return v10;
}

- (void)populate:(id)populate
{
  v12.receiver = self;
  v12.super_class = CLSHandoutAssignedItem;
  populateCopy = populate;
  [(CLSHandoutAssignedItem *)&v12 populate:populateCopy];
  v5 = [(CLSHandoutAssignedItem *)self title:v12.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"title"];

  identifier = [(CLSHandoutAssignedItem *)self identifier];
  [populateCopy setObject:identifier forKeyedSubscript:@"identifier"];

  currentActivityID = [(CLSHandoutAssignedItem *)self currentActivityID];
  [populateCopy setObject:currentActivityID forKeyedSubscript:@"currentActivityID"];

  parentObjectID = [(CLSHandoutAssignedItem *)self parentObjectID];
  [populateCopy setObject:parentObjectID forKeyedSubscript:@"parentObjectID"];

  [(CLSHandoutAssignedItem *)self type];
  v9 = NSStringFromHandoutAttachmentType();
  [populateCopy setObject:v9 forKeyedSubscript:@"parentObjectType"];

  bundleIDs = [(CLSHandoutAssignedItem *)self bundleIDs];
  allObjects = [bundleIDs allObjects];

  [populateCopy setObject:allObjects forKeyedSubscript:@"bundleIDs"];
}

@end
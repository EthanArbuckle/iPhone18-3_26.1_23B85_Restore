@interface CLSCollectionItem
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSCollectionItem)initWithCKRecord:(id)record;
- (CLSCollectionItem)initWithDatabaseRow:(id)row;
- (int64_t)syncBackend:(id)backend;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSCollectionItem

- (CLSCollectionItem)initWithCKRecord:(id)record
{
  recordCopy = record;
  _init = [(CLSCollectionItem *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithRecord:recordCopy];
    v7 = [recordCopy objectForKeyedSubscript:@"type"];
    [v6 setType:CLSCollectionItemTypeFromString()];

    v8 = [recordCopy objectForKeyedSubscript:@"referenceObjectID"];
    [v6 setReferenceObjectID:v8];

    v9 = [recordCopy objectForKeyedSubscript:@"displayOrder"];
    [v6 setDisplayOrder:{objc_msgSend(v9, "unsignedIntegerValue")}];
  }

  return v6;
}

- (void)populate:(id)populate
{
  v8.receiver = self;
  v8.super_class = CLSCollectionItem;
  populateCopy = populate;
  [(CLSCollectionItem *)&v8 populate:populateCopy];
  [(CLSCollectionItem *)self type:v8.receiver];
  v5 = NSStringFromCollectionItemType();
  [populateCopy setObject:v5 forKeyedSubscript:@"type"];

  referenceObjectID = [(CLSCollectionItem *)self referenceObjectID];
  [populateCopy setObject:referenceObjectID forKeyedSubscript:@"referenceObjectID"];

  v7 = [NSNumber numberWithUnsignedInteger:[(CLSCollectionItem *)self displayOrder]];
  [populateCopy setObject:v7 forKeyedSubscript:@"displayOrder"];

  [(CLSCollectionItem *)self updateParentReferencesForRecord:populateCopy];
}

- (int64_t)syncBackend:(id)backend
{
  parent = [(CLSCollectionItem *)self parent];
  v4 = [parent type] != 2 && objc_msgSend(parent, "type") != 5;

  return v4;
}

- (void)bindTo:(id)to
{
  v10.receiver = self;
  v10.super_class = CLSCollectionItem;
  toCopy = to;
  [(CLSCollectionItem *)&v10 bindTo:toCopy];
  v11 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v11 count:1, v10.receiver, v10.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSCollectionItem *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSCollectionItem *)self type]];
  sub_1000982FC(toCopy, v7, @"type");

  referenceObjectID = [(CLSCollectionItem *)self referenceObjectID];
  sub_1000982FC(toCopy, referenceObjectID, @"referenceObjectID");

  v9 = [NSNumber numberWithUnsignedInteger:[(CLSCollectionItem *)self displayOrder]];
  sub_1000982FC(toCopy, v9, @"displayOrder");
}

- (CLSCollectionItem)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSCollectionItem *)self _init];
  [_init _initCommonPropsWithDatabaseRow:rowCopy];
  if (_init)
  {
    v6 = sub_10016D778(rowCopy, @"parentObjectID");
    [_init setParentObjectID:v6];

    v7 = sub_10016D778(rowCopy, @"type");
    [_init setType:{objc_msgSend(v7, "integerValue")}];

    v8 = sub_10016D778(rowCopy, @"referenceObjectID");
    [_init setReferenceObjectID:v8];

    v9 = sub_10016D778(rowCopy, @"displayOrder");
    [_init setDisplayOrder:{objc_msgSend(v9, "unsignedIntegerValue")}];
  }

  return _init;
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  v9 = 1;
  if (version <= 1)
  {
    if (version)
    {
      if (version != 1)
      {
        goto LABEL_38;
      }
    }

    else if (!sub_1000B9298(databaseCopy, @"create table CLSCollectionItem(   objectID           text not null,    parentObjectID     text not null,    type               integer,    dateCreated        real not null,    dateLastModified   real not null,    referenceObjectID  text not null,    appIdentifier      text not null,foreign key (parentObjectID) references CLSCollection(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSCollectionItem_objectID on CLSCollectionItem (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSCollectionItem_parentObjectID on CLSCollectionItem (parentObjectID)", 0, 0, 0))
    {
      goto LABEL_37;
    }

    if ((sub_1000B9298(v8, @"create index if not exists CLSCollectionItem_referenceObjectID on CLSCollectionItem (referenceObjectID)", 0, 0, 0) & 1) == 0)
    {
      CLSInitLog();
      v10 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        v11 = "Failed to migrate CLSCollectionItem(1): Could not add index referenceObjectID";
LABEL_36:
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, v13, 2u);
        goto LABEL_37;
      }

      goto LABEL_37;
    }

    goto LABEL_10;
  }

  if (version == 2)
  {
LABEL_10:
    if ((sub_1000B9298(v8, @"alter table CLSCollectionItem add column displayOrder integer default 0", 0, 0, 0) & 1) == 0)
    {
      CLSInitLog();
      v10 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        v11 = "Failed to migrate CLSCollectionItem(2): Could not add column displayOrder";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    goto LABEL_11;
  }

  if (version != 3)
  {
    goto LABEL_38;
  }

LABEL_11:
  if ((sub_1000B9298(v8, @"create table CLSCollectionItem_copy (\n    objectID           text not null,\n    parentObjectID     text not null,\n    type               integer,\n    dateCreated        real not null,\n    dateLastModified   real not null,\n    referenceObjectID  text not null,\n    displayOrder       integer default 0,\nforeign key (parentObjectID) references CLSCollection(objectID) on delete cascade on update cascade)", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v10 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v11 = "Failed to migrate CLSCollectionItem(3): Could not create new table CLSCollectionItem_copy";
      goto LABEL_36;
    }

LABEL_37:
    v9 = 0;
    goto LABEL_38;
  }

  if ((sub_1000B9298(v8, @"insert into CLSCollectionItem_copy select objectID, parentObjectID, type, dateCreated, dateLastModified, referenceObjectID, displayOrder from CLSCollectionItem", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v10 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v11 = "Failed to migrate CLSCollectionItem(3): Could not insert records into new table CLSCollectionItem_copy";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((sub_1000B9298(v8, @"drop table CLSCollectionItem", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v10 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v11 = "Failed to migrate CLSCollectionItem(3): Could not drop table CLSCollectionItem";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((sub_1000B9298(v8, @"alter table CLSCollectionItem_copy rename to CLSCollectionItem", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v10 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v11 = "Failed to migrate CLSCollectionItem(3): Could not rename table CLSCollectionItem_copy";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((sub_1000B9298(v8, @"create unique index if not exists CLSCollectionItem_objectID on CLSCollectionItem (objectID)", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v10 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v11 = "Failed to migrate CLSCollectionItem(3): Could not add unique index CLSCollectionItem_objectID";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((sub_1000B9298(v8, @"create index if not exists CLSCollectionItem_parentObjectID on CLSCollectionItem (parentObjectID)", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v10 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v11 = "Failed to migrate CLSCollectionItem(3): Could not add index CLSCollectionItem_parentObjectID";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  *finalVersion = 4;
LABEL_38:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  referenceObjectID = [(CLSCollectionItem *)self referenceObjectID];
  if ([(CLSCollectionItem *)self type]== 2)
  {
    v6 = objc_opt_class();
    parentObjectID = [(CLSCollectionItem *)self parentObjectID];
    v8 = [databaseCopy select:v6 identity:parentObjectID];

    if (v8 && ([v8 type] == 2 || objc_msgSend(v8, "type") == 5))
    {
      v10 = referenceObjectID;
      v9 = [NSArray arrayWithObjects:&v10 count:1];
      [databaseCopy deleteAll:objc_opt_class() where:@"objectID = ?" bindings:v9];
    }
  }
}

@end
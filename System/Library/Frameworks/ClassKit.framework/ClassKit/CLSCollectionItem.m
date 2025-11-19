@interface CLSCollectionItem
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSCollectionItem)initWithCKRecord:(id)a3;
- (CLSCollectionItem)initWithDatabaseRow:(id)a3;
- (int64_t)syncBackend:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSCollectionItem

- (CLSCollectionItem)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CLSCollectionItem *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithRecord:v4];
    v7 = [v4 objectForKeyedSubscript:@"type"];
    [v6 setType:CLSCollectionItemTypeFromString()];

    v8 = [v4 objectForKeyedSubscript:@"referenceObjectID"];
    [v6 setReferenceObjectID:v8];

    v9 = [v4 objectForKeyedSubscript:@"displayOrder"];
    [v6 setDisplayOrder:{objc_msgSend(v9, "unsignedIntegerValue")}];
  }

  return v6;
}

- (void)populate:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLSCollectionItem;
  v4 = a3;
  [(CLSCollectionItem *)&v8 populate:v4];
  [(CLSCollectionItem *)self type:v8.receiver];
  v5 = NSStringFromCollectionItemType();
  [v4 setObject:v5 forKeyedSubscript:@"type"];

  v6 = [(CLSCollectionItem *)self referenceObjectID];
  [v4 setObject:v6 forKeyedSubscript:@"referenceObjectID"];

  v7 = [NSNumber numberWithUnsignedInteger:[(CLSCollectionItem *)self displayOrder]];
  [v4 setObject:v7 forKeyedSubscript:@"displayOrder"];

  [(CLSCollectionItem *)self updateParentReferencesForRecord:v4];
}

- (int64_t)syncBackend:(id)a3
{
  v3 = [(CLSCollectionItem *)self parent];
  v4 = [v3 type] != 2 && objc_msgSend(v3, "type") != 5;

  return v4;
}

- (void)bindTo:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLSCollectionItem;
  v4 = a3;
  [(CLSCollectionItem *)&v10 bindTo:v4];
  v11 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v11 count:1, v10.receiver, v10.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSCollectionItem *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSCollectionItem *)self type]];
  sub_1000982FC(v4, v7, @"type");

  v8 = [(CLSCollectionItem *)self referenceObjectID];
  sub_1000982FC(v4, v8, @"referenceObjectID");

  v9 = [NSNumber numberWithUnsignedInteger:[(CLSCollectionItem *)self displayOrder]];
  sub_1000982FC(v4, v9, @"displayOrder");
}

- (CLSCollectionItem)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSCollectionItem *)self _init];
  [v5 _initCommonPropsWithDatabaseRow:v4];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"parentObjectID");
    [v5 setParentObjectID:v6];

    v7 = sub_10016D778(v4, @"type");
    [v5 setType:{objc_msgSend(v7, "integerValue")}];

    v8 = sub_10016D778(v4, @"referenceObjectID");
    [v5 setReferenceObjectID:v8];

    v9 = sub_10016D778(v4, @"displayOrder");
    [v5 setDisplayOrder:{objc_msgSend(v9, "unsignedIntegerValue")}];
  }

  return v5;
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  v9 = 1;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_38;
      }
    }

    else if (!sub_1000B9298(v7, @"create table CLSCollectionItem(   objectID           text not null,    parentObjectID     text not null,    type               integer,    dateCreated        real not null,    dateLastModified   real not null,    referenceObjectID  text not null,    appIdentifier      text not null,foreign key (parentObjectID) references CLSCollection(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSCollectionItem_objectID on CLSCollectionItem (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSCollectionItem_parentObjectID on CLSCollectionItem (parentObjectID)", 0, 0, 0))
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

  if (a3 == 2)
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

  if (a3 != 3)
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

  *a4 = 4;
LABEL_38:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSCollectionItem *)self referenceObjectID];
  if ([(CLSCollectionItem *)self type]== 2)
  {
    v6 = objc_opt_class();
    v7 = [(CLSCollectionItem *)self parentObjectID];
    v8 = [v4 select:v6 identity:v7];

    if (v8 && ([v8 type] == 2 || objc_msgSend(v8, "type") == 5))
    {
      v10 = v5;
      v9 = [NSArray arrayWithObjects:&v10 count:1];
      [v4 deleteAll:objc_opt_class() where:@"objectID = ?" bindings:v9];
    }
  }
}

@end
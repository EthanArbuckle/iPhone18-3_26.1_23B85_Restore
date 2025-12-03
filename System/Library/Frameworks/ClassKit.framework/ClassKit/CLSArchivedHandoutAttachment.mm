@interface CLSArchivedHandoutAttachment
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSArchivedHandoutAttachment

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"type");
  intValue = [v5 intValue];
  v7 = sub_10016D778(rowCopy, @"title");
  v8 = [(CLSArchivedHandoutAttachment *)self initWithType:intValue title:v7];

  if (v8)
  {
    [(CLSArchivedHandoutAttachment *)v8 _initCommonPropsWithDatabaseRow:rowCopy];
    v9 = sub_10016D778(rowCopy, @"bundleIdentifier");
    [(CLSArchivedHandoutAttachment *)v8 setBundleIdentifier:v9];

    v10 = sub_10016D778(rowCopy, @"URL");
    if (v10)
    {
      v11 = [NSURL URLWithString:v10];
      [(CLSArchivedHandoutAttachment *)v8 setURL:v11];
    }

    v12 = sub_10016D778(rowCopy, @"contextPath");
    if (v12)
    {
      v13 = [CLSUtil pathFromData:v12];
      [(CLSArchivedHandoutAttachment *)v8 setContextPath:v13];
    }

    v14 = sub_10016D778(rowCopy, @"contextSummary");
    [(CLSArchivedHandoutAttachment *)v8 setContextSummary:v14];

    v15 = sub_10016D778(rowCopy, @"contextCustomTypeName");
    [(CLSArchivedHandoutAttachment *)v8 setContextCustomTypeName:v15];

    v16 = sub_10016D778(rowCopy, @"contextSourceIsCatalog");
    -[CLSArchivedHandoutAttachment setContextSourceIsCatalog:](v8, "setContextSourceIsCatalog:", [v16 BOOLValue]);

    v17 = sub_10016D778(rowCopy, @"parentObjectID");
    [(CLSArchivedHandoutAttachment *)v8 setParentObjectID:v17];

    v18 = sub_10016D778(rowCopy, @"storeIdentifier");
    [(CLSArchivedHandoutAttachment *)v8 setStoreIdentifier:v18];

    v19 = sub_10016D778(rowCopy, @"contentStoreIdentifier");
    [(CLSArchivedHandoutAttachment *)v8 setContentStoreIdentifier:v19];

    v20 = sub_10016D778(rowCopy, @"shareType");
    -[CLSArchivedHandoutAttachment setShareType:](v8, "setShareType:", [v20 intValue]);

    v21 = sub_10016D778(rowCopy, @"permissionType");
    -[CLSArchivedHandoutAttachment setPermissionType:](v8, "setPermissionType:", [v21 intValue]);

    v22 = sub_10016D778(rowCopy, @"displayOrder");
    -[CLSArchivedHandoutAttachment setDisplayOrder:](v8, "setDisplayOrder:", [v22 integerValue]);

    v23 = sub_10016D778(rowCopy, @"contextType");
    -[CLSArchivedHandoutAttachment setContextType:](v8, "setContextType:", [v23 integerValue]);

    v24 = sub_10016D778(rowCopy, @"title");
    [(CLSArchivedHandoutAttachment *)v8 setTitle:v24];

    v25 = sub_10016D778(rowCopy, @"timeExpectation");
    [v25 doubleValue];
    [(CLSArchivedHandoutAttachment *)v8 setTimeExpectation:?];
  }

  return v8;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  v26.receiver = self;
  v26.super_class = CLSArchivedHandoutAttachment;
  [(CLSArchivedHandoutAttachment *)&v26 bindTo:toCopy];
  v27 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v27 count:1];
  sub_1000983A8(toCopy, v5);

  contextPath = [(CLSArchivedHandoutAttachment *)self contextPath];
  v7 = [contextPath count];

  if (v7)
  {
    contextPath2 = [(CLSArchivedHandoutAttachment *)self contextPath];
    v9 = [CLSUtil dataFromPath:contextPath2 makeBackwardCompatible:1 error:0];
  }

  else
  {
    v9 = 0;
  }

  parentObjectID = [(CLSArchivedHandoutAttachment *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  sub_1000982FC(toCopy, v9, @"contextPath");
  contextSummary = [(CLSArchivedHandoutAttachment *)self contextSummary];
  sub_1000982FC(toCopy, contextSummary, @"contextSummary");

  contextCustomTypeName = [(CLSArchivedHandoutAttachment *)self contextCustomTypeName];
  sub_1000982FC(toCopy, contextCustomTypeName, @"contextCustomTypeName");

  v13 = [NSNumber numberWithBool:[(CLSArchivedHandoutAttachment *)self contextSourceIsCatalog]];
  sub_1000982FC(toCopy, v13, @"contextSourceIsCatalog");

  v14 = [(CLSArchivedHandoutAttachment *)self URL];
  absoluteString = [v14 absoluteString];
  sub_1000982FC(toCopy, absoluteString, @"URL");

  title = [(CLSArchivedHandoutAttachment *)self title];
  sub_1000982FC(toCopy, title, @"title");

  bundleIdentifier = [(CLSArchivedHandoutAttachment *)self bundleIdentifier];
  sub_1000982FC(toCopy, bundleIdentifier, @"bundleIdentifier");

  storeIdentifier = [(CLSArchivedHandoutAttachment *)self storeIdentifier];
  sub_1000982FC(toCopy, storeIdentifier, @"storeIdentifier");

  v19 = [NSNumber numberWithInt:[(CLSArchivedHandoutAttachment *)self type]];
  sub_1000982FC(toCopy, v19, @"type");

  contentStoreIdentifier = [(CLSArchivedHandoutAttachment *)self contentStoreIdentifier];
  sub_1000982FC(toCopy, contentStoreIdentifier, @"contentStoreIdentifier");

  v21 = [NSNumber numberWithInt:[(CLSArchivedHandoutAttachment *)self shareType]];
  sub_1000982FC(toCopy, v21, @"shareType");

  v22 = [NSNumber numberWithInt:[(CLSArchivedHandoutAttachment *)self permissionType]];
  sub_1000982FC(toCopy, v22, @"permissionType");

  v23 = [NSNumber numberWithInteger:[(CLSArchivedHandoutAttachment *)self displayOrder]];
  sub_1000982FC(toCopy, v23, @"displayOrder");

  v24 = [NSNumber numberWithInteger:[(CLSArchivedHandoutAttachment *)self contextType]];
  sub_1000982FC(toCopy, v24, @"contextType");

  [(CLSArchivedHandoutAttachment *)self timeExpectation];
  v25 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v25, @"timeExpectation");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version > 1)
  {
    if (version != 2)
    {
      if (version != 3)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (version)
    {
      if (version != 1)
      {
        goto LABEL_9;
      }
    }

    else if (!sub_1000B9298(databaseCopy, @"create table CLSArchivedHandoutAttachment(   objectID          text not null,    parentObjectID    text not null,    appIdentifier     text not null,    dateCreated       real not null,    dateLastModified  real not null,    bundleIdentifier  text,    title             text,    type              integer,    complete          integer,    displayOrder      integer,    shareType         integer,    permissionType    integer,    completionStatus  integer,    contextType       integer,    URL               text,    contextPath       blob,    contextSummary    text,    contextCustomTypeName  text,    storeIdentifier   text,    contentStoreIdentifier text,    foreign key (parentObjectID) references CLSArchivedHandout(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSArchivedHandoutAttachment_objectID on CLSArchivedHandoutAttachment (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSArchivedHandoutAttachment_parentObjectID on CLSArchivedHandoutAttachment (parentObjectID)", 0, 0, 0))
    {
      goto LABEL_37;
    }

    if ((sub_1000B9298(v8, @"alter table CLSArchivedHandoutAttachment add column contextSourceIsCatalog integer", 0, 0, 0) & 1) == 0)
    {
      CLSInitLog();
      v9 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        v10 = "Failed to migrate CLSArchivedHandoutAttachment(1): Could not add column contextSourceIsCatalog";
LABEL_36:
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, v13, 2u);
        goto LABEL_37;
      }

      goto LABEL_37;
    }
  }

  if ((sub_1000B9298(v8, @"alter table CLSArchivedHandoutAttachment add column timeExpectation real", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v9 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v10 = "Failed to migrate CLSArchivedHandoutAttachment(2): Could not add column timeExpectation";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

LABEL_11:
  if ((sub_1000B9298(v8, @"create table CLSArchivedHandoutAttachment_temp(   objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    bundleIdentifier  text,\n    title             text,\n    type              integer,\n    complete          integer,\n    displayOrder      integer,\n    shareType         integer,\n    permissionType    integer,\n    completionStatus  integer,\n    contextType       integer,\n    URL               text,\n    contextPath       blob,\n    contextSummary    text,\n    contextCustomTypeName  text,\n    storeIdentifier   text,\n    contentStoreIdentifier text,\n    contextSourceIsCatalog integer,\n    timeExpectation real,\n    foreign key (parentObjectID) references CLSArchivedHandout(objectID) on delete cascade on update cascade)", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v9 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v10 = "Failed to migrate CLSArchivedHandoutAttachment(3): Could not create temp table";
      goto LABEL_36;
    }

LABEL_37:
    v11 = 0;
    goto LABEL_38;
  }

  if ((sub_1000B9298(v8, @"insert into CLSArchivedHandoutAttachment_temp select objectID, parentObjectID, dateCreated, dateLastModified, bundleIdentifier, title, type, complete, displayOrder, shareType, permissionType, completionStatus, contextType, URL, contextPath, contextSummary, contextCustomTypeName, storeIdentifier, contentStoreIdentifier, contextSourceIsCatalog, timeExpectation from CLSArchivedHandoutAttachment", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v9 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v10 = "Failed to migrate CLSArchivedHandoutAttachment(3): mass select failed";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((sub_1000B9298(v8, @"drop table CLSArchivedHandoutAttachment", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v9 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v10 = "Failed to migrate CLSArchivedHandoutAttachment(3): drop table failed";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((sub_1000B9298(v8, @"alter table CLSArchivedHandoutAttachment_temp rename to CLSArchivedHandoutAttachment", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v9 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v10 = "Failed to migrate CLSArchivedHandoutAttachment(3): rename table failed";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((sub_1000B9298(v8, @"create unique index if not exists CLSArchivedHandoutAttachment_objectID on CLSArchivedHandoutAttachment (objectID)", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v9 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v10 = "Failed to migrate CLSArchivedHandoutAttachment(3): unique index failed";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((sub_1000B9298(v8, @"create index if not exists CLSArchivedHandoutAttachment_parentObjectID on CLSArchivedHandoutAttachment (parentObjectID)", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v9 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v10 = "Failed to migrate CLSArchivedHandoutAttachment(3): parent index failed";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  version = 4;
LABEL_9:
  *finalVersion = version;
  v11 = 1;
LABEL_38:

  return v11;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSArchivedHandoutAttachment *)self objectID];
  v7 = objectID;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end
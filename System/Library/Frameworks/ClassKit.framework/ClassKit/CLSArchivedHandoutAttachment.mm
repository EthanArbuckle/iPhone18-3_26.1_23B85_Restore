@interface CLSArchivedHandoutAttachment
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSArchivedHandoutAttachment

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = sub_10016D778(v4, @"type");
  v6 = [v5 intValue];
  v7 = sub_10016D778(v4, @"title");
  v8 = [(CLSArchivedHandoutAttachment *)self initWithType:v6 title:v7];

  if (v8)
  {
    [(CLSArchivedHandoutAttachment *)v8 _initCommonPropsWithDatabaseRow:v4];
    v9 = sub_10016D778(v4, @"bundleIdentifier");
    [(CLSArchivedHandoutAttachment *)v8 setBundleIdentifier:v9];

    v10 = sub_10016D778(v4, @"URL");
    if (v10)
    {
      v11 = [NSURL URLWithString:v10];
      [(CLSArchivedHandoutAttachment *)v8 setURL:v11];
    }

    v12 = sub_10016D778(v4, @"contextPath");
    if (v12)
    {
      v13 = [CLSUtil pathFromData:v12];
      [(CLSArchivedHandoutAttachment *)v8 setContextPath:v13];
    }

    v14 = sub_10016D778(v4, @"contextSummary");
    [(CLSArchivedHandoutAttachment *)v8 setContextSummary:v14];

    v15 = sub_10016D778(v4, @"contextCustomTypeName");
    [(CLSArchivedHandoutAttachment *)v8 setContextCustomTypeName:v15];

    v16 = sub_10016D778(v4, @"contextSourceIsCatalog");
    -[CLSArchivedHandoutAttachment setContextSourceIsCatalog:](v8, "setContextSourceIsCatalog:", [v16 BOOLValue]);

    v17 = sub_10016D778(v4, @"parentObjectID");
    [(CLSArchivedHandoutAttachment *)v8 setParentObjectID:v17];

    v18 = sub_10016D778(v4, @"storeIdentifier");
    [(CLSArchivedHandoutAttachment *)v8 setStoreIdentifier:v18];

    v19 = sub_10016D778(v4, @"contentStoreIdentifier");
    [(CLSArchivedHandoutAttachment *)v8 setContentStoreIdentifier:v19];

    v20 = sub_10016D778(v4, @"shareType");
    -[CLSArchivedHandoutAttachment setShareType:](v8, "setShareType:", [v20 intValue]);

    v21 = sub_10016D778(v4, @"permissionType");
    -[CLSArchivedHandoutAttachment setPermissionType:](v8, "setPermissionType:", [v21 intValue]);

    v22 = sub_10016D778(v4, @"displayOrder");
    -[CLSArchivedHandoutAttachment setDisplayOrder:](v8, "setDisplayOrder:", [v22 integerValue]);

    v23 = sub_10016D778(v4, @"contextType");
    -[CLSArchivedHandoutAttachment setContextType:](v8, "setContextType:", [v23 integerValue]);

    v24 = sub_10016D778(v4, @"title");
    [(CLSArchivedHandoutAttachment *)v8 setTitle:v24];

    v25 = sub_10016D778(v4, @"timeExpectation");
    [v25 doubleValue];
    [(CLSArchivedHandoutAttachment *)v8 setTimeExpectation:?];
  }

  return v8;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CLSArchivedHandoutAttachment;
  [(CLSArchivedHandoutAttachment *)&v26 bindTo:v4];
  v27 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v27 count:1];
  sub_1000983A8(v4, v5);

  v6 = [(CLSArchivedHandoutAttachment *)self contextPath];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(CLSArchivedHandoutAttachment *)self contextPath];
    v9 = [CLSUtil dataFromPath:v8 makeBackwardCompatible:1 error:0];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(CLSArchivedHandoutAttachment *)self parentObjectID];
  sub_1000982FC(v4, v10, @"parentObjectID");

  sub_1000982FC(v4, v9, @"contextPath");
  v11 = [(CLSArchivedHandoutAttachment *)self contextSummary];
  sub_1000982FC(v4, v11, @"contextSummary");

  v12 = [(CLSArchivedHandoutAttachment *)self contextCustomTypeName];
  sub_1000982FC(v4, v12, @"contextCustomTypeName");

  v13 = [NSNumber numberWithBool:[(CLSArchivedHandoutAttachment *)self contextSourceIsCatalog]];
  sub_1000982FC(v4, v13, @"contextSourceIsCatalog");

  v14 = [(CLSArchivedHandoutAttachment *)self URL];
  v15 = [v14 absoluteString];
  sub_1000982FC(v4, v15, @"URL");

  v16 = [(CLSArchivedHandoutAttachment *)self title];
  sub_1000982FC(v4, v16, @"title");

  v17 = [(CLSArchivedHandoutAttachment *)self bundleIdentifier];
  sub_1000982FC(v4, v17, @"bundleIdentifier");

  v18 = [(CLSArchivedHandoutAttachment *)self storeIdentifier];
  sub_1000982FC(v4, v18, @"storeIdentifier");

  v19 = [NSNumber numberWithInt:[(CLSArchivedHandoutAttachment *)self type]];
  sub_1000982FC(v4, v19, @"type");

  v20 = [(CLSArchivedHandoutAttachment *)self contentStoreIdentifier];
  sub_1000982FC(v4, v20, @"contentStoreIdentifier");

  v21 = [NSNumber numberWithInt:[(CLSArchivedHandoutAttachment *)self shareType]];
  sub_1000982FC(v4, v21, @"shareType");

  v22 = [NSNumber numberWithInt:[(CLSArchivedHandoutAttachment *)self permissionType]];
  sub_1000982FC(v4, v22, @"permissionType");

  v23 = [NSNumber numberWithInteger:[(CLSArchivedHandoutAttachment *)self displayOrder]];
  sub_1000982FC(v4, v23, @"displayOrder");

  v24 = [NSNumber numberWithInteger:[(CLSArchivedHandoutAttachment *)self contextType]];
  sub_1000982FC(v4, v24, @"contextType");

  [(CLSArchivedHandoutAttachment *)self timeExpectation];
  v25 = [NSNumber numberWithDouble:?];
  sub_1000982FC(v4, v25, @"timeExpectation");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_9;
      }
    }

    else if (!sub_1000B9298(v7, @"create table CLSArchivedHandoutAttachment(   objectID          text not null,    parentObjectID    text not null,    appIdentifier     text not null,    dateCreated       real not null,    dateLastModified  real not null,    bundleIdentifier  text,    title             text,    type              integer,    complete          integer,    displayOrder      integer,    shareType         integer,    permissionType    integer,    completionStatus  integer,    contextType       integer,    URL               text,    contextPath       blob,    contextSummary    text,    contextCustomTypeName  text,    storeIdentifier   text,    contentStoreIdentifier text,    foreign key (parentObjectID) references CLSArchivedHandout(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSArchivedHandoutAttachment_objectID on CLSArchivedHandoutAttachment (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSArchivedHandoutAttachment_parentObjectID on CLSArchivedHandoutAttachment (parentObjectID)", 0, 0, 0))
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

  a3 = 4;
LABEL_9:
  *a4 = a3;
  v11 = 1;
LABEL_38:

  return v11;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSArchivedHandoutAttachment *)self objectID];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end
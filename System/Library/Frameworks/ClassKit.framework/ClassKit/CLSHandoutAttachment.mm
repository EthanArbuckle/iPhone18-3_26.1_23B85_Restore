@interface CLSHandoutAttachment
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
+ (id)hashableColumnNames;
+ (id)payloadsForObject:(id)a3 withSyncItem:(id)a4 database:(id)a5;
- (BOOL)canCopyToDatabase:(id)a3;
- (BOOL)writeInDatabase:(id)a3;
- (CLSHandoutAttachment)initWithCKRecord:(id)a3;
- (CLSHandoutAttachment)initWithDatabaseRow:(id)a3;
- (id)payloadsWithClassIDs:(id)a3 dependencies:(id)a4;
- (int64_t)syncBackend:(id)a3;
- (unint64_t)changeHash;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
- (void)updateAuthorizationInDatabase:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSHandoutAttachment

- (BOOL)canCopyToDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CLSHandoutAttachment *)self parentObjectID];
  v7 = [v4 select:v5 identity:v6];

  LOBYTE(v6) = [v7 canCopyToDatabase:v4];
  return v6;
}

- (BOOL)writeInDatabase:(id)a3
{
  v4 = a3;
  [(CLSHandoutAttachment *)self updateAuthorizationInDatabase:v4];
  v6.receiver = self;
  v6.super_class = CLSHandoutAttachment;
  LOBYTE(self) = [(CLSHandoutAttachment *)&v6 writeInDatabase:v4];

  return self;
}

- (void)updateAuthorizationInDatabase:(id)a3
{
  v4 = a3;
  if (([(CLSHandoutAttachment *)self isDeleted]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CLSHandoutAttachment *)self isLocked]^ 1;
  }

  v6 = [(CLSHandoutAttachment *)self objectID];
  sub_10016032C(v4, v6, v5);
}

- (CLSHandoutAttachment)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"type"];
  if (v5)
  {
    v6 = v5;
    v7 = CLSHandoutAttachmentTypeFromString();
    v8 = [v4 objectForKeyedSubscript:@"title"];
    v9 = [(CLSHandoutAttachment *)self initWithType:v7 title:v8];
    self = v9;
    if (!v9)
    {
LABEL_15:
      v21 = self;
LABEL_18:

      goto LABEL_19;
    }

    v28.receiver = v9;
    v28.super_class = CLSHandoutAttachment;
    [(CLSHandoutAttachment *)&v28 _initCommonPropsWithRecord:v4];
    v10 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
    [(CLSHandoutAttachment *)self setBundleIdentifier:v10];

    v11 = [v4 objectForKeyedSubscript:@"applicationName"];
    [(CLSHandoutAttachment *)self setApplicationName:v11];

    v12 = [v4 objectForKeyedSubscript:@"URL"];
    if (v12)
    {
      v13 = [NSURL URLWithString:v12];
      [(CLSHandoutAttachment *)self setURL:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"contextPath"];
    [(CLSHandoutAttachment *)self setContextPath:v14];

    v15 = [v4 objectForKeyedSubscript:@"storeIdentifier"];
    [(CLSHandoutAttachment *)self setStoreIdentifier:v15];

    v16 = [v4 objectForKeyedSubscript:@"contentStoreIdentifier"];
    [(CLSHandoutAttachment *)self setContentStoreIdentifier:v16];

    v17 = [v4 objectForKeyedSubscript:@"displayOrder"];
    -[CLSHandoutAttachment setDisplayOrder:](self, "setDisplayOrder:", [v17 integerValue]);

    if (v7 == 1)
    {
      v22 = [v4 objectForKeyedSubscript:@"contextType"];

      if (v22)
      {
        [(CLSHandoutAttachment *)self setContextType:CLSContextTypeFromDefaultName()];
        v6 = v22;
        goto LABEL_14;
      }

      v6 = 0;
    }

    else
    {
      if (v7 != 4 && v7 != 2)
      {
        goto LABEL_14;
      }

      v18 = [v4 objectForKeyedSubscript:@"shareType"];
      if (v18)
      {
        v19 = v18;
        [(CLSHandoutAttachment *)self setShareType:CLSShareTypeFromString()];
        v20 = [v4 objectForKeyedSubscript:@"permissionType"];

        if (v20)
        {
          [(CLSHandoutAttachment *)self setPermissionType:CLSPermissionTypeFromString()];

LABEL_14:
          v23 = [v4 objectForKeyedSubscript:@"contextSummary"];
          [(CLSHandoutAttachment *)self setContextSummary:v23];

          v24 = [v4 objectForKeyedSubscript:@"contextCustomTypeName"];
          [(CLSHandoutAttachment *)self setContextCustomTypeName:v24];

          v25 = [v4 objectForKeyedSubscript:@"contextSourceIsCatalog"];
          -[CLSHandoutAttachment setContextSourceIsCatalog:](self, "setContextSourceIsCatalog:", [v25 BOOLValue]);

          v26 = [v4 objectForKeyedSubscript:@"timeExpectation"];
          [v26 doubleValue];
          [(CLSHandoutAttachment *)self setTimeExpectation:?];

          goto LABEL_15;
        }
      }
    }

    v21 = 0;
    goto LABEL_18;
  }

  v21 = 0;
LABEL_19:

  return v21;
}

- (void)populate:(id)a3
{
  v26.receiver = self;
  v26.super_class = CLSHandoutAttachment;
  v4 = a3;
  [(CLSHandoutAttachment *)&v26 populate:v4];
  [(CLSHandoutAttachment *)self type:v26.receiver];
  v5 = NSStringFromHandoutAttachmentType();
  [v4 setObject:v5 forKeyedSubscript:@"type"];

  v6 = [(CLSHandoutAttachment *)self title];
  [v4 setObject:v6 forKeyedSubscript:@"title"];

  v7 = [(CLSHandoutAttachment *)self bundleIdentifier];
  [v4 setObject:v7 forKeyedSubscript:@"bundleIdentifier"];

  v8 = [(CLSHandoutAttachment *)self applicationName];
  [v4 setObject:v8 forKeyedSubscript:@"applicationName"];

  v9 = [(CLSHandoutAttachment *)self URL];
  v10 = [v9 absoluteString];
  [v4 setObject:v10 forKeyedSubscript:@"URL"];

  v11 = [(CLSHandoutAttachment *)self contextPath];
  [v4 setObject:v11 forKeyedSubscript:@"contextPath"];
  v12 = [CLSContext objectIDPathFromIdentifierPath:v11];
  v13 = [v12 componentsJoinedByString:@"/"];
  [v4 setObject:v13 forKeyedSubscript:@"objectIDPath"];

  v14 = [CLSContext stableObjectIDPathFromIdentifierPath:v11];
  v15 = [v14 componentsJoinedByString:@"/"];
  [v4 setObject:v15 forKeyedSubscript:@"stableObjectIDPath"];

  v16 = [(CLSHandoutAttachment *)self storeIdentifier];
  [v4 setObject:v16 forKeyedSubscript:@"storeIdentifier"];

  v17 = [(CLSHandoutAttachment *)self contentStoreIdentifier];
  [v4 setObject:v17 forKeyedSubscript:@"contentStoreIdentifier"];

  v18 = [NSNumber numberWithInteger:[(CLSHandoutAttachment *)self displayOrder]];
  [v4 setObject:v18 forKeyedSubscript:@"displayOrder"];

  [(CLSHandoutAttachment *)self shareType];
  v19 = NSStringFromShareType();
  [v4 setObject:v19 forKeyedSubscript:@"shareType"];

  [(CLSHandoutAttachment *)self permissionType];
  v20 = NSStringFromPermissionType();
  [v4 setObject:v20 forKeyedSubscript:@"permissionType"];

  [(CLSHandoutAttachment *)self contextType];
  v21 = DefaultNameFromContextType();
  [v4 setObject:v21 forKeyedSubscript:@"contextType"];

  [(CLSHandoutAttachment *)self updateParentReferencesForRecord:v4];
  v22 = [(CLSHandoutAttachment *)self contextSummary];
  [v4 setObject:v22 forKeyedSubscript:@"contextSummary"];

  v23 = [(CLSHandoutAttachment *)self contextCustomTypeName];
  [v4 setObject:v23 forKeyedSubscript:@"contextCustomTypeName"];

  v24 = [NSNumber numberWithBool:[(CLSHandoutAttachment *)self contextSourceIsCatalog]];
  [v4 setObject:v24 forKeyedSubscript:@"contextSourceIsCatalog"];

  [(CLSHandoutAttachment *)self timeExpectation];
  v25 = [NSNumber numberWithDouble:?];
  [v4 setObject:v25 forKeyedSubscript:@"timeExpectation"];
}

- (int64_t)syncBackend:(id)a3
{
  v4 = a3;
  v5 = [(CLSHandoutAttachment *)self parentObjectID];
  if (v5)
  {
    v6 = [v4 select:objc_opt_class() identity:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 syncBackend:v4];
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

+ (id)payloadsForObject:(id)a3 withSyncItem:(id)a4 database:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  [v10 setType:3];
  v11 = [v8 state] - 1;
  if (v11 < 3)
  {
    v12 = (v11 + 1);
  }

  else
  {
    v12 = 0;
  }

  [v10 setAction:v12];
  if ([v10 action] == 3 && sub_1000B2958())
  {
    [v10 setActionFlags:1];
  }

  if ([v8 state] == 3)
  {
    v13 = objc_opt_new();
    [v10 setAttachment:v13];

    v14 = [v8 entityIdentity];
    v15 = [v10 attachment];
    [v15 setObjectId:v14];

    v16 = [v9 select:objc_opt_class() identity:v14];
    v17 = v16;
    if (v16)
    {
      v18 = *(v16 + 16);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v20 = [v19 mutableCopy];
    v21 = [v10 attachment];
    [v21 setClassIds:v20];
  }

  else
  {
    v22 = sub_100018DBC(v7);
    [v10 setAttachment:v22];

    v23 = [v7 objectID];
    v14 = sub_10016022C(v9, v23);

    v17 = [v14 mutableCopy];
    v19 = [v10 attachment];
    [v19 setClassIds:v17];
  }

  v26 = v10;
  v24 = [NSArray arrayWithObjects:&v26 count:1];

  return v24;
}

- (id)payloadsWithClassIDs:(id)a3 dependencies:(id)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setType:3];
  v7 = sub_100018DBC(self);
  [v6 setAttachment:v7];

  v8 = [v5 mutableCopy];
  v9 = [v6 attachment];
  [v9 setClassIds:v8];

  v12 = v6;
  v10 = [NSArray arrayWithObjects:&v12 count:1];

  return v10;
}

+ (id)hashableColumnNames
{
  v4[0] = @"rowid";
  v4[1] = @"dateLastModified";
  v4[2] = @"completionStatus";
  v4[3] = @"dateLastCompleted";
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

- (unint64_t)changeHash
{
  v8.receiver = self;
  v8.super_class = CLSHandoutAttachment;
  v3 = [(CLSHandoutAttachment *)&v8 changeHash];
  v4 = (2 * [(CLSHandoutAttachment *)self completionStatus]);
  v5 = [(CLSHandoutAttachment *)self dateLastCompleted];
  v6 = v4 ^ [v5 hash];

  return v3 ^ v6;
}

- (CLSHandoutAttachment)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = sub_10016D778(v4, @"type");
  v6 = [v5 intValue];
  v7 = sub_10016D778(v4, @"title");
  v8 = [(CLSHandoutAttachment *)self initWithType:v6 title:v7];

  if (v8)
  {
    [(CLSHandoutAttachment *)v8 _initCommonPropsWithDatabaseRow:v4];
    v9 = sub_10016D778(v4, @"parentObjectID");
    [(CLSHandoutAttachment *)v8 setParentObjectID:v9];

    v10 = sub_10016D778(v4, @"bundleIdentifier");
    [(CLSHandoutAttachment *)v8 setBundleIdentifier:v10];

    v11 = sub_10016D778(v4, @"applicationName");
    [(CLSHandoutAttachment *)v8 setApplicationName:v11];

    v12 = sub_10016D778(v4, @"URL");
    if (v12)
    {
      v13 = [NSURL URLWithString:v12];
      [(CLSHandoutAttachment *)v8 setURL:v13];
    }

    v14 = sub_10016D778(v4, @"completionStatus");
    -[CLSHandoutAttachment setCompletionStatus:](v8, "setCompletionStatus:", [v14 intValue]);

    v15 = sub_10016D778(v4, @"contextPath");
    if (v15)
    {
      v16 = [CLSUtil pathFromData:v15];
      [(CLSHandoutAttachment *)v8 setContextPath:v16];
    }

    v17 = sub_10016D778(v4, @"contextSummary");
    [(CLSHandoutAttachment *)v8 setContextSummary:v17];

    v18 = sub_10016D778(v4, @"contextCustomTypeName");
    [(CLSHandoutAttachment *)v8 setContextCustomTypeName:v18];

    v19 = sub_10016D778(v4, @"contextSourceIsCatalog");
    -[CLSHandoutAttachment setContextSourceIsCatalog:](v8, "setContextSourceIsCatalog:", [v19 BOOLValue]);

    v20 = sub_10016D778(v4, @"storeIdentifier");
    [(CLSHandoutAttachment *)v8 setStoreIdentifier:v20];

    v21 = sub_10016D778(v4, @"contentStoreIdentifier");
    [(CLSHandoutAttachment *)v8 setContentStoreIdentifier:v21];

    v22 = sub_10016D778(v4, @"locked");
    -[CLSHandoutAttachment setLocked:](v8, "setLocked:", [v22 BOOLValue]);

    v23 = sub_10016D778(v4, @"shareType");
    -[CLSHandoutAttachment setShareType:](v8, "setShareType:", [v23 intValue]);

    v24 = sub_10016D778(v4, @"permissionType");
    -[CLSHandoutAttachment setPermissionType:](v8, "setPermissionType:", [v24 intValue]);

    v25 = sub_10016D778(v4, @"displayOrder");
    -[CLSHandoutAttachment setDisplayOrder:](v8, "setDisplayOrder:", [v25 integerValue]);

    v26 = sub_10016D778(v4, @"contextType");
    -[CLSHandoutAttachment setContextType:](v8, "setContextType:", [v26 integerValue]);

    v27 = sub_10016D6F0(v4, @"dateLastCompleted");
    [(CLSHandoutAttachment *)v8 setDateLastCompleted:v27];

    v28 = sub_10016D778(v4, @"timeExpectation");
    [v28 doubleValue];
    [(CLSHandoutAttachment *)v8 setTimeExpectation:?];
  }

  return v8;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = CLSHandoutAttachment;
  [(CLSHandoutAttachment *)&v30 bindTo:v4];
  v31 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v31 count:1];
  sub_1000983A8(v4, v5);

  v6 = [(CLSHandoutAttachment *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [(CLSHandoutAttachment *)self contextPath];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(CLSHandoutAttachment *)self contextPath];
    v10 = [CLSUtil dataFromPath:v9 makeBackwardCompatible:1 error:0];
  }

  else
  {
    v10 = 0;
  }

  sub_1000982FC(v4, v10, @"contextPath");
  v11 = [(CLSHandoutAttachment *)self contextSummary];
  sub_1000982FC(v4, v11, @"contextSummary");

  v12 = [(CLSHandoutAttachment *)self contextCustomTypeName];
  sub_1000982FC(v4, v12, @"contextCustomTypeName");

  v13 = [NSNumber numberWithBool:[(CLSHandoutAttachment *)self contextSourceIsCatalog]];
  sub_1000982FC(v4, v13, @"contextSourceIsCatalog");

  v14 = [(CLSHandoutAttachment *)self URL];
  v15 = [v14 absoluteString];
  sub_1000982FC(v4, v15, @"URL");

  v16 = [(CLSHandoutAttachment *)self title];
  sub_1000982FC(v4, v16, @"title");

  v17 = [(CLSHandoutAttachment *)self bundleIdentifier];
  sub_1000982FC(v4, v17, @"bundleIdentifier");

  v18 = [(CLSHandoutAttachment *)self applicationName];
  sub_1000982FC(v4, v18, @"applicationName");

  v19 = [(CLSHandoutAttachment *)self storeIdentifier];
  sub_1000982FC(v4, v19, @"storeIdentifier");

  v20 = [NSNumber numberWithInt:[(CLSHandoutAttachment *)self type]];
  sub_1000982FC(v4, v20, @"type");

  v21 = [NSNumber numberWithInt:[(CLSHandoutAttachment *)self completionStatus]];
  sub_1000982FC(v4, v21, @"completionStatus");

  v22 = [(CLSHandoutAttachment *)self contentStoreIdentifier];
  sub_1000982FC(v4, v22, @"contentStoreIdentifier");

  v23 = [NSNumber numberWithBool:[(CLSHandoutAttachment *)self isLocked]];
  sub_1000982FC(v4, v23, @"locked");

  v24 = [NSNumber numberWithInt:[(CLSHandoutAttachment *)self shareType]];
  sub_1000982FC(v4, v24, @"shareType");

  v25 = [NSNumber numberWithInt:[(CLSHandoutAttachment *)self permissionType]];
  sub_1000982FC(v4, v25, @"permissionType");

  v26 = [NSNumber numberWithInteger:[(CLSHandoutAttachment *)self displayOrder]];
  sub_1000982FC(v4, v26, @"displayOrder");

  v27 = [NSNumber numberWithInteger:[(CLSHandoutAttachment *)self contextType]];
  sub_1000982FC(v4, v27, @"contextType");

  v28 = [(CLSHandoutAttachment *)self dateLastCompleted];
  sub_1000982FC(v4, v28, @"dateLastCompleted");

  [(CLSHandoutAttachment *)self timeExpectation];
  v29 = [NSNumber numberWithDouble:?];
  sub_1000982FC(v4, v29, @"timeExpectation");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  v9 = 6;
  if (a3)
  {
    v9 = a3;
  }

  if (v9 <= 3)
  {
    switch(v9)
    {
      case 1:
        if ((sub_1000B9298(v7, @"alter table CLSHandoutAttachment add column contextSummary text", 0, 0, 0) & 1) == 0)
        {
          CLSInitLog();
          v11 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            *v14 = 0;
            v12 = "Failed to migrate CLSHandoutAttachment(1): Could not add column summary";
            goto LABEL_55;
          }

          goto LABEL_56;
        }

        if ((sub_1000B9298(v8, @"alter table CLSHandoutAttachment add column contextCustomTypeName text", 0, 0, 0) & 1) == 0)
        {
          CLSInitLog();
          v11 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            *v14 = 0;
            v12 = "Failed to migrate CLSHandoutAttachment(1): Could not add column customTypeName";
            goto LABEL_55;
          }

          goto LABEL_56;
        }

        break;
      case 2:
        break;
      case 3:
        goto LABEL_19;
      default:
        goto LABEL_15;
    }

    if ((sub_1000B9298(v8, @"alter table CLSHandoutAttachment add column applicationName text", 0, 0, 0) & 1) == 0)
    {
      CLSInitLog();
      v11 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        v12 = "Failed to migrate CLSHandoutAttachment(2): Could not add column 'applicationName'";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

LABEL_19:
    if ((sub_1000B9298(v8, @"alter table CLSHandoutAttachment add column contextSourceIsCatalog integer", 0, 0, 0) & 1) == 0)
    {
      CLSInitLog();
      v11 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        v12 = "Failed to migrate CLSHandoutAttachment(3): Could not add column contextSourceIsCatalog";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

LABEL_20:
    if ((sub_1000B9298(v8, @"alter table CLSHandoutAttachment add column timeExpectation real", 0, 0, 0) & 1) == 0)
    {
      CLSInitLog();
      v11 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        v12 = "Failed to migrate CLSHandoutAttachment(4): Could not add column timeExpectation";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    goto LABEL_21;
  }

  switch(v9)
  {
    case 4:
      goto LABEL_20;
    case 5:
LABEL_21:
      if ((sub_1000B9298(v8, @"create table CLSHandoutAttachment_temp(   objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    dateLastCompleted real,\n    bundleIdentifier  text,\n    title             text,\n    type              integer,\n    complete          integer,\n    displayOrder      integer,\n    locked            integer,\n    shareType         integer,\n    permissionType    integer,\n    completionStatus  integer,\n    contextType       integer,\n    URL               text,\n    contextPath       blob,\n    storeIdentifier   text,\n    contentStoreIdentifier text,\n    contextSummary text,\n    contextCustomTypeName text,\n    applicationName text,\n    contextSourceIsCatalog integer,\n    timeExpectation real,\n    foreign key (parentObjectID) references CLSHandout(objectID) on delete cascade on update cascade)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          v12 = "Failed to migrate CLSHandoutAttachment(5): Could not create temporary table";
          goto LABEL_55;
        }

LABEL_56:
        v10 = 0;
        goto LABEL_57;
      }

      if ((sub_1000B9298(v8, @"insert into CLSHandoutAttachment_temp select objectID, parentObjectID, dateCreated, dateLastModified, dateLastCompleted, bundleIdentifier, title, type, complete, displayOrder, locked, shareType, permissionType, completionStatus, contextType, URL, contextPath, storeIdentifier, contentStoreIdentifier, contextSummary, contextCustomTypeName, applicationName, contextSourceIsCatalog, timeExpectation from CLSHandoutAttachment", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          v12 = "Failed to migrate CLSHandoutAttachment(5): Mass insert failed";
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if ((sub_1000B9298(v8, @"drop table CLSHandoutAttachment", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          v12 = "Failed to migrate CLSHandoutAttachment(5): drop table failed";
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if ((sub_1000B9298(v8, @"alter table CLSHandoutAttachment_temp rename to CLSHandoutAttachment", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          v12 = "Failed to migrate CLSHandoutAttachment(5): rename failed";
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if ((sub_1000B9298(v8, @"create unique index if not exists CLSHandoutAttachment_objectID on CLSHandoutAttachment (objectID)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          v12 = "Failed to migrate CLSHandoutAttachment(5): objectID index failed";
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if ((sub_1000B9298(v8, @"create index if not exists CLSHandoutAttachment_parentObjectID on CLSHandoutAttachment (parentObjectID)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          v12 = "Failed to migrate CLSHandoutAttachment(5): parentObjectID index failed";
LABEL_55:
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, v14, 2u);
          goto LABEL_56;
        }

        goto LABEL_56;
      }

      goto LABEL_14;
    case 6:
      if ((sub_1000B9298(v7, @"create table CLSHandoutAttachment(   objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    dateLastCompleted real,\n    bundleIdentifier  text,\n    title             text,\n    type              integer,\n    complete          integer,\n    displayOrder      integer,\n    locked            integer,\n    shareType         integer,\n    permissionType    integer,\n    completionStatus  integer,\n    contextType       integer,\n    URL               text,\n    contextPath       blob,\n    storeIdentifier   text,\n    contentStoreIdentifier text,\n    contextSummary text,\n    contextCustomTypeName text,\n    applicationName text,\n    contextSourceIsCatalog integer,\n    timeExpectation real,\n    foreign key (parentObjectID) references CLSHandout(objectID) on delete cascade on update cascade)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          v12 = "Failed to migrate CLSHandoutAttachment(6): Could not create table";
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if ((sub_1000B9298(v8, @"create unique index if not exists CLSHandoutAttachment_objectID on CLSHandoutAttachment (objectID)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          v12 = "Failed to migrate CLSHandoutAttachment(6): objectID index failed";
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if ((sub_1000B9298(v8, @"create index if not exists CLSHandoutAttachment_parentObjectID on CLSHandoutAttachment (parentObjectID)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          v12 = "Failed to migrate CLSHandoutAttachment(6): parentObjectID index failed";
          goto LABEL_55;
        }

        goto LABEL_56;
      }

LABEL_14:
      a3 = 7;
      break;
  }

LABEL_15:
  *a4 = a3;
  v10 = 1;
LABEL_57:

  return v10;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSHandoutAttachment *)self objectID];
  v6 = [v4 select:objc_opt_class() identity:v5];
  v7 = objc_opt_new();
  if (v6)
  {
    v8 = v6[2];
    [v7 addObjectsFromArray:v8];
  }

  else
  {
    v9 = objc_opt_new();
    v6 = v9;
    if (v9)
    {
      objc_setProperty_nonatomic_copy(v9, v10, v5, 8);
    }
  }

  v11 = sub_10016022C(v4, v5);
  [v7 addObjectsFromArray:v11];

  v12 = [v7 allObjects];
  sub_10008121C(v6, v12);

  if ([v4 insertOrUpdateObject:v6])
  {
    v14 = v5;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [v4 deleteAllWithoutTracking:objc_opt_class() where:@"attachmentID = ?" bindings:v13];
  }
}

@end
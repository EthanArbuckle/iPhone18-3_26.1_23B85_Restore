@interface CLSHandoutAttachment
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
+ (id)hashableColumnNames;
+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database;
- (BOOL)canCopyToDatabase:(id)database;
- (BOOL)writeInDatabase:(id)database;
- (CLSHandoutAttachment)initWithCKRecord:(id)record;
- (CLSHandoutAttachment)initWithDatabaseRow:(id)row;
- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies;
- (int64_t)syncBackend:(id)backend;
- (unint64_t)changeHash;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)updateAuthorizationInDatabase:(id)database;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSHandoutAttachment

- (BOOL)canCopyToDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_opt_class();
  parentObjectID = [(CLSHandoutAttachment *)self parentObjectID];
  v7 = [databaseCopy select:v5 identity:parentObjectID];

  LOBYTE(parentObjectID) = [v7 canCopyToDatabase:databaseCopy];
  return parentObjectID;
}

- (BOOL)writeInDatabase:(id)database
{
  databaseCopy = database;
  [(CLSHandoutAttachment *)self updateAuthorizationInDatabase:databaseCopy];
  v6.receiver = self;
  v6.super_class = CLSHandoutAttachment;
  LOBYTE(self) = [(CLSHandoutAttachment *)&v6 writeInDatabase:databaseCopy];

  return self;
}

- (void)updateAuthorizationInDatabase:(id)database
{
  databaseCopy = database;
  if (([(CLSHandoutAttachment *)self isDeleted]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CLSHandoutAttachment *)self isLocked]^ 1;
  }

  objectID = [(CLSHandoutAttachment *)self objectID];
  sub_10016032C(databaseCopy, objectID, v5);
}

- (CLSHandoutAttachment)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"type"];
  if (v5)
  {
    v6 = v5;
    v7 = CLSHandoutAttachmentTypeFromString();
    v8 = [recordCopy objectForKeyedSubscript:@"title"];
    v9 = [(CLSHandoutAttachment *)self initWithType:v7 title:v8];
    self = v9;
    if (!v9)
    {
LABEL_15:
      selfCopy = self;
LABEL_18:

      goto LABEL_19;
    }

    v28.receiver = v9;
    v28.super_class = CLSHandoutAttachment;
    [(CLSHandoutAttachment *)&v28 _initCommonPropsWithRecord:recordCopy];
    v10 = [recordCopy objectForKeyedSubscript:@"bundleIdentifier"];
    [(CLSHandoutAttachment *)self setBundleIdentifier:v10];

    v11 = [recordCopy objectForKeyedSubscript:@"applicationName"];
    [(CLSHandoutAttachment *)self setApplicationName:v11];

    v12 = [recordCopy objectForKeyedSubscript:@"URL"];
    if (v12)
    {
      v13 = [NSURL URLWithString:v12];
      [(CLSHandoutAttachment *)self setURL:v13];
    }

    v14 = [recordCopy objectForKeyedSubscript:@"contextPath"];
    [(CLSHandoutAttachment *)self setContextPath:v14];

    v15 = [recordCopy objectForKeyedSubscript:@"storeIdentifier"];
    [(CLSHandoutAttachment *)self setStoreIdentifier:v15];

    v16 = [recordCopy objectForKeyedSubscript:@"contentStoreIdentifier"];
    [(CLSHandoutAttachment *)self setContentStoreIdentifier:v16];

    v17 = [recordCopy objectForKeyedSubscript:@"displayOrder"];
    -[CLSHandoutAttachment setDisplayOrder:](self, "setDisplayOrder:", [v17 integerValue]);

    if (v7 == 1)
    {
      v22 = [recordCopy objectForKeyedSubscript:@"contextType"];

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

      v18 = [recordCopy objectForKeyedSubscript:@"shareType"];
      if (v18)
      {
        v19 = v18;
        [(CLSHandoutAttachment *)self setShareType:CLSShareTypeFromString()];
        v20 = [recordCopy objectForKeyedSubscript:@"permissionType"];

        if (v20)
        {
          [(CLSHandoutAttachment *)self setPermissionType:CLSPermissionTypeFromString()];

LABEL_14:
          v23 = [recordCopy objectForKeyedSubscript:@"contextSummary"];
          [(CLSHandoutAttachment *)self setContextSummary:v23];

          v24 = [recordCopy objectForKeyedSubscript:@"contextCustomTypeName"];
          [(CLSHandoutAttachment *)self setContextCustomTypeName:v24];

          v25 = [recordCopy objectForKeyedSubscript:@"contextSourceIsCatalog"];
          -[CLSHandoutAttachment setContextSourceIsCatalog:](self, "setContextSourceIsCatalog:", [v25 BOOLValue]);

          v26 = [recordCopy objectForKeyedSubscript:@"timeExpectation"];
          [v26 doubleValue];
          [(CLSHandoutAttachment *)self setTimeExpectation:?];

          goto LABEL_15;
        }
      }
    }

    selfCopy = 0;
    goto LABEL_18;
  }

  selfCopy = 0;
LABEL_19:

  return selfCopy;
}

- (void)populate:(id)populate
{
  v26.receiver = self;
  v26.super_class = CLSHandoutAttachment;
  populateCopy = populate;
  [(CLSHandoutAttachment *)&v26 populate:populateCopy];
  [(CLSHandoutAttachment *)self type:v26.receiver];
  v5 = NSStringFromHandoutAttachmentType();
  [populateCopy setObject:v5 forKeyedSubscript:@"type"];

  title = [(CLSHandoutAttachment *)self title];
  [populateCopy setObject:title forKeyedSubscript:@"title"];

  bundleIdentifier = [(CLSHandoutAttachment *)self bundleIdentifier];
  [populateCopy setObject:bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];

  applicationName = [(CLSHandoutAttachment *)self applicationName];
  [populateCopy setObject:applicationName forKeyedSubscript:@"applicationName"];

  v9 = [(CLSHandoutAttachment *)self URL];
  absoluteString = [v9 absoluteString];
  [populateCopy setObject:absoluteString forKeyedSubscript:@"URL"];

  contextPath = [(CLSHandoutAttachment *)self contextPath];
  [populateCopy setObject:contextPath forKeyedSubscript:@"contextPath"];
  v12 = [CLSContext objectIDPathFromIdentifierPath:contextPath];
  v13 = [v12 componentsJoinedByString:@"/"];
  [populateCopy setObject:v13 forKeyedSubscript:@"objectIDPath"];

  v14 = [CLSContext stableObjectIDPathFromIdentifierPath:contextPath];
  v15 = [v14 componentsJoinedByString:@"/"];
  [populateCopy setObject:v15 forKeyedSubscript:@"stableObjectIDPath"];

  storeIdentifier = [(CLSHandoutAttachment *)self storeIdentifier];
  [populateCopy setObject:storeIdentifier forKeyedSubscript:@"storeIdentifier"];

  contentStoreIdentifier = [(CLSHandoutAttachment *)self contentStoreIdentifier];
  [populateCopy setObject:contentStoreIdentifier forKeyedSubscript:@"contentStoreIdentifier"];

  v18 = [NSNumber numberWithInteger:[(CLSHandoutAttachment *)self displayOrder]];
  [populateCopy setObject:v18 forKeyedSubscript:@"displayOrder"];

  [(CLSHandoutAttachment *)self shareType];
  v19 = NSStringFromShareType();
  [populateCopy setObject:v19 forKeyedSubscript:@"shareType"];

  [(CLSHandoutAttachment *)self permissionType];
  v20 = NSStringFromPermissionType();
  [populateCopy setObject:v20 forKeyedSubscript:@"permissionType"];

  [(CLSHandoutAttachment *)self contextType];
  v21 = DefaultNameFromContextType();
  [populateCopy setObject:v21 forKeyedSubscript:@"contextType"];

  [(CLSHandoutAttachment *)self updateParentReferencesForRecord:populateCopy];
  contextSummary = [(CLSHandoutAttachment *)self contextSummary];
  [populateCopy setObject:contextSummary forKeyedSubscript:@"contextSummary"];

  contextCustomTypeName = [(CLSHandoutAttachment *)self contextCustomTypeName];
  [populateCopy setObject:contextCustomTypeName forKeyedSubscript:@"contextCustomTypeName"];

  v24 = [NSNumber numberWithBool:[(CLSHandoutAttachment *)self contextSourceIsCatalog]];
  [populateCopy setObject:v24 forKeyedSubscript:@"contextSourceIsCatalog"];

  [(CLSHandoutAttachment *)self timeExpectation];
  v25 = [NSNumber numberWithDouble:?];
  [populateCopy setObject:v25 forKeyedSubscript:@"timeExpectation"];
}

- (int64_t)syncBackend:(id)backend
{
  backendCopy = backend;
  parentObjectID = [(CLSHandoutAttachment *)self parentObjectID];
  if (parentObjectID)
  {
    v6 = [backendCopy select:objc_opt_class() identity:parentObjectID];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 syncBackend:backendCopy];
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

+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database
{
  objectCopy = object;
  itemCopy = item;
  databaseCopy = database;
  v10 = objc_opt_new();
  [v10 setType:3];
  v11 = [itemCopy state] - 1;
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

  if ([itemCopy state] == 3)
  {
    v13 = objc_opt_new();
    [v10 setAttachment:v13];

    entityIdentity = [itemCopy entityIdentity];
    attachment = [v10 attachment];
    [attachment setObjectId:entityIdentity];

    v16 = [databaseCopy select:objc_opt_class() identity:entityIdentity];
    v17 = v16;
    if (v16)
    {
      v18 = *(v16 + 16);
    }

    else
    {
      v18 = 0;
    }

    attachment3 = v18;
    v20 = [attachment3 mutableCopy];
    attachment2 = [v10 attachment];
    [attachment2 setClassIds:v20];
  }

  else
  {
    v22 = sub_100018DBC(objectCopy);
    [v10 setAttachment:v22];

    objectID = [objectCopy objectID];
    entityIdentity = sub_10016022C(databaseCopy, objectID);

    v17 = [entityIdentity mutableCopy];
    attachment3 = [v10 attachment];
    [attachment3 setClassIds:v17];
  }

  v26 = v10;
  v24 = [NSArray arrayWithObjects:&v26 count:1];

  return v24;
}

- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies
{
  dsCopy = ds;
  v6 = objc_opt_new();
  [v6 setType:3];
  v7 = sub_100018DBC(self);
  [v6 setAttachment:v7];

  v8 = [dsCopy mutableCopy];
  attachment = [v6 attachment];
  [attachment setClassIds:v8];

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
  changeHash = [(CLSHandoutAttachment *)&v8 changeHash];
  v4 = (2 * [(CLSHandoutAttachment *)self completionStatus]);
  dateLastCompleted = [(CLSHandoutAttachment *)self dateLastCompleted];
  v6 = v4 ^ [dateLastCompleted hash];

  return changeHash ^ v6;
}

- (CLSHandoutAttachment)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"type");
  intValue = [v5 intValue];
  v7 = sub_10016D778(rowCopy, @"title");
  v8 = [(CLSHandoutAttachment *)self initWithType:intValue title:v7];

  if (v8)
  {
    [(CLSHandoutAttachment *)v8 _initCommonPropsWithDatabaseRow:rowCopy];
    v9 = sub_10016D778(rowCopy, @"parentObjectID");
    [(CLSHandoutAttachment *)v8 setParentObjectID:v9];

    v10 = sub_10016D778(rowCopy, @"bundleIdentifier");
    [(CLSHandoutAttachment *)v8 setBundleIdentifier:v10];

    v11 = sub_10016D778(rowCopy, @"applicationName");
    [(CLSHandoutAttachment *)v8 setApplicationName:v11];

    v12 = sub_10016D778(rowCopy, @"URL");
    if (v12)
    {
      v13 = [NSURL URLWithString:v12];
      [(CLSHandoutAttachment *)v8 setURL:v13];
    }

    v14 = sub_10016D778(rowCopy, @"completionStatus");
    -[CLSHandoutAttachment setCompletionStatus:](v8, "setCompletionStatus:", [v14 intValue]);

    v15 = sub_10016D778(rowCopy, @"contextPath");
    if (v15)
    {
      v16 = [CLSUtil pathFromData:v15];
      [(CLSHandoutAttachment *)v8 setContextPath:v16];
    }

    v17 = sub_10016D778(rowCopy, @"contextSummary");
    [(CLSHandoutAttachment *)v8 setContextSummary:v17];

    v18 = sub_10016D778(rowCopy, @"contextCustomTypeName");
    [(CLSHandoutAttachment *)v8 setContextCustomTypeName:v18];

    v19 = sub_10016D778(rowCopy, @"contextSourceIsCatalog");
    -[CLSHandoutAttachment setContextSourceIsCatalog:](v8, "setContextSourceIsCatalog:", [v19 BOOLValue]);

    v20 = sub_10016D778(rowCopy, @"storeIdentifier");
    [(CLSHandoutAttachment *)v8 setStoreIdentifier:v20];

    v21 = sub_10016D778(rowCopy, @"contentStoreIdentifier");
    [(CLSHandoutAttachment *)v8 setContentStoreIdentifier:v21];

    v22 = sub_10016D778(rowCopy, @"locked");
    -[CLSHandoutAttachment setLocked:](v8, "setLocked:", [v22 BOOLValue]);

    v23 = sub_10016D778(rowCopy, @"shareType");
    -[CLSHandoutAttachment setShareType:](v8, "setShareType:", [v23 intValue]);

    v24 = sub_10016D778(rowCopy, @"permissionType");
    -[CLSHandoutAttachment setPermissionType:](v8, "setPermissionType:", [v24 intValue]);

    v25 = sub_10016D778(rowCopy, @"displayOrder");
    -[CLSHandoutAttachment setDisplayOrder:](v8, "setDisplayOrder:", [v25 integerValue]);

    v26 = sub_10016D778(rowCopy, @"contextType");
    -[CLSHandoutAttachment setContextType:](v8, "setContextType:", [v26 integerValue]);

    v27 = sub_10016D6F0(rowCopy, @"dateLastCompleted");
    [(CLSHandoutAttachment *)v8 setDateLastCompleted:v27];

    v28 = sub_10016D778(rowCopy, @"timeExpectation");
    [v28 doubleValue];
    [(CLSHandoutAttachment *)v8 setTimeExpectation:?];
  }

  return v8;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  v30.receiver = self;
  v30.super_class = CLSHandoutAttachment;
  [(CLSHandoutAttachment *)&v30 bindTo:toCopy];
  v31 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v31 count:1];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSHandoutAttachment *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  contextPath = [(CLSHandoutAttachment *)self contextPath];
  v8 = [contextPath count];

  if (v8)
  {
    contextPath2 = [(CLSHandoutAttachment *)self contextPath];
    v10 = [CLSUtil dataFromPath:contextPath2 makeBackwardCompatible:1 error:0];
  }

  else
  {
    v10 = 0;
  }

  sub_1000982FC(toCopy, v10, @"contextPath");
  contextSummary = [(CLSHandoutAttachment *)self contextSummary];
  sub_1000982FC(toCopy, contextSummary, @"contextSummary");

  contextCustomTypeName = [(CLSHandoutAttachment *)self contextCustomTypeName];
  sub_1000982FC(toCopy, contextCustomTypeName, @"contextCustomTypeName");

  v13 = [NSNumber numberWithBool:[(CLSHandoutAttachment *)self contextSourceIsCatalog]];
  sub_1000982FC(toCopy, v13, @"contextSourceIsCatalog");

  v14 = [(CLSHandoutAttachment *)self URL];
  absoluteString = [v14 absoluteString];
  sub_1000982FC(toCopy, absoluteString, @"URL");

  title = [(CLSHandoutAttachment *)self title];
  sub_1000982FC(toCopy, title, @"title");

  bundleIdentifier = [(CLSHandoutAttachment *)self bundleIdentifier];
  sub_1000982FC(toCopy, bundleIdentifier, @"bundleIdentifier");

  applicationName = [(CLSHandoutAttachment *)self applicationName];
  sub_1000982FC(toCopy, applicationName, @"applicationName");

  storeIdentifier = [(CLSHandoutAttachment *)self storeIdentifier];
  sub_1000982FC(toCopy, storeIdentifier, @"storeIdentifier");

  v20 = [NSNumber numberWithInt:[(CLSHandoutAttachment *)self type]];
  sub_1000982FC(toCopy, v20, @"type");

  v21 = [NSNumber numberWithInt:[(CLSHandoutAttachment *)self completionStatus]];
  sub_1000982FC(toCopy, v21, @"completionStatus");

  contentStoreIdentifier = [(CLSHandoutAttachment *)self contentStoreIdentifier];
  sub_1000982FC(toCopy, contentStoreIdentifier, @"contentStoreIdentifier");

  v23 = [NSNumber numberWithBool:[(CLSHandoutAttachment *)self isLocked]];
  sub_1000982FC(toCopy, v23, @"locked");

  v24 = [NSNumber numberWithInt:[(CLSHandoutAttachment *)self shareType]];
  sub_1000982FC(toCopy, v24, @"shareType");

  v25 = [NSNumber numberWithInt:[(CLSHandoutAttachment *)self permissionType]];
  sub_1000982FC(toCopy, v25, @"permissionType");

  v26 = [NSNumber numberWithInteger:[(CLSHandoutAttachment *)self displayOrder]];
  sub_1000982FC(toCopy, v26, @"displayOrder");

  v27 = [NSNumber numberWithInteger:[(CLSHandoutAttachment *)self contextType]];
  sub_1000982FC(toCopy, v27, @"contextType");

  dateLastCompleted = [(CLSHandoutAttachment *)self dateLastCompleted];
  sub_1000982FC(toCopy, dateLastCompleted, @"dateLastCompleted");

  [(CLSHandoutAttachment *)self timeExpectation];
  v29 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v29, @"timeExpectation");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  versionCopy = 6;
  if (version)
  {
    versionCopy = version;
  }

  if (versionCopy <= 3)
  {
    switch(versionCopy)
    {
      case 1:
        if ((sub_1000B9298(databaseCopy, @"alter table CLSHandoutAttachment add column contextSummary text", 0, 0, 0) & 1) == 0)
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

  switch(versionCopy)
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
      if ((sub_1000B9298(databaseCopy, @"create table CLSHandoutAttachment(   objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    dateLastCompleted real,\n    bundleIdentifier  text,\n    title             text,\n    type              integer,\n    complete          integer,\n    displayOrder      integer,\n    locked            integer,\n    shareType         integer,\n    permissionType    integer,\n    completionStatus  integer,\n    contextType       integer,\n    URL               text,\n    contextPath       blob,\n    storeIdentifier   text,\n    contentStoreIdentifier text,\n    contextSummary text,\n    contextCustomTypeName text,\n    applicationName text,\n    contextSourceIsCatalog integer,\n    timeExpectation real,\n    foreign key (parentObjectID) references CLSHandout(objectID) on delete cascade on update cascade)", 0, 0, 0) & 1) == 0)
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
      version = 7;
      break;
  }

LABEL_15:
  *finalVersion = version;
  v10 = 1;
LABEL_57:

  return v10;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSHandoutAttachment *)self objectID];
  v6 = [databaseCopy select:objc_opt_class() identity:objectID];
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
      objc_setProperty_nonatomic_copy(v9, v10, objectID, 8);
    }
  }

  v11 = sub_10016022C(databaseCopy, objectID);
  [v7 addObjectsFromArray:v11];

  allObjects = [v7 allObjects];
  sub_10008121C(v6, allObjects);

  if ([databaseCopy insertOrUpdateObject:v6])
  {
    v14 = objectID;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v13];
    [databaseCopy deleteAllWithoutTracking:objc_opt_class() where:@"attachmentID = ?" bindings:v13];
  }
}

@end
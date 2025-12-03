@interface CLSAsset
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
+ (id)hashableColumnNames;
+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database;
- (BOOL)canCopyToDatabase:(id)database;
- (BOOL)shouldInsertInDatabase:(id)database;
- (BOOL)willBeProcessedByEndpointServer:(id)server;
- (CLSAsset)initWithDatabaseRow:(id)row;
- (id)initWithCKRecord:(id)record;
- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies;
- (int64_t)syncBackend:(id)backend;
- (unint64_t)changeHash;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSAsset

- (BOOL)willBeProcessedByEndpointServer:(id)server
{
  database = [server database];
  ownerPersonID = [(CLSAsset *)self ownerPersonID];
  v6 = sub_1000712CC(database);
  v7 = v6;
  if (ownerPersonID)
  {
    if (!v6 || ([ownerPersonID isEqualToString:v6] & 1) == 0)
    {
      CLSInitLog();
      v8 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        v11 = ownerPersonID;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Refused to change asset.ownerPersonID from '%@' to '%@'", &v10, 0x16u);
      }
    }
  }

  else
  {
    [(CLSAsset *)self setOwnerPersonID:v6];
  }

  return 1;
}

- (BOOL)canCopyToDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_opt_class();
  parentObjectID = [(CLSAsset *)self parentObjectID];
  v7 = [databaseCopy select:v5 identity:parentObjectID];

  LOBYTE(parentObjectID) = [v7 canCopyToDatabase:databaseCopy];
  return parentObjectID;
}

+ (id)hashableColumnNames
{
  v4[0] = @"rowid";
  v4[1] = @"dateLastModified";
  v4[2] = @"url";
  v4[3] = @"thumbnailURL";
  v4[4] = @"title";
  v4[5] = @"durationInSeconds";
  v2 = [NSArray arrayWithObjects:v4 count:6];

  return v2;
}

- (unint64_t)changeHash
{
  v14.receiver = self;
  v14.super_class = CLSAsset;
  changeHash = [(CLSAsset *)&v14 changeHash];
  v4 = [(CLSAsset *)self URL];
  _cls_stableHash = [v4 _cls_stableHash];

  thumbnailURL = [(CLSAsset *)self thumbnailURL];
  v7 = _cls_stableHash ^ [thumbnailURL _cls_stableHash];

  title = [(CLSAsset *)self title];
  v9 = v7 ^ [title _cls_stableHash] ^ changeHash;

  v10 = v9 ^ (2 * [(CLSAsset *)self displayOrder]);
  [(CLSAsset *)self durationInSeconds];
  v11 = [NSNumber numberWithDouble:?];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (CLSAsset)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSAsset *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"original");
    [v6 setOriginal:{objc_msgSend(v8, "BOOLValue")}];

    v9 = sub_10016D778(rowCopy, @"schoolworkSyncStatus");
    [v6 setSchoolworkSyncStatus:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(rowCopy, @"uploaded");
    [v6 setUploaded:{objc_msgSend(v10, "BOOLValue")}];

    v11 = sub_10016D778(rowCopy, @"ownerPersonID");
    [v6 setOwnerPersonID:v11];

    v12 = sub_10016D778(rowCopy, @"ubiquitousContainerName");
    [v6 setUbiquitousContainerName:v12];

    v13 = sub_10016D778(rowCopy, @"relativePathWithinContainer");
    [v6 setRelativePathWithinContainer:v13];

    v14 = sub_10016D778(rowCopy, @"brItemID");
    [v6 setBrItemID:v14];

    v15 = sub_10016D778(rowCopy, @"brZoneName");
    [v6 setBrZoneName:v15];

    v16 = sub_10016D778(rowCopy, @"brOwnerName");
    [v6 setBrOwnerName:v16];

    v17 = sub_10016D778(rowCopy, @"brShareName");
    [v6 setBrShareName:v17];

    v18 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v18, "integerValue")}];

    ubiquitousContainerName = [v6 ubiquitousContainerName];

    if (ubiquitousContainerName)
    {
      if (![v6 type])
      {
        [v6 setType:1];
      }

      if (![v6 parentEntityType])
      {
        [v6 setParentEntityType:2];
      }
    }

    v20 = sub_10016D778(rowCopy, @"devModeURL");
    if (v20)
    {
      v21 = [[NSURL alloc] initWithString:v20];
      [v6 setDevModeURL:v21];
    }

    v22 = sub_10016D778(rowCopy, @"url");

    if (v22)
    {
      v23 = [[NSURL alloc] initWithString:v22];
      [v6 setURL:v23];
    }

    v24 = sub_10016D778(rowCopy, @"compressedURL");

    if (v24)
    {
      v25 = [[NSURL alloc] initWithString:v24];
      [v6 setCompressedURL:v25];
    }

    v26 = sub_10016D6F0(rowCopy, @"urlExpirationDate");
    [v6 setUrlExpirationDate:v26];

    [v6 setAppIdentifier:0];
    v27 = sub_10016D778(rowCopy, @"parentEntityType");
    [v6 setParentEntityType:{objc_msgSend(v27, "integerValue")}];

    v28 = sub_10016D778(rowCopy, @"title");
    [v6 setTitle:v28];

    v29 = sub_10016D778(rowCopy, @"fileSizeInBytes");
    [v6 setFileSizeInBytes:{objc_msgSend(v29, "integerValue")}];

    v30 = sub_10016D778(rowCopy, @"displayOrder");
    [v6 setDisplayOrder:{objc_msgSend(v30, "integerValue")}];

    v31 = sub_10016D778(rowCopy, @"durationInSeconds");
    [v31 doubleValue];
    [v6 setDurationInSeconds:?];

    v32 = sub_10016D778(rowCopy, @"fileUTTypeIdentifier");
    if (v32)
    {
      v33 = [UTType typeWithIdentifier:v32];
      [v6 setFileUTType:v33];
    }

    v34 = sub_10016D778(rowCopy, @"originalFilename");
    [v6 setOriginalFilename:v34];

    v35 = sub_10016D778(rowCopy, @"fractionUploaded");
    [v35 doubleValue];
    [v6 setFractionUploaded:?];

    v36 = sub_10016D778(rowCopy, @"downloaded");
    [v6 setDownloaded:{objc_msgSend(v36, "integerValue") != 0}];

    v37 = sub_10016D778(rowCopy, @"fractionDownloaded");
    [v37 doubleValue];
    [v6 setFractionDownloaded:?];

    v38 = sub_10016D778(rowCopy, @"staged");
    [v6 setStaged:{objc_msgSend(v38, "integerValue") != 0}];

    v39 = sub_10016D778(rowCopy, @"thumbnailURL");

    if (v39)
    {
      v40 = [[NSURL alloc] initWithString:v39];
      [v6 setThumbnailURL:v40];
    }

    [v6 setModified:0];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v39.receiver = self;
  v39.super_class = CLSAsset;
  toCopy = to;
  [(CLSAsset *)&v39 bindTo:toCopy];
  v5 = [(CLSAsset *)self parentObjectID:v39.receiver];
  sub_1000982FC(toCopy, v5, @"parentObjectID");

  brItemID = [(CLSAsset *)self brItemID];
  sub_1000982FC(toCopy, brItemID, @"brItemID");

  brZoneName = [(CLSAsset *)self brZoneName];
  sub_1000982FC(toCopy, brZoneName, @"brZoneName");

  brOwnerName = [(CLSAsset *)self brOwnerName];
  sub_1000982FC(toCopy, brOwnerName, @"brOwnerName");

  brShareName = [(CLSAsset *)self brShareName];
  sub_1000982FC(toCopy, brShareName, @"brShareName");

  ownerPersonID = [(CLSAsset *)self ownerPersonID];
  sub_1000982FC(toCopy, ownerPersonID, @"ownerPersonID");

  v11 = [NSNumber numberWithBool:[(CLSAsset *)self isUploaded]];
  sub_1000982FC(toCopy, v11, @"uploaded");

  v12 = [NSNumber numberWithBool:[(CLSAsset *)self isOriginal]];
  sub_1000982FC(toCopy, v12, @"original");

  v13 = [(CLSAsset *)self URL];
  absoluteString = [v13 absoluteString];
  sub_1000982FC(toCopy, absoluteString, @"url");

  compressedURL = [(CLSAsset *)self compressedURL];
  absoluteString2 = [compressedURL absoluteString];
  sub_1000982FC(toCopy, absoluteString2, @"compressedURL");

  ubiquitousContainerName = [(CLSAsset *)self ubiquitousContainerName];
  sub_1000982FC(toCopy, ubiquitousContainerName, @"ubiquitousContainerName");

  relativePathWithinContainer = [(CLSAsset *)self relativePathWithinContainer];
  sub_1000982FC(toCopy, relativePathWithinContainer, @"relativePathWithinContainer");

  devModeURL = [(CLSAsset *)self devModeURL];
  absoluteString3 = [devModeURL absoluteString];
  sub_1000982FC(toCopy, absoluteString3, @"devModeURL");

  v21 = [NSNumber numberWithInteger:[(CLSAsset *)self schoolworkSyncStatus]];
  sub_1000982FC(toCopy, v21, @"schoolworkSyncStatus");

  urlExpirationDate = [(CLSAsset *)self urlExpirationDate];
  sub_1000982FC(toCopy, urlExpirationDate, @"urlExpirationDate");

  v40 = @"appIdentifier";
  v23 = [NSArray arrayWithObjects:&v40 count:1];
  sub_1000983A8(toCopy, v23);

  v24 = [NSNumber numberWithInteger:[(CLSAsset *)self type]];
  sub_1000982FC(toCopy, v24, @"type");

  v25 = [NSNumber numberWithInteger:[(CLSAsset *)self parentEntityType]];
  sub_1000982FC(toCopy, v25, @"parentEntityType");

  title = [(CLSAsset *)self title];
  sub_1000982FC(toCopy, title, @"title");

  v27 = [NSNumber numberWithInteger:[(CLSAsset *)self fileSizeInBytes]];
  sub_1000982FC(toCopy, v27, @"fileSizeInBytes");

  v28 = [NSNumber numberWithInteger:[(CLSAsset *)self displayOrder]];
  sub_1000982FC(toCopy, v28, @"displayOrder");

  [(CLSAsset *)self durationInSeconds];
  v29 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v29, @"durationInSeconds");

  fileUTType = [(CLSAsset *)self fileUTType];
  identifier = [fileUTType identifier];
  sub_1000982FC(toCopy, identifier, @"fileUTTypeIdentifier");

  originalFilename = [(CLSAsset *)self originalFilename];
  sub_1000982FC(toCopy, originalFilename, @"originalFilename");

  [(CLSAsset *)self fractionUploaded];
  v33 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v33, @"fractionUploaded");

  v34 = [NSNumber numberWithBool:[(CLSAsset *)self isDownloaded]];
  sub_1000982FC(toCopy, v34, @"downloaded");

  [(CLSAsset *)self fractionDownloaded];
  v35 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v35, @"fractionDownloaded");

  v36 = [NSNumber numberWithBool:[(CLSAsset *)self isStaged]];
  sub_1000982FC(toCopy, v36, @"staged");

  thumbnailURL = [(CLSAsset *)self thumbnailURL];
  absoluteString4 = [thumbnailURL absoluteString];
  sub_1000982FC(toCopy, absoluteString4, @"thumbnailURL");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version != 2)
  {
    if (version != 1)
    {
      if (version)
      {
        goto LABEL_15;
      }

      if (!sub_1000B9298(databaseCopy, @"create table CLSAsset(objectID         text not null, parentObjectID   text not null, dateCreated      real not null, dateLastModified real not null, appIdentifier    text not null, url              text, brItemID         text, brZoneName       text, brOwnerName      text, ownerPersonID    text, uploaded         integer, original         integer, ubiquitousContainerName     text, relativePathWithinContainer text, brShareName      text, foreign key (parentObjectID) references CLSHandoutAttachment(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index CLSAsset_objectID on CLSAsset (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index CLSAsset_parentObjectID on CLSAsset (parentObjectID)", 0, 0, 0))
      {
        goto LABEL_48;
      }
    }

    if (!sub_1000B9298(v8, @"alter table CLSAsset add column devModeURL text", 0, 0, 0))
    {
      goto LABEL_48;
    }
  }

  *buf = 0;
  v24 = buf;
  v25 = 0x3032000000;
  v26 = sub_10015C8CC;
  v27 = sub_10015C8DC;
  v28 = @"alter table CLSAsset add column schoolworkSyncStatus integer";
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = sub_1000B9298(v8, @"alter table CLSAsset add column schoolworkSyncStatus integer", 0, 0, 0);
  if (v20[3])
  {
    v9 = objc_opt_class();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10015C8E4;
    v15[3] = &unk_100206460;
    v16 = v8;
    v17 = buf;
    v18 = &v19;
    [v16 selectAll:v9 block:v15];
    v10 = *(v20 + 24);
    if (v10)
    {
      version = 3;
    }

    else
    {
      version = 2;
    }
  }

  else
  {
    v10 = 0;
    version = 2;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(buf, 8);

  if ((v10 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_15:
  switch(version)
  {
    case 5uLL:
      goto LABEL_26;
    case 4uLL:
LABEL_25:
      if ((sub_1000B9298(v8, @"alter table CLSAsset add column durationInSeconds real", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v12 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v13 = "Failed to add durationInSeconds to CLSAsset";
          goto LABEL_47;
        }

LABEL_48:
        v11 = 0;
        goto LABEL_49;
      }

LABEL_26:
      if (sub_1000B9298(v8, @"alter table CLSAsset add column compressedURL text", 0, 0, 0))
      {
        version = 6;
        break;
      }

      CLSInitLog();
      v12 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v13 = "Failed to add durationInSeconds to CLSAsset";
LABEL_47:
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
        goto LABEL_48;
      }

      goto LABEL_48;
    case 3uLL:
      if ((sub_1000B9298(v8, @"create table CLSAssetCopy (\n objectID                     text not null,\n parentObjectID               text,\n dateCreated                  real not null,\n dateLastModified             real not null,\n url                          text,\n thumbnailURL                 text,\n brItemID                     text,\n brZoneName                   text,\n brOwnerName                  text,\n ownerPersonID                text,\n uploaded                     integer,\n fractionUploaded             real,\n original                     integer,\n ubiquitousContainerName      text,\n relativePathWithinContainer  text,\n brShareName                  text,\n schoolworkSyncStatus         integer,\n type                         integer,\n parentEntityType             integer,\n title                        text,\n fileSizeInBytes              integer,\n displayOrder                 integer,\n fileUTTypeIdentifier         text,\n originalFilename             text,\n downloaded                   integer,\n fractionDownloaded           real,\n staged                       integer,\n devModeURL                   text,\n urlExpirationDate            real\n)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v12 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v13 = "Failed to create CLSAssetCopy";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if ((sub_1000B9298(v8, @"insert into CLSAssetCopy (objectID, parentObjectID, dateCreated, dateLastModified, url, brItemID, brZoneName, brOwnerName, ownerPersonID, uploaded, original, ubiquitousContainerName, relativePathWithinContainer, brShareName, devModeURL, schoolworkSyncStatus) select objectID, parentObjectID, dateCreated, dateLastModified, url, brItemID, brZoneName, brOwnerName, ownerPersonID, uploaded, original, ubiquitousContainerName, relativePathWithinContainer, brShareName, devModeURL, schoolworkSyncStatus from CLSAsset", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v12 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v13 = "Failed to insert rows in CLSAssetCopy from CLSAsset";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if ((sub_1000B9298(v8, @"drop table CLSAsset", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v12 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v13 = "Failed to drop CLSAsset";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if ((sub_1000B9298(v8, @"create unique index CLSAsset_objectID on CLSAssetCopy (objectID)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v12 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v13 = "Failed to create unique index: CLSAssetCopy_objectID";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if ((sub_1000B9298(v8, @"create index CLSAsset_parentObjectID on CLSAssetCopy (parentObjectID)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v12 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v13 = "Failed to create unique index: CLSAssetCopy_parentObjectID";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if ((sub_1000B9298(v8, @"create index CLSAsset_staged on CLSAssetCopy (staged)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v12 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v13 = "Failed to create unique index: CLSAssetCopy_staged";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if ((sub_1000B9298(v8, @"alter table CLSAssetCopy rename to CLSAsset", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v12 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v13 = "Failed to rename CLSAssetCopy as CLSAsset";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      goto LABEL_25;
  }

  *finalVersion = version;
  v11 = 1;
LABEL_49:

  return v11;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSAsset *)self objectID];
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

  v11 = sub_10015CD74(databaseCopy, objectID);
  [v7 addObjectsFromArray:v11];

  allObjects = [v7 allObjects];
  sub_10008121C(v6, allObjects);

  [databaseCopy insertOrUpdateObject:v6];
  if ([(CLSAsset *)self type]== 3)
  {
    objectID2 = [(CLSAsset *)self objectID];
    v14 = sub_10015CF38(databaseCopy, objectID2);

    if (v14)
    {
      v15 = sub_10008E290([PDCKUploadAssetsOperation alloc], databaseCopy);
      v17 = v15;
      if (v15)
      {
        objc_setProperty_nonatomic_copy(v15, v16, &stru_100206480, 48);
      }

      v18 = [CKRecordID alloc];
      objectID3 = [(CLSAsset *)self objectID];
      if (v17)
      {
        v20 = v17[3];
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v22 = [v18 initWithRecordName:objectID3 zoneID:v21];

      v24 = v22;
      v23 = [NSArray arrayWithObjects:&v24 count:1];
      sub_10008E480(v17, &__NSArray0__struct, v23);
    }

    sub_10012EA64(PDFileSyncManager, self);
  }
}

- (id)initWithCKRecord:(id)record
{
  recordCopy = record;
  _init = [(CLSAsset *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithRecord:recordCopy];
    v7 = [recordCopy objectForKeyedSubscript:@"itemID"];
    [v6 setBrItemID:v7];

    v8 = [recordCopy objectForKeyedSubscript:@"ownerName"];
    [v6 setBrOwnerName:v8];

    v9 = [recordCopy objectForKeyedSubscript:@"zoneName"];
    [v6 setBrZoneName:v9];

    v10 = [recordCopy objectForKeyedSubscript:@"relativePathWithinContainer"];
    [v6 setRelativePathWithinContainer:v10];

    v11 = [recordCopy objectForKeyedSubscript:@"ubiquitousContainerName"];
    [v6 setUbiquitousContainerName:v11];

    v12 = [recordCopy objectForKeyedSubscript:@"shareName"];
    [v6 setBrShareName:v12];

    v13 = [recordCopy objectForKeyedSubscript:@"uploaded"];
    [v6 setUploaded:{objc_msgSend(v13, "BOOLValue")}];

    v14 = [recordCopy objectForKeyedSubscript:@"displayOrder"];
    [v6 setDisplayOrder:{objc_msgSend(v14, "integerValue")}];
    v15 = [recordCopy objectForKeyedSubscript:@"mediaDurationInSeconds"];
    [v15 doubleValue];
    [v6 setDurationInSeconds:?];
    v16 = [recordCopy objectForKeyedSubscript:@"fileSizeInBytes"];

    [v6 setFileSizeInBytes:{objc_msgSend(v16, "integerValue")}];
    v17 = [recordCopy objectForKeyedSubscript:@"parentEntityType"];

    [v6 setParentEntityType:{objc_msgSend(v17, "integerValue")}];
    v18 = [recordCopy objectForKeyedSubscript:@"type"];

    [v6 setType:{objc_msgSend(v18, "integerValue")}];
    v19 = [recordCopy objectForKeyedSubscript:@"fileUTTypeIdentifier"];
    if (v19)
    {
      v20 = [UTType typeWithIdentifier:v19];
      [v6 setFileUTType:v20];
    }

    v21 = [recordCopy objectForKeyedSubscript:@"originalFilename"];
    [v6 setOriginalFilename:v21];

    v22 = [recordCopy objectForKeyedSubscript:@"title"];
    [v6 setTitle:v22];

    [v6 setOriginal:1];
    [v6 setStaged:1];
  }

  return v6;
}

- (void)populate:(id)populate
{
  populateCopy = populate;
  v23.receiver = self;
  v23.super_class = CLSAsset;
  [(CLSAsset *)&v23 populate:populateCopy];
  brItemID = [(CLSAsset *)self brItemID];
  [populateCopy setObject:brItemID forKeyedSubscript:@"itemID"];

  brOwnerName = [(CLSAsset *)self brOwnerName];
  [populateCopy setObject:brOwnerName forKeyedSubscript:@"ownerName"];

  brZoneName = [(CLSAsset *)self brZoneName];
  [populateCopy setObject:brZoneName forKeyedSubscript:@"zoneName"];

  relativePathWithinContainer = [(CLSAsset *)self relativePathWithinContainer];
  [populateCopy setObject:relativePathWithinContainer forKeyedSubscript:@"relativePathWithinContainer"];

  ubiquitousContainerName = [(CLSAsset *)self ubiquitousContainerName];
  [populateCopy setObject:ubiquitousContainerName forKeyedSubscript:@"ubiquitousContainerName"];

  brShareName = [(CLSAsset *)self brShareName];
  [populateCopy setObject:brShareName forKeyedSubscript:@"shareName"];

  v11 = [NSNumber numberWithBool:[(CLSAsset *)self isUploaded]];
  [populateCopy setObject:v11 forKeyedSubscript:@"uploaded"];

  v12 = [NSNumber numberWithBool:[(CLSAsset *)self isOriginal]];
  [populateCopy setObject:v12 forKeyedSubscript:@"original"];

  v13 = [NSNumber numberWithInteger:[(CLSAsset *)self displayOrder]];
  [populateCopy setObject:v13 forKeyedSubscript:@"displayOrder"];

  [(CLSAsset *)self durationInSeconds];
  v14 = [NSNumber numberWithDouble:?];
  [populateCopy setObject:v14 forKeyedSubscript:@"mediaDurationInSeconds"];

  v15 = [NSNumber numberWithInteger:[(CLSAsset *)self fileSizeInBytes]];
  [populateCopy setObject:v15 forKeyedSubscript:@"fileSizeInBytes"];

  v16 = [NSNumber numberWithInteger:[(CLSAsset *)self parentEntityType]];
  [populateCopy setObject:v16 forKeyedSubscript:@"parentEntityType"];

  v17 = [NSNumber numberWithInteger:[(CLSAsset *)self type]];
  [populateCopy setObject:v17 forKeyedSubscript:@"type"];

  fileUTType = [(CLSAsset *)self fileUTType];

  if (fileUTType)
  {
    fileUTType2 = [(CLSAsset *)self fileUTType];
    identifier = [fileUTType2 identifier];
    [populateCopy setObject:identifier forKeyedSubscript:@"fileUTTypeIdentifier"];
  }

  originalFilename = [(CLSAsset *)self originalFilename];
  [populateCopy setObject:originalFilename forKeyedSubscript:@"originalFilename"];

  title = [(CLSAsset *)self title];
  [populateCopy setObject:title forKeyedSubscript:@"title"];

  [(CLSAsset *)self updateParentReferencesForRecord:populateCopy];
}

- (BOOL)shouldInsertInDatabase:(id)database
{
  v4 = sub_1000712CC(database);
  [(CLSAsset *)self setOwnerPersonID:v4];

  return 1;
}

- (int64_t)syncBackend:(id)backend
{
  backendCopy = backend;
  if (!self)
  {
    goto LABEL_40;
  }

  type = [(CLSAsset *)self type];
  if (!type)
  {
    goto LABEL_40;
  }

  if (type == 3)
  {
    if ([(CLSAsset *)self isUploaded])
    {
      brItemID = [(CLSAsset *)self brItemID];
      if (!brItemID)
      {
LABEL_39:

        goto LABEL_40;
      }

      brZoneName = [(CLSAsset *)self brZoneName];

      if (brZoneName)
      {
        goto LABEL_13;
      }
    }

LABEL_40:
    CLSInitLog();
    v23 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      objectID = [(CLSAsset *)self objectID];
      v27 = 138412290;
      v28 = objectID;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Asset (%@) not syncable", &v27, 0xCu);
    }

    v15 = -1;
    goto LABEL_43;
  }

  if (type != 1)
  {
    goto LABEL_13;
  }

  if (![(CLSAsset *)self isUploaded])
  {
    goto LABEL_40;
  }

  brItemID = [(CLSAsset *)self brItemID];
  if (!brItemID)
  {
    goto LABEL_39;
  }

  brZoneName2 = [(CLSAsset *)self brZoneName];
  if (!brZoneName2)
  {
    goto LABEL_39;
  }

  v8 = brZoneName2;
  brOwnerName = [(CLSAsset *)self brOwnerName];

  if (!brOwnerName)
  {
    goto LABEL_40;
  }

LABEL_13:
  parentObjectID = [(CLSAsset *)self parentObjectID];
  parentEntityType = [(CLSAsset *)self parentEntityType];
  if (parentEntityType <= 2)
  {
    if (parentEntityType)
    {
      if (parentEntityType != 1)
      {
        v13 = 0;
        if (parentEntityType != 2)
        {
LABEL_26:
          if ([(CLSAsset *)self isStaged])
          {
            if ([(CLSAsset *)self type]== 3)
            {
              v15 = 1;
            }

            else
            {
              v15 = -1;
            }
          }

          else
          {
            v15 = -1;
          }

          v14 = v13;
          goto LABEL_32;
        }
      }
    }

    else
    {
      CLSInitLog();
      v16 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Asset.parentEntityType is not set. Assuming the parent is a CLSHandoutAttachment and getting its syncBackend", &v27, 2u);
      }
    }
  }

  else if (parentEntityType > 5)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    if (parentEntityType != 6)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v17 = [backendCopy select:objc_opt_class() identity:parentObjectID];
  v13 = v17;
  if (!v17)
  {
    goto LABEL_26;
  }

  v15 = [v17 syncBackend:backendCopy];
  v14 = v13;
  if (v15 == -1)
  {
    goto LABEL_26;
  }

LABEL_32:
  CLSInitLog();
  v18 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    objectID2 = [(CLSAsset *)self objectID];
    v21 = @"None";
    if (v15 == 1)
    {
      v21 = @"iCloud";
    }

    if (!v15)
    {
      v21 = @"Server";
    }

    v22 = v21;
    v27 = 138412546;
    v28 = objectID2;
    v29 = 2112;
    v30 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Asset (%@) sync backend set to %@", &v27, 0x16u);
  }

LABEL_43:
  return v15;
}

+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database
{
  objectCopy = object;
  itemCopy = item;
  databaseCopy = database;
  v10 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v10 setType:15];
  state = [itemCopy state];
  v12 = objectCopy;
  objc_opt_self();
  if (state != 3)
  {
    if (state == 2)
    {
      if ([v12 isStaged])
      {
        state = 1;
      }

      else
      {
        state = 2;
      }
    }

    else
    {
      state = state == 1;
    }
  }

  [(PDDPPayload *)v10 setAction:state];
  if ([itemCopy state] == 3)
  {
    v13 = objc_opt_new();
    [(PDDPPayload *)v10 setAsset:v13];

    entityIdentity = [itemCopy entityIdentity];
    asset = [(PDDPPayload *)v10 asset];
    [asset setObjectId:entityIdentity];

    v16 = [databaseCopy select:objc_opt_class() identity:entityIdentity];

    if (v16)
    {
      v17 = v16[2];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
  }

  else
  {
    v19 = sub_10001E528(v12);
    [(PDDPPayload *)v10 setAsset:v19];

    entityIdentity = [v12 objectID];
    v18 = sub_10015CD74(databaseCopy, entityIdentity);
    v16 = databaseCopy;
  }

  v20 = [v18 mutableCopy];
  asset2 = [(PDDPPayload *)v10 asset];
  [asset2 setClassIds:v20];

  v24 = v10;
  v22 = [NSArray arrayWithObjects:&v24 count:1];

  return v22;
}

- (id)payloadsWithClassIDs:(id)ds dependencies:(id)dependencies
{
  dsCopy = ds;
  v6 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v6 setType:15];
  v7 = sub_10001E528(self);
  [(PDDPPayload *)v6 setAsset:v7];

  v8 = [dsCopy mutableCopy];
  asset = [(PDDPPayload *)v6 asset];
  [asset setClassIds:v8];

  v12 = v6;
  v10 = [NSArray arrayWithObjects:&v12 count:1];

  return v10;
}

@end
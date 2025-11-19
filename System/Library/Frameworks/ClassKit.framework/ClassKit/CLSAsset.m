@interface CLSAsset
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
+ (id)hashableColumnNames;
+ (id)payloadsForObject:(id)a3 withSyncItem:(id)a4 database:(id)a5;
- (BOOL)canCopyToDatabase:(id)a3;
- (BOOL)shouldInsertInDatabase:(id)a3;
- (BOOL)willBeProcessedByEndpointServer:(id)a3;
- (CLSAsset)initWithDatabaseRow:(id)a3;
- (id)initWithCKRecord:(id)a3;
- (id)payloadsWithClassIDs:(id)a3 dependencies:(id)a4;
- (int64_t)syncBackend:(id)a3;
- (unint64_t)changeHash;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSAsset

- (BOOL)willBeProcessedByEndpointServer:(id)a3
{
  v4 = [a3 database];
  v5 = [(CLSAsset *)self ownerPersonID];
  v6 = sub_1000712CC(v4);
  v7 = v6;
  if (v5)
  {
    if (!v6 || ([v5 isEqualToString:v6] & 1) == 0)
    {
      CLSInitLog();
      v8 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        v11 = v5;
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

- (BOOL)canCopyToDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CLSAsset *)self parentObjectID];
  v7 = [v4 select:v5 identity:v6];

  LOBYTE(v6) = [v7 canCopyToDatabase:v4];
  return v6;
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
  v3 = [(CLSAsset *)&v14 changeHash];
  v4 = [(CLSAsset *)self URL];
  v5 = [v4 _cls_stableHash];

  v6 = [(CLSAsset *)self thumbnailURL];
  v7 = v5 ^ [v6 _cls_stableHash];

  v8 = [(CLSAsset *)self title];
  v9 = v7 ^ [v8 _cls_stableHash] ^ v3;

  v10 = v9 ^ (2 * [(CLSAsset *)self displayOrder]);
  [(CLSAsset *)self durationInSeconds];
  v11 = [NSNumber numberWithDouble:?];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (CLSAsset)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSAsset *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"original");
    [v6 setOriginal:{objc_msgSend(v8, "BOOLValue")}];

    v9 = sub_10016D778(v4, @"schoolworkSyncStatus");
    [v6 setSchoolworkSyncStatus:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(v4, @"uploaded");
    [v6 setUploaded:{objc_msgSend(v10, "BOOLValue")}];

    v11 = sub_10016D778(v4, @"ownerPersonID");
    [v6 setOwnerPersonID:v11];

    v12 = sub_10016D778(v4, @"ubiquitousContainerName");
    [v6 setUbiquitousContainerName:v12];

    v13 = sub_10016D778(v4, @"relativePathWithinContainer");
    [v6 setRelativePathWithinContainer:v13];

    v14 = sub_10016D778(v4, @"brItemID");
    [v6 setBrItemID:v14];

    v15 = sub_10016D778(v4, @"brZoneName");
    [v6 setBrZoneName:v15];

    v16 = sub_10016D778(v4, @"brOwnerName");
    [v6 setBrOwnerName:v16];

    v17 = sub_10016D778(v4, @"brShareName");
    [v6 setBrShareName:v17];

    v18 = sub_10016D778(v4, @"type");
    [v6 setType:{objc_msgSend(v18, "integerValue")}];

    v19 = [v6 ubiquitousContainerName];

    if (v19)
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

    v20 = sub_10016D778(v4, @"devModeURL");
    if (v20)
    {
      v21 = [[NSURL alloc] initWithString:v20];
      [v6 setDevModeURL:v21];
    }

    v22 = sub_10016D778(v4, @"url");

    if (v22)
    {
      v23 = [[NSURL alloc] initWithString:v22];
      [v6 setURL:v23];
    }

    v24 = sub_10016D778(v4, @"compressedURL");

    if (v24)
    {
      v25 = [[NSURL alloc] initWithString:v24];
      [v6 setCompressedURL:v25];
    }

    v26 = sub_10016D6F0(v4, @"urlExpirationDate");
    [v6 setUrlExpirationDate:v26];

    [v6 setAppIdentifier:0];
    v27 = sub_10016D778(v4, @"parentEntityType");
    [v6 setParentEntityType:{objc_msgSend(v27, "integerValue")}];

    v28 = sub_10016D778(v4, @"title");
    [v6 setTitle:v28];

    v29 = sub_10016D778(v4, @"fileSizeInBytes");
    [v6 setFileSizeInBytes:{objc_msgSend(v29, "integerValue")}];

    v30 = sub_10016D778(v4, @"displayOrder");
    [v6 setDisplayOrder:{objc_msgSend(v30, "integerValue")}];

    v31 = sub_10016D778(v4, @"durationInSeconds");
    [v31 doubleValue];
    [v6 setDurationInSeconds:?];

    v32 = sub_10016D778(v4, @"fileUTTypeIdentifier");
    if (v32)
    {
      v33 = [UTType typeWithIdentifier:v32];
      [v6 setFileUTType:v33];
    }

    v34 = sub_10016D778(v4, @"originalFilename");
    [v6 setOriginalFilename:v34];

    v35 = sub_10016D778(v4, @"fractionUploaded");
    [v35 doubleValue];
    [v6 setFractionUploaded:?];

    v36 = sub_10016D778(v4, @"downloaded");
    [v6 setDownloaded:{objc_msgSend(v36, "integerValue") != 0}];

    v37 = sub_10016D778(v4, @"fractionDownloaded");
    [v37 doubleValue];
    [v6 setFractionDownloaded:?];

    v38 = sub_10016D778(v4, @"staged");
    [v6 setStaged:{objc_msgSend(v38, "integerValue") != 0}];

    v39 = sub_10016D778(v4, @"thumbnailURL");

    if (v39)
    {
      v40 = [[NSURL alloc] initWithString:v39];
      [v6 setThumbnailURL:v40];
    }

    [v6 setModified:0];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v39.receiver = self;
  v39.super_class = CLSAsset;
  v4 = a3;
  [(CLSAsset *)&v39 bindTo:v4];
  v5 = [(CLSAsset *)self parentObjectID:v39.receiver];
  sub_1000982FC(v4, v5, @"parentObjectID");

  v6 = [(CLSAsset *)self brItemID];
  sub_1000982FC(v4, v6, @"brItemID");

  v7 = [(CLSAsset *)self brZoneName];
  sub_1000982FC(v4, v7, @"brZoneName");

  v8 = [(CLSAsset *)self brOwnerName];
  sub_1000982FC(v4, v8, @"brOwnerName");

  v9 = [(CLSAsset *)self brShareName];
  sub_1000982FC(v4, v9, @"brShareName");

  v10 = [(CLSAsset *)self ownerPersonID];
  sub_1000982FC(v4, v10, @"ownerPersonID");

  v11 = [NSNumber numberWithBool:[(CLSAsset *)self isUploaded]];
  sub_1000982FC(v4, v11, @"uploaded");

  v12 = [NSNumber numberWithBool:[(CLSAsset *)self isOriginal]];
  sub_1000982FC(v4, v12, @"original");

  v13 = [(CLSAsset *)self URL];
  v14 = [v13 absoluteString];
  sub_1000982FC(v4, v14, @"url");

  v15 = [(CLSAsset *)self compressedURL];
  v16 = [v15 absoluteString];
  sub_1000982FC(v4, v16, @"compressedURL");

  v17 = [(CLSAsset *)self ubiquitousContainerName];
  sub_1000982FC(v4, v17, @"ubiquitousContainerName");

  v18 = [(CLSAsset *)self relativePathWithinContainer];
  sub_1000982FC(v4, v18, @"relativePathWithinContainer");

  v19 = [(CLSAsset *)self devModeURL];
  v20 = [v19 absoluteString];
  sub_1000982FC(v4, v20, @"devModeURL");

  v21 = [NSNumber numberWithInteger:[(CLSAsset *)self schoolworkSyncStatus]];
  sub_1000982FC(v4, v21, @"schoolworkSyncStatus");

  v22 = [(CLSAsset *)self urlExpirationDate];
  sub_1000982FC(v4, v22, @"urlExpirationDate");

  v40 = @"appIdentifier";
  v23 = [NSArray arrayWithObjects:&v40 count:1];
  sub_1000983A8(v4, v23);

  v24 = [NSNumber numberWithInteger:[(CLSAsset *)self type]];
  sub_1000982FC(v4, v24, @"type");

  v25 = [NSNumber numberWithInteger:[(CLSAsset *)self parentEntityType]];
  sub_1000982FC(v4, v25, @"parentEntityType");

  v26 = [(CLSAsset *)self title];
  sub_1000982FC(v4, v26, @"title");

  v27 = [NSNumber numberWithInteger:[(CLSAsset *)self fileSizeInBytes]];
  sub_1000982FC(v4, v27, @"fileSizeInBytes");

  v28 = [NSNumber numberWithInteger:[(CLSAsset *)self displayOrder]];
  sub_1000982FC(v4, v28, @"displayOrder");

  [(CLSAsset *)self durationInSeconds];
  v29 = [NSNumber numberWithDouble:?];
  sub_1000982FC(v4, v29, @"durationInSeconds");

  v30 = [(CLSAsset *)self fileUTType];
  v31 = [v30 identifier];
  sub_1000982FC(v4, v31, @"fileUTTypeIdentifier");

  v32 = [(CLSAsset *)self originalFilename];
  sub_1000982FC(v4, v32, @"originalFilename");

  [(CLSAsset *)self fractionUploaded];
  v33 = [NSNumber numberWithDouble:?];
  sub_1000982FC(v4, v33, @"fractionUploaded");

  v34 = [NSNumber numberWithBool:[(CLSAsset *)self isDownloaded]];
  sub_1000982FC(v4, v34, @"downloaded");

  [(CLSAsset *)self fractionDownloaded];
  v35 = [NSNumber numberWithDouble:?];
  sub_1000982FC(v4, v35, @"fractionDownloaded");

  v36 = [NSNumber numberWithBool:[(CLSAsset *)self isStaged]];
  sub_1000982FC(v4, v36, @"staged");

  v37 = [(CLSAsset *)self thumbnailURL];
  v38 = [v37 absoluteString];
  sub_1000982FC(v4, v38, @"thumbnailURL");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      if (a3)
      {
        goto LABEL_15;
      }

      if (!sub_1000B9298(v7, @"create table CLSAsset(objectID         text not null, parentObjectID   text not null, dateCreated      real not null, dateLastModified real not null, appIdentifier    text not null, url              text, brItemID         text, brZoneName       text, brOwnerName      text, ownerPersonID    text, uploaded         integer, original         integer, ubiquitousContainerName     text, relativePathWithinContainer text, brShareName      text, foreign key (parentObjectID) references CLSHandoutAttachment(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index CLSAsset_objectID on CLSAsset (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index CLSAsset_parentObjectID on CLSAsset (parentObjectID)", 0, 0, 0))
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
      a3 = 3;
    }

    else
    {
      a3 = 2;
    }
  }

  else
  {
    v10 = 0;
    a3 = 2;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(buf, 8);

  if ((v10 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_15:
  switch(a3)
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
        a3 = 6;
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

  *a4 = a3;
  v11 = 1;
LABEL_49:

  return v11;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSAsset *)self objectID];
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

  v11 = sub_10015CD74(v4, v5);
  [v7 addObjectsFromArray:v11];

  v12 = [v7 allObjects];
  sub_10008121C(v6, v12);

  [v4 insertOrUpdateObject:v6];
  if ([(CLSAsset *)self type]== 3)
  {
    v13 = [(CLSAsset *)self objectID];
    v14 = sub_10015CF38(v4, v13);

    if (v14)
    {
      v15 = sub_10008E290([PDCKUploadAssetsOperation alloc], v4);
      v17 = v15;
      if (v15)
      {
        objc_setProperty_nonatomic_copy(v15, v16, &stru_100206480, 48);
      }

      v18 = [CKRecordID alloc];
      v19 = [(CLSAsset *)self objectID];
      if (v17)
      {
        v20 = v17[3];
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v22 = [v18 initWithRecordName:v19 zoneID:v21];

      v24 = v22;
      v23 = [NSArray arrayWithObjects:&v24 count:1];
      sub_10008E480(v17, &__NSArray0__struct, v23);
    }

    sub_10012EA64(PDFileSyncManager, self);
  }
}

- (id)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CLSAsset *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithRecord:v4];
    v7 = [v4 objectForKeyedSubscript:@"itemID"];
    [v6 setBrItemID:v7];

    v8 = [v4 objectForKeyedSubscript:@"ownerName"];
    [v6 setBrOwnerName:v8];

    v9 = [v4 objectForKeyedSubscript:@"zoneName"];
    [v6 setBrZoneName:v9];

    v10 = [v4 objectForKeyedSubscript:@"relativePathWithinContainer"];
    [v6 setRelativePathWithinContainer:v10];

    v11 = [v4 objectForKeyedSubscript:@"ubiquitousContainerName"];
    [v6 setUbiquitousContainerName:v11];

    v12 = [v4 objectForKeyedSubscript:@"shareName"];
    [v6 setBrShareName:v12];

    v13 = [v4 objectForKeyedSubscript:@"uploaded"];
    [v6 setUploaded:{objc_msgSend(v13, "BOOLValue")}];

    v14 = [v4 objectForKeyedSubscript:@"displayOrder"];
    [v6 setDisplayOrder:{objc_msgSend(v14, "integerValue")}];
    v15 = [v4 objectForKeyedSubscript:@"mediaDurationInSeconds"];
    [v15 doubleValue];
    [v6 setDurationInSeconds:?];
    v16 = [v4 objectForKeyedSubscript:@"fileSizeInBytes"];

    [v6 setFileSizeInBytes:{objc_msgSend(v16, "integerValue")}];
    v17 = [v4 objectForKeyedSubscript:@"parentEntityType"];

    [v6 setParentEntityType:{objc_msgSend(v17, "integerValue")}];
    v18 = [v4 objectForKeyedSubscript:@"type"];

    [v6 setType:{objc_msgSend(v18, "integerValue")}];
    v19 = [v4 objectForKeyedSubscript:@"fileUTTypeIdentifier"];
    if (v19)
    {
      v20 = [UTType typeWithIdentifier:v19];
      [v6 setFileUTType:v20];
    }

    v21 = [v4 objectForKeyedSubscript:@"originalFilename"];
    [v6 setOriginalFilename:v21];

    v22 = [v4 objectForKeyedSubscript:@"title"];
    [v6 setTitle:v22];

    [v6 setOriginal:1];
    [v6 setStaged:1];
  }

  return v6;
}

- (void)populate:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CLSAsset;
  [(CLSAsset *)&v23 populate:v4];
  v5 = [(CLSAsset *)self brItemID];
  [v4 setObject:v5 forKeyedSubscript:@"itemID"];

  v6 = [(CLSAsset *)self brOwnerName];
  [v4 setObject:v6 forKeyedSubscript:@"ownerName"];

  v7 = [(CLSAsset *)self brZoneName];
  [v4 setObject:v7 forKeyedSubscript:@"zoneName"];

  v8 = [(CLSAsset *)self relativePathWithinContainer];
  [v4 setObject:v8 forKeyedSubscript:@"relativePathWithinContainer"];

  v9 = [(CLSAsset *)self ubiquitousContainerName];
  [v4 setObject:v9 forKeyedSubscript:@"ubiquitousContainerName"];

  v10 = [(CLSAsset *)self brShareName];
  [v4 setObject:v10 forKeyedSubscript:@"shareName"];

  v11 = [NSNumber numberWithBool:[(CLSAsset *)self isUploaded]];
  [v4 setObject:v11 forKeyedSubscript:@"uploaded"];

  v12 = [NSNumber numberWithBool:[(CLSAsset *)self isOriginal]];
  [v4 setObject:v12 forKeyedSubscript:@"original"];

  v13 = [NSNumber numberWithInteger:[(CLSAsset *)self displayOrder]];
  [v4 setObject:v13 forKeyedSubscript:@"displayOrder"];

  [(CLSAsset *)self durationInSeconds];
  v14 = [NSNumber numberWithDouble:?];
  [v4 setObject:v14 forKeyedSubscript:@"mediaDurationInSeconds"];

  v15 = [NSNumber numberWithInteger:[(CLSAsset *)self fileSizeInBytes]];
  [v4 setObject:v15 forKeyedSubscript:@"fileSizeInBytes"];

  v16 = [NSNumber numberWithInteger:[(CLSAsset *)self parentEntityType]];
  [v4 setObject:v16 forKeyedSubscript:@"parentEntityType"];

  v17 = [NSNumber numberWithInteger:[(CLSAsset *)self type]];
  [v4 setObject:v17 forKeyedSubscript:@"type"];

  v18 = [(CLSAsset *)self fileUTType];

  if (v18)
  {
    v19 = [(CLSAsset *)self fileUTType];
    v20 = [v19 identifier];
    [v4 setObject:v20 forKeyedSubscript:@"fileUTTypeIdentifier"];
  }

  v21 = [(CLSAsset *)self originalFilename];
  [v4 setObject:v21 forKeyedSubscript:@"originalFilename"];

  v22 = [(CLSAsset *)self title];
  [v4 setObject:v22 forKeyedSubscript:@"title"];

  [(CLSAsset *)self updateParentReferencesForRecord:v4];
}

- (BOOL)shouldInsertInDatabase:(id)a3
{
  v4 = sub_1000712CC(a3);
  [(CLSAsset *)self setOwnerPersonID:v4];

  return 1;
}

- (int64_t)syncBackend:(id)a3
{
  v4 = a3;
  if (!self)
  {
    goto LABEL_40;
  }

  v5 = [(CLSAsset *)self type];
  if (!v5)
  {
    goto LABEL_40;
  }

  if (v5 == 3)
  {
    if ([(CLSAsset *)self isUploaded])
    {
      v6 = [(CLSAsset *)self brItemID];
      if (!v6)
      {
LABEL_39:

        goto LABEL_40;
      }

      v10 = [(CLSAsset *)self brZoneName];

      if (v10)
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
      v25 = [(CLSAsset *)self objectID];
      v27 = 138412290;
      v28 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Asset (%@) not syncable", &v27, 0xCu);
    }

    v15 = -1;
    goto LABEL_43;
  }

  if (v5 != 1)
  {
    goto LABEL_13;
  }

  if (![(CLSAsset *)self isUploaded])
  {
    goto LABEL_40;
  }

  v6 = [(CLSAsset *)self brItemID];
  if (!v6)
  {
    goto LABEL_39;
  }

  v7 = [(CLSAsset *)self brZoneName];
  if (!v7)
  {
    goto LABEL_39;
  }

  v8 = v7;
  v9 = [(CLSAsset *)self brOwnerName];

  if (!v9)
  {
    goto LABEL_40;
  }

LABEL_13:
  v11 = [(CLSAsset *)self parentObjectID];
  v12 = [(CLSAsset *)self parentEntityType];
  if (v12 <= 2)
  {
    if (v12)
    {
      if (v12 != 1)
      {
        v13 = 0;
        if (v12 != 2)
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

  else if (v12 > 5)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    if (v12 != 6)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v17 = [v4 select:objc_opt_class() identity:v11];
  v13 = v17;
  if (!v17)
  {
    goto LABEL_26;
  }

  v15 = [v17 syncBackend:v4];
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
    v20 = [(CLSAsset *)self objectID];
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
    v28 = v20;
    v29 = 2112;
    v30 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Asset (%@) sync backend set to %@", &v27, 0x16u);
  }

LABEL_43:
  return v15;
}

+ (id)payloadsForObject:(id)a3 withSyncItem:(id)a4 database:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v10 setType:15];
  v11 = [v8 state];
  v12 = v7;
  objc_opt_self();
  if (v11 != 3)
  {
    if (v11 == 2)
    {
      if ([v12 isStaged])
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = v11 == 1;
    }
  }

  [(PDDPPayload *)v10 setAction:v11];
  if ([v8 state] == 3)
  {
    v13 = objc_opt_new();
    [(PDDPPayload *)v10 setAsset:v13];

    v14 = [v8 entityIdentity];
    v15 = [(PDDPPayload *)v10 asset];
    [v15 setObjectId:v14];

    v16 = [v9 select:objc_opt_class() identity:v14];

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

    v14 = [v12 objectID];
    v18 = sub_10015CD74(v9, v14);
    v16 = v9;
  }

  v20 = [v18 mutableCopy];
  v21 = [(PDDPPayload *)v10 asset];
  [v21 setClassIds:v20];

  v24 = v10;
  v22 = [NSArray arrayWithObjects:&v24 count:1];

  return v22;
}

- (id)payloadsWithClassIDs:(id)a3 dependencies:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v6 setType:15];
  v7 = sub_10001E528(self);
  [(PDDPPayload *)v6 setAsset:v7];

  v8 = [v5 mutableCopy];
  v9 = [(PDDPPayload *)v6 asset];
  [v9 setClassIds:v8];

  v12 = v6;
  v10 = [NSArray arrayWithObjects:&v12 count:1];

  return v10;
}

@end
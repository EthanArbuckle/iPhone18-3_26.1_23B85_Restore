@interface CLSArchivedAsset
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation CLSArchivedAsset

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSArchivedAsset *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"original");
    [v6 setOriginal:{objc_msgSend(v8, "BOOLValue")}];

    v9 = sub_10016D778(rowCopy, @"ownerPersonID");
    [v6 setOwnerPersonID:v9];

    v10 = sub_10016D778(rowCopy, @"ubiquitousContainerName");
    [v6 setUbiquitousContainerName:v10];

    v11 = sub_10016D778(rowCopy, @"relativePathWithinContainer");
    [v6 setRelativePathWithinContainer:v11];

    v12 = sub_10016D778(rowCopy, @"brItemID");
    [v6 setBrItemID:v12];

    v13 = sub_10016D778(rowCopy, @"brZoneName");
    [v6 setBrZoneName:v13];

    v14 = sub_10016D778(rowCopy, @"brOwnerName");
    [v6 setBrOwnerName:v14];

    v15 = sub_10016D778(rowCopy, @"brShareName");
    [v6 setBrShareName:v15];

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

    v17 = sub_10016D778(rowCopy, @"url");
    if (v17)
    {
      v18 = [[NSURL alloc] initWithString:v17];
      [v6 setURL:v18];
    }

    [v6 setAppIdentifier:0];
    v19 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v19, "integerValue")}];

    v20 = sub_10016D778(rowCopy, @"parentEntityType");
    [v6 setParentEntityType:{objc_msgSend(v20, "integerValue")}];

    v21 = sub_10016D778(rowCopy, @"title");
    [v6 setTitle:v21];

    v22 = sub_10016D778(rowCopy, @"fileSizeInBytes");
    [v6 setFileSizeInBytes:{objc_msgSend(v22, "integerValue")}];

    v23 = sub_10016D778(rowCopy, @"displayOrder");
    [v6 setDisplayOrder:{objc_msgSend(v23, "integerValue")}];

    v24 = sub_10016D778(rowCopy, @"durationInSeconds");
    [v24 doubleValue];
    [v6 setDurationInSeconds:?];

    v25 = sub_10016D778(rowCopy, @"fileUTTypeIdentifier");
    if (v25)
    {
      v26 = [UTType typeWithIdentifier:v25];
      [v6 setFileUTType:v26];
    }

    v27 = sub_10016D778(rowCopy, @"originalFilename");
    [v6 setOriginalFilename:v27];

    v28 = sub_10016D778(rowCopy, @"downloaded");
    [v6 setDownloaded:{objc_msgSend(v28, "BOOLValue")}];

    v29 = sub_10016D778(rowCopy, @"fractionDownloaded");
    [v29 doubleValue];
    [v6 setFractionDownloaded:?];

    v30 = sub_10016D778(rowCopy, @"thumbnailURL");

    if (v30)
    {
      v31 = [[NSURL alloc] initWithString:v30];
      [v6 setThumbnailURL:v31];
    }
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v30.receiver = self;
  v30.super_class = CLSArchivedAsset;
  toCopy = to;
  [(CLSArchivedAsset *)&v30 bindTo:toCopy];
  v5 = [(CLSArchivedAsset *)self parentObjectID:v30.receiver];
  sub_1000982FC(toCopy, v5, @"parentObjectID");

  brItemID = [(CLSArchivedAsset *)self brItemID];
  sub_1000982FC(toCopy, brItemID, @"brItemID");

  brZoneName = [(CLSArchivedAsset *)self brZoneName];
  sub_1000982FC(toCopy, brZoneName, @"brZoneName");

  brOwnerName = [(CLSArchivedAsset *)self brOwnerName];
  sub_1000982FC(toCopy, brOwnerName, @"brOwnerName");

  brShareName = [(CLSArchivedAsset *)self brShareName];
  sub_1000982FC(toCopy, brShareName, @"brShareName");

  ownerPersonID = [(CLSArchivedAsset *)self ownerPersonID];
  sub_1000982FC(toCopy, ownerPersonID, @"ownerPersonID");

  v11 = [NSNumber numberWithBool:[(CLSArchivedAsset *)self isOriginal]];
  sub_1000982FC(toCopy, v11, @"original");

  v12 = [(CLSArchivedAsset *)self URL];
  absoluteString = [v12 absoluteString];
  sub_1000982FC(toCopy, absoluteString, @"url");

  ubiquitousContainerName = [(CLSArchivedAsset *)self ubiquitousContainerName];
  sub_1000982FC(toCopy, ubiquitousContainerName, @"ubiquitousContainerName");

  relativePathWithinContainer = [(CLSArchivedAsset *)self relativePathWithinContainer];
  sub_1000982FC(toCopy, relativePathWithinContainer, @"relativePathWithinContainer");

  v31 = @"appIdentifier";
  v16 = [NSArray arrayWithObjects:&v31 count:1];
  sub_1000983A8(toCopy, v16);

  v17 = [NSNumber numberWithInteger:[(CLSArchivedAsset *)self type]];
  sub_1000982FC(toCopy, v17, @"type");

  v18 = [NSNumber numberWithInteger:[(CLSArchivedAsset *)self parentEntityType]];
  sub_1000982FC(toCopy, v18, @"parentEntityType");

  title = [(CLSArchivedAsset *)self title];
  sub_1000982FC(toCopy, title, @"title");

  v20 = [NSNumber numberWithInteger:[(CLSArchivedAsset *)self fileSizeInBytes]];
  sub_1000982FC(toCopy, v20, @"fileSizeInBytes");

  v21 = [NSNumber numberWithInteger:[(CLSArchivedAsset *)self displayOrder]];
  sub_1000982FC(toCopy, v21, @"displayOrder");

  [(CLSArchivedAsset *)self durationInSeconds];
  v22 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v22, @"durationInSeconds");

  fileUTType = [(CLSArchivedAsset *)self fileUTType];
  identifier = [fileUTType identifier];
  sub_1000982FC(toCopy, identifier, @"fileUTTypeIdentifier");

  originalFilename = [(CLSArchivedAsset *)self originalFilename];
  sub_1000982FC(toCopy, originalFilename, @"originalFilename");

  v26 = [NSNumber numberWithBool:[(CLSArchivedAsset *)self isDownloaded]];
  sub_1000982FC(toCopy, v26, @"downloaded");

  [(CLSArchivedAsset *)self fractionDownloaded];
  v27 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v27, @"fractionDownloaded");

  thumbnailURL = [(CLSArchivedAsset *)self thumbnailURL];
  absoluteString2 = [thumbnailURL absoluteString];
  sub_1000982FC(toCopy, absoluteString2, @"thumbnailURL");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  switch(version)
  {
    case 2uLL:
      goto LABEL_13;
    case 1uLL:
LABEL_7:
      if ((sub_1000B9298(v8, @"create table CLSArchivedAssetCopy (\n objectID                     text not null,\n parentObjectID               text not null,\n dateCreated                  real not null,\n dateLastModified             real not null,\n URL                          text,\n thumbnailURL                 text,\n brItemID                     text,\n brZoneName                   text,\n brOwnerName                  text,\n ownerPersonID                text,\n uploaded                     integer default 1,\n fractionUploaded             real default 1.0,\n original                     integer,\n ubiquitousContainerName      text,\n relativePathWithinContainer  text,\n brShareName                  text,\n schoolworkSyncStatus         integer default 2,\n type                         integer,\n parentEntityType             integer,\n title                        text,\n fileSizeInBytes              integer,\n displayOrder                 integer,\n fileUTTypeIdentifier         text,\n originalFilename             text,\n downloaded                   integer,\n fractionDownloaded           real\n)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v10 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          v20 = 0;
          v11 = "Failed to create CLSArchivedAssetCopy";
          v12 = &v20;
LABEL_30:
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
        }

LABEL_31:
        v9 = 0;
        goto LABEL_32;
      }

      if ((sub_1000B9298(v8, @"insert into CLSArchivedAssetCopy (objectID, parentObjectID, dateCreated, dateLastModified, url, brItemID, brZoneName, brOwnerName, ownerPersonID, uploaded, original, ubiquitousContainerName, relativePathWithinContainer, brShareName) select objectID, parentObjectID, dateCreated, dateLastModified, URL, brItemID, brZoneName, brOwnerName, ownerPersonID, uploaded, original, ubiquitousContainerName, relativePathWithinContainer, brShareName from CLSArchivedAsset", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v10 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          v19 = 0;
          v11 = "Failed to insert rows in CLSArchivedAssetCopy from CLSArchivedAsset";
          v12 = &v19;
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if ((sub_1000B9298(v8, @"drop table CLSArchivedAsset", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v10 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          v18 = 0;
          v11 = "Failed to drop CLSArchivedAsset";
          v12 = &v18;
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if ((sub_1000B9298(v8, @"create unique index CLSArchivedAsset_objectID on CLSArchivedAssetCopy (objectID)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v10 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          v17 = 0;
          v11 = "Failed to create unique index: CLSArchivedAssetCopy_objectID";
          v12 = &v17;
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if ((sub_1000B9298(v8, @"create index CLSArchivedAsset_parentObjectID on CLSArchivedAssetCopy (parentObjectID)", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v10 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          v16 = 0;
          v11 = "Failed to create unique index: CLSArchivedAssetCopy_parentObjectID";
          v12 = &v16;
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if ((sub_1000B9298(v8, @"alter table CLSArchivedAssetCopy rename to CLSArchivedAsset", 0, 0, 0) & 1) == 0)
      {
        CLSInitLog();
        v10 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v11 = "Failed to rename CLSArchivedAssetCopy as CLSArchivedAsset";
          v12 = buf;
          goto LABEL_30;
        }

        goto LABEL_31;
      }

LABEL_13:
      if (sub_1000B9298(v8, @"alter table CLSArchivedAsset add column durationInSeconds real", 0, 0, 0))
      {
        version = 3;
        break;
      }

      CLSInitLog();
      v10 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        v14 = 0;
        v11 = "Failed to add durationInSeconds to CLSArchivedAsset";
        v12 = &v14;
        goto LABEL_30;
      }

      goto LABEL_31;
    case 0uLL:
      if (!sub_1000B9298(databaseCopy, @"create table CLSArchivedAsset(objectID         text not null, parentObjectID   text not null, dateCreated      real not null, dateLastModified real not null, appIdentifier    text not null, url              text, brItemID         text, brZoneName       text, brOwnerName      text, ownerPersonID    text, uploaded         integer, original         integer, ubiquitousContainerName     text, relativePathWithinContainer text, brShareName      text, foreign key (parentObjectID) references CLSArchivedHandoutAttachment(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index CLSArchivedAsset_objectID on CLSArchivedAsset (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index CLSArchivedAsset_parentObjectID on CLSArchivedAsset (parentObjectID)", 0, 0, 0))
      {
        goto LABEL_31;
      }

      goto LABEL_7;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_32:

  return v9;
}

@end
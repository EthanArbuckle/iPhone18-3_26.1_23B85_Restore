@interface PDDPAssetReference
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsParentEntityType:(id)type;
- (int)StringAsType:(id)type;
- (int)parentEntityType;
- (int)type;
- (unint64_t)hash;
- (void)addClassIds:(id)ids;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDisplayOrder:(BOOL)order;
- (void)setHasFileSizeBytes:(BOOL)bytes;
- (void)setHasIsOriginal:(BOOL)original;
- (void)setHasParentEntityType:(BOOL)type;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PDDPAssetReference

- (int)type
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ICLOUD_DRIVE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"WEB_URL"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CLOUDKIT_ASSET"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)parentEntityType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_parentEntityType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasParentEntityType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsParentEntityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_PARENT_ENTITY_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"HANDOUT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"HANDOUT_ATTACHMENT"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SURVEY_STEP"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"SURVEY_STEP_ANSWER"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"MULTIPLE_CHOICE_OPTION_ITEM"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"STATE_CHANGE_PAYLOAD"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsOriginal:(BOOL)original
{
  if (original)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)addClassIds:(id)ids
{
  idsCopy = ids;
  classIds = self->_classIds;
  v8 = idsCopy;
  if (!classIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_classIds;
    self->_classIds = v6;

    idsCopy = v8;
    classIds = self->_classIds;
  }

  [(NSMutableArray *)classIds addObject:idsCopy];
}

- (void)setHasFileSizeBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDisplayOrder:(BOOL)order
{
  if (order)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPAssetReference;
  v3 = [(PDDPAssetReference *)&v7 description];
  dictionaryRepresentation = [(PDDPAssetReference *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    type = self->_type;
    if (type >= 4)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = *(&off_100205C10 + type);
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId)
  {
    [v3 setObject:parentObjectId forKey:@"parent_object_id"];
  }

  ckZoneName = self->_ckZoneName;
  if (ckZoneName)
  {
    [v3 setObject:ckZoneName forKey:@"ck_zone_name"];
  }

  ckOwnerName = self->_ckOwnerName;
  if (ckOwnerName)
  {
    [v3 setObject:ckOwnerName forKey:@"ck_owner_name"];
  }

  ckUuid = self->_ckUuid;
  if (ckUuid)
  {
    [v3 setObject:ckUuid forKey:@"ck_uuid"];
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier)
  {
    [v3 setObject:appIdentifier forKey:@"app_identifier"];
  }

  ownerId = self->_ownerId;
  if (ownerId)
  {
    [v3 setObject:ownerId forKey:@"owner_id"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    dictionaryRepresentation = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"date_last_modified"];
  }

  if ((*&self->_has & 8) != 0)
  {
    parentEntityType = self->_parentEntityType;
    if (parentEntityType >= 7)
    {
      v18 = [NSString stringWithFormat:@"(unknown: %i)", self->_parentEntityType];
    }

    else
    {
      v18 = *(&off_100205C30 + parentEntityType);
    }

    [v3 setObject:v18 forKey:@"parent_entity_type"];
  }

  icloudDriveContainerName = self->_icloudDriveContainerName;
  if (icloudDriveContainerName)
  {
    [v3 setObject:icloudDriveContainerName forKey:@"icloud_drive_container_name"];
  }

  icloudDriveRelativeFilePath = self->_icloudDriveRelativeFilePath;
  if (icloudDriveRelativeFilePath)
  {
    [v3 setObject:icloudDriveRelativeFilePath forKey:@"icloud_drive_relative_file_path"];
  }

  fileUrl = self->_fileUrl;
  if (fileUrl)
  {
    [v3 setObject:fileUrl forKey:@"file_url"];
  }

  ckShareZoneName = self->_ckShareZoneName;
  if (ckShareZoneName)
  {
    [v3 setObject:ckShareZoneName forKey:@"ck_share_zone_name"];
  }

  ckShareOwnerName = self->_ckShareOwnerName;
  if (ckShareOwnerName)
  {
    [v3 setObject:ckShareOwnerName forKey:@"ck_share_owner_name"];
  }

  ckShareRecordName = self->_ckShareRecordName;
  if (ckShareRecordName)
  {
    [v3 setObject:ckShareRecordName forKey:@"ck_share_record_name"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v25 = [NSNumber numberWithBool:self->_isOriginal];
    [v3 setObject:v25 forKey:@"is_original"];
  }

  classIds = self->_classIds;
  if (classIds)
  {
    [v3 setObject:classIds forKey:@"class_ids"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v28 = [NSNumber numberWithLongLong:self->_fileSizeBytes];
    [v3 setObject:v28 forKey:@"file_size_bytes"];
  }

  fileUttype = self->_fileUttype;
  if (fileUttype)
  {
    [v3 setObject:fileUttype forKey:@"file_uttype"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v30 = [NSNumber numberWithInt:self->_displayOrder];
    [v3 setObject:v30 forKey:@"display_order"];
  }

  webUrl = self->_webUrl;
  if (webUrl)
  {
    [v3 setObject:webUrl forKey:@"web_url"];
  }

  originalFilename = self->_originalFilename;
  if (originalFilename)
  {
    [v3 setObject:originalFilename forKey:@"original_filename"];
  }

  if (*&self->_has)
  {
    v33 = [NSNumber numberWithDouble:self->_durationSeconds];
    [v3 setObject:v33 forKey:@"duration_seconds"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentObjectId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ckZoneName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ckOwnerName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ckUuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_icloudDriveContainerName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_icloudDriveRelativeFilePath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fileUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ownerId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ckShareZoneName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ckShareOwnerName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ckShareRecordName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    isOriginal = self->_isOriginal;
    PBDataWriterWriteBOOLField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    fileSizeBytes = self->_fileSizeBytes;
    PBDataWriterWriteInt64Field();
  }

  if (self->_fileUttype)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    displayOrder = self->_displayOrder;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    parentEntityType = self->_parentEntityType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_webUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_originalFilename)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    durationSeconds = self->_durationSeconds;
    PBDataWriterWriteDoubleField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = self->_classIds;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    toCopy[48] = self->_type;
    *(toCopy + 212) |= 0x10u;
  }

  v11 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
    toCopy = v11;
  }

  if (self->_parentObjectId)
  {
    [v11 setParentObjectId:?];
    toCopy = v11;
  }

  if (self->_ckZoneName)
  {
    [v11 setCkZoneName:?];
    toCopy = v11;
  }

  if (self->_ckOwnerName)
  {
    [v11 setCkOwnerName:?];
    toCopy = v11;
  }

  if (self->_ckUuid)
  {
    [v11 setCkUuid:?];
    toCopy = v11;
  }

  if (self->_icloudDriveContainerName)
  {
    [v11 setIcloudDriveContainerName:?];
    toCopy = v11;
  }

  if (self->_icloudDriveRelativeFilePath)
  {
    [v11 setIcloudDriveRelativeFilePath:?];
    toCopy = v11;
  }

  if (self->_fileUrl)
  {
    [v11 setFileUrl:?];
    toCopy = v11;
  }

  if (self->_appIdentifier)
  {
    [v11 setAppIdentifier:?];
    toCopy = v11;
  }

  if (self->_ownerId)
  {
    [v11 setOwnerId:?];
    toCopy = v11;
  }

  if (self->_ckShareZoneName)
  {
    [v11 setCkShareZoneName:?];
    toCopy = v11;
  }

  if (self->_ckShareOwnerName)
  {
    [v11 setCkShareOwnerName:?];
    toCopy = v11;
  }

  if (self->_ckShareRecordName)
  {
    [v11 setCkShareRecordName:?];
    toCopy = v11;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(toCopy + 208) = self->_isOriginal;
    *(toCopy + 212) |= 0x20u;
  }

  if (self->_title)
  {
    [v11 setTitle:?];
    toCopy = v11;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_fileSizeBytes;
    *(toCopy + 212) |= 2u;
  }

  if (self->_fileUttype)
  {
    [v11 setFileUttype:?];
    toCopy = v11;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[26] = self->_displayOrder;
    *(toCopy + 212) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    toCopy[42] = self->_parentEntityType;
    *(toCopy + 212) |= 8u;
  }

  if (self->_webUrl)
  {
    [v11 setWebUrl:?];
    toCopy = v11;
  }

  if (self->_originalFilename)
  {
    [v11 setOriginalFilename:?];
    toCopy = v11;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_durationSeconds;
    *(toCopy + 212) |= 1u;
  }

  if ([(PDDPAssetReference *)self classIdsCount])
  {
    [v11 clearClassIds];
    classIdsCount = [(PDDPAssetReference *)self classIdsCount];
    if (classIdsCount)
    {
      v7 = classIdsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PDDPAssetReference *)self classIdsAtIndex:i];
        [v11 addClassIds:v9];
      }
    }
  }

  if (self->_dateCreated)
  {
    [v11 setDateCreated:?];
  }

  v10 = v11;
  if (self->_dateLastModified)
  {
    [v11 setDateLastModified:?];
    v10 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    v5[48] = self->_type;
    *(v5 + 212) |= 0x10u;
  }

  v7 = [(NSString *)self->_objectId copyWithZone:zone];
  v8 = v6[18];
  v6[18] = v7;

  v9 = [(NSString *)self->_parentObjectId copyWithZone:zone];
  v10 = v6[22];
  v6[22] = v9;

  v11 = [(NSString *)self->_ckZoneName copyWithZone:zone];
  v12 = v6[9];
  v6[9] = v11;

  v13 = [(NSString *)self->_ckOwnerName copyWithZone:zone];
  v14 = v6[4];
  v6[4] = v13;

  v15 = [(NSString *)self->_ckUuid copyWithZone:zone];
  v16 = v6[8];
  v6[8] = v15;

  v17 = [(NSString *)self->_icloudDriveContainerName copyWithZone:zone];
  v18 = v6[16];
  v6[16] = v17;

  v19 = [(NSString *)self->_icloudDriveRelativeFilePath copyWithZone:zone];
  v20 = v6[17];
  v6[17] = v19;

  v21 = [(NSString *)self->_fileUrl copyWithZone:zone];
  v22 = v6[14];
  v6[14] = v21;

  v23 = [(NSString *)self->_appIdentifier copyWithZone:zone];
  v24 = v6[3];
  v6[3] = v23;

  v25 = [(NSString *)self->_ownerId copyWithZone:zone];
  v26 = v6[20];
  v6[20] = v25;

  v27 = [(NSString *)self->_ckShareZoneName copyWithZone:zone];
  v28 = v6[7];
  v6[7] = v27;

  v29 = [(NSString *)self->_ckShareOwnerName copyWithZone:zone];
  v30 = v6[5];
  v6[5] = v29;

  v31 = [(NSString *)self->_ckShareRecordName copyWithZone:zone];
  v32 = v6[6];
  v6[6] = v31;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 208) = self->_isOriginal;
    *(v6 + 212) |= 0x20u;
  }

  v33 = [(NSString *)self->_title copyWithZone:zone];
  v34 = v6[23];
  v6[23] = v33;

  if ((*&self->_has & 2) != 0)
  {
    v6[2] = self->_fileSizeBytes;
    *(v6 + 212) |= 2u;
  }

  v35 = [(NSString *)self->_fileUttype copyWithZone:zone];
  v36 = v6[15];
  v6[15] = v35;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 26) = self->_displayOrder;
    *(v6 + 212) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v6 + 42) = self->_parentEntityType;
    *(v6 + 212) |= 8u;
  }

  v38 = [(NSString *)self->_webUrl copyWithZone:zone];
  v39 = v6[25];
  v6[25] = v38;

  v40 = [(NSString *)self->_originalFilename copyWithZone:zone];
  v41 = v6[19];
  v6[19] = v40;

  if (*&self->_has)
  {
    v6[1] = *&self->_durationSeconds;
    *(v6 + 212) |= 1u;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v42 = self->_classIds;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v54;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v54 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v53 + 1) + 8 * i) copyWithZone:{zone, v53}];
        [v6 addClassIds:v47];
      }

      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v44);
  }

  v48 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v49 = v6[11];
  v6[11] = v48;

  v50 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v51 = v6[12];
  v6[12] = v50;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  v5 = *(equalCopy + 212);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 212) & 0x10) == 0 || self->_type != *(equalCopy + 48))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 212) & 0x10) != 0)
  {
    goto LABEL_77;
  }

  objectId = self->_objectId;
  if (objectId | *(equalCopy + 18) && ![(NSString *)objectId isEqual:?])
  {
    goto LABEL_77;
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | *(equalCopy + 22))
  {
    if (![(NSString *)parentObjectId isEqual:?])
    {
      goto LABEL_77;
    }
  }

  ckZoneName = self->_ckZoneName;
  if (ckZoneName | *(equalCopy + 9))
  {
    if (![(NSString *)ckZoneName isEqual:?])
    {
      goto LABEL_77;
    }
  }

  ckOwnerName = self->_ckOwnerName;
  if (ckOwnerName | *(equalCopy + 4))
  {
    if (![(NSString *)ckOwnerName isEqual:?])
    {
      goto LABEL_77;
    }
  }

  ckUuid = self->_ckUuid;
  if (ckUuid | *(equalCopy + 8))
  {
    if (![(NSString *)ckUuid isEqual:?])
    {
      goto LABEL_77;
    }
  }

  icloudDriveContainerName = self->_icloudDriveContainerName;
  if (icloudDriveContainerName | *(equalCopy + 16))
  {
    if (![(NSString *)icloudDriveContainerName isEqual:?])
    {
      goto LABEL_77;
    }
  }

  icloudDriveRelativeFilePath = self->_icloudDriveRelativeFilePath;
  if (icloudDriveRelativeFilePath | *(equalCopy + 17))
  {
    if (![(NSString *)icloudDriveRelativeFilePath isEqual:?])
    {
      goto LABEL_77;
    }
  }

  fileUrl = self->_fileUrl;
  if (fileUrl | *(equalCopy + 14))
  {
    if (![(NSString *)fileUrl isEqual:?])
    {
      goto LABEL_77;
    }
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)appIdentifier isEqual:?])
    {
      goto LABEL_77;
    }
  }

  ownerId = self->_ownerId;
  if (ownerId | *(equalCopy + 20))
  {
    if (![(NSString *)ownerId isEqual:?])
    {
      goto LABEL_77;
    }
  }

  ckShareZoneName = self->_ckShareZoneName;
  if (ckShareZoneName | *(equalCopy + 7))
  {
    if (![(NSString *)ckShareZoneName isEqual:?])
    {
      goto LABEL_77;
    }
  }

  ckShareOwnerName = self->_ckShareOwnerName;
  if (ckShareOwnerName | *(equalCopy + 5))
  {
    if (![(NSString *)ckShareOwnerName isEqual:?])
    {
      goto LABEL_77;
    }
  }

  ckShareRecordName = self->_ckShareRecordName;
  if (ckShareRecordName | *(equalCopy + 6))
  {
    if (![(NSString *)ckShareRecordName isEqual:?])
    {
      goto LABEL_77;
    }
  }

  has = self->_has;
  v20 = *(equalCopy + 212);
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 212) & 0x20) == 0)
    {
      goto LABEL_77;
    }

    v22 = *(equalCopy + 208);
    if (self->_isOriginal)
    {
      if ((*(equalCopy + 208) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(equalCopy + 208))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equalCopy + 212) & 0x20) != 0)
  {
    goto LABEL_77;
  }

  title = self->_title;
  if (title | *(equalCopy + 23))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_77;
    }

    has = self->_has;
    v20 = *(equalCopy + 212);
  }

  if ((has & 2) != 0)
  {
    if ((v20 & 2) == 0 || self->_fileSizeBytes != *(equalCopy + 2))
    {
      goto LABEL_77;
    }
  }

  else if ((v20 & 2) != 0)
  {
    goto LABEL_77;
  }

  fileUttype = self->_fileUttype;
  if (fileUttype | *(equalCopy + 15))
  {
    if ([(NSString *)fileUttype isEqual:?])
    {
      has = self->_has;
      v20 = *(equalCopy + 212);
      goto LABEL_50;
    }

LABEL_77:
    v30 = 0;
    goto LABEL_78;
  }

LABEL_50:
  if ((has & 4) != 0)
  {
    if ((v20 & 4) == 0 || self->_displayOrder != *(equalCopy + 26))
    {
      goto LABEL_77;
    }
  }

  else if ((v20 & 4) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 8) != 0)
  {
    if ((v20 & 8) == 0 || self->_parentEntityType != *(equalCopy + 42))
    {
      goto LABEL_77;
    }
  }

  else if ((v20 & 8) != 0)
  {
    goto LABEL_77;
  }

  webUrl = self->_webUrl;
  if (webUrl | *(equalCopy + 25) && ![(NSString *)webUrl isEqual:?])
  {
    goto LABEL_77;
  }

  originalFilename = self->_originalFilename;
  if (originalFilename | *(equalCopy + 19))
  {
    if (![(NSString *)originalFilename isEqual:?])
    {
      goto LABEL_77;
    }
  }

  v26 = *(equalCopy + 212);
  if (*&self->_has)
  {
    if ((*(equalCopy + 212) & 1) == 0 || self->_durationSeconds != *(equalCopy + 1))
    {
      goto LABEL_77;
    }
  }

  else if (*(equalCopy + 212))
  {
    goto LABEL_77;
  }

  classIds = self->_classIds;
  if (classIds | *(equalCopy + 10) && ![(NSMutableArray *)classIds isEqual:?])
  {
    goto LABEL_77;
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(equalCopy + 11))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_77;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 12))
  {
    v30 = [(PDDPDate *)dateLastModified isEqual:?];
  }

  else
  {
    v30 = 1;
  }

LABEL_78:

  return v30;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v34 = 2654435761 * self->_type;
  }

  else
  {
    v34 = 0;
  }

  v33 = [(NSString *)self->_objectId hash];
  v32 = [(NSString *)self->_parentObjectId hash];
  v31 = [(NSString *)self->_ckZoneName hash];
  v30 = [(NSString *)self->_ckOwnerName hash];
  v29 = [(NSString *)self->_ckUuid hash];
  v28 = [(NSString *)self->_icloudDriveContainerName hash];
  v27 = [(NSString *)self->_icloudDriveRelativeFilePath hash];
  v26 = [(NSString *)self->_fileUrl hash];
  v25 = [(NSString *)self->_appIdentifier hash];
  v24 = [(NSString *)self->_ownerId hash];
  v23 = [(NSString *)self->_ckShareZoneName hash];
  v22 = [(NSString *)self->_ckShareOwnerName hash];
  v21 = [(NSString *)self->_ckShareRecordName hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v20 = 2654435761 * self->_isOriginal;
  }

  else
  {
    v20 = 0;
  }

  v3 = [(NSString *)self->_title hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_fileSizeBytes;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_fileUttype hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_displayOrder;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_12:
      v7 = 2654435761 * self->_parentEntityType;
      goto LABEL_15;
    }
  }

  v7 = 0;
LABEL_15:
  v8 = [(NSString *)self->_webUrl hash];
  v9 = [(NSString *)self->_originalFilename hash];
  if (*&self->_has)
  {
    durationSeconds = self->_durationSeconds;
    if (durationSeconds < 0.0)
    {
      durationSeconds = -durationSeconds;
    }

    *v10.i64 = floor(durationSeconds + 0.5);
    v14 = (durationSeconds - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v11, v10).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = v33 ^ v34 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v12;
  v17 = [(NSMutableArray *)self->_classIds hash];
  v18 = v17 ^ [(PDDPDate *)self->_dateCreated hash];
  return v16 ^ v18 ^ [(PDDPDate *)self->_dateLastModified hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[53] & 0x10) != 0)
  {
    self->_type = fromCopy[48];
    *&self->_has |= 0x10u;
  }

  if (*(fromCopy + 18))
  {
    [(PDDPAssetReference *)self setObjectId:?];
  }

  if (*(v5 + 22))
  {
    [(PDDPAssetReference *)self setParentObjectId:?];
  }

  if (*(v5 + 9))
  {
    [(PDDPAssetReference *)self setCkZoneName:?];
  }

  if (*(v5 + 4))
  {
    [(PDDPAssetReference *)self setCkOwnerName:?];
  }

  if (*(v5 + 8))
  {
    [(PDDPAssetReference *)self setCkUuid:?];
  }

  if (*(v5 + 16))
  {
    [(PDDPAssetReference *)self setIcloudDriveContainerName:?];
  }

  if (*(v5 + 17))
  {
    [(PDDPAssetReference *)self setIcloudDriveRelativeFilePath:?];
  }

  if (*(v5 + 14))
  {
    [(PDDPAssetReference *)self setFileUrl:?];
  }

  if (*(v5 + 3))
  {
    [(PDDPAssetReference *)self setAppIdentifier:?];
  }

  if (*(v5 + 20))
  {
    [(PDDPAssetReference *)self setOwnerId:?];
  }

  if (*(v5 + 7))
  {
    [(PDDPAssetReference *)self setCkShareZoneName:?];
  }

  if (*(v5 + 5))
  {
    [(PDDPAssetReference *)self setCkShareOwnerName:?];
  }

  if (*(v5 + 6))
  {
    [(PDDPAssetReference *)self setCkShareRecordName:?];
  }

  if ((*(v5 + 212) & 0x20) != 0)
  {
    self->_isOriginal = *(v5 + 208);
    *&self->_has |= 0x20u;
  }

  if (*(v5 + 23))
  {
    [(PDDPAssetReference *)self setTitle:?];
  }

  if ((*(v5 + 212) & 2) != 0)
  {
    self->_fileSizeBytes = *(v5 + 2);
    *&self->_has |= 2u;
  }

  if (*(v5 + 15))
  {
    [(PDDPAssetReference *)self setFileUttype:?];
  }

  v6 = *(v5 + 212);
  if ((v6 & 4) != 0)
  {
    self->_displayOrder = *(v5 + 26);
    *&self->_has |= 4u;
    v6 = *(v5 + 212);
  }

  if ((v6 & 8) != 0)
  {
    self->_parentEntityType = *(v5 + 42);
    *&self->_has |= 8u;
  }

  if (*(v5 + 25))
  {
    [(PDDPAssetReference *)self setWebUrl:?];
  }

  if (*(v5 + 19))
  {
    [(PDDPAssetReference *)self setOriginalFilename:?];
  }

  if (*(v5 + 212))
  {
    self->_durationSeconds = *(v5 + 1);
    *&self->_has |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(v5 + 10);
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PDDPAssetReference *)self addClassIds:*(*(&v16 + 1) + 8 * i), v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  dateCreated = self->_dateCreated;
  v13 = *(v5 + 11);
  if (dateCreated)
  {
    if (v13)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(PDDPAssetReference *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v15 = *(v5 + 12);
  if (dateLastModified)
  {
    if (v15)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(PDDPAssetReference *)self setDateLastModified:?];
  }
}

@end
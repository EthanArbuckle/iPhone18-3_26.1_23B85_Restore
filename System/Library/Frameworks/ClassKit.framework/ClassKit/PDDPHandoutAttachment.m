@interface PDDPHandoutAttachment
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContextType:(id)a3;
- (int)StringAsPermissionType:(id)a3;
- (int)StringAsShareType:(id)a3;
- (int)StringAsType:(id)a3;
- (int)contextType;
- (int)permissionType;
- (int)shareType;
- (int)type;
- (unint64_t)hash;
- (void)addClassIds:(id)a3;
- (void)addContextPath:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasContextSourceIsCatalog:(BOOL)a3;
- (void)setHasContextType:(BOOL)a3;
- (void)setHasDisplayOrder:(BOOL)a3;
- (void)setHasIsLocked:(BOOL)a3;
- (void)setHasPermissionType:(BOOL)a3;
- (void)setHasShareType:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPHandoutAttachment

- (int)type
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"URL_TYPE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONTEXT_TYPE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ASSET_TYPE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"APP_TYPE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"HAND_IN_REQUEST_TYPE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SURVEY_TYPE"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ASSESSMENT_TYPE"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addContextPath:(id)a3
{
  v4 = a3;
  contextPaths = self->_contextPaths;
  v8 = v4;
  if (!contextPaths)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_contextPaths;
    self->_contextPaths = v6;

    v4 = v8;
    contextPaths = self->_contextPaths;
  }

  [(NSMutableArray *)contextPaths addObject:v4];
}

- (void)setHasDisplayOrder:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsLocked:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (int)shareType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_shareType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasShareType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsShareType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_SHARE_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"COPY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ONE_TO_ONE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ONE_TO_MANY"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)permissionType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_permissionType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPermissionType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsPermissionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_PERMISSION_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"VIEW_ONLY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CAN_MAKE_CHANGES"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)contextType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_contextType;
  }

  else
  {
    return -1;
  }
}

- (void)setHasContextType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsContextType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_CONTEXT_TYPE"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"APP"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CHAPTER"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SECTION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LEVEL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PAGE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TASK"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CHALLENGE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"QUIZ"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"EXERCISE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"LESSON"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"BOOK"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"GAME"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"DOCUMENT"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"AUDIO"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"VIDEO"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"COURSE"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"CUSTOM"])
  {
    v4 = 17;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasContextSourceIsCatalog:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)addClassIds:(id)a3
{
  v4 = a3;
  classIds = self->_classIds;
  v8 = v4;
  if (!classIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_classIds;
    self->_classIds = v6;

    v4 = v8;
    classIds = self->_classIds;
  }

  [(NSMutableArray *)classIds addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPHandoutAttachment;
  v3 = [(PDDPHandoutAttachment *)&v7 description];
  v4 = [(PDDPHandoutAttachment *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 0x20) != 0)
  {
    type = self->_type;
    if (type >= 8)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = *(&off_100203A08 + type);
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId)
  {
    [v3 setObject:parentObjectId forKey:@"parent_object_id"];
  }

  url = self->_url;
  if (url)
  {
    [v3 setObject:url forKey:@"url"];
  }

  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier)
  {
    [v3 setObject:appBundleIdentifier forKey:@"app_bundle_identifier"];
  }

  appStoreIdentifier = self->_appStoreIdentifier;
  if (appStoreIdentifier)
  {
    [v3 setObject:appStoreIdentifier forKey:@"app_store_identifier"];
  }

  appName = self->_appName;
  if (appName)
  {
    [v3 setObject:appName forKey:@"app_name"];
  }

  contextPaths = self->_contextPaths;
  if (contextPaths)
  {
    [v3 setObject:contextPaths forKey:@"context_path"];
  }

  objectIdPath = self->_objectIdPath;
  if (objectIdPath)
  {
    [v3 setObject:objectIdPath forKey:@"object_id_path"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v16 = [NSNumber numberWithInt:self->_displayOrder];
    [v3 setObject:v16 forKey:@"display_order"];

    has = self->_has;
  }

  if (has < 0)
  {
    v17 = [NSNumber numberWithBool:self->_isLocked];
    [v3 setObject:v17 forKey:@"is_locked"];
  }

  contentStoreIdentifier = self->_contentStoreIdentifier;
  if (contentStoreIdentifier)
  {
    [v3 setObject:contentStoreIdentifier forKey:@"content_store_identifier"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    shareType = self->_shareType;
    if (shareType >= 4)
    {
      v20 = [NSString stringWithFormat:@"(unknown: %i)", self->_shareType];
    }

    else
    {
      v20 = *(&off_100203A48 + shareType);
    }

    [v3 setObject:v20 forKey:@"share_type"];
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier)
  {
    [v3 setObject:appIdentifier forKey:@"app_identifier"];
  }

  v22 = self->_has;
  if ((v22 & 8) != 0)
  {
    permissionType = self->_permissionType;
    if (permissionType >= 3)
    {
      v24 = [NSString stringWithFormat:@"(unknown: %i)", self->_permissionType];
    }

    else
    {
      v24 = *(&off_100203A68 + permissionType);
    }

    [v3 setObject:v24 forKey:@"permission_type"];

    v22 = self->_has;
  }

  if ((v22 & 2) != 0)
  {
    v25 = self->_contextType + 1;
    if (v25 >= 0x13)
    {
      v26 = [NSString stringWithFormat:@"(unknown: %i)", self->_contextType];
    }

    else
    {
      v26 = *(&off_100203A80 + v25);
    }

    [v3 setObject:v26 forKey:@"context_type"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    v28 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v3 setObject:v28 forKey:@"date_last_modified"];
  }

  stableObjectIdPath = self->_stableObjectIdPath;
  if (stableObjectIdPath)
  {
    [v3 setObject:stableObjectIdPath forKey:@"stable_object_id_path"];
  }

  contextCustomTypeName = self->_contextCustomTypeName;
  if (contextCustomTypeName)
  {
    [v3 setObject:contextCustomTypeName forKey:@"context_custom_type_name"];
  }

  contextSummary = self->_contextSummary;
  if (contextSummary)
  {
    [v3 setObject:contextSummary forKey:@"context_summary"];
  }

  v32 = self->_has;
  if ((v32 & 0x40) != 0)
  {
    v33 = [NSNumber numberWithBool:self->_contextSourceIsCatalog];
    [v3 setObject:v33 forKey:@"context_source_is_catalog"];

    v32 = self->_has;
  }

  if (v32)
  {
    v34 = [NSNumber numberWithDouble:self->_timeExpectationInSeconds];
    [v3 setObject:v34 forKey:@"time_expectation_in_seconds"];
  }

  classIds = self->_classIds;
  if (classIds)
  {
    [v3 setObject:classIds forKey:@"class_ids"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    v37 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v3 setObject:v37 forKey:@"date_created"];
  }

  v38 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x20) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentObjectId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_url)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appStoreIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appName)
  {
    PBDataWriterWriteStringField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = self->_contextPaths;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

  if (self->_objectIdPath)
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

  if (has < 0)
  {
    isLocked = self->_isLocked;
    PBDataWriterWriteBOOLField();
  }

  if (self->_contentStoreIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    shareType = self->_shareType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_appIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    permissionType = self->_permissionType;
    PBDataWriterWriteInt32Field();
    v16 = self->_has;
  }

  if ((v16 & 2) != 0)
  {
    contextType = self->_contextType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_stableObjectIdPath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contextCustomTypeName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contextSummary)
  {
    PBDataWriterWriteStringField();
  }

  v19 = self->_has;
  if ((v19 & 0x40) != 0)
  {
    contextSourceIsCatalog = self->_contextSourceIsCatalog;
    PBDataWriterWriteBOOLField();
    v19 = self->_has;
  }

  if (v19)
  {
    timeExpectationInSeconds = self->_timeExpectationInSeconds;
    PBDataWriterWriteDoubleField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = self->_classIds;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v28 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v24);
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x20) != 0)
  {
    v4[42] = self->_type;
    *(v4 + 188) |= 0x20u;
  }

  v17 = v4;
  if (self->_objectId)
  {
    [v4 setObjectId:?];
  }

  if (self->_title)
  {
    [v17 setTitle:?];
  }

  if (self->_parentObjectId)
  {
    [v17 setParentObjectId:?];
  }

  if (self->_url)
  {
    [v17 setUrl:?];
  }

  if (self->_appBundleIdentifier)
  {
    [v17 setAppBundleIdentifier:?];
  }

  if (self->_appStoreIdentifier)
  {
    [v17 setAppStoreIdentifier:?];
  }

  if (self->_appName)
  {
    [v17 setAppName:?];
  }

  if ([(PDDPHandoutAttachment *)self contextPathsCount])
  {
    [v17 clearContextPaths];
    v5 = [(PDDPHandoutAttachment *)self contextPathsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPHandoutAttachment *)self contextPathAtIndex:i];
        [v17 addContextPath:v8];
      }
    }
  }

  if (self->_objectIdPath)
  {
    [v17 setObjectIdPath:?];
  }

  has = self->_has;
  v10 = v17;
  if ((has & 4) != 0)
  {
    *(v17 + 28) = self->_displayOrder;
    *(v17 + 188) |= 4u;
    has = self->_has;
  }

  if (has < 0)
  {
    *(v17 + 185) = self->_isLocked;
    *(v17 + 188) |= 0x80u;
  }

  if (self->_contentStoreIdentifier)
  {
    [v17 setContentStoreIdentifier:?];
    v10 = v17;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v10[37] = self->_shareType;
    *(v10 + 188) |= 0x10u;
  }

  if (self->_appIdentifier)
  {
    [v17 setAppIdentifier:?];
    v10 = v17;
  }

  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    v10[36] = self->_permissionType;
    *(v10 + 188) |= 8u;
    v11 = self->_has;
  }

  if ((v11 & 2) != 0)
  {
    v10[22] = self->_contextType;
    *(v10 + 188) |= 2u;
  }

  if (self->_dateLastModified)
  {
    [v17 setDateLastModified:?];
    v10 = v17;
  }

  if (self->_stableObjectIdPath)
  {
    [v17 setStableObjectIdPath:?];
    v10 = v17;
  }

  if (self->_contextCustomTypeName)
  {
    [v17 setContextCustomTypeName:?];
    v10 = v17;
  }

  if (self->_contextSummary)
  {
    [v17 setContextSummary:?];
    v10 = v17;
  }

  v12 = self->_has;
  if ((v12 & 0x40) != 0)
  {
    *(v10 + 184) = self->_contextSourceIsCatalog;
    *(v10 + 188) |= 0x40u;
    v12 = self->_has;
  }

  if (v12)
  {
    *(v10 + 1) = *&self->_timeExpectationInSeconds;
    *(v10 + 188) |= 1u;
  }

  if ([(PDDPHandoutAttachment *)self classIdsCount])
  {
    [v17 clearClassIds];
    v13 = [(PDDPHandoutAttachment *)self classIdsCount];
    if (v13)
    {
      v14 = v13;
      for (j = 0; j != v14; ++j)
      {
        v16 = [(PDDPHandoutAttachment *)self classIdsAtIndex:j];
        [v17 addClassIds:v16];
      }
    }
  }

  if (self->_dateCreated)
  {
    [v17 setDateCreated:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x20) != 0)
  {
    v5[42] = self->_type;
    *(v5 + 188) |= 0x20u;
  }

  v7 = [(NSString *)self->_objectId copyWithZone:a3];
  v8 = v6[15];
  v6[15] = v7;

  v9 = [(NSString *)self->_title copyWithZone:a3];
  v10 = v6[20];
  v6[20] = v9;

  v11 = [(NSString *)self->_parentObjectId copyWithZone:a3];
  v12 = v6[17];
  v6[17] = v11;

  v13 = [(NSString *)self->_url copyWithZone:a3];
  v14 = v6[22];
  v6[22] = v13;

  v15 = [(NSString *)self->_appBundleIdentifier copyWithZone:a3];
  v16 = v6[2];
  v6[2] = v15;

  v17 = [(NSString *)self->_appStoreIdentifier copyWithZone:a3];
  v18 = v6[5];
  v6[5] = v17;

  v19 = [(NSString *)self->_appName copyWithZone:a3];
  v20 = v6[4];
  v6[4] = v19;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v21 = self->_contextPaths;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v58;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v58 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v57 + 1) + 8 * i) copyWithZone:a3];
        [v6 addContextPath:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v23);
  }

  v27 = [(NSString *)self->_objectIdPath copyWithZone:a3];
  v28 = v6[16];
  v6[16] = v27;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 28) = self->_displayOrder;
    *(v6 + 188) |= 4u;
    has = self->_has;
  }

  if (has < 0)
  {
    *(v6 + 185) = self->_isLocked;
    *(v6 + 188) |= 0x80u;
  }

  v30 = [(NSString *)self->_contentStoreIdentifier copyWithZone:a3];
  v31 = v6[7];
  v6[7] = v30;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 37) = self->_shareType;
    *(v6 + 188) |= 0x10u;
  }

  v32 = [(NSString *)self->_appIdentifier copyWithZone:a3];
  v33 = v6[3];
  v6[3] = v32;

  v34 = self->_has;
  if ((v34 & 8) != 0)
  {
    *(v6 + 36) = self->_permissionType;
    *(v6 + 188) |= 8u;
    v34 = self->_has;
  }

  if ((v34 & 2) != 0)
  {
    *(v6 + 22) = self->_contextType;
    *(v6 + 188) |= 2u;
  }

  v35 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v36 = v6[13];
  v6[13] = v35;

  v37 = [(NSString *)self->_stableObjectIdPath copyWithZone:a3];
  v38 = v6[19];
  v6[19] = v37;

  v39 = [(NSString *)self->_contextCustomTypeName copyWithZone:a3];
  v40 = v6[8];
  v6[8] = v39;

  v41 = [(NSString *)self->_contextSummary copyWithZone:a3];
  v42 = v6[10];
  v6[10] = v41;

  v43 = self->_has;
  if ((v43 & 0x40) != 0)
  {
    *(v6 + 184) = self->_contextSourceIsCatalog;
    *(v6 + 188) |= 0x40u;
    v43 = self->_has;
  }

  if (v43)
  {
    v6[1] = *&self->_timeExpectationInSeconds;
    *(v6 + 188) |= 1u;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v44 = self->_classIds;
  v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v54;
    do
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v54 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = [*(*(&v53 + 1) + 8 * j) copyWithZone:{a3, v53}];
        [v6 addClassIds:v49];
      }

      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v46);
  }

  v50 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v51 = v6[12];
  v6[12] = v50;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_83;
  }

  v5 = *(v4 + 188);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 188) & 0x20) == 0 || self->_type != *(v4 + 42))
    {
      goto LABEL_83;
    }
  }

  else if ((*(v4 + 188) & 0x20) != 0)
  {
    goto LABEL_83;
  }

  objectId = self->_objectId;
  if (objectId | *(v4 + 15) && ![(NSString *)objectId isEqual:?])
  {
    goto LABEL_83;
  }

  title = self->_title;
  if (title | *(v4 + 20))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_83;
    }
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | *(v4 + 17))
  {
    if (![(NSString *)parentObjectId isEqual:?])
    {
      goto LABEL_83;
    }
  }

  url = self->_url;
  if (url | *(v4 + 22))
  {
    if (![(NSString *)url isEqual:?])
    {
      goto LABEL_83;
    }
  }

  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier | *(v4 + 2))
  {
    if (![(NSString *)appBundleIdentifier isEqual:?])
    {
      goto LABEL_83;
    }
  }

  appStoreIdentifier = self->_appStoreIdentifier;
  if (appStoreIdentifier | *(v4 + 5))
  {
    if (![(NSString *)appStoreIdentifier isEqual:?])
    {
      goto LABEL_83;
    }
  }

  appName = self->_appName;
  if (appName | *(v4 + 4))
  {
    if (![(NSString *)appName isEqual:?])
    {
      goto LABEL_83;
    }
  }

  contextPaths = self->_contextPaths;
  if (contextPaths | *(v4 + 9))
  {
    if (![(NSMutableArray *)contextPaths isEqual:?])
    {
      goto LABEL_83;
    }
  }

  objectIdPath = self->_objectIdPath;
  if (objectIdPath | *(v4 + 16))
  {
    if (![(NSString *)objectIdPath isEqual:?])
    {
      goto LABEL_83;
    }
  }

  has = self->_has;
  v16 = *(v4 + 188);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 188) & 4) == 0 || self->_displayOrder != *(v4 + 28))
    {
      goto LABEL_83;
    }
  }

  else if ((*(v4 + 188) & 4) != 0)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(v4 + 188) & 0x80) == 0)
    {
      goto LABEL_83;
    }

    v18 = *(v4 + 185);
    if (self->_isLocked)
    {
      if ((*(v4 + 185) & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    else if (*(v4 + 185))
    {
      goto LABEL_83;
    }
  }

  else if ((*(v4 + 188) & 0x80) != 0)
  {
    goto LABEL_83;
  }

  contentStoreIdentifier = self->_contentStoreIdentifier;
  if (contentStoreIdentifier | *(v4 + 7))
  {
    if (![(NSString *)contentStoreIdentifier isEqual:?])
    {
      goto LABEL_83;
    }

    has = self->_has;
    v16 = *(v4 + 188);
  }

  if ((has & 0x10) != 0)
  {
    if ((v16 & 0x10) == 0 || self->_shareType != *(v4 + 37))
    {
      goto LABEL_83;
    }
  }

  else if ((v16 & 0x10) != 0)
  {
    goto LABEL_83;
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier | *(v4 + 3))
  {
    if (![(NSString *)appIdentifier isEqual:?])
    {
      goto LABEL_83;
    }

    has = self->_has;
    v16 = *(v4 + 188);
  }

  if ((has & 8) != 0)
  {
    if ((v16 & 8) == 0 || self->_permissionType != *(v4 + 36))
    {
      goto LABEL_83;
    }
  }

  else if ((v16 & 8) != 0)
  {
    goto LABEL_83;
  }

  if ((has & 2) != 0)
  {
    if ((v16 & 2) == 0 || self->_contextType != *(v4 + 22))
    {
      goto LABEL_83;
    }
  }

  else if ((v16 & 2) != 0)
  {
    goto LABEL_83;
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(v4 + 13) && ![(PDDPDate *)dateLastModified isEqual:?])
  {
    goto LABEL_83;
  }

  stableObjectIdPath = self->_stableObjectIdPath;
  if (stableObjectIdPath | *(v4 + 19))
  {
    if (![(NSString *)stableObjectIdPath isEqual:?])
    {
      goto LABEL_83;
    }
  }

  contextCustomTypeName = self->_contextCustomTypeName;
  if (contextCustomTypeName | *(v4 + 8))
  {
    if (![(NSString *)contextCustomTypeName isEqual:?])
    {
      goto LABEL_83;
    }
  }

  contextSummary = self->_contextSummary;
  if (contextSummary | *(v4 + 10))
  {
    if (![(NSString *)contextSummary isEqual:?])
    {
      goto LABEL_83;
    }
  }

  v24 = *(v4 + 188);
  if ((*&self->_has & 0x40) == 0)
  {
    if ((*(v4 + 188) & 0x40) == 0)
    {
      goto LABEL_69;
    }

LABEL_83:
    v28 = 0;
    goto LABEL_84;
  }

  if ((*(v4 + 188) & 0x40) == 0)
  {
    goto LABEL_83;
  }

  v25 = *(v4 + 184);
  if (self->_contextSourceIsCatalog)
  {
    if ((*(v4 + 184) & 1) == 0)
    {
      goto LABEL_83;
    }
  }

  else if (*(v4 + 184))
  {
    goto LABEL_83;
  }

LABEL_69:
  if (*&self->_has)
  {
    if ((*(v4 + 188) & 1) == 0 || self->_timeExpectationInSeconds != *(v4 + 1))
    {
      goto LABEL_83;
    }
  }

  else if (*(v4 + 188))
  {
    goto LABEL_83;
  }

  classIds = self->_classIds;
  if (classIds | *(v4 + 6) && ![(NSMutableArray *)classIds isEqual:?])
  {
    goto LABEL_83;
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(v4 + 12))
  {
    v28 = [(PDDPDate *)dateCreated isEqual:?];
  }

  else
  {
    v28 = 1;
  }

LABEL_84:

  return v28;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    v34 = 2654435761 * self->_type;
  }

  else
  {
    v34 = 0;
  }

  v33 = [(NSString *)self->_objectId hash];
  v32 = [(NSString *)self->_title hash];
  v31 = [(NSString *)self->_parentObjectId hash];
  v30 = [(NSString *)self->_url hash];
  v29 = [(NSString *)self->_appBundleIdentifier hash];
  v28 = [(NSString *)self->_appStoreIdentifier hash];
  v27 = [(NSString *)self->_appName hash];
  v26 = [(NSMutableArray *)self->_contextPaths hash];
  v25 = [(NSString *)self->_objectIdPath hash];
  if ((*&self->_has & 4) != 0)
  {
    v24 = 2654435761 * self->_displayOrder;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v24 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
LABEL_6:
      v23 = 2654435761 * self->_isLocked;
      goto LABEL_9;
    }
  }

  v23 = 0;
LABEL_9:
  v22 = [(NSString *)self->_contentStoreIdentifier hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = [(NSString *)self->_appIdentifier hash];
  }

  else
  {
    v3 = [(NSString *)self->_appIdentifier hash];
  }

  v4 = v3;
  if ((*&self->_has & 8) != 0)
  {
    v5 = 2654435761 * self->_permissionType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_14:
      v6 = 2654435761 * self->_contextType;
      goto LABEL_17;
    }
  }

  v6 = 0;
LABEL_17:
  v7 = [(PDDPDate *)self->_dateLastModified hash];
  v8 = [(NSString *)self->_stableObjectIdPath hash];
  v9 = [(NSString *)self->_contextCustomTypeName hash];
  v10 = [(NSString *)self->_contextSummary hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v13 = 2654435761 * self->_contextSourceIsCatalog;
    if (*&self->_has)
    {
      goto LABEL_19;
    }

LABEL_24:
    v17 = 0;
    goto LABEL_25;
  }

  v13 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  timeExpectationInSeconds = self->_timeExpectationInSeconds;
  if (timeExpectationInSeconds < 0.0)
  {
    timeExpectationInSeconds = -timeExpectationInSeconds;
  }

  *v11.i64 = floor(timeExpectationInSeconds + 0.5);
  v15 = (timeExpectationInSeconds - *v11.i64) * 1.84467441e19;
  *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v12, v11).i64;
  if (v15 >= 0.0)
  {
    if (v15 > 0.0)
    {
      v17 += v15;
    }
  }

  else
  {
    v17 -= fabs(v15);
  }

LABEL_25:
  v18 = v33 ^ v34 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v17;
  v19 = [(NSMutableArray *)self->_classIds hash];
  return v18 ^ v19 ^ [(PDDPDate *)self->_dateCreated hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[47] & 0x20) != 0)
  {
    self->_type = v4[42];
    *&self->_has |= 0x20u;
  }

  if (*(v4 + 15))
  {
    [(PDDPHandoutAttachment *)self setObjectId:?];
  }

  if (*(v5 + 20))
  {
    [(PDDPHandoutAttachment *)self setTitle:?];
  }

  if (*(v5 + 17))
  {
    [(PDDPHandoutAttachment *)self setParentObjectId:?];
  }

  if (*(v5 + 22))
  {
    [(PDDPHandoutAttachment *)self setUrl:?];
  }

  if (*(v5 + 2))
  {
    [(PDDPHandoutAttachment *)self setAppBundleIdentifier:?];
  }

  if (*(v5 + 5))
  {
    [(PDDPHandoutAttachment *)self setAppStoreIdentifier:?];
  }

  if (*(v5 + 4))
  {
    [(PDDPHandoutAttachment *)self setAppName:?];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = *(v5 + 9);
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PDDPHandoutAttachment *)self addContextPath:*(*(&v27 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  if (*(v5 + 16))
  {
    [(PDDPHandoutAttachment *)self setObjectIdPath:?];
  }

  v11 = *(v5 + 188);
  if ((v11 & 4) != 0)
  {
    self->_displayOrder = *(v5 + 28);
    *&self->_has |= 4u;
    v11 = *(v5 + 188);
  }

  if (v11 < 0)
  {
    self->_isLocked = *(v5 + 185);
    *&self->_has |= 0x80u;
  }

  if (*(v5 + 7))
  {
    [(PDDPHandoutAttachment *)self setContentStoreIdentifier:?];
  }

  if ((*(v5 + 188) & 0x10) != 0)
  {
    self->_shareType = *(v5 + 37);
    *&self->_has |= 0x10u;
  }

  if (*(v5 + 3))
  {
    [(PDDPHandoutAttachment *)self setAppIdentifier:?];
  }

  v12 = *(v5 + 188);
  if ((v12 & 8) != 0)
  {
    self->_permissionType = *(v5 + 36);
    *&self->_has |= 8u;
    v12 = *(v5 + 188);
  }

  if ((v12 & 2) != 0)
  {
    self->_contextType = *(v5 + 22);
    *&self->_has |= 2u;
  }

  dateLastModified = self->_dateLastModified;
  v14 = *(v5 + 13);
  if (dateLastModified)
  {
    if (v14)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(PDDPHandoutAttachment *)self setDateLastModified:?];
  }

  if (*(v5 + 19))
  {
    [(PDDPHandoutAttachment *)self setStableObjectIdPath:?];
  }

  if (*(v5 + 8))
  {
    [(PDDPHandoutAttachment *)self setContextCustomTypeName:?];
  }

  if (*(v5 + 10))
  {
    [(PDDPHandoutAttachment *)self setContextSummary:?];
  }

  v15 = *(v5 + 188);
  if ((v15 & 0x40) != 0)
  {
    self->_contextSourceIsCatalog = *(v5 + 184);
    *&self->_has |= 0x40u;
    v15 = *(v5 + 188);
  }

  if (v15)
  {
    self->_timeExpectationInSeconds = *(v5 + 1);
    *&self->_has |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = *(v5 + 6);
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(PDDPHandoutAttachment *)self addClassIds:*(*(&v23 + 1) + 8 * j), v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  dateCreated = self->_dateCreated;
  v22 = *(v5 + 12);
  if (dateCreated)
  {
    if (v22)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(PDDPHandoutAttachment *)self setDateCreated:?];
  }
}

@end
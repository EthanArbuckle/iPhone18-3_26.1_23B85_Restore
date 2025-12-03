@interface PDDPAsset
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContentMetadata:(id)metadata;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPAsset

- (void)addContentMetadata:(id)metadata
{
  metadataCopy = metadata;
  contentMetadatas = self->_contentMetadatas;
  v8 = metadataCopy;
  if (!contentMetadatas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_contentMetadatas;
    self->_contentMetadatas = v6;

    metadataCopy = v8;
    contentMetadatas = self->_contentMetadatas;
  }

  [(NSMutableArray *)contentMetadatas addObject:metadataCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPAsset;
  v3 = [(PDDPAsset *)&v7 description];
  dictionaryRepresentation = [(PDDPAsset *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    dictionaryRepresentation = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"date_last_modified"];
  }

  etag = self->_etag;
  if (etag)
  {
    [v4 setObject:etag forKey:@"etag"];
  }

  uploadResponseJson = self->_uploadResponseJson;
  if (uploadResponseJson)
  {
    [v4 setObject:uploadResponseJson forKey:@"upload_response_json"];
  }

  contentFileName = self->_contentFileName;
  if (contentFileName)
  {
    [v4 setObject:contentFileName forKey:@"content_file_name"];
  }

  contentUtType = self->_contentUtType;
  if (contentUtType)
  {
    [v4 setObject:contentUtType forKey:@"content_ut_type"];
  }

  if (*&self->_has)
  {
    v14 = [NSNumber numberWithLongLong:self->_contentSizeInBytes];
    [v4 setObject:v14 forKey:@"content_size_in_bytes"];
  }

  contentDownloadUrl = self->_contentDownloadUrl;
  if (contentDownloadUrl)
  {
    [v4 setObject:contentDownloadUrl forKey:@"content_download_url"];
  }

  contentDownloadUrlExpiration = self->_contentDownloadUrlExpiration;
  if (contentDownloadUrlExpiration)
  {
    dictionaryRepresentation3 = [(PDDPDate *)contentDownloadUrlExpiration dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"content_download_url_expiration"];
  }

  if ([(NSMutableArray *)self->_contentMetadatas count])
  {
    v18 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_contentMetadatas, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = self->_contentMetadatas;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation4 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation4];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v21);
    }

    [v4 setObject:v18 forKey:@"content_metadata"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_uploadResponseJson)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentFileName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentUtType)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    contentSizeInBytes = self->_contentSizeInBytes;
    PBDataWriterWriteInt64Field();
  }

  if (self->_contentDownloadUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentDownloadUrlExpiration)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_contentMetadatas;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
    toCopy = v9;
  }

  if (self->_dateCreated)
  {
    [v9 setDateCreated:?];
    toCopy = v9;
  }

  if (self->_dateLastModified)
  {
    [v9 setDateLastModified:?];
    toCopy = v9;
  }

  if (self->_etag)
  {
    [v9 setEtag:?];
    toCopy = v9;
  }

  if (self->_uploadResponseJson)
  {
    [v9 setUploadResponseJson:?];
    toCopy = v9;
  }

  if (self->_contentFileName)
  {
    [v9 setContentFileName:?];
    toCopy = v9;
  }

  if (self->_contentUtType)
  {
    [v9 setContentUtType:?];
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_contentSizeInBytes;
    *(toCopy + 96) |= 1u;
  }

  if (self->_contentDownloadUrl)
  {
    [v9 setContentDownloadUrl:?];
  }

  if (self->_contentDownloadUrlExpiration)
  {
    [v9 setContentDownloadUrlExpiration:?];
  }

  if ([(PDDPAsset *)self contentMetadatasCount])
  {
    [v9 clearContentMetadatas];
    contentMetadatasCount = [(PDDPAsset *)self contentMetadatasCount];
    if (contentMetadatasCount)
    {
      v6 = contentMetadatasCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPAsset *)self contentMetadataAtIndex:i];
        [v9 addContentMetadata:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:zone];
  v7 = v5[10];
  v5[10] = v6;

  v8 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v11 = v5[8];
  v5[8] = v10;

  v12 = [(NSString *)self->_etag copyWithZone:zone];
  v13 = v5[9];
  v5[9] = v12;

  v14 = [(NSString *)self->_uploadResponseJson copyWithZone:zone];
  v15 = v5[11];
  v5[11] = v14;

  v16 = [(NSString *)self->_contentFileName copyWithZone:zone];
  v17 = v5[4];
  v5[4] = v16;

  v18 = [(NSString *)self->_contentUtType copyWithZone:zone];
  v19 = v5[6];
  v5[6] = v18;

  if (*&self->_has)
  {
    v5[1] = self->_contentSizeInBytes;
    *(v5 + 96) |= 1u;
  }

  v20 = [(NSString *)self->_contentDownloadUrl copyWithZone:zone];
  v21 = v5[2];
  v5[2] = v20;

  v22 = [(PDDPDate *)self->_contentDownloadUrlExpiration copyWithZone:zone];
  v23 = v5[3];
  v5[3] = v22;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = self->_contentMetadatas;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v31 + 1) + 8 * i) copyWithZone:{zone, v31}];
        [v5 addContentMetadata:v29];
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v26);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  objectId = self->_objectId;
  if (objectId | *(equalCopy + 10))
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_27;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(equalCopy + 7))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_27;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 8))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_27;
    }
  }

  etag = self->_etag;
  if (etag | *(equalCopy + 9))
  {
    if (![(NSString *)etag isEqual:?])
    {
      goto LABEL_27;
    }
  }

  uploadResponseJson = self->_uploadResponseJson;
  if (uploadResponseJson | *(equalCopy + 11))
  {
    if (![(NSString *)uploadResponseJson isEqual:?])
    {
      goto LABEL_27;
    }
  }

  contentFileName = self->_contentFileName;
  if (contentFileName | *(equalCopy + 4))
  {
    if (![(NSString *)contentFileName isEqual:?])
    {
      goto LABEL_27;
    }
  }

  contentUtType = self->_contentUtType;
  if (contentUtType | *(equalCopy + 6))
  {
    if (![(NSString *)contentUtType isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v12 = *(equalCopy + 96);
  if (*&self->_has)
  {
    if ((*(equalCopy + 96) & 1) == 0 || self->_contentSizeInBytes != *(equalCopy + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 96))
  {
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  contentDownloadUrl = self->_contentDownloadUrl;
  if (contentDownloadUrl | *(equalCopy + 2) && ![(NSString *)contentDownloadUrl isEqual:?])
  {
    goto LABEL_27;
  }

  contentDownloadUrlExpiration = self->_contentDownloadUrlExpiration;
  if (contentDownloadUrlExpiration | *(equalCopy + 3))
  {
    if (![(PDDPDate *)contentDownloadUrlExpiration isEqual:?])
    {
      goto LABEL_27;
    }
  }

  contentMetadatas = self->_contentMetadatas;
  if (contentMetadatas | *(equalCopy + 5))
  {
    v16 = [(NSMutableArray *)contentMetadatas isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_28:

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_objectId hash];
  v4 = [(PDDPDate *)self->_dateCreated hash];
  v5 = [(PDDPDate *)self->_dateLastModified hash];
  v6 = [(NSString *)self->_etag hash];
  v7 = [(NSString *)self->_uploadResponseJson hash];
  v8 = [(NSString *)self->_contentFileName hash];
  v9 = [(NSString *)self->_contentUtType hash];
  if (*&self->_has)
  {
    v10 = 2654435761 * self->_contentSizeInBytes;
  }

  else
  {
    v10 = 0;
  }

  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v12 = v10 ^ [(NSString *)self->_contentDownloadUrl hash];
  v13 = v12 ^ [(PDDPDate *)self->_contentDownloadUrlExpiration hash];
  return v11 ^ v13 ^ [(NSMutableArray *)self->_contentMetadatas hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 10))
  {
    [(PDDPAsset *)self setObjectId:?];
  }

  dateCreated = self->_dateCreated;
  v6 = *(fromCopy + 7);
  if (dateCreated)
  {
    if (v6)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPAsset *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v8 = *(fromCopy + 8);
  if (dateLastModified)
  {
    if (v8)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPAsset *)self setDateLastModified:?];
  }

  if (*(fromCopy + 9))
  {
    [(PDDPAsset *)self setEtag:?];
  }

  if (*(fromCopy + 11))
  {
    [(PDDPAsset *)self setUploadResponseJson:?];
  }

  if (*(fromCopy + 4))
  {
    [(PDDPAsset *)self setContentFileName:?];
  }

  if (*(fromCopy + 6))
  {
    [(PDDPAsset *)self setContentUtType:?];
  }

  if (*(fromCopy + 96))
  {
    self->_contentSizeInBytes = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(PDDPAsset *)self setContentDownloadUrl:?];
  }

  contentDownloadUrlExpiration = self->_contentDownloadUrlExpiration;
  v10 = *(fromCopy + 3);
  if (contentDownloadUrlExpiration)
  {
    if (v10)
    {
      [(PDDPDate *)contentDownloadUrlExpiration mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PDDPAsset *)self setContentDownloadUrlExpiration:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(fromCopy + 5);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PDDPAsset *)self addContentMetadata:*(*(&v16 + 1) + 8 * i), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

@end
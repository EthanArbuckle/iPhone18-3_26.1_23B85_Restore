@interface PDDPTakerWork
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInfoDict:(id)dict;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPTakerWork

- (void)addInfoDict:(id)dict
{
  dictCopy = dict;
  infoDicts = self->_infoDicts;
  v8 = dictCopy;
  if (!infoDicts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_infoDicts;
    self->_infoDicts = v6;

    dictCopy = v8;
    infoDicts = self->_infoDicts;
  }

  [(NSMutableArray *)infoDicts addObject:dictCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPTakerWork;
  v3 = [(PDDPTakerWork *)&v7 description];
  dictionaryRepresentation = [(PDDPTakerWork *)self dictionaryRepresentation];
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

  takerUserId = self->_takerUserId;
  if (takerUserId)
  {
    [v4 setObject:takerUserId forKey:@"taker_user_id"];
  }

  makerUserId = self->_makerUserId;
  if (makerUserId)
  {
    [v4 setObject:makerUserId forKey:@"maker_user_id"];
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId)
  {
    [v4 setObject:parentObjectId forKey:@"parent_object_id"];
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

  selfIdentifiedName = self->_selfIdentifiedName;
  if (selfIdentifiedName)
  {
    [v4 setObject:selfIdentifiedName forKey:@"self_identified_name"];
  }

  takerMarkupAsset = self->_takerMarkupAsset;
  if (takerMarkupAsset)
  {
    dictionaryRepresentation3 = [(PDDPAsset *)takerMarkupAsset dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"taker_markup_asset"];
  }

  graderMarkupAsset = self->_graderMarkupAsset;
  if (graderMarkupAsset)
  {
    dictionaryRepresentation4 = [(PDDPAsset *)graderMarkupAsset dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"grader_markup_asset"];
  }

  graderScoreAsset = self->_graderScoreAsset;
  if (graderScoreAsset)
  {
    dictionaryRepresentation5 = [(PDDPAsset *)graderScoreAsset dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"grader_score_asset"];
  }

  if ([(NSMutableArray *)self->_infoDicts count])
  {
    v21 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_infoDicts, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = self->_infoDicts;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation6 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation6];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v24);
    }

    [v4 setObject:v21 forKey:@"info_dict"];
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

  if (self->_takerUserId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_makerUserId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentObjectId)
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

  if (self->_selfIdentifiedName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_takerMarkupAsset)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_graderMarkupAsset)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_graderScoreAsset)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_infoDicts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
  }

  if (self->_takerUserId)
  {
    [toCopy setTakerUserId:?];
  }

  if (self->_makerUserId)
  {
    [toCopy setMakerUserId:?];
  }

  if (self->_parentObjectId)
  {
    [toCopy setParentObjectId:?];
  }

  if (self->_dateCreated)
  {
    [toCopy setDateCreated:?];
  }

  if (self->_dateLastModified)
  {
    [toCopy setDateLastModified:?];
  }

  if (self->_etag)
  {
    [toCopy setEtag:?];
  }

  if (self->_selfIdentifiedName)
  {
    [toCopy setSelfIdentifiedName:?];
  }

  if (self->_takerMarkupAsset)
  {
    [toCopy setTakerMarkupAsset:?];
  }

  if (self->_graderMarkupAsset)
  {
    [toCopy setGraderMarkupAsset:?];
  }

  if (self->_graderScoreAsset)
  {
    [toCopy setGraderScoreAsset:?];
  }

  if ([(PDDPTakerWork *)self infoDictsCount])
  {
    [toCopy clearInfoDicts];
    infoDictsCount = [(PDDPTakerWork *)self infoDictsCount];
    if (infoDictsCount)
    {
      v5 = infoDictsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPTakerWork *)self infoDictAtIndex:i];
        [toCopy addInfoDict:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:zone];
  v7 = v5[8];
  v5[8] = v6;

  v8 = [(NSString *)self->_takerUserId copyWithZone:zone];
  v9 = v5[12];
  v5[12] = v8;

  v10 = [(NSString *)self->_makerUserId copyWithZone:zone];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(NSString *)self->_parentObjectId copyWithZone:zone];
  v13 = v5[9];
  v5[9] = v12;

  v14 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v17 = v5[2];
  v5[2] = v16;

  v18 = [(NSString *)self->_etag copyWithZone:zone];
  v19 = v5[3];
  v5[3] = v18;

  v20 = [(NSString *)self->_selfIdentifiedName copyWithZone:zone];
  v21 = v5[10];
  v5[10] = v20;

  v22 = [(PDDPAsset *)self->_takerMarkupAsset copyWithZone:zone];
  v23 = v5[11];
  v5[11] = v22;

  v24 = [(PDDPAsset *)self->_graderMarkupAsset copyWithZone:zone];
  v25 = v5[4];
  v5[4] = v24;

  v26 = [(PDDPAsset *)self->_graderScoreAsset copyWithZone:zone];
  v27 = v5[5];
  v5[5] = v26;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = self->_infoDicts;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v35 + 1) + 8 * v32) copyWithZone:{zone, v35}];
        [v5 addInfoDict:v33];

        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v30);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  objectId = self->_objectId;
  if (objectId | equalCopy[8])
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_26;
    }
  }

  takerUserId = self->_takerUserId;
  if (takerUserId | equalCopy[12] && ![(NSString *)takerUserId isEqual:?])
  {
    goto LABEL_26;
  }

  makerUserId = self->_makerUserId;
  if (makerUserId | equalCopy[7] && ![(NSString *)makerUserId isEqual:?])
  {
    goto LABEL_26;
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | equalCopy[9] && ![(NSString *)parentObjectId isEqual:?])
  {
    goto LABEL_26;
  }

  if (((dateCreated = self->_dateCreated, !(dateCreated | equalCopy[1])) || [(PDDPDate *)dateCreated isEqual:?]) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | equalCopy[2])) || [(PDDPDate *)dateLastModified isEqual:?]) && ((etag = self->_etag, !(etag | equalCopy[3])) || [(NSString *)etag isEqual:?]) && ((selfIdentifiedName = self->_selfIdentifiedName, !(selfIdentifiedName | equalCopy[10])) || [(NSString *)selfIdentifiedName isEqual:?]) && ((takerMarkupAsset = self->_takerMarkupAsset, !(takerMarkupAsset | equalCopy[11])) || [(PDDPAsset *)takerMarkupAsset isEqual:?]) && ((graderMarkupAsset = self->_graderMarkupAsset, !(graderMarkupAsset | equalCopy[4])) || [(PDDPAsset *)graderMarkupAsset isEqual:?]) && ((graderScoreAsset = self->_graderScoreAsset, !(graderScoreAsset | equalCopy[5])) || [(PDDPAsset *)graderScoreAsset isEqual:?]))
  {
    infoDicts = self->_infoDicts;
    if (infoDicts | equalCopy[6])
    {
      v17 = [(NSMutableArray *)infoDicts isEqual:?];
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
LABEL_26:
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_objectId hash];
  v4 = [(NSString *)self->_takerUserId hash]^ v3;
  v5 = [(NSString *)self->_makerUserId hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_parentObjectId hash];
  v7 = [(PDDPDate *)self->_dateCreated hash];
  v8 = v7 ^ [(PDDPDate *)self->_dateLastModified hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_etag hash];
  v10 = [(NSString *)self->_selfIdentifiedName hash];
  v11 = v10 ^ [(PDDPAsset *)self->_takerMarkupAsset hash];
  v12 = v11 ^ [(PDDPAsset *)self->_graderMarkupAsset hash];
  v13 = v9 ^ v12 ^ [(PDDPAsset *)self->_graderScoreAsset hash];
  return v13 ^ [(NSMutableArray *)self->_infoDicts hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 8))
  {
    [(PDDPTakerWork *)self setObjectId:?];
  }

  if (*(fromCopy + 12))
  {
    [(PDDPTakerWork *)self setTakerUserId:?];
  }

  if (*(fromCopy + 7))
  {
    [(PDDPTakerWork *)self setMakerUserId:?];
  }

  if (*(fromCopy + 9))
  {
    [(PDDPTakerWork *)self setParentObjectId:?];
  }

  dateCreated = self->_dateCreated;
  v6 = *(fromCopy + 1);
  if (dateCreated)
  {
    if (v6)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPTakerWork *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v8 = *(fromCopy + 2);
  if (dateLastModified)
  {
    if (v8)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPTakerWork *)self setDateLastModified:?];
  }

  if (*(fromCopy + 3))
  {
    [(PDDPTakerWork *)self setEtag:?];
  }

  if (*(fromCopy + 10))
  {
    [(PDDPTakerWork *)self setSelfIdentifiedName:?];
  }

  takerMarkupAsset = self->_takerMarkupAsset;
  v10 = *(fromCopy + 11);
  if (takerMarkupAsset)
  {
    if (v10)
    {
      [(PDDPAsset *)takerMarkupAsset mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PDDPTakerWork *)self setTakerMarkupAsset:?];
  }

  graderMarkupAsset = self->_graderMarkupAsset;
  v12 = *(fromCopy + 4);
  if (graderMarkupAsset)
  {
    if (v12)
    {
      [(PDDPAsset *)graderMarkupAsset mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(PDDPTakerWork *)self setGraderMarkupAsset:?];
  }

  graderScoreAsset = self->_graderScoreAsset;
  v14 = *(fromCopy + 5);
  if (graderScoreAsset)
  {
    if (v14)
    {
      [(PDDPAsset *)graderScoreAsset mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(PDDPTakerWork *)self setGraderScoreAsset:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = *(fromCopy + 6);
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(PDDPTakerWork *)self addInfoDict:*(*(&v20 + 1) + 8 * i), v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

@end
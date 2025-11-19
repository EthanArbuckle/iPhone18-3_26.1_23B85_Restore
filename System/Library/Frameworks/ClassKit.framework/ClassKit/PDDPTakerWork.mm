@interface PDDPTakerWork
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInfoDict:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPTakerWork

- (void)addInfoDict:(id)a3
{
  v4 = a3;
  infoDicts = self->_infoDicts;
  v8 = v4;
  if (!infoDicts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_infoDicts;
    self->_infoDicts = v6;

    v4 = v8;
    infoDicts = self->_infoDicts;
  }

  [(NSMutableArray *)infoDicts addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPTakerWork;
  v3 = [(PDDPTakerWork *)&v7 description];
  v4 = [(PDDPTakerWork *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v10 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    v12 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"date_last_modified"];
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
    v16 = [(PDDPAsset *)takerMarkupAsset dictionaryRepresentation];
    [v4 setObject:v16 forKey:@"taker_markup_asset"];
  }

  graderMarkupAsset = self->_graderMarkupAsset;
  if (graderMarkupAsset)
  {
    v18 = [(PDDPAsset *)graderMarkupAsset dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"grader_markup_asset"];
  }

  graderScoreAsset = self->_graderScoreAsset;
  if (graderScoreAsset)
  {
    v20 = [(PDDPAsset *)graderScoreAsset dictionaryRepresentation];
    [v4 setObject:v20 forKey:@"grader_score_asset"];
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

          v27 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v21 addObject:v27];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v24);
    }

    [v4 setObject:v21 forKey:@"info_dict"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_objectId)
  {
    [v8 setObjectId:?];
  }

  if (self->_takerUserId)
  {
    [v8 setTakerUserId:?];
  }

  if (self->_makerUserId)
  {
    [v8 setMakerUserId:?];
  }

  if (self->_parentObjectId)
  {
    [v8 setParentObjectId:?];
  }

  if (self->_dateCreated)
  {
    [v8 setDateCreated:?];
  }

  if (self->_dateLastModified)
  {
    [v8 setDateLastModified:?];
  }

  if (self->_etag)
  {
    [v8 setEtag:?];
  }

  if (self->_selfIdentifiedName)
  {
    [v8 setSelfIdentifiedName:?];
  }

  if (self->_takerMarkupAsset)
  {
    [v8 setTakerMarkupAsset:?];
  }

  if (self->_graderMarkupAsset)
  {
    [v8 setGraderMarkupAsset:?];
  }

  if (self->_graderScoreAsset)
  {
    [v8 setGraderScoreAsset:?];
  }

  if ([(PDDPTakerWork *)self infoDictsCount])
  {
    [v8 clearInfoDicts];
    v4 = [(PDDPTakerWork *)self infoDictsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPTakerWork *)self infoDictAtIndex:i];
        [v8 addInfoDict:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:a3];
  v7 = v5[8];
  v5[8] = v6;

  v8 = [(NSString *)self->_takerUserId copyWithZone:a3];
  v9 = v5[12];
  v5[12] = v8;

  v10 = [(NSString *)self->_makerUserId copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(NSString *)self->_parentObjectId copyWithZone:a3];
  v13 = v5[9];
  v5[9] = v12;

  v14 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v17 = v5[2];
  v5[2] = v16;

  v18 = [(NSString *)self->_etag copyWithZone:a3];
  v19 = v5[3];
  v5[3] = v18;

  v20 = [(NSString *)self->_selfIdentifiedName copyWithZone:a3];
  v21 = v5[10];
  v5[10] = v20;

  v22 = [(PDDPAsset *)self->_takerMarkupAsset copyWithZone:a3];
  v23 = v5[11];
  v5[11] = v22;

  v24 = [(PDDPAsset *)self->_graderMarkupAsset copyWithZone:a3];
  v25 = v5[4];
  v5[4] = v24;

  v26 = [(PDDPAsset *)self->_graderScoreAsset copyWithZone:a3];
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

        v33 = [*(*(&v35 + 1) + 8 * v32) copyWithZone:{a3, v35}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  objectId = self->_objectId;
  if (objectId | v4[8])
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_26;
    }
  }

  takerUserId = self->_takerUserId;
  if (takerUserId | v4[12] && ![(NSString *)takerUserId isEqual:?])
  {
    goto LABEL_26;
  }

  makerUserId = self->_makerUserId;
  if (makerUserId | v4[7] && ![(NSString *)makerUserId isEqual:?])
  {
    goto LABEL_26;
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | v4[9] && ![(NSString *)parentObjectId isEqual:?])
  {
    goto LABEL_26;
  }

  if (((dateCreated = self->_dateCreated, !(dateCreated | v4[1])) || [(PDDPDate *)dateCreated isEqual:?]) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | v4[2])) || [(PDDPDate *)dateLastModified isEqual:?]) && ((etag = self->_etag, !(etag | v4[3])) || [(NSString *)etag isEqual:?]) && ((selfIdentifiedName = self->_selfIdentifiedName, !(selfIdentifiedName | v4[10])) || [(NSString *)selfIdentifiedName isEqual:?]) && ((takerMarkupAsset = self->_takerMarkupAsset, !(takerMarkupAsset | v4[11])) || [(PDDPAsset *)takerMarkupAsset isEqual:?]) && ((graderMarkupAsset = self->_graderMarkupAsset, !(graderMarkupAsset | v4[4])) || [(PDDPAsset *)graderMarkupAsset isEqual:?]) && ((graderScoreAsset = self->_graderScoreAsset, !(graderScoreAsset | v4[5])) || [(PDDPAsset *)graderScoreAsset isEqual:?]))
  {
    infoDicts = self->_infoDicts;
    if (infoDicts | v4[6])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 8))
  {
    [(PDDPTakerWork *)self setObjectId:?];
  }

  if (*(v4 + 12))
  {
    [(PDDPTakerWork *)self setTakerUserId:?];
  }

  if (*(v4 + 7))
  {
    [(PDDPTakerWork *)self setMakerUserId:?];
  }

  if (*(v4 + 9))
  {
    [(PDDPTakerWork *)self setParentObjectId:?];
  }

  dateCreated = self->_dateCreated;
  v6 = *(v4 + 1);
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
  v8 = *(v4 + 2);
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

  if (*(v4 + 3))
  {
    [(PDDPTakerWork *)self setEtag:?];
  }

  if (*(v4 + 10))
  {
    [(PDDPTakerWork *)self setSelfIdentifiedName:?];
  }

  takerMarkupAsset = self->_takerMarkupAsset;
  v10 = *(v4 + 11);
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
  v12 = *(v4 + 4);
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
  v14 = *(v4 + 5);
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
  v15 = *(v4 + 6);
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
@interface PDDPProgressEntity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPProgressEntity

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_ENTITY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"TIME_INTERVAL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ACTIVITY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ACTIVITY_QUANTITY_ITEM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ACTIVITY_BINARY_ITEM"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ACTIVITY_SCORE_ITEM"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RANGE"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPProgressEntity;
  v3 = [(PDDPProgressEntity *)&v7 description];
  v4 = [(PDDPProgressEntity *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 7)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = *(&off_100203D38 + type);
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

  appIdentifier = self->_appIdentifier;
  if (appIdentifier)
  {
    [v3 setObject:appIdentifier forKey:@"app_identifier"];
  }

  objectIdPath = self->_objectIdPath;
  if (objectIdPath)
  {
    [v3 setObject:objectIdPath forKey:@"object_id_path"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    v11 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"date_created"];
  }

  stableParentObjectId = self->_stableParentObjectId;
  if (stableParentObjectId)
  {
    [v3 setObject:stableParentObjectId forKey:@"stable_parent_object_id"];
  }

  stableObjectIdPath = self->_stableObjectIdPath;
  if (stableObjectIdPath)
  {
    [v3 setObject:stableObjectIdPath forKey:@"stable_object_id_path"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_parentObjectId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_appIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_objectIdPath)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_stableParentObjectId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_stableObjectIdPath)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[16] = self->_type;
    *(v4 + 68) |= 1u;
  }

  v5 = v4;
  if (self->_objectId)
  {
    [v4 setObjectId:?];
    v4 = v5;
  }

  if (self->_parentObjectId)
  {
    [v5 setParentObjectId:?];
    v4 = v5;
  }

  if (self->_appIdentifier)
  {
    [v5 setAppIdentifier:?];
    v4 = v5;
  }

  if (self->_objectIdPath)
  {
    [v5 setObjectIdPath:?];
    v4 = v5;
  }

  if (self->_dateCreated)
  {
    [v5 setDateCreated:?];
    v4 = v5;
  }

  if (self->_stableParentObjectId)
  {
    [v5 setStableParentObjectId:?];
    v4 = v5;
  }

  if (self->_stableObjectIdPath)
  {
    [v5 setStableObjectIdPath:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 68) |= 1u;
  }

  v7 = [(NSString *)self->_objectId copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_parentObjectId copyWithZone:a3];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(NSString *)self->_appIdentifier copyWithZone:a3];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(NSString *)self->_objectIdPath copyWithZone:a3];
  v14 = v6[4];
  v6[4] = v13;

  v15 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v16 = v6[2];
  v6[2] = v15;

  v17 = [(NSString *)self->_stableParentObjectId copyWithZone:a3];
  v18 = v6[7];
  v6[7] = v17;

  v19 = [(NSString *)self->_stableObjectIdPath copyWithZone:a3];
  v20 = v6[6];
  v6[6] = v19;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(v4 + 68);
  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_type != *(v4 + 16))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 68))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  objectId = self->_objectId;
  if (objectId | *(v4 + 3) && ![(NSString *)objectId isEqual:?])
  {
    goto LABEL_21;
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | *(v4 + 5))
  {
    if (![(NSString *)parentObjectId isEqual:?])
    {
      goto LABEL_21;
    }
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier | *(v4 + 1))
  {
    if (![(NSString *)appIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  objectIdPath = self->_objectIdPath;
  if (objectIdPath | *(v4 + 4))
  {
    if (![(NSString *)objectIdPath isEqual:?])
    {
      goto LABEL_21;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(v4 + 2))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_21;
    }
  }

  stableParentObjectId = self->_stableParentObjectId;
  if (stableParentObjectId | *(v4 + 7))
  {
    if (![(NSString *)stableParentObjectId isEqual:?])
    {
      goto LABEL_21;
    }
  }

  stableObjectIdPath = self->_stableObjectIdPath;
  if (stableObjectIdPath | *(v4 + 6))
  {
    v13 = [(NSString *)stableObjectIdPath isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_22:

  return v13;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_objectId hash]^ v3;
  v5 = [(NSString *)self->_parentObjectId hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_appIdentifier hash];
  v7 = [(NSString *)self->_objectIdPath hash];
  v8 = v7 ^ [(PDDPDate *)self->_dateCreated hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_stableParentObjectId hash];
  return v9 ^ [(NSString *)self->_stableObjectIdPath hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 68))
  {
    self->_type = *(v4 + 16);
    *&self->_has |= 1u;
  }

  v8 = v4;
  if (*(v4 + 3))
  {
    [(PDDPProgressEntity *)self setObjectId:?];
    v5 = v8;
  }

  if (v5[5])
  {
    [(PDDPProgressEntity *)self setParentObjectId:?];
    v5 = v8;
  }

  if (v5[1])
  {
    [(PDDPProgressEntity *)self setAppIdentifier:?];
    v5 = v8;
  }

  if (v5[4])
  {
    [(PDDPProgressEntity *)self setObjectIdPath:?];
    v5 = v8;
  }

  dateCreated = self->_dateCreated;
  v7 = v5[2];
  if (dateCreated)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    [(PDDPDate *)dateCreated mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    [(PDDPProgressEntity *)self setDateCreated:?];
  }

  v5 = v8;
LABEL_17:
  if (v5[7])
  {
    [(PDDPProgressEntity *)self setStableParentObjectId:?];
    v5 = v8;
  }

  if (v5[6])
  {
    [(PDDPProgressEntity *)self setStableObjectIdPath:?];
  }

  _objc_release_x1();
}

@end
@interface PDDPCollection
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

@implementation PDDPCollection

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
  if ([v3 isEqualToString:@"UNKNOWN_COLLECTION_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CUSTOM"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ARCHIVED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RETURNED"])
  {
    v4 = 3;
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
  v7.super_class = PDDPCollection;
  v3 = [(PDDPCollection *)&v7 description];
  v4 = [(PDDPCollection *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 4)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_100204EF0[type];
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v3 setObject:displayName forKey:@"display_name"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    v9 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    v11 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"date_last_modified"];
  }

  collectionItemLocation = self->_collectionItemLocation;
  if (collectionItemLocation)
  {
    [v3 setObject:collectionItemLocation forKey:@"collection_item_location"];
  }

  iconIdentifier = self->_iconIdentifier;
  if (iconIdentifier)
  {
    [v3 setObject:iconIdentifier forKey:@"icon_identifier"];
  }

  dateClassCreated = self->_dateClassCreated;
  if (dateClassCreated)
  {
    v15 = [(PDDPDate *)dateClassCreated dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"date_class_created"];
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

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_collectionItemLocation)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_iconIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_dateClassCreated)
  {
    PBDataWriterWriteSubmessage();
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

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    v4 = v5;
  }

  if (self->_dateCreated)
  {
    [v5 setDateCreated:?];
    v4 = v5;
  }

  if (self->_dateLastModified)
  {
    [v5 setDateLastModified:?];
    v4 = v5;
  }

  if (self->_collectionItemLocation)
  {
    [v5 setCollectionItemLocation:?];
    v4 = v5;
  }

  if (self->_iconIdentifier)
  {
    [v5 setIconIdentifier:?];
    v4 = v5;
  }

  if (self->_dateClassCreated)
  {
    [v5 setDateClassCreated:?];
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
  v8 = v6[7];
  v6[7] = v7;

  v9 = [(NSString *)self->_displayName copyWithZone:a3];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  v13 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v14 = v6[4];
  v6[4] = v13;

  v15 = [(NSString *)self->_collectionItemLocation copyWithZone:a3];
  v16 = v6[1];
  v6[1] = v15;

  v17 = [(NSString *)self->_iconIdentifier copyWithZone:a3];
  v18 = v6[6];
  v6[6] = v17;

  v19 = [(PDDPDate *)self->_dateClassCreated copyWithZone:a3];
  v20 = v6[2];
  v6[2] = v19;

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
  if (objectId | *(v4 + 7) && ![(NSString *)objectId isEqual:?])
  {
    goto LABEL_21;
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 5))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_21;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(v4 + 3))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_21;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(v4 + 4))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_21;
    }
  }

  collectionItemLocation = self->_collectionItemLocation;
  if (collectionItemLocation | *(v4 + 1))
  {
    if (![(NSString *)collectionItemLocation isEqual:?])
    {
      goto LABEL_21;
    }
  }

  iconIdentifier = self->_iconIdentifier;
  if (iconIdentifier | *(v4 + 6))
  {
    if (![(NSString *)iconIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  dateClassCreated = self->_dateClassCreated;
  if (dateClassCreated | *(v4 + 2))
  {
    v13 = [(PDDPDate *)dateClassCreated isEqual:?];
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
  v5 = [(NSString *)self->_displayName hash];
  v6 = v4 ^ v5 ^ [(PDDPDate *)self->_dateCreated hash];
  v7 = [(PDDPDate *)self->_dateLastModified hash];
  v8 = v7 ^ [(NSString *)self->_collectionItemLocation hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_iconIdentifier hash];
  return v9 ^ [(PDDPDate *)self->_dateClassCreated hash];
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

  v12 = v4;
  if (*(v4 + 7))
  {
    [(PDDPCollection *)self setObjectId:?];
    v5 = v12;
  }

  if (v5[5])
  {
    [(PDDPCollection *)self setDisplayName:?];
    v5 = v12;
  }

  dateCreated = self->_dateCreated;
  v7 = v5[3];
  if (dateCreated)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(PDDPDate *)dateCreated mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(PDDPCollection *)self setDateCreated:?];
  }

  v5 = v12;
LABEL_13:
  dateLastModified = self->_dateLastModified;
  v9 = v5[4];
  if (dateLastModified)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(PDDPDate *)dateLastModified mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(PDDPCollection *)self setDateLastModified:?];
  }

  v5 = v12;
LABEL_19:
  if (v5[1])
  {
    [(PDDPCollection *)self setCollectionItemLocation:?];
    v5 = v12;
  }

  if (v5[6])
  {
    [(PDDPCollection *)self setIconIdentifier:?];
    v5 = v12;
  }

  dateClassCreated = self->_dateClassCreated;
  v11 = v5[2];
  if (dateClassCreated)
  {
    if (!v11)
    {
      goto LABEL_29;
    }

    dateClassCreated = [(PDDPDate *)dateClassCreated mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_29;
    }

    dateClassCreated = [(PDDPCollection *)self setDateClassCreated:?];
  }

  v5 = v12;
LABEL_29:

  _objc_release_x1(dateClassCreated, v5);
}

@end
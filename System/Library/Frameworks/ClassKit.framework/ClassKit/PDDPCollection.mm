@interface PDDPCollection
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_COLLECTION_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"CUSTOM"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ARCHIVED"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"RETURNED"])
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
  dictionaryRepresentation = [(PDDPCollection *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    dictionaryRepresentation = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"date_last_modified"];
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
    dictionaryRepresentation3 = [(PDDPDate *)dateClassCreated dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"date_class_created"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_collectionItemLocation)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_iconIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_dateClassCreated)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[16] = self->_type;
    *(toCopy + 68) |= 1u;
  }

  v5 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
    toCopy = v5;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    toCopy = v5;
  }

  if (self->_dateCreated)
  {
    [v5 setDateCreated:?];
    toCopy = v5;
  }

  if (self->_dateLastModified)
  {
    [v5 setDateLastModified:?];
    toCopy = v5;
  }

  if (self->_collectionItemLocation)
  {
    [v5 setCollectionItemLocation:?];
    toCopy = v5;
  }

  if (self->_iconIdentifier)
  {
    [v5 setIconIdentifier:?];
    toCopy = v5;
  }

  if (self->_dateClassCreated)
  {
    [v5 setDateClassCreated:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 68) |= 1u;
  }

  v7 = [(NSString *)self->_objectId copyWithZone:zone];
  v8 = v6[7];
  v6[7] = v7;

  v9 = [(NSString *)self->_displayName copyWithZone:zone];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  v13 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v14 = v6[4];
  v6[4] = v13;

  v15 = [(NSString *)self->_collectionItemLocation copyWithZone:zone];
  v16 = v6[1];
  v6[1] = v15;

  v17 = [(NSString *)self->_iconIdentifier copyWithZone:zone];
  v18 = v6[6];
  v6[6] = v17;

  v19 = [(PDDPDate *)self->_dateClassCreated copyWithZone:zone];
  v20 = v6[2];
  v6[2] = v19;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(equalCopy + 68);
  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_type != *(equalCopy + 16))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 68))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  objectId = self->_objectId;
  if (objectId | *(equalCopy + 7) && ![(NSString *)objectId isEqual:?])
  {
    goto LABEL_21;
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 5))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_21;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(equalCopy + 3))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_21;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 4))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_21;
    }
  }

  collectionItemLocation = self->_collectionItemLocation;
  if (collectionItemLocation | *(equalCopy + 1))
  {
    if (![(NSString *)collectionItemLocation isEqual:?])
    {
      goto LABEL_21;
    }
  }

  iconIdentifier = self->_iconIdentifier;
  if (iconIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)iconIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  dateClassCreated = self->_dateClassCreated;
  if (dateClassCreated | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 68))
  {
    self->_type = *(fromCopy + 16);
    *&self->_has |= 1u;
  }

  v12 = fromCopy;
  if (*(fromCopy + 7))
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
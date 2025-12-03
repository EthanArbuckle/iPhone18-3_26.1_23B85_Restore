@interface PDDPHandout
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPublishingState:(id)state;
- (int)StringAsType:(id)type;
- (int)publishingState;
- (int)type;
- (unint64_t)hash;
- (void)addClassIds:(id)ids;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsReviewed:(BOOL)reviewed;
- (void)setHasPublishingState:(BOOL)state;
- (void)setHasType:(BOOL)type;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation PDDPHandout

- (void)setHasIsReviewed:(BOOL)reviewed
{
  if (reviewed)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)publishingState
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_publishingState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPublishingState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsPublishingState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"UNKNOWN_STATE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"PENDING"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"PUBLISHING"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"PUBLISHED"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"UPDATING"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"ERROR"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"SUBMITTED"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"SCHEDULING"])
  {
    v4 = 7;
  }

  else if ([stateCopy isEqualToString:@"SCHEDULED"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)type
{
  if ((*&self->_has & 4) != 0)
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"PRIVATE_TYPE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PUBLIC_TYPE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPHandout;
  v3 = [(PDDPHandout *)&v7 description];
  dictionaryRepresentation = [(PDDPHandout *)self dictionaryRepresentation];
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

  appIdentifier = self->_appIdentifier;
  if (appIdentifier)
  {
    [v4 setObject:appIdentifier forKey:@"app_identifier"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  instructions = self->_instructions;
  if (instructions)
  {
    [v4 setObject:instructions forKey:@"instructions"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    dictionaryRepresentation = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"date_created"];
  }

  dateDue = self->_dateDue;
  if (dateDue)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateDue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"date_due"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation3 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"date_last_modified"];
  }

  dateOfPublication = self->_dateOfPublication;
  if (dateOfPublication)
  {
    dictionaryRepresentation4 = [(PDDPDate *)dateOfPublication dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"date_of_publication"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v17 = [NSNumber numberWithBool:self->_isReviewed];
    [v4 setObject:v17 forKey:@"is_reviewed"];
  }

  dateLastReviewed = self->_dateLastReviewed;
  if (dateLastReviewed)
  {
    dictionaryRepresentation5 = [(PDDPDate *)dateLastReviewed dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"date_last_reviewed"];
  }

  if ((*&self->_has & 2) != 0)
  {
    publishingState = self->_publishingState;
    if (publishingState >= 9)
    {
      v21 = [NSString stringWithFormat:@"(unknown: %i)", self->_publishingState];
    }

    else
    {
      v21 = off_100204228[publishingState];
    }

    [v4 setObject:v21 forKey:@"publishing_state"];
  }

  status = self->_status;
  if (status)
  {
    dictionaryRepresentation6 = [(PDDPStatus *)status dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation6 forKey:@"status"];
  }

  has = self->_has;
  if (has)
  {
    v25 = [NSNumber numberWithUnsignedLongLong:self->_flags];
    [v4 setObject:v25 forKey:@"flags"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    type = self->_type;
    if (type >= 3)
    {
      v27 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v27 = off_100204270[type];
    }

    [v4 setObject:v27 forKey:@"type"];
  }

  publicShareLink = self->_publicShareLink;
  if (publicShareLink)
  {
    [v4 setObject:publicShareLink forKey:@"public_share_link"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v29 = [NSNumber numberWithInt:self->_version];
    [v4 setObject:v29 forKey:@"version"];
  }

  classIds = self->_classIds;
  if (classIds)
  {
    [v4 setObject:classIds forKey:@"class_ids"];
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

  if (self->_appIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_instructions)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateDue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateOfPublication)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    isReviewed = self->_isReviewed;
    PBDataWriterWriteBOOLField();
  }

  if (self->_dateLastReviewed)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    publishingState = self->_publishingState;
    PBDataWriterWriteInt32Field();
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    flags = self->_flags;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_publicShareLink)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_classIds;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
    toCopy = v10;
  }

  if (self->_appIdentifier)
  {
    [v10 setAppIdentifier:?];
    toCopy = v10;
  }

  if (self->_title)
  {
    [v10 setTitle:?];
    toCopy = v10;
  }

  if (self->_instructions)
  {
    [v10 setInstructions:?];
    toCopy = v10;
  }

  if (self->_dateCreated)
  {
    [v10 setDateCreated:?];
    toCopy = v10;
  }

  if (self->_dateDue)
  {
    [v10 setDateDue:?];
    toCopy = v10;
  }

  if (self->_dateLastModified)
  {
    [v10 setDateLastModified:?];
    toCopy = v10;
  }

  if (self->_dateOfPublication)
  {
    [v10 setDateOfPublication:?];
    toCopy = v10;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(toCopy + 128) = self->_isReviewed;
    *(toCopy + 132) |= 0x10u;
  }

  if (self->_dateLastReviewed)
  {
    [v10 setDateLastReviewed:?];
    toCopy = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 24) = self->_publishingState;
    *(toCopy + 132) |= 2u;
  }

  if (self->_status)
  {
    [v10 setStatus:?];
    toCopy = v10;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_flags;
    *(toCopy + 132) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 30) = self->_type;
    *(toCopy + 132) |= 4u;
  }

  if (self->_publicShareLink)
  {
    [v10 setPublicShareLink:?];
    toCopy = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 31) = self->_version;
    *(toCopy + 132) |= 8u;
  }

  if ([(PDDPHandout *)self classIdsCount])
  {
    [v10 clearClassIds];
    classIdsCount = [(PDDPHandout *)self classIdsCount];
    if (classIdsCount)
    {
      v7 = classIdsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PDDPHandout *)self classIdsAtIndex:i];
        [v10 addClassIds:v9];
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

  v8 = [(NSString *)self->_appIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_title copyWithZone:zone];
  v11 = v5[14];
  v5[14] = v10;

  v12 = [(NSString *)self->_instructions copyWithZone:zone];
  v13 = v5[9];
  v5[9] = v12;

  v14 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v15 = v5[4];
  v5[4] = v14;

  v16 = [(PDDPDate *)self->_dateDue copyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v19 = v5[6];
  v5[6] = v18;

  v20 = [(PDDPDate *)self->_dateOfPublication copyWithZone:zone];
  v21 = v5[8];
  v5[8] = v20;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 128) = self->_isReviewed;
    *(v5 + 132) |= 0x10u;
  }

  v22 = [(PDDPDate *)self->_dateLastReviewed copyWithZone:zone];
  v23 = v5[7];
  v5[7] = v22;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_publishingState;
    *(v5 + 132) |= 2u;
  }

  v24 = [(PDDPStatus *)self->_status copyWithZone:zone];
  v25 = v5[13];
  v5[13] = v24;

  has = self->_has;
  if (has)
  {
    v5[1] = self->_flags;
    *(v5 + 132) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 30) = self->_type;
    *(v5 + 132) |= 4u;
  }

  v27 = [(NSString *)self->_publicShareLink copyWithZone:zone];
  v28 = v5[11];
  v5[11] = v27;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 31) = self->_version;
    *(v5 + 132) |= 8u;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = self->_classIds;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v37;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v36 + 1) + 8 * i) copyWithZone:{zone, v36}];
        [v5 addClassIds:v34];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v31);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  objectId = self->_objectId;
  if (objectId | *(equalCopy + 10))
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_57;
    }
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)appIdentifier isEqual:?])
    {
      goto LABEL_57;
    }
  }

  title = self->_title;
  if (title | *(equalCopy + 14))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_57;
    }
  }

  instructions = self->_instructions;
  if (instructions | *(equalCopy + 9))
  {
    if (![(NSString *)instructions isEqual:?])
    {
      goto LABEL_57;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(equalCopy + 4))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_57;
    }
  }

  dateDue = self->_dateDue;
  if (dateDue | *(equalCopy + 5))
  {
    if (![(PDDPDate *)dateDue isEqual:?])
    {
      goto LABEL_57;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 6))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_57;
    }
  }

  dateOfPublication = self->_dateOfPublication;
  if (dateOfPublication | *(equalCopy + 8))
  {
    if (![(PDDPDate *)dateOfPublication isEqual:?])
    {
      goto LABEL_57;
    }
  }

  has = self->_has;
  v14 = *(equalCopy + 132);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 132) & 0x10) == 0)
    {
      goto LABEL_57;
    }

    v16 = *(equalCopy + 128);
    if (self->_isReviewed)
    {
      if ((*(equalCopy + 128) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(equalCopy + 128))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 132) & 0x10) != 0)
  {
    goto LABEL_57;
  }

  dateLastReviewed = self->_dateLastReviewed;
  if (dateLastReviewed | *(equalCopy + 7))
  {
    if (![(PDDPDate *)dateLastReviewed isEqual:?])
    {
      goto LABEL_57;
    }

    has = self->_has;
    v14 = *(equalCopy + 132);
  }

  if ((has & 2) != 0)
  {
    if ((v14 & 2) == 0 || self->_publishingState != *(equalCopy + 24))
    {
      goto LABEL_57;
    }
  }

  else if ((v14 & 2) != 0)
  {
    goto LABEL_57;
  }

  status = self->_status;
  if (status | *(equalCopy + 13))
  {
    if (![(PDDPStatus *)status isEqual:?])
    {
      goto LABEL_57;
    }

    has = self->_has;
    v14 = *(equalCopy + 132);
  }

  if (has)
  {
    if ((v14 & 1) == 0 || self->_flags != *(equalCopy + 1))
    {
      goto LABEL_57;
    }
  }

  else if (v14)
  {
    goto LABEL_57;
  }

  if ((has & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_type != *(equalCopy + 30))
    {
      goto LABEL_57;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_57;
  }

  publicShareLink = self->_publicShareLink;
  if (publicShareLink | *(equalCopy + 11))
  {
    if ([(NSString *)publicShareLink isEqual:?])
    {
      has = self->_has;
      v14 = *(equalCopy + 132);
      goto LABEL_50;
    }

LABEL_57:
    v20 = 0;
    goto LABEL_58;
  }

LABEL_50:
  if ((has & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_version != *(equalCopy + 31))
    {
      goto LABEL_57;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_57;
  }

  classIds = self->_classIds;
  if (classIds | *(equalCopy + 3))
  {
    v20 = [(NSMutableArray *)classIds isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_58:

  return v20;
}

- (unint64_t)hash
{
  v19 = [(NSString *)self->_objectId hash];
  v18 = [(NSString *)self->_appIdentifier hash];
  v17 = [(NSString *)self->_title hash];
  v16 = [(NSString *)self->_instructions hash];
  v15 = [(PDDPDate *)self->_dateCreated hash];
  v14 = [(PDDPDate *)self->_dateDue hash];
  v13 = [(PDDPDate *)self->_dateLastModified hash];
  v3 = [(PDDPDate *)self->_dateOfPublication hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = 2654435761 * self->_isReviewed;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PDDPDate *)self->_dateLastReviewed hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_publishingState;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PDDPStatus *)self->_status hash];
  if (*&self->_has)
  {
    v8 = 2654435761u * self->_flags;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_9:
      v9 = 2654435761 * self->_type;
      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_12:
  v10 = [(NSString *)self->_publicShareLink hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_version;
  }

  else
  {
    v11 = 0;
  }

  return v18 ^ v19 ^ v17 ^ v16 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSMutableArray *)self->_classIds hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 10))
  {
    [(PDDPHandout *)self setObjectId:?];
  }

  if (*(fromCopy + 2))
  {
    [(PDDPHandout *)self setAppIdentifier:?];
  }

  if (*(fromCopy + 14))
  {
    [(PDDPHandout *)self setTitle:?];
  }

  if (*(fromCopy + 9))
  {
    [(PDDPHandout *)self setInstructions:?];
  }

  dateCreated = self->_dateCreated;
  v6 = *(fromCopy + 4);
  if (dateCreated)
  {
    if (v6)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPHandout *)self setDateCreated:?];
  }

  dateDue = self->_dateDue;
  v8 = *(fromCopy + 5);
  if (dateDue)
  {
    if (v8)
    {
      [(PDDPDate *)dateDue mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPHandout *)self setDateDue:?];
  }

  dateLastModified = self->_dateLastModified;
  v10 = *(fromCopy + 6);
  if (dateLastModified)
  {
    if (v10)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PDDPHandout *)self setDateLastModified:?];
  }

  dateOfPublication = self->_dateOfPublication;
  v12 = *(fromCopy + 8);
  if (dateOfPublication)
  {
    if (v12)
    {
      [(PDDPDate *)dateOfPublication mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(PDDPHandout *)self setDateOfPublication:?];
  }

  if ((*(fromCopy + 132) & 0x10) != 0)
  {
    self->_isReviewed = *(fromCopy + 128);
    *&self->_has |= 0x10u;
  }

  dateLastReviewed = self->_dateLastReviewed;
  v14 = *(fromCopy + 7);
  if (dateLastReviewed)
  {
    if (v14)
    {
      [(PDDPDate *)dateLastReviewed mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(PDDPHandout *)self setDateLastReviewed:?];
  }

  if ((*(fromCopy + 132) & 2) != 0)
  {
    self->_publishingState = *(fromCopy + 24);
    *&self->_has |= 2u;
  }

  status = self->_status;
  v16 = *(fromCopy + 13);
  if (status)
  {
    if (v16)
    {
      [(PDDPStatus *)status mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(PDDPHandout *)self setStatus:?];
  }

  v17 = *(fromCopy + 132);
  if (v17)
  {
    self->_flags = *(fromCopy + 1);
    *&self->_has |= 1u;
    v17 = *(fromCopy + 132);
  }

  if ((v17 & 4) != 0)
  {
    self->_type = *(fromCopy + 30);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 11))
  {
    [(PDDPHandout *)self setPublicShareLink:?];
  }

  if ((*(fromCopy + 132) & 8) != 0)
  {
    self->_version = *(fromCopy + 31);
    *&self->_has |= 8u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = *(fromCopy + 3);
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(PDDPHandout *)self addClassIds:*(*(&v23 + 1) + 8 * i), v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v20);
  }
}

@end
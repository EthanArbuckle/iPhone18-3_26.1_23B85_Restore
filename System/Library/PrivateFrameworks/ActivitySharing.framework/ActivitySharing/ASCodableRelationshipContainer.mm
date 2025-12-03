@interface ASCodableRelationshipContainer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ASCodableRelationshipContainer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableRelationshipContainer;
  v4 = [(ASCodableRelationshipContainer *)&v8 description];
  dictionaryRepresentation = [(ASCodableRelationshipContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  relationship = self->_relationship;
  if (relationship)
  {
    dictionaryRepresentation = [(ASCodableCloudKitRelationship *)relationship dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"relationship"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_version];
    [dictionary setObject:v6 forKey:@"version"];
  }

  systemFieldsOnlyRecord = self->_systemFieldsOnlyRecord;
  if (systemFieldsOnlyRecord)
  {
    [dictionary setObject:systemFieldsOnlyRecord forKey:@"systemFieldsOnlyRecord"];
  }

  relationshipShareID = self->_relationshipShareID;
  if (relationshipShareID)
  {
    [dictionary setObject:relationshipShareID forKey:@"relationshipShareID"];
  }

  remoteRelationshipShareID = self->_remoteRelationshipShareID;
  if (remoteRelationshipShareID)
  {
    [dictionary setObject:remoteRelationshipShareID forKey:@"remoteRelationshipShareID"];
  }

  remoteActivityShareID = self->_remoteActivityShareID;
  if (remoteActivityShareID)
  {
    [dictionary setObject:remoteActivityShareID forKey:@"remoteActivityShareID"];
  }

  relationshipZoneShareID = self->_relationshipZoneShareID;
  if (relationshipZoneShareID)
  {
    [dictionary setObject:relationshipZoneShareID forKey:@"relationshipZoneShareID"];
  }

  remoteRelationshipZoneShareID = self->_remoteRelationshipZoneShareID;
  if (remoteRelationshipZoneShareID)
  {
    [dictionary setObject:remoteRelationshipZoneShareID forKey:@"remoteRelationshipZoneShareID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_relationship)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_systemFieldsOnlyRecord)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_relationshipShareID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_remoteRelationshipShareID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_remoteActivityShareID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_relationshipZoneShareID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_remoteRelationshipZoneShareID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_relationship)
  {
    [toCopy setRelationship:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_version;
    *(toCopy + 72) |= 1u;
  }

  if (self->_systemFieldsOnlyRecord)
  {
    [v5 setSystemFieldsOnlyRecord:?];
    toCopy = v5;
  }

  if (self->_relationshipShareID)
  {
    [v5 setRelationshipShareID:?];
    toCopy = v5;
  }

  if (self->_remoteRelationshipShareID)
  {
    [v5 setRemoteRelationshipShareID:?];
    toCopy = v5;
  }

  if (self->_remoteActivityShareID)
  {
    [v5 setRemoteActivityShareID:?];
    toCopy = v5;
  }

  if (self->_relationshipZoneShareID)
  {
    [v5 setRelationshipZoneShareID:?];
    toCopy = v5;
  }

  if (self->_remoteRelationshipZoneShareID)
  {
    [v5 setRemoteRelationshipZoneShareID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ASCodableCloudKitRelationship *)self->_relationship copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_version;
    *(v5 + 72) |= 1u;
  }

  v8 = [(NSData *)self->_systemFieldsOnlyRecord copyWithZone:zone];
  v9 = *(v5 + 64);
  *(v5 + 64) = v8;

  v10 = [(NSData *)self->_relationshipShareID copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSData *)self->_remoteRelationshipShareID copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSData *)self->_remoteActivityShareID copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSData *)self->_relationshipZoneShareID copyWithZone:zone];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  v18 = [(NSData *)self->_remoteRelationshipZoneShareID copyWithZone:zone];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  relationship = self->_relationship;
  if (relationship | *(equalCopy + 2))
  {
    if (![(ASCodableCloudKitRelationship *)relationship isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v6 = *(equalCopy + 72);
  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_version != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 72))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  systemFieldsOnlyRecord = self->_systemFieldsOnlyRecord;
  if (systemFieldsOnlyRecord | *(equalCopy + 8) && ![(NSData *)systemFieldsOnlyRecord isEqual:?])
  {
    goto LABEL_21;
  }

  relationshipShareID = self->_relationshipShareID;
  if (relationshipShareID | *(equalCopy + 3))
  {
    if (![(NSData *)relationshipShareID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  remoteRelationshipShareID = self->_remoteRelationshipShareID;
  if (remoteRelationshipShareID | *(equalCopy + 6))
  {
    if (![(NSData *)remoteRelationshipShareID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  remoteActivityShareID = self->_remoteActivityShareID;
  if (remoteActivityShareID | *(equalCopy + 5))
  {
    if (![(NSData *)remoteActivityShareID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  relationshipZoneShareID = self->_relationshipZoneShareID;
  if (relationshipZoneShareID | *(equalCopy + 4))
  {
    if (![(NSData *)relationshipZoneShareID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  remoteRelationshipZoneShareID = self->_remoteRelationshipZoneShareID;
  if (remoteRelationshipZoneShareID | *(equalCopy + 7))
  {
    v13 = [(NSData *)remoteRelationshipZoneShareID isEqual:?];
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
  v3 = [(ASCodableCloudKitRelationship *)self->_relationship hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_version;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSData *)self->_systemFieldsOnlyRecord hash];
  v7 = v5 ^ v6 ^ [(NSData *)self->_relationshipShareID hash];
  v8 = [(NSData *)self->_remoteRelationshipShareID hash];
  v9 = v8 ^ [(NSData *)self->_remoteActivityShareID hash];
  v10 = v7 ^ v9 ^ [(NSData *)self->_relationshipZoneShareID hash];
  return v10 ^ [(NSData *)self->_remoteRelationshipZoneShareID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  relationship = self->_relationship;
  v6 = fromCopy[2];
  v7 = fromCopy;
  if (relationship)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ASCodableCloudKitRelationship *)relationship mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ASCodableRelationshipContainer *)self setRelationship:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[9])
  {
    self->_version = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[8])
  {
    [(ASCodableRelationshipContainer *)self setSystemFieldsOnlyRecord:?];
    fromCopy = v7;
  }

  if (fromCopy[3])
  {
    [(ASCodableRelationshipContainer *)self setRelationshipShareID:?];
    fromCopy = v7;
  }

  if (fromCopy[6])
  {
    [(ASCodableRelationshipContainer *)self setRemoteRelationshipShareID:?];
    fromCopy = v7;
  }

  if (fromCopy[5])
  {
    [(ASCodableRelationshipContainer *)self setRemoteActivityShareID:?];
    fromCopy = v7;
  }

  if (fromCopy[4])
  {
    [(ASCodableRelationshipContainer *)self setRelationshipZoneShareID:?];
    fromCopy = v7;
  }

  if (fromCopy[7])
  {
    [(ASCodableRelationshipContainer *)self setRemoteRelationshipZoneShareID:?];
  }

  MEMORY[0x2821F96F8]();
}

@end
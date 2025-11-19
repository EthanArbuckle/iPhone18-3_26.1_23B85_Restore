@interface ASCodableRelationshipContainer
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableRelationshipContainer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableRelationshipContainer;
  v4 = [(ASCodableRelationshipContainer *)&v8 description];
  v5 = [(ASCodableRelationshipContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  relationship = self->_relationship;
  if (relationship)
  {
    v5 = [(ASCodableCloudKitRelationship *)relationship dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"relationship"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_version];
    [v3 setObject:v6 forKey:@"version"];
  }

  systemFieldsOnlyRecord = self->_systemFieldsOnlyRecord;
  if (systemFieldsOnlyRecord)
  {
    [v3 setObject:systemFieldsOnlyRecord forKey:@"systemFieldsOnlyRecord"];
  }

  relationshipShareID = self->_relationshipShareID;
  if (relationshipShareID)
  {
    [v3 setObject:relationshipShareID forKey:@"relationshipShareID"];
  }

  remoteRelationshipShareID = self->_remoteRelationshipShareID;
  if (remoteRelationshipShareID)
  {
    [v3 setObject:remoteRelationshipShareID forKey:@"remoteRelationshipShareID"];
  }

  remoteActivityShareID = self->_remoteActivityShareID;
  if (remoteActivityShareID)
  {
    [v3 setObject:remoteActivityShareID forKey:@"remoteActivityShareID"];
  }

  relationshipZoneShareID = self->_relationshipZoneShareID;
  if (relationshipZoneShareID)
  {
    [v3 setObject:relationshipZoneShareID forKey:@"relationshipZoneShareID"];
  }

  remoteRelationshipZoneShareID = self->_remoteRelationshipZoneShareID;
  if (remoteRelationshipZoneShareID)
  {
    [v3 setObject:remoteRelationshipZoneShareID forKey:@"remoteRelationshipZoneShareID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_relationship)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_systemFieldsOnlyRecord)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_relationshipShareID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_remoteRelationshipShareID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_remoteActivityShareID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_relationshipZoneShareID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_remoteRelationshipZoneShareID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_relationship)
  {
    [v4 setRelationship:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_version;
    *(v4 + 72) |= 1u;
  }

  if (self->_systemFieldsOnlyRecord)
  {
    [v5 setSystemFieldsOnlyRecord:?];
    v4 = v5;
  }

  if (self->_relationshipShareID)
  {
    [v5 setRelationshipShareID:?];
    v4 = v5;
  }

  if (self->_remoteRelationshipShareID)
  {
    [v5 setRemoteRelationshipShareID:?];
    v4 = v5;
  }

  if (self->_remoteActivityShareID)
  {
    [v5 setRemoteActivityShareID:?];
    v4 = v5;
  }

  if (self->_relationshipZoneShareID)
  {
    [v5 setRelationshipZoneShareID:?];
    v4 = v5;
  }

  if (self->_remoteRelationshipZoneShareID)
  {
    [v5 setRemoteRelationshipZoneShareID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ASCodableCloudKitRelationship *)self->_relationship copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_version;
    *(v5 + 72) |= 1u;
  }

  v8 = [(NSData *)self->_systemFieldsOnlyRecord copyWithZone:a3];
  v9 = *(v5 + 64);
  *(v5 + 64) = v8;

  v10 = [(NSData *)self->_relationshipShareID copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSData *)self->_remoteRelationshipShareID copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSData *)self->_remoteActivityShareID copyWithZone:a3];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSData *)self->_relationshipZoneShareID copyWithZone:a3];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  v18 = [(NSData *)self->_remoteRelationshipZoneShareID copyWithZone:a3];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  relationship = self->_relationship;
  if (relationship | *(v4 + 2))
  {
    if (![(ASCodableCloudKitRelationship *)relationship isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v6 = *(v4 + 72);
  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_version != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 72))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  systemFieldsOnlyRecord = self->_systemFieldsOnlyRecord;
  if (systemFieldsOnlyRecord | *(v4 + 8) && ![(NSData *)systemFieldsOnlyRecord isEqual:?])
  {
    goto LABEL_21;
  }

  relationshipShareID = self->_relationshipShareID;
  if (relationshipShareID | *(v4 + 3))
  {
    if (![(NSData *)relationshipShareID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  remoteRelationshipShareID = self->_remoteRelationshipShareID;
  if (remoteRelationshipShareID | *(v4 + 6))
  {
    if (![(NSData *)remoteRelationshipShareID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  remoteActivityShareID = self->_remoteActivityShareID;
  if (remoteActivityShareID | *(v4 + 5))
  {
    if (![(NSData *)remoteActivityShareID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  relationshipZoneShareID = self->_relationshipZoneShareID;
  if (relationshipZoneShareID | *(v4 + 4))
  {
    if (![(NSData *)relationshipZoneShareID isEqual:?])
    {
      goto LABEL_21;
    }
  }

  remoteRelationshipZoneShareID = self->_remoteRelationshipZoneShareID;
  if (remoteRelationshipZoneShareID | *(v4 + 7))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  relationship = self->_relationship;
  v6 = v4[2];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[9])
  {
    self->_version = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[8])
  {
    [(ASCodableRelationshipContainer *)self setSystemFieldsOnlyRecord:?];
    v4 = v7;
  }

  if (v4[3])
  {
    [(ASCodableRelationshipContainer *)self setRelationshipShareID:?];
    v4 = v7;
  }

  if (v4[6])
  {
    [(ASCodableRelationshipContainer *)self setRemoteRelationshipShareID:?];
    v4 = v7;
  }

  if (v4[5])
  {
    [(ASCodableRelationshipContainer *)self setRemoteActivityShareID:?];
    v4 = v7;
  }

  if (v4[4])
  {
    [(ASCodableRelationshipContainer *)self setRelationshipZoneShareID:?];
    v4 = v7;
  }

  if (v4[7])
  {
    [(ASCodableRelationshipContainer *)self setRemoteRelationshipZoneShareID:?];
  }

  MEMORY[0x2821F96F8]();
}

@end
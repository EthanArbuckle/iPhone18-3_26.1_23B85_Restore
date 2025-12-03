@interface ATXPBBlendingSessionERMEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEngagementType:(id)type;
- (int)engagementType;
- (unint64_t)hash;
- (void)addBlendingUpdateUUID:(id)d;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBBlendingSessionERMEvent

- (int)engagementType
{
  if (*&self->_has)
  {
    return self->_engagementType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsEngagementType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Engaged"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Rejected"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"NotShown"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"InferredEngagement"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"InferredRejected"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addBlendingUpdateUUID:(id)d
{
  dCopy = d;
  blendingUpdateUUIDs = self->_blendingUpdateUUIDs;
  v8 = dCopy;
  if (!blendingUpdateUUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_blendingUpdateUUIDs;
    self->_blendingUpdateUUIDs = v6;

    dCopy = v8;
    blendingUpdateUUIDs = self->_blendingUpdateUUIDs;
  }

  [(NSMutableArray *)blendingUpdateUUIDs addObject:dCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBBlendingSessionERMEvent;
  v4 = [(ATXPBBlendingSessionERMEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBBlendingSessionERMEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  executableId = self->_executableId;
  if (executableId)
  {
    [dictionary setObject:executableId forKey:@"executableId"];
  }

  if (*&self->_has)
  {
    engagementType = self->_engagementType;
    if (engagementType >= 5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_engagementType];
    }

    else
    {
      v7 = off_27859F7E8[engagementType];
    }

    [v4 setObject:v7 forKey:@"engagementType"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v4 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  blendingUpdateUUIDs = self->_blendingUpdateUUIDs;
  if (blendingUpdateUUIDs)
  {
    [v4 setObject:blendingUpdateUUIDs forKey:@"blendingUpdateUUID"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_executableId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    engagementType = self->_engagementType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_blendingUpdateUUIDs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_executableId)
  {
    [toCopy setExecutableId:?];
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_engagementType;
    *(toCopy + 40) |= 1u;
  }

  if (self->_consumerSubType)
  {
    [v9 setConsumerSubType:?];
  }

  if ([(ATXPBBlendingSessionERMEvent *)self blendingUpdateUUIDsCount])
  {
    [v9 clearBlendingUpdateUUIDs];
    blendingUpdateUUIDsCount = [(ATXPBBlendingSessionERMEvent *)self blendingUpdateUUIDsCount];
    if (blendingUpdateUUIDsCount)
    {
      v6 = blendingUpdateUUIDsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ATXPBBlendingSessionERMEvent *)self blendingUpdateUUIDAtIndex:i];
        [v9 addBlendingUpdateUUID:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_executableId copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_engagementType;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_blendingUpdateUUIDs;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{zone, v18}];
        [v5 addBlendingUpdateUUID:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  executableId = self->_executableId;
  if (executableId | *(equalCopy + 4))
  {
    if (![(NSString *)executableId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_engagementType != *(equalCopy + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 2) && ![(NSString *)consumerSubType isEqual:?])
  {
    goto LABEL_13;
  }

  blendingUpdateUUIDs = self->_blendingUpdateUUIDs;
  if (blendingUpdateUUIDs | *(equalCopy + 1))
  {
    v9 = [(NSMutableArray *)blendingUpdateUUIDs isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_executableId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_engagementType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_consumerSubType hash];
  return v5 ^ v6 ^ [(NSMutableArray *)self->_blendingUpdateUUIDs hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(ATXPBBlendingSessionERMEvent *)self setExecutableId:?];
  }

  if (*(fromCopy + 40))
  {
    self->_engagementType = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(ATXPBBlendingSessionERMEvent *)self setConsumerSubType:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ATXPBBlendingSessionERMEvent *)self addBlendingUpdateUUID:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end
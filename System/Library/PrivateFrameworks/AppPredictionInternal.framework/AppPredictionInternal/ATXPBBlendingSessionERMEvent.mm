@interface ATXPBBlendingSessionERMEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEngagementType:(id)a3;
- (int)engagementType;
- (unint64_t)hash;
- (void)addBlendingUpdateUUID:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsEngagementType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Engaged"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Rejected"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NotShown"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"InferredEngagement"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"InferredRejected"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addBlendingUpdateUUID:(id)a3
{
  v4 = a3;
  blendingUpdateUUIDs = self->_blendingUpdateUUIDs;
  v8 = v4;
  if (!blendingUpdateUUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_blendingUpdateUUIDs;
    self->_blendingUpdateUUIDs = v6;

    v4 = v8;
    blendingUpdateUUIDs = self->_blendingUpdateUUIDs;
  }

  [(NSMutableArray *)blendingUpdateUUIDs addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBBlendingSessionERMEvent;
  v4 = [(ATXPBBlendingSessionERMEvent *)&v8 description];
  v5 = [(ATXPBBlendingSessionERMEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  executableId = self->_executableId;
  if (executableId)
  {
    [v3 setObject:executableId forKey:@"executableId"];
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

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_executableId)
  {
    [v4 setExecutableId:?];
    v4 = v9;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_engagementType;
    *(v4 + 40) |= 1u;
  }

  if (self->_consumerSubType)
  {
    [v9 setConsumerSubType:?];
  }

  if ([(ATXPBBlendingSessionERMEvent *)self blendingUpdateUUIDsCount])
  {
    [v9 clearBlendingUpdateUUIDs];
    v5 = [(ATXPBBlendingSessionERMEvent *)self blendingUpdateUUIDsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ATXPBBlendingSessionERMEvent *)self blendingUpdateUUIDAtIndex:i];
        [v9 addBlendingUpdateUUID:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_executableId copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_engagementType;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_consumerSubType copyWithZone:a3];
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

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{a3, v18}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  executableId = self->_executableId;
  if (executableId | *(v4 + 4))
  {
    if (![(NSString *)executableId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_engagementType != *(v4 + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 2) && ![(NSString *)consumerSubType isEqual:?])
  {
    goto LABEL_13;
  }

  blendingUpdateUUIDs = self->_blendingUpdateUUIDs;
  if (blendingUpdateUUIDs | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 4))
  {
    [(ATXPBBlendingSessionERMEvent *)self setExecutableId:?];
  }

  if (*(v4 + 40))
  {
    self->_engagementType = *(v4 + 6);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(ATXPBBlendingSessionERMEvent *)self setConsumerSubType:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 1);
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
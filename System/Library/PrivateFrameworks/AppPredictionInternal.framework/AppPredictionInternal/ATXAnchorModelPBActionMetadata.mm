@interface ATXAnchorModelPBActionMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActionType:(id)type;
- (int)actionType;
- (unint64_t)hash;
- (void)addActionUUIDMetadata:(id)metadata;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXAnchorModelPBActionMetadata

- (int)actionType
{
  if (*&self->_has)
  {
    return self->_actionType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ANCHOR_ACTION_TYPE_OTHER"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_ACTION_TYPE_INTENT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_ACTION_TYPE_NSUA"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addActionUUIDMetadata:(id)metadata
{
  metadataCopy = metadata;
  actionUUIDMetadatas = self->_actionUUIDMetadatas;
  v8 = metadataCopy;
  if (!actionUUIDMetadatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_actionUUIDMetadatas;
    self->_actionUUIDMetadatas = v6;

    metadataCopy = v8;
    actionUUIDMetadatas = self->_actionUUIDMetadatas;
  }

  [(NSMutableArray *)actionUUIDMetadatas addObject:metadataCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXAnchorModelPBActionMetadata;
  v4 = [(ATXAnchorModelPBActionMetadata *)&v8 description];
  dictionaryRepresentation = [(ATXAnchorModelPBActionMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    actionType = self->_actionType;
    if (actionType >= 3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_actionType];
    }

    else
    {
      v5 = off_2785A22C0[actionType];
    }

    [dictionary setObject:v5 forKey:@"actionType"];
  }

  appLaunchMetadata = self->_appLaunchMetadata;
  if (appLaunchMetadata)
  {
    dictionaryRepresentation = [(ATXAnchorModelPBAppLaunchMetadata *)appLaunchMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"appLaunchMetadata"];
  }

  actionKeyMetadata = self->_actionKeyMetadata;
  if (actionKeyMetadata)
  {
    dictionaryRepresentation2 = [(ATXAnchorModelPBActionKeyMetadata *)actionKeyMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"actionKeyMetadata"];
  }

  if ([(NSMutableArray *)self->_actionUUIDMetadatas count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_actionUUIDMetadatas, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_actionUUIDMetadatas;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation3 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation3];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"actionUUIDMetadata"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    actionType = self->_actionType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_appLaunchMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_actionKeyMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_actionUUIDMetadatas;
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
        PBDataWriterWriteSubmessage();
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
  if (*&self->_has)
  {
    toCopy[4] = self->_actionType;
    *(toCopy + 40) |= 1u;
  }

  v9 = toCopy;
  if (self->_appLaunchMetadata)
  {
    [toCopy setAppLaunchMetadata:?];
  }

  if (self->_actionKeyMetadata)
  {
    [v9 setActionKeyMetadata:?];
  }

  if ([(ATXAnchorModelPBActionMetadata *)self actionUUIDMetadatasCount])
  {
    [v9 clearActionUUIDMetadatas];
    actionUUIDMetadatasCount = [(ATXAnchorModelPBActionMetadata *)self actionUUIDMetadatasCount];
    if (actionUUIDMetadatasCount)
    {
      v6 = actionUUIDMetadatasCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ATXAnchorModelPBActionMetadata *)self actionUUIDMetadataAtIndex:i];
        [v9 addActionUUIDMetadata:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_actionType;
    *(v5 + 40) |= 1u;
  }

  v7 = [(ATXAnchorModelPBAppLaunchMetadata *)self->_appLaunchMetadata copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(ATXAnchorModelPBActionKeyMetadata *)self->_actionKeyMetadata copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_actionUUIDMetadatas;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * v15) copyWithZone:{zone, v19}];
        [v6 addActionUUIDMetadata:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_actionType != *(equalCopy + 4))
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

  appLaunchMetadata = self->_appLaunchMetadata;
  if (appLaunchMetadata | *(equalCopy + 4) && ![(ATXAnchorModelPBAppLaunchMetadata *)appLaunchMetadata isEqual:?])
  {
    goto LABEL_13;
  }

  actionKeyMetadata = self->_actionKeyMetadata;
  if (actionKeyMetadata | *(equalCopy + 1))
  {
    if (![(ATXAnchorModelPBActionKeyMetadata *)actionKeyMetadata isEqual:?])
    {
      goto LABEL_13;
    }
  }

  actionUUIDMetadatas = self->_actionUUIDMetadatas;
  if (actionUUIDMetadatas | *(equalCopy + 3))
  {
    v9 = [(NSMutableArray *)actionUUIDMetadatas isEqual:?];
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
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_actionType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ATXAnchorModelPBAppLaunchMetadata *)self->_appLaunchMetadata hash]^ v3;
  v5 = [(ATXAnchorModelPBActionKeyMetadata *)self->_actionKeyMetadata hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_actionUUIDMetadatas hash];
}

- (void)mergeFrom:(id)from
{
  v21 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[10])
  {
    self->_actionType = fromCopy[4];
    *&self->_has |= 1u;
  }

  appLaunchMetadata = self->_appLaunchMetadata;
  v7 = *(v5 + 4);
  if (appLaunchMetadata)
  {
    if (v7)
    {
      [(ATXAnchorModelPBAppLaunchMetadata *)appLaunchMetadata mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(ATXAnchorModelPBActionMetadata *)self setAppLaunchMetadata:?];
  }

  actionKeyMetadata = self->_actionKeyMetadata;
  v9 = *(v5 + 1);
  if (actionKeyMetadata)
  {
    if (v9)
    {
      [(ATXAnchorModelPBActionKeyMetadata *)actionKeyMetadata mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(ATXAnchorModelPBActionMetadata *)self setActionKeyMetadata:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(v5 + 3);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ATXAnchorModelPBActionMetadata *)self addActionUUIDMetadata:*(*(&v16 + 1) + 8 * i), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end
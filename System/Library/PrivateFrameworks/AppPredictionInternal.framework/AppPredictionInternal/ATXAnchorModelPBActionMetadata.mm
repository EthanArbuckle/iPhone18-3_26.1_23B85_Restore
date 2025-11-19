@interface ATXAnchorModelPBActionMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActionType:(id)a3;
- (int)actionType;
- (unint64_t)hash;
- (void)addActionUUIDMetadata:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsActionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ANCHOR_ACTION_TYPE_OTHER"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ANCHOR_ACTION_TYPE_INTENT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ANCHOR_ACTION_TYPE_NSUA"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addActionUUIDMetadata:(id)a3
{
  v4 = a3;
  actionUUIDMetadatas = self->_actionUUIDMetadatas;
  v8 = v4;
  if (!actionUUIDMetadatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_actionUUIDMetadatas;
    self->_actionUUIDMetadatas = v6;

    v4 = v8;
    actionUUIDMetadatas = self->_actionUUIDMetadatas;
  }

  [(NSMutableArray *)actionUUIDMetadatas addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXAnchorModelPBActionMetadata;
  v4 = [(ATXAnchorModelPBActionMetadata *)&v8 description];
  v5 = [(ATXAnchorModelPBActionMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v5 forKey:@"actionType"];
  }

  appLaunchMetadata = self->_appLaunchMetadata;
  if (appLaunchMetadata)
  {
    v7 = [(ATXAnchorModelPBAppLaunchMetadata *)appLaunchMetadata dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"appLaunchMetadata"];
  }

  actionKeyMetadata = self->_actionKeyMetadata;
  if (actionKeyMetadata)
  {
    v9 = [(ATXAnchorModelPBActionKeyMetadata *)actionKeyMetadata dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"actionKeyMetadata"];
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

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"actionUUIDMetadata"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_actionType;
    *(v4 + 40) |= 1u;
  }

  v9 = v4;
  if (self->_appLaunchMetadata)
  {
    [v4 setAppLaunchMetadata:?];
  }

  if (self->_actionKeyMetadata)
  {
    [v9 setActionKeyMetadata:?];
  }

  if ([(ATXAnchorModelPBActionMetadata *)self actionUUIDMetadatasCount])
  {
    [v9 clearActionUUIDMetadatas];
    v5 = [(ATXAnchorModelPBActionMetadata *)self actionUUIDMetadatasCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ATXAnchorModelPBActionMetadata *)self actionUUIDMetadataAtIndex:i];
        [v9 addActionUUIDMetadata:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_actionType;
    *(v5 + 40) |= 1u;
  }

  v7 = [(ATXAnchorModelPBAppLaunchMetadata *)self->_appLaunchMetadata copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(ATXAnchorModelPBActionKeyMetadata *)self->_actionKeyMetadata copyWithZone:a3];
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

        v16 = [*(*(&v19 + 1) + 8 * v15) copyWithZone:{a3, v19}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_actionType != *(v4 + 4))
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

  appLaunchMetadata = self->_appLaunchMetadata;
  if (appLaunchMetadata | *(v4 + 4) && ![(ATXAnchorModelPBAppLaunchMetadata *)appLaunchMetadata isEqual:?])
  {
    goto LABEL_13;
  }

  actionKeyMetadata = self->_actionKeyMetadata;
  if (actionKeyMetadata | *(v4 + 1))
  {
    if (![(ATXAnchorModelPBActionKeyMetadata *)actionKeyMetadata isEqual:?])
    {
      goto LABEL_13;
    }
  }

  actionUUIDMetadatas = self->_actionUUIDMetadatas;
  if (actionUUIDMetadatas | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4[10])
  {
    self->_actionType = v4[4];
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
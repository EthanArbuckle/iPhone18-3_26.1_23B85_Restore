@interface PDDPClientConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addExcludeAppIds:(id)a3;
- (void)addHostAllowList:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsContextTrackingAllowed:(BOOL)a3;
- (void)setHasRecordActivity:(BOOL)a3;
- (void)setHasSendToCloudKit:(BOOL)a3;
- (void)setHasSendToOnramp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPClientConfig

- (void)setHasRecordActivity:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSendToCloudKit:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSendToOnramp:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addExcludeAppIds:(id)a3
{
  v4 = a3;
  excludeAppIds = self->_excludeAppIds;
  v8 = v4;
  if (!excludeAppIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_excludeAppIds;
    self->_excludeAppIds = v6;

    v4 = v8;
    excludeAppIds = self->_excludeAppIds;
  }

  [(NSMutableArray *)excludeAppIds addObject:v4];
}

- (void)addHostAllowList:(id)a3
{
  v4 = a3;
  hostAllowLists = self->_hostAllowLists;
  v8 = v4;
  if (!hostAllowLists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_hostAllowLists;
    self->_hostAllowLists = v6;

    v4 = v8;
    hostAllowLists = self->_hostAllowLists;
  }

  [(NSMutableArray *)hostAllowLists addObject:v4];
}

- (void)setHasIsContextTrackingAllowed:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPClientConfig;
  v3 = [(PDDPClientConfig *)&v7 description];
  v4 = [(PDDPClientConfig *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v12 = [NSNumber numberWithBool:self->_recordActivity];
    [v3 setObject:v12 forKey:@"record_activity"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v13 = [NSNumber numberWithBool:self->_sendToCloudKit];
  [v3 setObject:v13 forKey:@"send_to_cloudKit"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithBool:self->_sendToOnramp];
    [v3 setObject:v5 forKey:@"send_to_onramp"];
  }

LABEL_5:
  excludeAppIds = self->_excludeAppIds;
  if (excludeAppIds)
  {
    [v3 setObject:excludeAppIds forKey:@"exclude_app_ids"];
  }

  hostAllowLists = self->_hostAllowLists;
  if (hostAllowLists)
  {
    [v3 setObject:hostAllowLists forKey:@"host_allow_list"];
  }

  v8 = self->_has;
  if (v8)
  {
    v9 = [NSNumber numberWithInt:self->_cloudKitSyncFetchGracePeriod];
    [v3 setObject:v9 forKey:@"cloudKit_sync_fetch_grace_period"];

    v8 = self->_has;
  }

  if ((v8 & 2) != 0)
  {
    v10 = [NSNumber numberWithBool:self->_isContextTrackingAllowed];
    [v3 setObject:v10 forKey:@"is_context_tracking_allowed"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    recordActivity = self->_recordActivity;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  sendToCloudKit = self->_sendToCloudKit;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    sendToOnramp = self->_sendToOnramp;
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = self->_excludeAppIds;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = self->_hostAllowLists;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  v19 = self->_has;
  if (v19)
  {
    cloudKitSyncFetchGracePeriod = self->_cloudKitSyncFetchGracePeriod;
    PBDataWriterWriteInt32Field();
    v19 = self->_has;
  }

  if ((v19 & 2) != 0)
  {
    isContextTrackingAllowed = self->_isContextTrackingAllowed;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v4[34] = self->_sendToCloudKit;
    v4[36] |= 8u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4[33] = self->_recordActivity;
  v4[36] |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v4[35] = self->_sendToOnramp;
    v4[36] |= 0x10u;
  }

LABEL_5:
  v15 = v4;
  if ([(PDDPClientConfig *)self excludeAppIdsCount])
  {
    [v15 clearExcludeAppIds];
    v6 = [(PDDPClientConfig *)self excludeAppIdsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PDDPClientConfig *)self excludeAppIdsAtIndex:i];
        [v15 addExcludeAppIds:v9];
      }
    }
  }

  if ([(PDDPClientConfig *)self hostAllowListsCount])
  {
    [v15 clearHostAllowLists];
    v10 = [(PDDPClientConfig *)self hostAllowListsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(PDDPClientConfig *)self hostAllowListAtIndex:j];
        [v15 addHostAllowList:v13];
      }
    }
  }

  v14 = self->_has;
  if (v14)
  {
    *(v15 + 2) = self->_cloudKitSyncFetchGracePeriod;
    *(v15 + 36) |= 1u;
    v14 = self->_has;
  }

  if ((v14 & 2) != 0)
  {
    *(v15 + 32) = self->_isContextTrackingAllowed;
    *(v15 + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5[33] = self->_recordActivity;
    v5[36] |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v5[34] = self->_sendToCloudKit;
  v5[36] |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5[35] = self->_sendToOnramp;
    v5[36] |= 0x10u;
  }

LABEL_5:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_excludeAppIds;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v26 + 1) + 8 * i) copyWithZone:a3];
        [v6 addExcludeAppIds:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_hostAllowLists;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * j) copyWithZone:{a3, v22}];
        [v6 addHostAllowList:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = self->_has;
  if (v20)
  {
    *(v6 + 2) = self->_cloudKitSyncFetchGracePeriod;
    v6[36] |= 1u;
    v20 = self->_has;
  }

  if ((v20 & 2) != 0)
  {
    v6[32] = self->_isContextTrackingAllowed;
    v6[36] |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = *(v4 + 36);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0)
    {
      goto LABEL_37;
    }

    v8 = *(v4 + 33);
    if (self->_recordActivity)
    {
      if ((*(v4 + 33) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(v4 + 33))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0)
    {
      goto LABEL_37;
    }

    v9 = *(v4 + 34);
    if (self->_sendToCloudKit)
    {
      if ((*(v4 + 34) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(v4 + 34))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0)
    {
      goto LABEL_37;
    }

    v10 = *(v4 + 35);
    if (self->_sendToOnramp)
    {
      if ((*(v4 + 35) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(v4 + 35))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
    goto LABEL_37;
  }

  excludeAppIds = self->_excludeAppIds;
  if (excludeAppIds | *(v4 + 2) && ![(NSMutableArray *)excludeAppIds isEqual:?])
  {
    goto LABEL_37;
  }

  hostAllowLists = self->_hostAllowLists;
  if (hostAllowLists | *(v4 + 3))
  {
    if (![(NSMutableArray *)hostAllowLists isEqual:?])
    {
      goto LABEL_37;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_cloudKitSyncFetchGracePeriod != *(v4 + 2))
    {
      goto LABEL_37;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_37;
  }

  v11 = (*(v4 + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) != 0)
    {
      if (self->_isContextTrackingAllowed)
      {
        if ((*(v4 + 32) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else if (*(v4 + 32))
      {
        goto LABEL_37;
      }

      v11 = 1;
      goto LABEL_38;
    }

LABEL_37:
    v11 = 0;
  }

LABEL_38:

  return v11;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_recordActivity;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_sendToCloudKit;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_sendToOnramp;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSMutableArray *)self->_excludeAppIds hash];
  v7 = [(NSMutableArray *)self->_hostAllowLists hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_cloudKitSyncFetchGracePeriod;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v9 = 2654435761 * self->_isContextTrackingAllowed;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 36);
  if ((v6 & 4) != 0)
  {
    self->_recordActivity = *(v4 + 33);
    *&self->_has |= 4u;
    v6 = *(v4 + 36);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_sendToCloudKit = *(v4 + 34);
  *&self->_has |= 8u;
  if ((*(v4 + 36) & 0x10) != 0)
  {
LABEL_4:
    self->_sendToOnramp = *(v4 + 35);
    *&self->_has |= 0x10u;
  }

LABEL_5:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PDDPClientConfig *)self addExcludeAppIds:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(v5 + 3);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(PDDPClientConfig *)self addHostAllowList:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *(v5 + 36);
  if (v17)
  {
    self->_cloudKitSyncFetchGracePeriod = *(v5 + 2);
    *&self->_has |= 1u;
    v17 = *(v5 + 36);
  }

  if ((v17 & 2) != 0)
  {
    self->_isContextTrackingAllowed = *(v5 + 32);
    *&self->_has |= 2u;
  }
}

@end
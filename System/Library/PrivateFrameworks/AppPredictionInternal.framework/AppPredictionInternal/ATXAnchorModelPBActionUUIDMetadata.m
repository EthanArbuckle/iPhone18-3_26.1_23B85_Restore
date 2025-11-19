@interface ATXAnchorModelPBActionUUIDMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasParamCount:(BOOL)a3;
- (void)setHasSlotHash:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXAnchorModelPBActionUUIDMetadata

- (void)setHasSlotHash:(BOOL)a3
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

- (void)setHasParamCount:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXAnchorModelPBActionUUIDMetadata;
  v4 = [(ATXAnchorModelPBActionUUIDMetadata *)&v8 description];
  v5 = [(ATXAnchorModelPBActionUUIDMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_actionUUID];
    [v3 setObject:v9 forKey:@"actionUUID"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_slotHash];
  [v3 setObject:v10 forKey:@"slotHash"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_paramCount];
    [v3 setObject:v5 forKey:@"paramCount"];
  }

LABEL_5:
  actionUUIDLaunchHistory = self->_actionUUIDLaunchHistory;
  if (actionUUIDLaunchHistory)
  {
    v7 = [(ATXAnchorModelPBLaunchHistoryMetadata *)actionUUIDLaunchHistory dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"actionUUIDLaunchHistory"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    actionUUID = self->_actionUUID;
    PBDataWriterWriteInt64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  slotHash = self->_slotHash;
  PBDataWriterWriteInt64Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    paramCount = self->_paramCount;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_5:
  if (self->_actionUUIDLaunchHistory)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_actionUUID;
    *(v4 + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = self->_slotHash;
  *(v4 + 36) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v4 + 8) = self->_paramCount;
    *(v4 + 36) |= 4u;
  }

LABEL_5:
  if (self->_actionUUIDLaunchHistory)
  {
    v6 = v4;
    [v4 setActionUUIDLaunchHistory:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_slotHash;
    *(v5 + 36) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_actionUUID;
  *(v5 + 36) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 32) = self->_paramCount;
    *(v5 + 36) |= 4u;
  }

LABEL_5:
  v8 = [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_actionUUIDLaunchHistory copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_actionUUID != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_slotHash != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_paramCount != *(v4 + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_19;
  }

  actionUUIDLaunchHistory = self->_actionUUIDLaunchHistory;
  if (actionUUIDLaunchHistory | *(v4 + 3))
  {
    v7 = [(ATXAnchorModelPBLaunchHistoryMetadata *)actionUUIDLaunchHistory isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_actionUUIDLaunchHistory hash:v3];
  }

  v6 = 2654435761 * self->_actionUUID;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_slotHash;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_paramCount;
  return v7 ^ v6 ^ v8 ^ [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_actionUUIDLaunchHistory hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 36);
  if (v6)
  {
    self->_actionUUID = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_slotHash = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 36) & 4) != 0)
  {
LABEL_4:
    self->_paramCount = *(v4 + 8);
    *&self->_has |= 4u;
  }

LABEL_5:
  actionUUIDLaunchHistory = self->_actionUUIDLaunchHistory;
  v8 = v5[3];
  if (actionUUIDLaunchHistory)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v5;
    actionUUIDLaunchHistory = [(ATXAnchorModelPBLaunchHistoryMetadata *)actionUUIDLaunchHistory mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v5;
    actionUUIDLaunchHistory = [(ATXAnchorModelPBActionUUIDMetadata *)self setActionUUIDLaunchHistory:?];
  }

  v5 = v9;
LABEL_14:

  MEMORY[0x2821F96F8](actionUUIDLaunchHistory, v5);
}

@end
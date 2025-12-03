@interface ATXAnchorModelPBActionUUIDMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasParamCount:(BOOL)count;
- (void)setHasSlotHash:(BOOL)hash;
- (void)writeTo:(id)to;
@end

@implementation ATXAnchorModelPBActionUUIDMetadata

- (void)setHasSlotHash:(BOOL)hash
{
  if (hash)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasParamCount:(BOOL)count
{
  if (count)
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
  dictionaryRepresentation = [(ATXAnchorModelPBActionUUIDMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_actionUUID];
    [dictionary setObject:v9 forKey:@"actionUUID"];

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
  [dictionary setObject:v10 forKey:@"slotHash"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_paramCount];
    [dictionary setObject:v5 forKey:@"paramCount"];
  }

LABEL_5:
  actionUUIDLaunchHistory = self->_actionUUIDLaunchHistory;
  if (actionUUIDLaunchHistory)
  {
    dictionaryRepresentation = [(ATXAnchorModelPBLaunchHistoryMetadata *)actionUUIDLaunchHistory dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"actionUUIDLaunchHistory"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    actionUUID = self->_actionUUID;
    PBDataWriterWriteInt64Field();
    toCopy = v9;
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
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    paramCount = self->_paramCount;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_5:
  if (self->_actionUUIDLaunchHistory)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_actionUUID;
    *(toCopy + 36) |= 1u;
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

  toCopy[2] = self->_slotHash;
  *(toCopy + 36) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(toCopy + 8) = self->_paramCount;
    *(toCopy + 36) |= 4u;
  }

LABEL_5:
  if (self->_actionUUIDLaunchHistory)
  {
    v6 = toCopy;
    [toCopy setActionUUIDLaunchHistory:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_actionUUIDLaunchHistory copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_actionUUID != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_slotHash != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_paramCount != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_19;
  }

  actionUUIDLaunchHistory = self->_actionUUIDLaunchHistory;
  if (actionUUIDLaunchHistory | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 36);
  if (v6)
  {
    self->_actionUUID = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 36);
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

  else if ((*(fromCopy + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_slotHash = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 36) & 4) != 0)
  {
LABEL_4:
    self->_paramCount = *(fromCopy + 8);
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
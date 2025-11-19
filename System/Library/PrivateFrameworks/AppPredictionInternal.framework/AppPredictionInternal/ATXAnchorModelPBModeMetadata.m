@interface ATXAnchorModelPBModeMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsStart:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXAnchorModelPBModeMetadata

- (void)setHasIsStart:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXAnchorModelPBModeMetadata;
  v4 = [(ATXAnchorModelPBModeMetadata *)&v8 description];
  v5 = [(ATXAnchorModelPBModeMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  modeId = self->_modeId;
  if (modeId)
  {
    [v3 setObject:modeId forKey:@"modeId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isStart];
    [v4 setObject:v6 forKey:@"isStart"];
  }

  modeHistory = self->_modeHistory;
  if (modeHistory)
  {
    v8 = [(ATXAnchorModelPBLaunchHistoryMetadata *)modeHistory dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"modeHistory"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_relativeTimeSinceAnchorInSeconds];
    [v4 setObject:v9 forKey:@"relativeTimeSinceAnchorInSeconds"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_modeId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    isStart = self->_isStart;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_modeHistory)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (*&self->_has)
  {
    relativeTimeSinceAnchorInSeconds = self->_relativeTimeSinceAnchorInSeconds;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_modeId)
  {
    [v4 setModeId:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 28) = self->_isStart;
    *(v4 + 32) |= 2u;
  }

  if (self->_modeHistory)
  {
    [v5 setModeHistory:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_relativeTimeSinceAnchorInSeconds;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_modeId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 28) = self->_isStart;
    *(v5 + 32) |= 2u;
  }

  v8 = [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_modeHistory copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_relativeTimeSinceAnchorInSeconds;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  modeId = self->_modeId;
  if (modeId | *(v4 + 2))
  {
    if (![(NSString *)modeId isEqual:?])
    {
      goto LABEL_14;
    }
  }

  has = self->_has;
  v7 = *(v4 + 32);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0)
    {
      goto LABEL_14;
    }

    v11 = *(v4 + 28);
    if (self->_isStart)
    {
      if ((*(v4 + 28) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(v4 + 28))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  modeHistory = self->_modeHistory;
  if (modeHistory | *(v4 + 1))
  {
    if (![(ATXAnchorModelPBLaunchHistoryMetadata *)modeHistory isEqual:?])
    {
      goto LABEL_14;
    }

    has = self->_has;
  }

  v9 = (*(v4 + 32) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_relativeTimeSinceAnchorInSeconds == *(v4 + 6))
    {
      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modeId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_isStart;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_modeHistory hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_relativeTimeSinceAnchorInSeconds;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 2))
  {
    [(ATXAnchorModelPBModeMetadata *)self setModeId:?];
    v4 = v7;
  }

  if ((*(v4 + 32) & 2) != 0)
  {
    self->_isStart = *(v4 + 28);
    *&self->_has |= 2u;
  }

  modeHistory = self->_modeHistory;
  v6 = *(v4 + 1);
  if (modeHistory)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(ATXAnchorModelPBLaunchHistoryMetadata *)modeHistory mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(ATXAnchorModelPBModeMetadata *)self setModeHistory:?];
  }

  v4 = v7;
LABEL_11:
  if (*(v4 + 32))
  {
    self->_relativeTimeSinceAnchorInSeconds = *(v4 + 6);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end
@interface ATXAnchorModelPBModeMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsStart:(BOOL)start;
- (void)writeTo:(id)to;
@end

@implementation ATXAnchorModelPBModeMetadata

- (void)setHasIsStart:(BOOL)start
{
  if (start)
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
  dictionaryRepresentation = [(ATXAnchorModelPBModeMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  modeId = self->_modeId;
  if (modeId)
  {
    [dictionary setObject:modeId forKey:@"modeId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isStart];
    [v4 setObject:v6 forKey:@"isStart"];
  }

  modeHistory = self->_modeHistory;
  if (modeHistory)
  {
    dictionaryRepresentation = [(ATXAnchorModelPBLaunchHistoryMetadata *)modeHistory dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"modeHistory"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_relativeTimeSinceAnchorInSeconds];
    [v4 setObject:v9 forKey:@"relativeTimeSinceAnchorInSeconds"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_modeId)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    isStart = self->_isStart;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_modeHistory)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    relativeTimeSinceAnchorInSeconds = self->_relativeTimeSinceAnchorInSeconds;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_modeId)
  {
    [toCopy setModeId:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 28) = self->_isStart;
    *(toCopy + 32) |= 2u;
  }

  if (self->_modeHistory)
  {
    [v5 setModeHistory:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_relativeTimeSinceAnchorInSeconds;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_modeId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 28) = self->_isStart;
    *(v5 + 32) |= 2u;
  }

  v8 = [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_modeHistory copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_relativeTimeSinceAnchorInSeconds;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  modeId = self->_modeId;
  if (modeId | *(equalCopy + 2))
  {
    if (![(NSString *)modeId isEqual:?])
    {
      goto LABEL_14;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 32);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0)
    {
      goto LABEL_14;
    }

    v11 = *(equalCopy + 28);
    if (self->_isStart)
    {
      if ((*(equalCopy + 28) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(equalCopy + 28))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  modeHistory = self->_modeHistory;
  if (modeHistory | *(equalCopy + 1))
  {
    if (![(ATXAnchorModelPBLaunchHistoryMetadata *)modeHistory isEqual:?])
    {
      goto LABEL_14;
    }

    has = self->_has;
  }

  v9 = (*(equalCopy + 32) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_relativeTimeSinceAnchorInSeconds == *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(ATXAnchorModelPBModeMetadata *)self setModeId:?];
    fromCopy = v7;
  }

  if ((*(fromCopy + 32) & 2) != 0)
  {
    self->_isStart = *(fromCopy + 28);
    *&self->_has |= 2u;
  }

  modeHistory = self->_modeHistory;
  v6 = *(fromCopy + 1);
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

  fromCopy = v7;
LABEL_11:
  if (*(fromCopy + 32))
  {
    self->_relativeTimeSinceAnchorInSeconds = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end
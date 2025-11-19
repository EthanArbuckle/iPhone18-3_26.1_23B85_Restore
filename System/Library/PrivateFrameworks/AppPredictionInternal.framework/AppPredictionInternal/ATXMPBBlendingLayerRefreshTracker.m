@interface ATXMPBBlendingLayerRefreshTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasInterarrivalTime:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBBlendingLayerRefreshTracker

- (void)setHasInterarrivalTime:(BOOL)a3
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
  v8.super_class = ATXMPBBlendingLayerRefreshTracker;
  v4 = [(ATXMPBBlendingLayerRefreshTracker *)&v8 description];
  v5 = [(ATXMPBBlendingLayerRefreshTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [v3 setObject:clientModelId forKey:@"clientModelId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_interarrivalTime];
    [v4 setObject:v7 forKey:@"interarrivalTime"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_computationTime];
    [v4 setObject:v8 forKey:@"computationTime"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v4 setObject:abGroup forKey:@"abGroup"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v4 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    interarrivalTime = self->_interarrivalTime;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    computationTime = self->_computationTime;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_clientModelId)
  {
    [v4 setClientModelId:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 10) = self->_interarrivalTime;
    *(v4 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 6) = self->_computationTime;
    *(v4 + 44) |= 1u;
  }

  if (self->_abGroup)
  {
    [v6 setAbGroup:?];
    v4 = v6;
  }

  if (self->_consumerSubType)
  {
    [v6 setConsumerSubType:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientModelId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_interarrivalTime;
    *(v5 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 24) = self->_computationTime;
    *(v5 + 44) |= 1u;
  }

  v9 = [(NSString *)self->_abGroup copyWithZone:a3];
  v10 = *(v5 + 8);
  *(v5 + 8) = v9;

  v11 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v12 = *(v5 + 32);
  *(v5 + 32) = v11;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(v4 + 2))
  {
    if (![(NSString *)clientModelId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v6 = *(v4 + 44);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_interarrivalTime != *(v4 + 10))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_computationTime != *(v4 + 6))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_18;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1) && ![(NSString *)abGroup isEqual:?])
  {
    goto LABEL_18;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 4))
  {
    v9 = [(NSString *)consumerSubType isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientModelId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_interarrivalTime;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_computationTime;
LABEL_6:
  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_abGroup hash];
  return v6 ^ [(NSString *)self->_consumerSubType hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(ATXMPBBlendingLayerRefreshTracker *)self setClientModelId:?];
    v4 = v6;
  }

  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    self->_interarrivalTime = v4[10];
    *&self->_has |= 2u;
    v5 = *(v4 + 44);
  }

  if (v5)
  {
    self->_computationTime = v4[6];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(ATXMPBBlendingLayerRefreshTracker *)self setAbGroup:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(ATXMPBBlendingLayerRefreshTracker *)self setConsumerSubType:?];
    v4 = v6;
  }
}

@end
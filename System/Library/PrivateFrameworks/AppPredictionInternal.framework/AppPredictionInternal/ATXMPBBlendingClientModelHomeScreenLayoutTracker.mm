@interface ATXMPBBlendingClientModelHomeScreenLayoutTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBBlendingClientModelHomeScreenLayoutTracker

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBBlendingClientModelHomeScreenLayoutTracker;
  v4 = [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)&v8 description];
  v5 = [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  layoutType = self->_layoutType;
  if (layoutType)
  {
    [v3 setObject:layoutType forKey:@"layoutType"];
  }

  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [v4 setObject:clientModelId forKey:@"clientModelId"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numSuggestionsForClientModelInLayout];
    [v4 setObject:v7 forKey:@"numSuggestionsForClientModelInLayout"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v4 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v4 setObject:abGroup forKey:@"abGroup"];
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup)
  {
    [v4 setObject:clientModelABGroup forKey:@"clientModelABGroup"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_layoutType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    numSuggestionsForClientModelInLayout = self->_numSuggestionsForClientModelInLayout;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_clientModelABGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_layoutType)
  {
    [v4 setLayoutType:?];
    v4 = v5;
  }

  if (self->_clientModelId)
  {
    [v5 setClientModelId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 12) = self->_numSuggestionsForClientModelInLayout;
    *(v4 + 52) |= 1u;
  }

  if (self->_consumerSubType)
  {
    [v5 setConsumerSubType:?];
    v4 = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    v4 = v5;
  }

  if (self->_clientModelABGroup)
  {
    [v5 setClientModelABGroup:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_layoutType copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_clientModelId copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_numSuggestionsForClientModelInLayout;
    *(v5 + 52) |= 1u;
  }

  v10 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_abGroup copyWithZone:a3];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  v14 = [(NSString *)self->_clientModelABGroup copyWithZone:a3];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  layoutType = self->_layoutType;
  if (layoutType | *(v4 + 5))
  {
    if (![(NSString *)layoutType isEqual:?])
    {
      goto LABEL_17;
    }
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(v4 + 3))
  {
    if (![(NSString *)clientModelId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v7 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_numSuggestionsForClientModelInLayout != *(v4 + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 52))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 4) && ![(NSString *)consumerSubType isEqual:?])
  {
    goto LABEL_17;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_17;
    }
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup | *(v4 + 2))
  {
    v11 = [(NSString *)clientModelABGroup isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_layoutType hash];
  v4 = [(NSString *)self->_clientModelId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_numSuggestionsForClientModelInLayout;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_consumerSubType hash];
  v7 = [(NSString *)self->_abGroup hash];
  return v6 ^ v7 ^ [(NSString *)self->_clientModelABGroup hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 5))
  {
    [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)self setLayoutType:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)self setClientModelId:?];
    v4 = v5;
  }

  if (v4[13])
  {
    self->_numSuggestionsForClientModelInLayout = v4[12];
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)self setConsumerSubType:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)self setAbGroup:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)self setClientModelABGroup:?];
    v4 = v5;
  }
}

@end
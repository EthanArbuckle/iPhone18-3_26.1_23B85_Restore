@interface ATXMPBBlendingClientModelHomeScreenLayoutTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBBlendingClientModelHomeScreenLayoutTracker

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBBlendingClientModelHomeScreenLayoutTracker;
  v4 = [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  layoutType = self->_layoutType;
  if (layoutType)
  {
    [dictionary setObject:layoutType forKey:@"layoutType"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_layoutType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    numSuggestionsForClientModelInLayout = self->_numSuggestionsForClientModelInLayout;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_clientModelABGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_layoutType)
  {
    [toCopy setLayoutType:?];
    toCopy = v5;
  }

  if (self->_clientModelId)
  {
    [v5 setClientModelId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 12) = self->_numSuggestionsForClientModelInLayout;
    *(toCopy + 52) |= 1u;
  }

  if (self->_consumerSubType)
  {
    [v5 setConsumerSubType:?];
    toCopy = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    toCopy = v5;
  }

  if (self->_clientModelABGroup)
  {
    [v5 setClientModelABGroup:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_layoutType copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_clientModelId copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_numSuggestionsForClientModelInLayout;
    *(v5 + 52) |= 1u;
  }

  v10 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_abGroup copyWithZone:zone];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  v14 = [(NSString *)self->_clientModelABGroup copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  layoutType = self->_layoutType;
  if (layoutType | *(equalCopy + 5))
  {
    if (![(NSString *)layoutType isEqual:?])
    {
      goto LABEL_17;
    }
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(equalCopy + 3))
  {
    if (![(NSString *)clientModelId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v7 = *(equalCopy + 52);
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_numSuggestionsForClientModelInLayout != *(equalCopy + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 52))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 4) && ![(NSString *)consumerSubType isEqual:?])
  {
    goto LABEL_17;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 1))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_17;
    }
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)self setLayoutType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)self setClientModelId:?];
    fromCopy = v5;
  }

  if (fromCopy[13])
  {
    self->_numSuggestionsForClientModelInLayout = fromCopy[12];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)self setConsumerSubType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)self setAbGroup:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(ATXMPBBlendingClientModelHomeScreenLayoutTracker *)self setClientModelABGroup:?];
    fromCopy = v5;
  }
}

@end
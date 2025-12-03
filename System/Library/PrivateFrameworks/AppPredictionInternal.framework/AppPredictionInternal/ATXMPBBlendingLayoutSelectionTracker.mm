@interface ATXMPBBlendingLayoutSelectionTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBBlendingLayoutSelectionTracker

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBBlendingLayoutSelectionTracker;
  v4 = [(ATXMPBBlendingLayoutSelectionTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBBlendingLayoutSelectionTracker *)self dictionaryRepresentation];
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

  highestConfidenceCategory = self->_highestConfidenceCategory;
  if (highestConfidenceCategory)
  {
    [v4 setObject:highestConfidenceCategory forKey:@"highestConfidenceCategory"];
  }

  highestRankingClientModelId = self->_highestRankingClientModelId;
  if (highestRankingClientModelId)
  {
    [v4 setObject:highestRankingClientModelId forKey:@"highestRankingClientModelId"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v4 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  execuableTypeOfHighestRankingSuggestion = self->_execuableTypeOfHighestRankingSuggestion;
  if (execuableTypeOfHighestRankingSuggestion)
  {
    [v4 setObject:execuableTypeOfHighestRankingSuggestion forKey:@"execuableTypeOfHighestRankingSuggestion"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v4 setObject:abGroup forKey:@"abGroup"];
  }

  highestRankingClientModelABGroup = self->_highestRankingClientModelABGroup;
  if (highestRankingClientModelABGroup)
  {
    [v4 setObject:highestRankingClientModelABGroup forKey:@"highestRankingClientModelABGroup"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_layoutType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_highestConfidenceCategory)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_highestRankingClientModelId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_execuableTypeOfHighestRankingSuggestion)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_highestRankingClientModelABGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
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

  if (self->_highestConfidenceCategory)
  {
    [v5 setHighestConfidenceCategory:?];
    toCopy = v5;
  }

  if (self->_highestRankingClientModelId)
  {
    [v5 setHighestRankingClientModelId:?];
    toCopy = v5;
  }

  if (self->_consumerSubType)
  {
    [v5 setConsumerSubType:?];
    toCopy = v5;
  }

  if (self->_execuableTypeOfHighestRankingSuggestion)
  {
    [v5 setExecuableTypeOfHighestRankingSuggestion:?];
    toCopy = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    toCopy = v5;
  }

  if (self->_highestRankingClientModelABGroup)
  {
    [v5 setHighestRankingClientModelABGroup:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_layoutType copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_highestConfidenceCategory copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_highestRankingClientModelId copyWithZone:zone];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_execuableTypeOfHighestRankingSuggestion copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  v16 = [(NSString *)self->_abGroup copyWithZone:zone];
  v17 = v5[1];
  v5[1] = v16;

  v18 = [(NSString *)self->_highestRankingClientModelABGroup copyWithZone:zone];
  v19 = v5[5];
  v5[5] = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((layoutType = self->_layoutType, !(layoutType | equalCopy[7])) || -[NSString isEqual:](layoutType, "isEqual:")) && ((highestConfidenceCategory = self->_highestConfidenceCategory, !(highestConfidenceCategory | equalCopy[4])) || -[NSString isEqual:](highestConfidenceCategory, "isEqual:")) && ((highestRankingClientModelId = self->_highestRankingClientModelId, !(highestRankingClientModelId | equalCopy[6])) || -[NSString isEqual:](highestRankingClientModelId, "isEqual:")) && ((consumerSubType = self->_consumerSubType, !(consumerSubType | equalCopy[2])) || -[NSString isEqual:](consumerSubType, "isEqual:")) && ((execuableTypeOfHighestRankingSuggestion = self->_execuableTypeOfHighestRankingSuggestion, !(execuableTypeOfHighestRankingSuggestion | equalCopy[3])) || -[NSString isEqual:](execuableTypeOfHighestRankingSuggestion, "isEqual:")) && ((abGroup = self->_abGroup, !(abGroup | equalCopy[1])) || -[NSString isEqual:](abGroup, "isEqual:")))
  {
    highestRankingClientModelABGroup = self->_highestRankingClientModelABGroup;
    if (highestRankingClientModelABGroup | equalCopy[5])
    {
      v12 = [(NSString *)highestRankingClientModelABGroup isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_layoutType hash];
  v4 = [(NSString *)self->_highestConfidenceCategory hash]^ v3;
  v5 = [(NSString *)self->_highestRankingClientModelId hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_consumerSubType hash];
  v7 = [(NSString *)self->_execuableTypeOfHighestRankingSuggestion hash];
  v8 = v7 ^ [(NSString *)self->_abGroup hash];
  return v6 ^ v8 ^ [(NSString *)self->_highestRankingClientModelABGroup hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setLayoutType:?];
  }

  if (fromCopy[4])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setHighestConfidenceCategory:?];
  }

  if (fromCopy[6])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setHighestRankingClientModelId:?];
  }

  if (fromCopy[2])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setConsumerSubType:?];
  }

  if (fromCopy[3])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setExecuableTypeOfHighestRankingSuggestion:?];
  }

  if (fromCopy[1])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setAbGroup:?];
  }

  if (fromCopy[5])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setHighestRankingClientModelABGroup:?];
  }
}

@end
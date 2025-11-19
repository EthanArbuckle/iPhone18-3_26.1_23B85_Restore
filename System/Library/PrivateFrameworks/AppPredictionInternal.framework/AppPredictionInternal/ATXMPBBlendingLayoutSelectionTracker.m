@interface ATXMPBBlendingLayoutSelectionTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBBlendingLayoutSelectionTracker

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBBlendingLayoutSelectionTracker;
  v4 = [(ATXMPBBlendingLayoutSelectionTracker *)&v8 description];
  v5 = [(ATXMPBBlendingLayoutSelectionTracker *)self dictionaryRepresentation];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_layoutType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_highestConfidenceCategory)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_highestRankingClientModelId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_execuableTypeOfHighestRankingSuggestion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_highestRankingClientModelABGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
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

  if (self->_highestConfidenceCategory)
  {
    [v5 setHighestConfidenceCategory:?];
    v4 = v5;
  }

  if (self->_highestRankingClientModelId)
  {
    [v5 setHighestRankingClientModelId:?];
    v4 = v5;
  }

  if (self->_consumerSubType)
  {
    [v5 setConsumerSubType:?];
    v4 = v5;
  }

  if (self->_execuableTypeOfHighestRankingSuggestion)
  {
    [v5 setExecuableTypeOfHighestRankingSuggestion:?];
    v4 = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    v4 = v5;
  }

  if (self->_highestRankingClientModelABGroup)
  {
    [v5 setHighestRankingClientModelABGroup:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_layoutType copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_highestConfidenceCategory copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_highestRankingClientModelId copyWithZone:a3];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_execuableTypeOfHighestRankingSuggestion copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  v16 = [(NSString *)self->_abGroup copyWithZone:a3];
  v17 = v5[1];
  v5[1] = v16;

  v18 = [(NSString *)self->_highestRankingClientModelABGroup copyWithZone:a3];
  v19 = v5[5];
  v5[5] = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((layoutType = self->_layoutType, !(layoutType | v4[7])) || -[NSString isEqual:](layoutType, "isEqual:")) && ((highestConfidenceCategory = self->_highestConfidenceCategory, !(highestConfidenceCategory | v4[4])) || -[NSString isEqual:](highestConfidenceCategory, "isEqual:")) && ((highestRankingClientModelId = self->_highestRankingClientModelId, !(highestRankingClientModelId | v4[6])) || -[NSString isEqual:](highestRankingClientModelId, "isEqual:")) && ((consumerSubType = self->_consumerSubType, !(consumerSubType | v4[2])) || -[NSString isEqual:](consumerSubType, "isEqual:")) && ((execuableTypeOfHighestRankingSuggestion = self->_execuableTypeOfHighestRankingSuggestion, !(execuableTypeOfHighestRankingSuggestion | v4[3])) || -[NSString isEqual:](execuableTypeOfHighestRankingSuggestion, "isEqual:")) && ((abGroup = self->_abGroup, !(abGroup | v4[1])) || -[NSString isEqual:](abGroup, "isEqual:")))
  {
    highestRankingClientModelABGroup = self->_highestRankingClientModelABGroup;
    if (highestRankingClientModelABGroup | v4[5])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[7])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setLayoutType:?];
  }

  if (v4[4])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setHighestConfidenceCategory:?];
  }

  if (v4[6])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setHighestRankingClientModelId:?];
  }

  if (v4[2])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setConsumerSubType:?];
  }

  if (v4[3])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setExecuableTypeOfHighestRankingSuggestion:?];
  }

  if (v4[1])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setAbGroup:?];
  }

  if (v4[5])
  {
    [(ATXMPBBlendingLayoutSelectionTracker *)self setHighestRankingClientModelABGroup:?];
  }
}

@end
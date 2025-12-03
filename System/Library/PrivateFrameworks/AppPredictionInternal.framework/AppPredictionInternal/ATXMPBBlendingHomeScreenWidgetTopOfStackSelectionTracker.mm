@interface ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSelectionType:(id)type;
- (int)selectionType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasWidgetsInStack:(BOOL)stack;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker

- (int)selectionType
{
  if (*&self->_has)
  {
    return self->_selectionType;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsSelectionType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"NPlusOne"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"StackRotation"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasWidgetsInStack:(BOOL)stack
{
  if (stack)
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
  v8.super_class = ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker;
  v4 = [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    selectionType = self->_selectionType;
    if (selectionType == 1)
    {
      v7 = @"NPlusOne";
    }

    else if (selectionType == 2)
    {
      v7 = @"StackRotation";
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_selectionType];
    }

    [v4 setObject:v7 forKey:@"selectionType"];
  }

  clientModelIdOfHighestRankingSuggestion = self->_clientModelIdOfHighestRankingSuggestion;
  if (clientModelIdOfHighestRankingSuggestion)
  {
    [v4 setObject:clientModelIdOfHighestRankingSuggestion forKey:@"clientModelIdOfHighestRankingSuggestion"];
  }

  highestConfidenceCategory = self->_highestConfidenceCategory;
  if (highestConfidenceCategory)
  {
    [v4 setObject:highestConfidenceCategory forKey:@"highestConfidenceCategory"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_widgetsInStack];
    [v4 setObject:v10 forKey:@"widgetsInStack"];
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
  v7 = toCopy;
  if (self->_layoutType)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    selectionType = self->_selectionType;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_clientModelIdOfHighestRankingSuggestion)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_highestConfidenceCategory)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    widgetsInStack = self->_widgetsInStack;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_execuableTypeOfHighestRankingSuggestion)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_clientModelABGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
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

  if (*&self->_has)
  {
    *(toCopy + 14) = self->_selectionType;
    *(toCopy + 64) |= 1u;
  }

  if (self->_clientModelIdOfHighestRankingSuggestion)
  {
    [v5 setClientModelIdOfHighestRankingSuggestion:?];
    toCopy = v5;
  }

  if (self->_highestConfidenceCategory)
  {
    [v5 setHighestConfidenceCategory:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 15) = self->_widgetsInStack;
    *(toCopy + 64) |= 2u;
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
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  if (*&self->_has)
  {
    *(v5 + 56) = self->_selectionType;
    *(v5 + 64) |= 1u;
  }

  v8 = [(NSString *)self->_clientModelIdOfHighestRankingSuggestion copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_highestConfidenceCategory copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 60) = self->_widgetsInStack;
    *(v5 + 64) |= 2u;
  }

  v12 = [(NSString *)self->_execuableTypeOfHighestRankingSuggestion copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSString *)self->_abGroup copyWithZone:zone];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  v16 = [(NSString *)self->_clientModelABGroup copyWithZone:zone];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  layoutType = self->_layoutType;
  if (layoutType | *(equalCopy + 6))
  {
    if (![(NSString *)layoutType isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v6 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_selectionType != *(equalCopy + 14))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  clientModelIdOfHighestRankingSuggestion = self->_clientModelIdOfHighestRankingSuggestion;
  if (clientModelIdOfHighestRankingSuggestion | *(equalCopy + 3) && ![(NSString *)clientModelIdOfHighestRankingSuggestion isEqual:?])
  {
    goto LABEL_24;
  }

  highestConfidenceCategory = self->_highestConfidenceCategory;
  if (highestConfidenceCategory | *(equalCopy + 5))
  {
    if (![(NSString *)highestConfidenceCategory isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v9 = *(equalCopy + 64);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_widgetsInStack != *(equalCopy + 15))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_24;
  }

  execuableTypeOfHighestRankingSuggestion = self->_execuableTypeOfHighestRankingSuggestion;
  if (execuableTypeOfHighestRankingSuggestion | *(equalCopy + 4) && ![(NSString *)execuableTypeOfHighestRankingSuggestion isEqual:?])
  {
    goto LABEL_24;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 1))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_24;
    }
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup | *(equalCopy + 2))
  {
    v13 = [(NSString *)clientModelABGroup isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_25:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_layoutType hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_selectionType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_clientModelIdOfHighestRankingSuggestion hash];
  v6 = [(NSString *)self->_highestConfidenceCategory hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_widgetsInStack;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSString *)self->_execuableTypeOfHighestRankingSuggestion hash];
  v10 = v8 ^ v9 ^ [(NSString *)self->_abGroup hash];
  return v10 ^ [(NSString *)self->_clientModelABGroup hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self setLayoutType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 64))
  {
    self->_selectionType = *(fromCopy + 14);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self setClientModelIdOfHighestRankingSuggestion:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self setHighestConfidenceCategory:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 64) & 2) != 0)
  {
    self->_widgetsInStack = *(fromCopy + 15);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 4))
  {
    [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self setExecuableTypeOfHighestRankingSuggestion:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self setAbGroup:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self setClientModelABGroup:?];
    fromCopy = v5;
  }
}

@end
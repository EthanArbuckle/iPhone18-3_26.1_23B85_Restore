@interface ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSelectionType:(id)a3;
- (int)selectionType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasWidgetsInStack:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsSelectionType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"NPlusOne"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"StackRotation"])
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

- (void)setHasWidgetsInStack:(BOOL)a3
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
  v8.super_class = ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker;
  v4 = [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)&v8 description];
  v5 = [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self dictionaryRepresentation];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_layoutType)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    selectionType = self->_selectionType;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_clientModelIdOfHighestRankingSuggestion)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_highestConfidenceCategory)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    widgetsInStack = self->_widgetsInStack;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_execuableTypeOfHighestRankingSuggestion)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_clientModelABGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
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

  if (*&self->_has)
  {
    *(v4 + 14) = self->_selectionType;
    *(v4 + 64) |= 1u;
  }

  if (self->_clientModelIdOfHighestRankingSuggestion)
  {
    [v5 setClientModelIdOfHighestRankingSuggestion:?];
    v4 = v5;
  }

  if (self->_highestConfidenceCategory)
  {
    [v5 setHighestConfidenceCategory:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 15) = self->_widgetsInStack;
    *(v4 + 64) |= 2u;
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
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  if (*&self->_has)
  {
    *(v5 + 56) = self->_selectionType;
    *(v5 + 64) |= 1u;
  }

  v8 = [(NSString *)self->_clientModelIdOfHighestRankingSuggestion copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_highestConfidenceCategory copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 60) = self->_widgetsInStack;
    *(v5 + 64) |= 2u;
  }

  v12 = [(NSString *)self->_execuableTypeOfHighestRankingSuggestion copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSString *)self->_abGroup copyWithZone:a3];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  v16 = [(NSString *)self->_clientModelABGroup copyWithZone:a3];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  layoutType = self->_layoutType;
  if (layoutType | *(v4 + 6))
  {
    if (![(NSString *)layoutType isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v6 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_selectionType != *(v4 + 14))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  clientModelIdOfHighestRankingSuggestion = self->_clientModelIdOfHighestRankingSuggestion;
  if (clientModelIdOfHighestRankingSuggestion | *(v4 + 3) && ![(NSString *)clientModelIdOfHighestRankingSuggestion isEqual:?])
  {
    goto LABEL_24;
  }

  highestConfidenceCategory = self->_highestConfidenceCategory;
  if (highestConfidenceCategory | *(v4 + 5))
  {
    if (![(NSString *)highestConfidenceCategory isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v9 = *(v4 + 64);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_widgetsInStack != *(v4 + 15))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_24;
  }

  execuableTypeOfHighestRankingSuggestion = self->_execuableTypeOfHighestRankingSuggestion;
  if (execuableTypeOfHighestRankingSuggestion | *(v4 + 4) && ![(NSString *)execuableTypeOfHighestRankingSuggestion isEqual:?])
  {
    goto LABEL_24;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_24;
    }
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 6))
  {
    [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self setLayoutType:?];
    v4 = v5;
  }

  if (*(v4 + 64))
  {
    self->_selectionType = *(v4 + 14);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self setClientModelIdOfHighestRankingSuggestion:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self setHighestConfidenceCategory:?];
    v4 = v5;
  }

  if ((*(v4 + 64) & 2) != 0)
  {
    self->_widgetsInStack = *(v4 + 15);
    *&self->_has |= 2u;
  }

  if (*(v4 + 4))
  {
    [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self setExecuableTypeOfHighestRankingSuggestion:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self setAbGroup:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker *)self setClientModelABGroup:?];
    v4 = v5;
  }
}

@end
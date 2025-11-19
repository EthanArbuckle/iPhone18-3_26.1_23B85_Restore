@interface ATXMPBBlendingWidgetRotationEngagementTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEngagementType:(id)a3;
- (int)StringAsSelectionType:(id)a3;
- (int)StringAsStackLocation:(id)a3;
- (int)engagementType;
- (int)selectionType;
- (int)stackLocation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSelectionType:(BOOL)a3;
- (void)setHasStackLocation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBBlendingWidgetRotationEngagementTracker

- (int)engagementType
{
  if (*&self->_has)
  {
    return self->_engagementType;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsEngagementType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NotSeen"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Shown"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UserRotate"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Dwell"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Tapped"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"AddedToStack"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"RejectedRotationDismissOnce"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RejectedRotationNeverShowAgain"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)selectionType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_selectionType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasSelectionType:(BOOL)a3
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

- (int)stackLocation
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_stackLocation;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStackLocation:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsStackLocation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"TodayPage"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HomeScreenPage1"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HomeScreenOtherPages"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HomeScreenPage2"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"HomeScreenPage3"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBBlendingWidgetRotationEngagementTracker;
  v4 = [(ATXMPBBlendingWidgetRotationEngagementTracker *)&v8 description];
  v5 = [(ATXMPBBlendingWidgetRotationEngagementTracker *)self dictionaryRepresentation];
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
    v6 = self->_engagementType - 1;
    if (v6 >= 8)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_engagementType];
    }

    else
    {
      v7 = off_27859AE08[v6];
    }

    [v4 setObject:v7 forKey:@"engagementType"];
  }

  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [v4 setObject:clientModelId forKey:@"clientModelId"];
  }

  widgetIdentifier = self->_widgetIdentifier;
  if (widgetIdentifier)
  {
    [v4 setObject:widgetIdentifier forKey:@"widgetIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    selectionType = self->_selectionType;
    if (selectionType == 1)
    {
      v11 = @"NPlusOne";
    }

    else if (selectionType == 2)
    {
      v11 = @"StackRotation";
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_selectionType];
    }

    [v4 setObject:v11 forKey:@"selectionType"];
  }

  highestConfidenceCategory = self->_highestConfidenceCategory;
  if (highestConfidenceCategory)
  {
    [v4 setObject:highestConfidenceCategory forKey:@"highestConfidenceCategory"];
  }

  executableType = self->_executableType;
  if (executableType)
  {
    [v4 setObject:executableType forKey:@"executableType"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v4 setObject:abGroup forKey:@"abGroup"];
  }

  if ((*&self->_has & 4) != 0)
  {
    stackLocation = self->_stackLocation;
    if (stackLocation >= 6)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_stackLocation];
    }

    else
    {
      v16 = off_27859AE48[stackLocation];
    }

    [v4 setObject:v16 forKey:@"stackLocation"];
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
  v8 = v4;
  if (self->_layoutType)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (*&self->_has)
  {
    engagementType = self->_engagementType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_widgetIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    selectionType = self->_selectionType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_highestConfidenceCategory)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_executableType)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    stackLocation = self->_stackLocation;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_clientModelABGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
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
    *(v4 + 8) = self->_engagementType;
    *(v4 + 80) |= 1u;
  }

  if (self->_clientModelId)
  {
    [v5 setClientModelId:?];
    v4 = v5;
  }

  if (self->_widgetIdentifier)
  {
    [v5 setWidgetIdentifier:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 16) = self->_selectionType;
    *(v4 + 80) |= 2u;
  }

  if (self->_highestConfidenceCategory)
  {
    [v5 setHighestConfidenceCategory:?];
    v4 = v5;
  }

  if (self->_executableType)
  {
    [v5 setExecutableType:?];
    v4 = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 17) = self->_stackLocation;
    *(v4 + 80) |= 4u;
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
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_engagementType;
    *(v5 + 80) |= 1u;
  }

  v8 = [(NSString *)self->_clientModelId copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_widgetIdentifier copyWithZone:a3];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 64) = self->_selectionType;
    *(v5 + 80) |= 2u;
  }

  v12 = [(NSString *)self->_highestConfidenceCategory copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_executableType copyWithZone:a3];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSString *)self->_abGroup copyWithZone:a3];
  v17 = *(v5 + 8);
  *(v5 + 8) = v16;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 68) = self->_stackLocation;
    *(v5 + 80) |= 4u;
  }

  v18 = [(NSString *)self->_clientModelABGroup copyWithZone:a3];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  layoutType = self->_layoutType;
  if (layoutType | *(v4 + 7))
  {
    if (![(NSString *)layoutType isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v6 = *(v4 + 80);
  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_engagementType != *(v4 + 8))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 80))
  {
LABEL_31:
    v15 = 0;
    goto LABEL_32;
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(v4 + 3) && ![(NSString *)clientModelId isEqual:?])
  {
    goto LABEL_31;
  }

  widgetIdentifier = self->_widgetIdentifier;
  if (widgetIdentifier | *(v4 + 9))
  {
    if (![(NSString *)widgetIdentifier isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v9 = *(v4 + 80);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_selectionType != *(v4 + 16))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_31;
  }

  highestConfidenceCategory = self->_highestConfidenceCategory;
  if (highestConfidenceCategory | *(v4 + 6) && ![(NSString *)highestConfidenceCategory isEqual:?])
  {
    goto LABEL_31;
  }

  executableType = self->_executableType;
  if (executableType | *(v4 + 5))
  {
    if (![(NSString *)executableType isEqual:?])
    {
      goto LABEL_31;
    }
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v13 = *(v4 + 80);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 80) & 4) == 0 || self->_stackLocation != *(v4 + 17))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 80) & 4) != 0)
  {
    goto LABEL_31;
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup | *(v4 + 2))
  {
    v15 = [(NSString *)clientModelABGroup isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_32:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_layoutType hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_engagementType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_clientModelId hash];
  v6 = [(NSString *)self->_widgetIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_selectionType;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_highestConfidenceCategory hash];
  v9 = [(NSString *)self->_executableType hash];
  v10 = [(NSString *)self->_abGroup hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_stackLocation;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_clientModelABGroup hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 7))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setLayoutType:?];
    v4 = v5;
  }

  if (v4[20])
  {
    self->_engagementType = v4[8];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setClientModelId:?];
    v4 = v5;
  }

  if (*(v4 + 9))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setWidgetIdentifier:?];
    v4 = v5;
  }

  if ((v4[20] & 2) != 0)
  {
    self->_selectionType = v4[16];
    *&self->_has |= 2u;
  }

  if (*(v4 + 6))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setHighestConfidenceCategory:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setExecutableType:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setAbGroup:?];
    v4 = v5;
  }

  if ((v4[20] & 4) != 0)
  {
    self->_stackLocation = v4[17];
    *&self->_has |= 4u;
  }

  if (*(v4 + 2))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setClientModelABGroup:?];
    v4 = v5;
  }
}

@end
@interface ATXMPBBlendingWidgetRotationEngagementTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEngagementType:(id)type;
- (int)StringAsSelectionType:(id)type;
- (int)StringAsStackLocation:(id)location;
- (int)engagementType;
- (int)selectionType;
- (int)stackLocation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSelectionType:(BOOL)type;
- (void)setHasStackLocation:(BOOL)location;
- (void)writeTo:(id)to;
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

- (int)StringAsEngagementType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NotSeen"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Shown"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"UserRotate"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Dwell"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Tapped"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"AddedToStack"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"RejectedRotationDismissOnce"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"RejectedRotationNeverShowAgain"])
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

- (void)setHasSelectionType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
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

- (void)setHasStackLocation:(BOOL)location
{
  if (location)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsStackLocation:(id)location
{
  locationCopy = location;
  if ([locationCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([locationCopy isEqualToString:@"TodayPage"])
  {
    v4 = 1;
  }

  else if ([locationCopy isEqualToString:@"HomeScreenPage1"])
  {
    v4 = 2;
  }

  else if ([locationCopy isEqualToString:@"HomeScreenOtherPages"])
  {
    v4 = 3;
  }

  else if ([locationCopy isEqualToString:@"HomeScreenPage2"])
  {
    v4 = 4;
  }

  else if ([locationCopy isEqualToString:@"HomeScreenPage3"])
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
  dictionaryRepresentation = [(ATXMPBBlendingWidgetRotationEngagementTracker *)self dictionaryRepresentation];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_layoutType)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (*&self->_has)
  {
    engagementType = self->_engagementType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_widgetIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    selectionType = self->_selectionType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_highestConfidenceCategory)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_executableType)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    stackLocation = self->_stackLocation;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_clientModelABGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
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
    *(toCopy + 8) = self->_engagementType;
    *(toCopy + 80) |= 1u;
  }

  if (self->_clientModelId)
  {
    [v5 setClientModelId:?];
    toCopy = v5;
  }

  if (self->_widgetIdentifier)
  {
    [v5 setWidgetIdentifier:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 16) = self->_selectionType;
    *(toCopy + 80) |= 2u;
  }

  if (self->_highestConfidenceCategory)
  {
    [v5 setHighestConfidenceCategory:?];
    toCopy = v5;
  }

  if (self->_executableType)
  {
    [v5 setExecutableType:?];
    toCopy = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    toCopy = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 17) = self->_stackLocation;
    *(toCopy + 80) |= 4u;
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
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_engagementType;
    *(v5 + 80) |= 1u;
  }

  v8 = [(NSString *)self->_clientModelId copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_widgetIdentifier copyWithZone:zone];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 64) = self->_selectionType;
    *(v5 + 80) |= 2u;
  }

  v12 = [(NSString *)self->_highestConfidenceCategory copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_executableType copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSString *)self->_abGroup copyWithZone:zone];
  v17 = *(v5 + 8);
  *(v5 + 8) = v16;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 68) = self->_stackLocation;
    *(v5 + 80) |= 4u;
  }

  v18 = [(NSString *)self->_clientModelABGroup copyWithZone:zone];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  layoutType = self->_layoutType;
  if (layoutType | *(equalCopy + 7))
  {
    if (![(NSString *)layoutType isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v6 = *(equalCopy + 80);
  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_engagementType != *(equalCopy + 8))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 80))
  {
LABEL_31:
    v15 = 0;
    goto LABEL_32;
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(equalCopy + 3) && ![(NSString *)clientModelId isEqual:?])
  {
    goto LABEL_31;
  }

  widgetIdentifier = self->_widgetIdentifier;
  if (widgetIdentifier | *(equalCopy + 9))
  {
    if (![(NSString *)widgetIdentifier isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v9 = *(equalCopy + 80);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_selectionType != *(equalCopy + 16))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 80) & 2) != 0)
  {
    goto LABEL_31;
  }

  highestConfidenceCategory = self->_highestConfidenceCategory;
  if (highestConfidenceCategory | *(equalCopy + 6) && ![(NSString *)highestConfidenceCategory isEqual:?])
  {
    goto LABEL_31;
  }

  executableType = self->_executableType;
  if (executableType | *(equalCopy + 5))
  {
    if (![(NSString *)executableType isEqual:?])
    {
      goto LABEL_31;
    }
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 1))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v13 = *(equalCopy + 80);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 80) & 4) == 0 || self->_stackLocation != *(equalCopy + 17))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 80) & 4) != 0)
  {
    goto LABEL_31;
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 7))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setLayoutType:?];
    fromCopy = v5;
  }

  if (fromCopy[20])
  {
    self->_engagementType = fromCopy[8];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setClientModelId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 9))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setWidgetIdentifier:?];
    fromCopy = v5;
  }

  if ((fromCopy[20] & 2) != 0)
  {
    self->_selectionType = fromCopy[16];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 6))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setHighestConfidenceCategory:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setExecutableType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setAbGroup:?];
    fromCopy = v5;
  }

  if ((fromCopy[20] & 4) != 0)
  {
    self->_stackLocation = fromCopy[17];
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 2))
  {
    [(ATXMPBBlendingWidgetRotationEngagementTracker *)self setClientModelABGroup:?];
    fromCopy = v5;
  }
}

@end
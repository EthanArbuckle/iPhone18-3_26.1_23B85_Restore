@interface ATXMPBInstalledAppClipSessionEngagementTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEngagementType:(id)type;
- (int)engagementType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumSuggestionsShown:(BOOL)shown;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBInstalledAppClipSessionEngagementTracker

- (int)engagementType
{
  if (*&self->_has)
  {
    return self->_engagementType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsEngagementType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Shown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Engaged"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Rejected"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasNumSuggestionsShown:(BOOL)shown
{
  if (shown)
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
  v8.super_class = ATXMPBInstalledAppClipSessionEngagementTracker;
  v4 = [(ATXMPBInstalledAppClipSessionEngagementTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBInstalledAppClipSessionEngagementTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    engagementType = self->_engagementType;
    if (engagementType >= 3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_engagementType];
    }

    else
    {
      v5 = off_27859DEA0[engagementType];
    }

    [dictionary setObject:v5 forKey:@"engagementType"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [dictionary setObject:consumerSubType forKey:@"consumerSubType"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numSuggestionsShown];
    [dictionary setObject:v7 forKey:@"numSuggestionsShown"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [dictionary setObject:abGroup forKey:@"abGroup"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    engagementType = self->_engagementType;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    numSuggestionsShown = self->_numSuggestionsShown;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_engagementType;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_consumerSubType)
  {
    [toCopy setConsumerSubType:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[7] = self->_numSuggestionsShown;
    *(toCopy + 32) |= 2u;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_engagementType;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 28) = self->_numSuggestionsShown;
    *(v6 + 32) |= 2u;
  }

  v9 = [(NSString *)self->_abGroup copyWithZone:zone];
  v10 = *(v6 + 8);
  *(v6 + 8) = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if (has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_engagementType != *(equalCopy + 6))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_17;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 2))
  {
    if (![(NSString *)consumerSubType isEqual:?])
    {
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 32);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_numSuggestionsShown != *(equalCopy + 7))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_17;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 1))
  {
    v10 = [(NSString *)abGroup isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_engagementType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_consumerSubType hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_numSuggestionsShown;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_abGroup hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[8])
  {
    self->_engagementType = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(ATXMPBInstalledAppClipSessionEngagementTracker *)self setConsumerSubType:?];
    fromCopy = v5;
  }

  if ((fromCopy[8] & 2) != 0)
  {
    self->_numSuggestionsShown = fromCopy[7];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    [(ATXMPBInstalledAppClipSessionEngagementTracker *)self setAbGroup:?];
    fromCopy = v5;
  }
}

@end
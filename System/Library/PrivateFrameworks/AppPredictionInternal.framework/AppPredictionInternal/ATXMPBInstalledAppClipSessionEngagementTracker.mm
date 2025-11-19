@interface ATXMPBInstalledAppClipSessionEngagementTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEngagementType:(id)a3;
- (int)engagementType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumSuggestionsShown:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsEngagementType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Shown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Engaged"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Rejected"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasNumSuggestionsShown:(BOOL)a3
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
  v8.super_class = ATXMPBInstalledAppClipSessionEngagementTracker;
  v4 = [(ATXMPBInstalledAppClipSessionEngagementTracker *)&v8 description];
  v5 = [(ATXMPBInstalledAppClipSessionEngagementTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v5 forKey:@"engagementType"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v3 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numSuggestionsShown];
    [v3 setObject:v7 forKey:@"numSuggestionsShown"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v3 setObject:abGroup forKey:@"abGroup"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    engagementType = self->_engagementType;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    numSuggestionsShown = self->_numSuggestionsShown;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_engagementType;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_consumerSubType)
  {
    [v4 setConsumerSubType:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[7] = self->_numSuggestionsShown;
    *(v4 + 32) |= 2u;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_engagementType;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 28) = self->_numSuggestionsShown;
    *(v6 + 32) |= 2u;
  }

  v9 = [(NSString *)self->_abGroup copyWithZone:a3];
  v10 = *(v6 + 8);
  *(v6 + 8) = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_engagementType != *(v4 + 6))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_17;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 2))
  {
    if (![(NSString *)consumerSubType isEqual:?])
    {
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    has = self->_has;
  }

  v8 = *(v4 + 32);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_numSuggestionsShown != *(v4 + 7))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_17;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[8])
  {
    self->_engagementType = v4[6];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(ATXMPBInstalledAppClipSessionEngagementTracker *)self setConsumerSubType:?];
    v4 = v5;
  }

  if ((v4[8] & 2) != 0)
  {
    self->_numSuggestionsShown = v4[7];
    *&self->_has |= 2u;
  }

  if (*(v4 + 1))
  {
    [(ATXMPBInstalledAppClipSessionEngagementTracker *)self setAbGroup:?];
    v4 = v5;
  }
}

@end
@interface ATXMPBAnchorModelEngagementTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEngagementType:(id)type;
- (int)engagementType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasClassConditionalProbability:(BOOL)probability;
- (void)setHasEngagementType:(BOOL)type;
- (void)setHasGlobalPopularity:(BOOL)popularity;
- (void)setHasNumPredictionsforAnchor:(BOOL)anchor;
- (void)setHasNumUniqueOccurrencesAfterAnchor:(BOOL)anchor;
- (void)setHasPosteriorProbability:(BOOL)probability;
- (void)setHasScore:(BOOL)score;
- (void)setHasSecondsAfterAnchor:(BOOL)anchor;
- (void)setHasStandardDeviationOfOffsetFromAnchor:(BOOL)anchor;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBAnchorModelEngagementTracker

- (void)setHasScore:(BOOL)score
{
  if (score)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasSecondsAfterAnchor:(BOOL)anchor
{
  if (anchor)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasNumPredictionsforAnchor:(BOOL)anchor
{
  if (anchor)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)engagementType
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_engagementType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEngagementType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)StringAsEngagementType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Engaged"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Rejected"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Abandoned"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPosteriorProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasClassConditionalProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasStandardDeviationOfOffsetFromAnchor:(BOOL)anchor
{
  if (anchor)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNumUniqueOccurrencesAfterAnchor:(BOOL)anchor
{
  if (anchor)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasGlobalPopularity:(BOOL)popularity
{
  if (popularity)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBAnchorModelEngagementTracker;
  v4 = [(ATXMPBAnchorModelEngagementTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBAnchorModelEngagementTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  anchorType = self->_anchorType;
  if (anchorType)
  {
    [dictionary setObject:anchorType forKey:@"anchorType"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
    [v4 setObject:v6 forKey:@"score"];
  }

  candidateType = self->_candidateType;
  if (candidateType)
  {
    [v4 setObject:candidateType forKey:@"candidateType"];
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_secondsAfterAnchor];
    [v4 setObject:v9 forKey:@"secondsAfterAnchor"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_9:
      if ((has & 0x40) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numPredictionsforAnchor];
  [v4 setObject:v10 forKey:@"numPredictionsforAnchor"];

  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  engagementType = self->_engagementType;
  if (engagementType >= 3)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_engagementType];
  }

  else
  {
    v12 = off_27859AC50[engagementType];
  }

  [v4 setObject:v12 forKey:@"engagementType"];

LABEL_17:
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

  executableObject = self->_executableObject;
  if (executableObject)
  {
    [v4 setObject:executableObject forKey:@"executableObject"];
  }

  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_posteriorProbability];
    [v4 setObject:v19 forKey:@"posteriorProbability"];

    v16 = self->_has;
    if ((v16 & 2) == 0)
    {
LABEL_25:
      if ((v16 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_25;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_classConditionalProbability];
  [v4 setObject:v20 forKey:@"classConditionalProbability"];

  v16 = self->_has;
  if ((v16 & 0x20) == 0)
  {
LABEL_26:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

LABEL_35:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_standardDeviationOfOffsetFromAnchor];
  [v4 setObject:v21 forKey:@"standardDeviationOfOffsetFromAnchor"];

  v16 = self->_has;
  if ((v16 & 0x100) == 0)
  {
LABEL_27:
    if ((v16 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

LABEL_36:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numUniqueOccurrencesAfterAnchor];
  [v4 setObject:v22 forKey:@"numUniqueOccurrencesAfterAnchor"];

  v16 = self->_has;
  if ((v16 & 1) == 0)
  {
LABEL_28:
    if ((v16 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_37:
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_anchorPopularity];
  [v4 setObject:v23 forKey:@"anchorPopularity"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_29:
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_globalPopularity];
    [v4 setObject:v17 forKey:@"globalPopularity"];
  }

LABEL_30:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v17 = toCopy;
  if (self->_anchorType)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
    toCopy = v17;
  }

  if (self->_candidateType)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    secondsAfterAnchor = self->_secondsAfterAnchor;
    PBDataWriterWriteUint32Field();
    toCopy = v17;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_9:
      if ((has & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

  numPredictionsforAnchor = self->_numPredictionsforAnchor;
  PBDataWriterWriteUint32Field();
  toCopy = v17;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    engagementType = self->_engagementType;
    PBDataWriterWriteInt32Field();
    toCopy = v17;
  }

LABEL_11:
  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_executableObject)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    posteriorProbability = self->_posteriorProbability;
    PBDataWriterWriteDoubleField();
    toCopy = v17;
    v8 = self->_has;
    if ((v8 & 2) == 0)
    {
LABEL_19:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_19;
  }

  classConditionalProbability = self->_classConditionalProbability;
  PBDataWriterWriteDoubleField();
  toCopy = v17;
  v8 = self->_has;
  if ((v8 & 0x20) == 0)
  {
LABEL_20:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  standardDeviationOfOffsetFromAnchor = self->_standardDeviationOfOffsetFromAnchor;
  PBDataWriterWriteDoubleField();
  toCopy = v17;
  v8 = self->_has;
  if ((v8 & 0x100) == 0)
  {
LABEL_21:
    if ((v8 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_33:
  numUniqueOccurrencesAfterAnchor = self->_numUniqueOccurrencesAfterAnchor;
  PBDataWriterWriteUint32Field();
  toCopy = v17;
  v8 = self->_has;
  if ((v8 & 1) == 0)
  {
LABEL_22:
    if ((v8 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_34:
  anchorPopularity = self->_anchorPopularity;
  PBDataWriterWriteDoubleField();
  toCopy = v17;
  if ((*&self->_has & 4) != 0)
  {
LABEL_23:
    globalPopularity = self->_globalPopularity;
    PBDataWriterWriteDoubleField();
    toCopy = v17;
  }

LABEL_24:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_anchorType)
  {
    [toCopy setAnchorType:?];
    toCopy = v7;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(toCopy + 5) = *&self->_score;
    *(toCopy + 58) |= 0x10u;
  }

  if (self->_candidateType)
  {
    [v7 setCandidateType:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(toCopy + 28) = self->_secondsAfterAnchor;
    *(toCopy + 58) |= 0x200u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_9:
      if ((has & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 26) = self->_numPredictionsforAnchor;
  *(toCopy + 58) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    *(toCopy + 22) = self->_engagementType;
    *(toCopy + 58) |= 0x40u;
  }

LABEL_11:
  if (self->_consumerSubType)
  {
    [v7 setConsumerSubType:?];
    toCopy = v7;
  }

  if (self->_abGroup)
  {
    [v7 setAbGroup:?];
    toCopy = v7;
  }

  if (self->_executableObject)
  {
    [v7 setExecutableObject:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(toCopy + 4) = *&self->_posteriorProbability;
    *(toCopy + 58) |= 8u;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_19:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_19;
  }

  *(toCopy + 2) = *&self->_classConditionalProbability;
  *(toCopy + 58) |= 2u;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_20:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(toCopy + 6) = *&self->_standardDeviationOfOffsetFromAnchor;
  *(toCopy + 58) |= 0x20u;
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_21:
    if ((v6 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(toCopy + 27) = self->_numUniqueOccurrencesAfterAnchor;
  *(toCopy + 58) |= 0x100u;
  v6 = self->_has;
  if ((v6 & 1) == 0)
  {
LABEL_22:
    if ((v6 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_34:
  *(toCopy + 1) = *&self->_anchorPopularity;
  *(toCopy + 58) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_23:
    *(toCopy + 3) = *&self->_globalPopularity;
    *(toCopy + 58) |= 4u;
  }

LABEL_24:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_anchorType copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_score;
    *(v5 + 116) |= 0x10u;
  }

  v8 = [(NSString *)self->_candidateType copyWithZone:zone];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v5 + 112) = self->_secondsAfterAnchor;
    *(v5 + 116) |= 0x200u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_5:
      if ((has & 0x40) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 104) = self->_numPredictionsforAnchor;
  *(v5 + 116) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    *(v5 + 88) = self->_engagementType;
    *(v5 + 116) |= 0x40u;
  }

LABEL_7:
  v11 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v12 = *(v5 + 80);
  *(v5 + 80) = v11;

  v13 = [(NSString *)self->_abGroup copyWithZone:zone];
  v14 = *(v5 + 56);
  *(v5 + 56) = v13;

  v15 = [(NSString *)self->_executableObject copyWithZone:zone];
  v16 = *(v5 + 96);
  *(v5 + 96) = v15;

  v17 = self->_has;
  if ((v17 & 8) != 0)
  {
    *(v5 + 32) = self->_posteriorProbability;
    *(v5 + 116) |= 8u;
    v17 = self->_has;
    if ((v17 & 2) == 0)
    {
LABEL_9:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v5 + 16) = self->_classConditionalProbability;
  *(v5 + 116) |= 2u;
  v17 = self->_has;
  if ((v17 & 0x20) == 0)
  {
LABEL_10:
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 48) = self->_standardDeviationOfOffsetFromAnchor;
  *(v5 + 116) |= 0x20u;
  v17 = self->_has;
  if ((v17 & 0x100) == 0)
  {
LABEL_11:
    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    *(v5 + 8) = self->_anchorPopularity;
    *(v5 + 116) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_13;
  }

LABEL_21:
  *(v5 + 108) = self->_numUniqueOccurrencesAfterAnchor;
  *(v5 + 116) |= 0x100u;
  v17 = self->_has;
  if (v17)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v17 & 4) != 0)
  {
LABEL_13:
    *(v5 + 24) = self->_globalPopularity;
    *(v5 + 116) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  anchorType = self->_anchorType;
  if (anchorType | *(equalCopy + 8))
  {
    if (![(NSString *)anchorType isEqual:?])
    {
      goto LABEL_63;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 58);
  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_score != *(equalCopy + 5))
    {
      goto LABEL_63;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_63;
  }

  candidateType = self->_candidateType;
  if (candidateType | *(equalCopy + 9))
  {
    if (![(NSString *)candidateType isEqual:?])
    {
LABEL_63:
      v15 = 0;
      goto LABEL_64;
    }

    has = self->_has;
  }

  v9 = *(equalCopy + 58);
  if ((has & 0x200) != 0)
  {
    if ((*(equalCopy + 58) & 0x200) == 0 || self->_secondsAfterAnchor != *(equalCopy + 28))
    {
      goto LABEL_63;
    }
  }

  else if ((*(equalCopy + 58) & 0x200) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_numPredictionsforAnchor != *(equalCopy + 26))
    {
      goto LABEL_63;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_engagementType != *(equalCopy + 22))
    {
      goto LABEL_63;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_63;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 10) && ![(NSString *)consumerSubType isEqual:?])
  {
    goto LABEL_63;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 7))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_63;
    }
  }

  executableObject = self->_executableObject;
  if (executableObject | *(equalCopy + 12))
  {
    if (![(NSString *)executableObject isEqual:?])
    {
      goto LABEL_63;
    }
  }

  v13 = self->_has;
  v14 = *(equalCopy + 58);
  if ((v13 & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_posteriorProbability != *(equalCopy + 4))
    {
      goto LABEL_63;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_63;
  }

  if ((v13 & 2) != 0)
  {
    if ((v14 & 2) == 0 || self->_classConditionalProbability != *(equalCopy + 2))
    {
      goto LABEL_63;
    }
  }

  else if ((v14 & 2) != 0)
  {
    goto LABEL_63;
  }

  if ((v13 & 0x20) != 0)
  {
    if ((v14 & 0x20) == 0 || self->_standardDeviationOfOffsetFromAnchor != *(equalCopy + 6))
    {
      goto LABEL_63;
    }
  }

  else if ((v14 & 0x20) != 0)
  {
    goto LABEL_63;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 58) & 0x100) == 0 || self->_numUniqueOccurrencesAfterAnchor != *(equalCopy + 27))
    {
      goto LABEL_63;
    }
  }

  else if ((*(equalCopy + 58) & 0x100) != 0)
  {
    goto LABEL_63;
  }

  if (v13)
  {
    if ((v14 & 1) == 0 || self->_anchorPopularity != *(equalCopy + 1))
    {
      goto LABEL_63;
    }
  }

  else if (v14)
  {
    goto LABEL_63;
  }

  if ((v13 & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_globalPopularity != *(equalCopy + 3))
    {
      goto LABEL_63;
    }

    v15 = 1;
  }

  else
  {
    v15 = (v14 & 4) == 0;
  }

LABEL_64:

  return v15;
}

- (unint64_t)hash
{
  v42 = [(NSString *)self->_anchorType hash];
  if ((*&self->_has & 0x10) != 0)
  {
    score = self->_score;
    if (score < 0.0)
    {
      score = -score;
    }

    *v3.i64 = floor(score + 0.5);
    v7 = (score - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_candidateType hash];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
    v11 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v11 = 2654435761 * self->_secondsAfterAnchor;
  if ((has & 0x80) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = 2654435761 * self->_numPredictionsforAnchor;
  if ((has & 0x40) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_engagementType;
    goto LABEL_16;
  }

LABEL_15:
  v13 = 0;
LABEL_16:
  v14 = [(NSString *)self->_consumerSubType hash];
  v15 = [(NSString *)self->_abGroup hash];
  v16 = [(NSString *)self->_executableObject hash];
  v19 = self->_has;
  if ((v19 & 8) != 0)
  {
    posteriorProbability = self->_posteriorProbability;
    if (posteriorProbability < 0.0)
    {
      posteriorProbability = -posteriorProbability;
    }

    *v17.i64 = floor(posteriorProbability + 0.5);
    v22 = (posteriorProbability - *v17.i64) * 1.84467441e19;
    *v18.i64 = *v17.i64 - trunc(*v17.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v17 = vbslq_s8(vnegq_f64(v23), v18, v17);
    v20 = 2654435761u * *v17.i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  if ((v19 & 2) != 0)
  {
    classConditionalProbability = self->_classConditionalProbability;
    if (classConditionalProbability < 0.0)
    {
      classConditionalProbability = -classConditionalProbability;
    }

    *v17.i64 = floor(classConditionalProbability + 0.5);
    v26 = (classConditionalProbability - *v17.i64) * 1.84467441e19;
    *v18.i64 = *v17.i64 - trunc(*v17.i64 * 5.42101086e-20) * 1.84467441e19;
    v27.f64[0] = NAN;
    v27.f64[1] = NAN;
    v17 = vbslq_s8(vnegq_f64(v27), v18, v17);
    v24 = 2654435761u * *v17.i64;
    if (v26 >= 0.0)
    {
      if (v26 > 0.0)
      {
        v24 += v26;
      }
    }

    else
    {
      v24 -= fabs(v26);
    }
  }

  else
  {
    v24 = 0;
  }

  if ((v19 & 0x20) != 0)
  {
    standardDeviationOfOffsetFromAnchor = self->_standardDeviationOfOffsetFromAnchor;
    if (standardDeviationOfOffsetFromAnchor < 0.0)
    {
      standardDeviationOfOffsetFromAnchor = -standardDeviationOfOffsetFromAnchor;
    }

    *v17.i64 = floor(standardDeviationOfOffsetFromAnchor + 0.5);
    v30 = (standardDeviationOfOffsetFromAnchor - *v17.i64) * 1.84467441e19;
    *v18.i64 = *v17.i64 - trunc(*v17.i64 * 5.42101086e-20) * 1.84467441e19;
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    v17 = vbslq_s8(vnegq_f64(v31), v18, v17);
    v28 = 2654435761u * *v17.i64;
    if (v30 >= 0.0)
    {
      if (v30 > 0.0)
      {
        v28 += v30;
      }
    }

    else
    {
      v28 -= fabs(v30);
    }
  }

  else
  {
    v28 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v32 = 2654435761 * self->_numUniqueOccurrencesAfterAnchor;
    if (v19)
    {
      goto LABEL_42;
    }

LABEL_47:
    v36 = 0;
    goto LABEL_48;
  }

  v32 = 0;
  if ((v19 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_42:
  anchorPopularity = self->_anchorPopularity;
  if (anchorPopularity < 0.0)
  {
    anchorPopularity = -anchorPopularity;
  }

  *v17.i64 = floor(anchorPopularity + 0.5);
  v34 = (anchorPopularity - *v17.i64) * 1.84467441e19;
  *v18.i64 = *v17.i64 - trunc(*v17.i64 * 5.42101086e-20) * 1.84467441e19;
  v35.f64[0] = NAN;
  v35.f64[1] = NAN;
  v17 = vbslq_s8(vnegq_f64(v35), v18, v17);
  v36 = 2654435761u * *v17.i64;
  if (v34 >= 0.0)
  {
    if (v34 > 0.0)
    {
      v36 += v34;
    }
  }

  else
  {
    v36 -= fabs(v34);
  }

LABEL_48:
  if ((v19 & 4) != 0)
  {
    globalPopularity = self->_globalPopularity;
    if (globalPopularity < 0.0)
    {
      globalPopularity = -globalPopularity;
    }

    *v17.i64 = floor(globalPopularity + 0.5);
    v39 = (globalPopularity - *v17.i64) * 1.84467441e19;
    *v18.i64 = *v17.i64 - trunc(*v17.i64 * 5.42101086e-20) * 1.84467441e19;
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v37 = 2654435761u * *vbslq_s8(vnegq_f64(v40), v18, v17).i64;
    if (v39 >= 0.0)
    {
      if (v39 > 0.0)
      {
        v37 += v39;
      }
    }

    else
    {
      v37 -= fabs(v39);
    }
  }

  else
  {
    v37 = 0;
  }

  return v5 ^ v42 ^ v9 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v20 ^ v24 ^ v28 ^ v32 ^ v36 ^ v37;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 8))
  {
    [(ATXMPBAnchorModelEngagementTracker *)self setAnchorType:?];
    fromCopy = v7;
  }

  if ((*(fromCopy + 58) & 0x10) != 0)
  {
    self->_score = *(fromCopy + 5);
    *&self->_has |= 0x10u;
  }

  if (*(fromCopy + 9))
  {
    [(ATXMPBAnchorModelEngagementTracker *)self setCandidateType:?];
    fromCopy = v7;
  }

  v5 = *(fromCopy + 58);
  if ((v5 & 0x200) != 0)
  {
    self->_secondsAfterAnchor = *(fromCopy + 28);
    *&self->_has |= 0x200u;
    v5 = *(fromCopy + 58);
    if ((v5 & 0x80) == 0)
    {
LABEL_9:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

  self->_numPredictionsforAnchor = *(fromCopy + 26);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 58) & 0x40) != 0)
  {
LABEL_10:
    self->_engagementType = *(fromCopy + 22);
    *&self->_has |= 0x40u;
  }

LABEL_11:
  if (*(fromCopy + 10))
  {
    [(ATXMPBAnchorModelEngagementTracker *)self setConsumerSubType:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 7))
  {
    [(ATXMPBAnchorModelEngagementTracker *)self setAbGroup:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 12))
  {
    [(ATXMPBAnchorModelEngagementTracker *)self setExecutableObject:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 58);
  if ((v6 & 8) != 0)
  {
    self->_posteriorProbability = *(fromCopy + 4);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 58);
    if ((v6 & 2) == 0)
    {
LABEL_19:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_19;
  }

  self->_classConditionalProbability = *(fromCopy + 2);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 58);
  if ((v6 & 0x20) == 0)
  {
LABEL_20:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_standardDeviationOfOffsetFromAnchor = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v6 = *(fromCopy + 58);
  if ((v6 & 0x100) == 0)
  {
LABEL_21:
    if ((v6 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_numUniqueOccurrencesAfterAnchor = *(fromCopy + 27);
  *&self->_has |= 0x100u;
  v6 = *(fromCopy + 58);
  if ((v6 & 1) == 0)
  {
LABEL_22:
    if ((v6 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_34:
  self->_anchorPopularity = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 58) & 4) != 0)
  {
LABEL_23:
    self->_globalPopularity = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_24:
}

@end
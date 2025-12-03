@interface ATXTimelineRelevancePBTimelineRelevanceAbuseControlOutcome
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOutcomeType:(id)type;
- (int)outcomeType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOutcomeType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ATXTimelineRelevancePBTimelineRelevanceAbuseControlOutcome

- (int)outcomeType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_outcomeType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasOutcomeType:(BOOL)type
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

- (int)StringAsOutcomeType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"OutcomeTypeFailureScoreIsSameAsThresholdBadLuck"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureRecentDismissal"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureWidgetIsOnDenyList"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureRotationExceededDurationLimit"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureEarlierSuggestionCurrentlyBeingPredictedWasChosen"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureLaterSuggestionChosen"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureScoreIsSameAsThresholdButCountOfRecentRotationsExceedsSoftRotationQuota"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureNilRelevance"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureNonPositiveScore"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureNumberOfRecentRotationsHaveReachedHardRotationQuota"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureSuggestionInCoolDown"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureInsufficientHistory"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureScoreIsSmallerThanThreshold"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeUnknown"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypePassWidgetKitDeveloperModeEnabled"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypePassWidgetHasUnlimitedSoftRotationQuota"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypePassSoftRotationQuotaExceedsAverageCountOfDailyEntries"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypePassSuggestionPreviouslyPassedButWidgetHasNotBeenSurfaced"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypePassWidgetWasSurfacedAndHasNotExceededDurationLimit"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypePassScoreIsGreaterThanThreshold"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypePassScoreIsSameAsThresholdGoodLuck"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeSuggestionHasExpired"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureBlockedByScreenTime"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"OutcomeTypeFailureScoreIsSameAsThresholdRandomizationDisabled"])
  {
    v4 = 23;
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
  v8.super_class = ATXTimelineRelevancePBTimelineRelevanceAbuseControlOutcome;
  v4 = [(ATXTimelineRelevancePBTimelineRelevanceAbuseControlOutcome *)&v8 description];
  dictionaryRepresentation = [(ATXTimelineRelevancePBTimelineRelevanceAbuseControlOutcome *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    outcomeType = self->_outcomeType;
    if (outcomeType >= 0x18)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_outcomeType];
    }

    else
    {
      v7 = off_27859B068[outcomeType];
    }

    [dictionary setObject:v7 forKey:@"outcomeType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    outcomeType = self->_outcomeType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_outcomeType;
    *(toCopy + 20) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 4) = self->_outcomeType;
    *(result + 20) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_outcomeType != *(equalCopy + 4))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_outcomeType;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 20);
  }

  if ((v5 & 2) != 0)
  {
    self->_outcomeType = *(fromCopy + 4);
    *&self->_has |= 2u;
  }
}

@end
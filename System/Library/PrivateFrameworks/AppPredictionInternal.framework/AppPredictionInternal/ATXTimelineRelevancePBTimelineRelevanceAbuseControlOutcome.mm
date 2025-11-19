@interface ATXTimelineRelevancePBTimelineRelevanceAbuseControlOutcome
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOutcomeType:(id)a3;
- (int)outcomeType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOutcomeType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasOutcomeType:(BOOL)a3
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

- (int)StringAsOutcomeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"OutcomeTypeFailureScoreIsSameAsThresholdBadLuck"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureRecentDismissal"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureWidgetIsOnDenyList"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureRotationExceededDurationLimit"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureEarlierSuggestionCurrentlyBeingPredictedWasChosen"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureLaterSuggestionChosen"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureScoreIsSameAsThresholdButCountOfRecentRotationsExceedsSoftRotationQuota"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureNilRelevance"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureNonPositiveScore"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureNumberOfRecentRotationsHaveReachedHardRotationQuota"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureSuggestionInCoolDown"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureInsufficientHistory"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureScoreIsSmallerThanThreshold"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeUnknown"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"OutcomeTypePassWidgetKitDeveloperModeEnabled"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"OutcomeTypePassWidgetHasUnlimitedSoftRotationQuota"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"OutcomeTypePassSoftRotationQuotaExceedsAverageCountOfDailyEntries"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"OutcomeTypePassSuggestionPreviouslyPassedButWidgetHasNotBeenSurfaced"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"OutcomeTypePassWidgetWasSurfacedAndHasNotExceededDurationLimit"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"OutcomeTypePassScoreIsGreaterThanThreshold"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"OutcomeTypePassScoreIsSameAsThresholdGoodLuck"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeSuggestionHasExpired"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureBlockedByScreenTime"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"OutcomeTypeFailureScoreIsSameAsThresholdRandomizationDisabled"])
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
  v5 = [(ATXTimelineRelevancePBTimelineRelevanceAbuseControlOutcome *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

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

    [v3 setObject:v7 forKey:@"outcomeType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteInt64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    outcomeType = self->_outcomeType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 4) = self->_outcomeType;
    *(v4 + 20) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_outcomeType != *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 20);
  }

  if ((v5 & 2) != 0)
  {
    self->_outcomeType = *(v4 + 4);
    *&self->_has |= 2u;
  }
}

@end
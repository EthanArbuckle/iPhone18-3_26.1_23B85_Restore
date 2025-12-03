@interface ATXPBDigestOnboardingLoggingEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)digestOnboardingOutcomeAsString:(int)string;
- (id)entrySourceAsString:(int)string;
- (id)finalUIShownAsString:(int)string;
- (int)StringAsDigestOnboardingOutcome:(id)outcome;
- (int)StringAsEntrySource:(id)source;
- (int)StringAsFinalUIShown:(id)shown;
- (int)digestOnboardingOutcome;
- (int)entrySource;
- (int)finalUIShown;
- (unint64_t)hash;
- (void)addDeliveryTimes:(id)times;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDidSelectShowMore:(BOOL)more;
- (void)setHasDigestOnboardingOutcome:(BOOL)outcome;
- (void)setHasEntrySource:(BOOL)source;
- (void)setHasFinalUIShown:(BOOL)shown;
- (void)writeTo:(id)to;
@end

@implementation ATXPBDigestOnboardingLoggingEvent

- (int)entrySource
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_entrySource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEntrySource:(BOOL)source
{
  if (source)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)entrySourceAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C25F8[string];
  }

  return v4;
}

- (int)StringAsEntrySource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"OnboardingSuggestion"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"Settings"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"Total"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)digestOnboardingOutcome
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_digestOnboardingOutcome;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDigestOnboardingOutcome:(BOOL)outcome
{
  if (outcome)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)digestOnboardingOutcomeAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C2610[string];
  }

  return v4;
}

- (int)StringAsDigestOnboardingOutcome:(id)outcome
{
  outcomeCopy = outcome;
  if ([outcomeCopy isEqualToString:@"Dismiss"])
  {
    v4 = 0;
  }

  else if ([outcomeCopy isEqualToString:@"Defer"])
  {
    v4 = 1;
  }

  else if ([outcomeCopy isEqualToString:@"Complete"])
  {
    v4 = 2;
  }

  else if ([outcomeCopy isEqualToString:@"Total"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)finalUIShown
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_finalUIShown;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFinalUIShown:(BOOL)shown
{
  if (shown)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)finalUIShownAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C2630[string];
  }

  return v4;
}

- (int)StringAsFinalUIShown:(id)shown
{
  shownCopy = shown;
  if ([shownCopy isEqualToString:@"Introduction"])
  {
    v4 = 0;
  }

  else if ([shownCopy isEqualToString:@"AppPicker"])
  {
    v4 = 1;
  }

  else if ([shownCopy isEqualToString:@"Scheduler"])
  {
    v4 = 2;
  }

  else if ([shownCopy isEqualToString:@"Total"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDidSelectShowMore:(BOOL)more
{
  if (more)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addDeliveryTimes:(id)times
{
  timesCopy = times;
  deliveryTimes = self->_deliveryTimes;
  v8 = timesCopy;
  if (!deliveryTimes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_deliveryTimes;
    self->_deliveryTimes = v6;

    timesCopy = v8;
    deliveryTimes = self->_deliveryTimes;
  }

  [(NSMutableArray *)deliveryTimes addObject:timesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBDigestOnboardingLoggingEvent;
  v4 = [(ATXPBDigestOnboardingLoggingEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBDigestOnboardingLoggingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  sessionUUID = self->_sessionUUID;
  if (sessionUUID)
  {
    [dictionary setObject:sessionUUID forKey:@"sessionUUID"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    entrySource = self->_entrySource;
    if (entrySource >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_entrySource];
    }

    else
    {
      v8 = off_1E80C25F8[entrySource];
    }

    [v4 setObject:v8 forKey:@"entrySource"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  digestOnboardingOutcome = self->_digestOnboardingOutcome;
  if (digestOnboardingOutcome >= 4)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_digestOnboardingOutcome];
  }

  else
  {
    v10 = off_1E80C2610[digestOnboardingOutcome];
  }

  [v4 setObject:v10 forKey:@"DigestOnboardingOutcome"];

  has = self->_has;
  if ((has & 8) != 0)
  {
LABEL_15:
    finalUIShown = self->_finalUIShown;
    if (finalUIShown >= 4)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_finalUIShown];
    }

    else
    {
      v12 = off_1E80C2630[finalUIShown];
    }

    [v4 setObject:v12 forKey:@"finalUIShown"];

    has = self->_has;
  }

LABEL_19:
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeTaken];
    [v4 setObject:v13 forKey:@"timeTaken"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_didSelectShowMore];
    [v4 setObject:v14 forKey:@"didSelectShowMore"];
  }

  deliveryTimes = self->_deliveryTimes;
  if (deliveryTimes)
  {
    [v4 setObject:deliveryTimes forKey:@"deliveryTimes"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_sessionUUID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_20:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_deliveryTimes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_sessionUUID)
  {
    [toCopy setSessionUUID:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 7) = self->_entrySource;
    *(toCopy + 52) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 6) = self->_digestOnboardingOutcome;
  *(toCopy + 52) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_19:
    *(toCopy + 1) = *&self->_timeTaken;
    *(toCopy + 52) |= 1u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_18:
  *(toCopy + 8) = self->_finalUIShown;
  *(toCopy + 52) |= 8u;
  has = self->_has;
  if (has)
  {
    goto LABEL_19;
  }

LABEL_7:
  if ((has & 0x10) != 0)
  {
LABEL_8:
    *(toCopy + 48) = self->_didSelectShowMore;
    *(toCopy + 52) |= 0x10u;
  }

LABEL_9:
  if ([(ATXPBDigestOnboardingLoggingEvent *)self deliveryTimesCount])
  {
    [v10 clearDeliveryTimes];
    deliveryTimesCount = [(ATXPBDigestOnboardingLoggingEvent *)self deliveryTimesCount];
    if (deliveryTimesCount)
    {
      v7 = deliveryTimesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ATXPBDigestOnboardingLoggingEvent *)self deliveryTimesAtIndex:i];
        [v10 addDeliveryTimes:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sessionUUID copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 28) = self->_entrySource;
    *(v5 + 52) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_digestOnboardingOutcome;
  *(v5 + 52) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 32) = self->_finalUIShown;
  *(v5 + 52) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  *(v5 + 8) = self->_timeTaken;
  *(v5 + 52) |= 1u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(v5 + 48) = self->_didSelectShowMore;
    *(v5 + 52) |= 0x10u;
  }

LABEL_7:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_deliveryTimes;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{zone, v16}];
        [v5 addDeliveryTimes:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(equalCopy + 5))
  {
    if (![(NSString *)sessionUUID isEqual:?])
    {
      goto LABEL_29;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_entrySource != *(equalCopy + 7))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_digestOnboardingOutcome != *(equalCopy + 6))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 52) & 8) == 0 || self->_finalUIShown != *(equalCopy + 8))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 52) & 8) != 0)
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_timeTaken != *(equalCopy + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(equalCopy + 52) & 0x10) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    v7 = 0;
    goto LABEL_30;
  }

  if ((*(equalCopy + 52) & 0x10) == 0)
  {
    goto LABEL_29;
  }

  if (self->_didSelectShowMore)
  {
    if ((*(equalCopy + 48) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_29;
  }

LABEL_26:
  deliveryTimes = self->_deliveryTimes;
  if (deliveryTimes | *(equalCopy + 2))
  {
    v7 = [(NSMutableArray *)deliveryTimes isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_30:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessionUUID hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_entrySource;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_digestOnboardingOutcome;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v8 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v8 = 2654435761 * self->_finalUIShown;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  timeTaken = self->_timeTaken;
  if (timeTaken < 0.0)
  {
    timeTaken = -timeTaken;
  }

  *v4.i64 = floor(timeTaken + 0.5);
  v10 = (timeTaken - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v5, v4).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_13:
  if ((*&self->_has & 0x10) != 0)
  {
    v13 = 2654435761 * self->_didSelectShowMore;
  }

  else
  {
    v13 = 0;
  }

  return v6 ^ v3 ^ v7 ^ v8 ^ v12 ^ v13 ^ [(NSMutableArray *)self->_deliveryTimes hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 5))
  {
    [(ATXPBDigestOnboardingLoggingEvent *)self setSessionUUID:?];
  }

  v5 = *(fromCopy + 52);
  if ((v5 & 4) != 0)
  {
    self->_entrySource = *(fromCopy + 7);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 52);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((*(fromCopy + 52) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_digestOnboardingOutcome = *(fromCopy + 6);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 52);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_finalUIShown = *(fromCopy + 8);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 52);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_20:
  self->_timeTaken = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 52) & 0x10) != 0)
  {
LABEL_8:
    self->_didSelectShowMore = *(fromCopy + 48);
    *&self->_has |= 0x10u;
  }

LABEL_9:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ATXPBDigestOnboardingLoggingEvent *)self addDeliveryTimes:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end
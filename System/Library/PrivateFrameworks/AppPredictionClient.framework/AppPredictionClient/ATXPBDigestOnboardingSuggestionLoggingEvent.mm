@interface ATXPBDigestOnboardingSuggestionLoggingEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)digestOnboardingSuggestionOutcomeAsString:(int)string;
- (int)StringAsDigestOnboardingSuggestionOutcome:(id)outcome;
- (int)digestOnboardingSuggestionOutcome;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDigestOnboardingSuggestionOutcome:(BOOL)outcome;
- (void)writeTo:(id)to;
@end

@implementation ATXPBDigestOnboardingSuggestionLoggingEvent

- (int)digestOnboardingSuggestionOutcome
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_digestOnboardingSuggestionOutcome;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDigestOnboardingSuggestionOutcome:(BOOL)outcome
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

- (id)digestOnboardingSuggestionOutcomeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C2518[string];
  }

  return v4;
}

- (int)StringAsDigestOnboardingSuggestionOutcome:(id)outcome
{
  outcomeCopy = outcome;
  if ([outcomeCopy isEqualToString:@"Dismissed"])
  {
    v4 = 0;
  }

  else if ([outcomeCopy isEqualToString:@"Engaged"])
  {
    v4 = 1;
  }

  else if ([outcomeCopy isEqualToString:@"Total"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBDigestOnboardingSuggestionLoggingEvent;
  v4 = [(ATXPBDigestOnboardingSuggestionLoggingEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBDigestOnboardingSuggestionLoggingEvent *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    digestOnboardingSuggestionOutcome = self->_digestOnboardingSuggestionOutcome;
    if (digestOnboardingSuggestionOutcome >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_digestOnboardingSuggestionOutcome];
    }

    else
    {
      v8 = off_1E80C2518[digestOnboardingSuggestionOutcome];
    }

    [v4 setObject:v8 forKey:@"digestOnboardingSuggestionOutcome"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeToResolution];
    [v4 setObject:v9 forKey:@"timeToResolution"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sessionUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_sessionUUID)
  {
    v6 = toCopy;
    [toCopy setSessionUUID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_digestOnboardingSuggestionOutcome;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_timeToResolution;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sessionUUID copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_digestOnboardingSuggestionOutcome;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_timeToResolution;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(equalCopy + 3))
  {
    if (![(NSString *)sessionUUID isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_digestOnboardingSuggestionOutcome != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_timeToResolution != *(equalCopy + 1))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessionUUID hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_digestOnboardingSuggestionOutcome;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    return v6 ^ v3 ^ v10;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  timeToResolution = self->_timeToResolution;
  if (timeToResolution < 0.0)
  {
    timeToResolution = -timeToResolution;
  }

  *v4.i64 = floor(timeToResolution + 0.5);
  v8 = (timeToResolution - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

  return v6 ^ v3 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(ATXPBDigestOnboardingSuggestionLoggingEvent *)self setSessionUUID:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 32);
  if ((v5 & 2) != 0)
  {
    self->_digestOnboardingSuggestionOutcome = *(fromCopy + 4);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 32);
  }

  if (v5)
  {
    self->_timeToResolution = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end
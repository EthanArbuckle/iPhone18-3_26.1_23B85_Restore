@interface ATXPBDigestOnboardingSuggestionLoggingEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)digestOnboardingSuggestionOutcomeAsString:(int)a3;
- (int)StringAsDigestOnboardingSuggestionOutcome:(id)a3;
- (int)digestOnboardingSuggestionOutcome;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDigestOnboardingSuggestionOutcome:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasDigestOnboardingSuggestionOutcome:(BOOL)a3
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

- (id)digestOnboardingSuggestionOutcomeAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E80C2518[a3];
  }

  return v4;
}

- (int)StringAsDigestOnboardingSuggestionOutcome:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Dismissed"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Engaged"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Total"])
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
  v5 = [(ATXPBDigestOnboardingSuggestionLoggingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  sessionUUID = self->_sessionUUID;
  if (sessionUUID)
  {
    [v3 setObject:sessionUUID forKey:@"sessionUUID"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sessionUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_sessionUUID)
  {
    v6 = v4;
    [v4 setSessionUUID:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 4) = self->_digestOnboardingSuggestionOutcome;
    *(v4 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_timeToResolution;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sessionUUID copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(v4 + 3))
  {
    if (![(NSString *)sessionUUID isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_digestOnboardingSuggestionOutcome != *(v4 + 4))
    {
      goto LABEL_13;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_timeToResolution != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    v6 = v4;
    [(ATXPBDigestOnboardingSuggestionLoggingEvent *)self setSessionUUID:?];
    v4 = v6;
  }

  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_digestOnboardingSuggestionOutcome = *(v4 + 4);
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
  }

  if (v5)
  {
    self->_timeToResolution = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end
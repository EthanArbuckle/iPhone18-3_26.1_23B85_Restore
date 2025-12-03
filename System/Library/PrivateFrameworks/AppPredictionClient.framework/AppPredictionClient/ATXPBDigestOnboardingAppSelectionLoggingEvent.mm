@interface ATXPBDigestOnboardingAppSelectionLoggingEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAddedToDigest:(BOOL)digest;
- (void)setHasAvgNumMessageNotifications:(BOOL)notifications;
- (void)setHasAvgNumTimeSensitiveNonMessageNotifications:(BOOL)notifications;
- (void)setHasRank:(BOOL)rank;
- (void)setHasWasShownInDigestOnboarding:(BOOL)onboarding;
- (void)writeTo:(id)to;
@end

@implementation ATXPBDigestOnboardingAppSelectionLoggingEvent

- (void)setHasAvgNumMessageNotifications:(BOOL)notifications
{
  if (notifications)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasAvgNumTimeSensitiveNonMessageNotifications:(BOOL)notifications
{
  if (notifications)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAddedToDigest:(BOOL)digest
{
  if (digest)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasWasShownInDigestOnboarding:(BOOL)onboarding
{
  if (onboarding)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBDigestOnboardingAppSelectionLoggingEvent;
  v4 = [(ATXPBDigestOnboardingAppSelectionLoggingEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBDigestOnboardingAppSelectionLoggingEvent *)self dictionaryRepresentation];
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

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v4 setObject:bundleId forKey:@"bundleId"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_avgNumBasicNotifications];
    [v4 setObject:v10 forKey:@"avgNumBasicNotifications"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_avgNumMessageNotifications];
  [v4 setObject:v11 forKey:@"avgNumMessageNotifications"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_avgNumTimeSensitiveNonMessageNotifications];
  [v4 setObject:v12 forKey:@"avgNumTimeSensitiveNonMessageNotifications"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_rank];
  [v4 setObject:v13 forKey:@"rank"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_addedToDigest];
  [v4 setObject:v14 forKey:@"addedToDigest"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_wasShownInDigestOnboarding];
    [v4 setObject:v8 forKey:@"wasShownInDigestOnboarding"];
  }

LABEL_12:

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

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteUint32Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteUint32Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  PBDataWriterWriteBOOLField();
  toCopy = v6;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

LABEL_12:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sessionUUID)
  {
    [toCopy setSessionUUID:?];
    toCopy = v6;
  }

  if (self->_bundleId)
  {
    [v6 setBundleId:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_avgNumBasicNotifications;
    *(toCopy + 52) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 3) = self->_avgNumMessageNotifications;
  *(toCopy + 52) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(toCopy + 4) = self->_avgNumTimeSensitiveNonMessageNotifications;
  *(toCopy + 52) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(toCopy + 8) = self->_rank;
  *(toCopy + 52) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  *(toCopy + 48) = self->_addedToDigest;
  *(toCopy + 52) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    *(toCopy + 49) = self->_wasShownInDigestOnboarding;
    *(toCopy + 52) |= 0x20u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sessionUUID copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_bundleId copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_avgNumBasicNotifications;
    *(v5 + 52) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 12) = self->_avgNumMessageNotifications;
  *(v5 + 52) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v5 + 16) = self->_avgNumTimeSensitiveNonMessageNotifications;
  *(v5 + 52) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    *(v5 + 48) = self->_addedToDigest;
    *(v5 + 52) |= 0x10u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v5;
    }

    goto LABEL_7;
  }

LABEL_12:
  *(v5 + 32) = self->_rank;
  *(v5 + 52) |= 8u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 0x20) != 0)
  {
LABEL_7:
    *(v5 + 49) = self->_wasShownInDigestOnboarding;
    *(v5 + 52) |= 0x20u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(equalCopy + 5))
  {
    if (![(NSString *)sessionUUID isEqual:?])
    {
      goto LABEL_34;
    }
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 3))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_34;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_avgNumBasicNotifications != *(equalCopy + 2))
    {
      goto LABEL_34;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_avgNumMessageNotifications != *(equalCopy + 3))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_avgNumTimeSensitiveNonMessageNotifications != *(equalCopy + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 52) & 8) == 0 || self->_rank != *(equalCopy + 8))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 52) & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 52) & 0x10) == 0)
    {
      goto LABEL_34;
    }

    if (self->_addedToDigest)
    {
      if ((*(equalCopy + 48) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(equalCopy + 48))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 52) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  v7 = (*(equalCopy + 52) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 52) & 0x20) != 0)
    {
      if (self->_wasShownInDigestOnboarding)
      {
        if (*(equalCopy + 49))
        {
          goto LABEL_42;
        }
      }

      else if (!*(equalCopy + 49))
      {
LABEL_42:
        v7 = 1;
        goto LABEL_35;
      }
    }

LABEL_34:
    v7 = 0;
  }

LABEL_35:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessionUUID hash];
  v4 = [(NSString *)self->_bundleId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_avgNumBasicNotifications;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_avgNumMessageNotifications;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_avgNumTimeSensitiveNonMessageNotifications;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_rank;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_11:
  v8 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = 2654435761 * self->_addedToDigest;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = 2654435761 * self->_wasShownInDigestOnboarding;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(ATXPBDigestOnboardingAppSelectionLoggingEvent *)self setSessionUUID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(ATXPBDigestOnboardingAppSelectionLoggingEvent *)self setBundleId:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 52);
  if (v5)
  {
    self->_avgNumBasicNotifications = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 52);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*(fromCopy + 52) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_avgNumMessageNotifications = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 52);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_avgNumTimeSensitiveNonMessageNotifications = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 52);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_rank = *(fromCopy + 8);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  self->_addedToDigest = *(fromCopy + 48);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 52) & 0x20) != 0)
  {
LABEL_11:
    self->_wasShownInDigestOnboarding = *(fromCopy + 49);
    *&self->_has |= 0x20u;
  }

LABEL_12:
}

@end
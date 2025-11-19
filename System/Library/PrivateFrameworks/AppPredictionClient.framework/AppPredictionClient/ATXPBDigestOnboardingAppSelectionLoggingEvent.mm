@interface ATXPBDigestOnboardingAppSelectionLoggingEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAddedToDigest:(BOOL)a3;
- (void)setHasAvgNumMessageNotifications:(BOOL)a3;
- (void)setHasAvgNumTimeSensitiveNonMessageNotifications:(BOOL)a3;
- (void)setHasRank:(BOOL)a3;
- (void)setHasWasShownInDigestOnboarding:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBDigestOnboardingAppSelectionLoggingEvent

- (void)setHasAvgNumMessageNotifications:(BOOL)a3
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

- (void)setHasAvgNumTimeSensitiveNonMessageNotifications:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRank:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAddedToDigest:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasWasShownInDigestOnboarding:(BOOL)a3
{
  if (a3)
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
  v5 = [(ATXPBDigestOnboardingAppSelectionLoggingEvent *)self dictionaryRepresentation];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sessionUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
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
  v4 = v6;
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
  v4 = v6;
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
  v4 = v6;
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
  v4 = v6;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

LABEL_12:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sessionUUID)
  {
    [v4 setSessionUUID:?];
    v4 = v6;
  }

  if (self->_bundleId)
  {
    [v6 setBundleId:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = self->_avgNumBasicNotifications;
    *(v4 + 52) |= 1u;
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

  *(v4 + 3) = self->_avgNumMessageNotifications;
  *(v4 + 52) |= 2u;
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
  *(v4 + 4) = self->_avgNumTimeSensitiveNonMessageNotifications;
  *(v4 + 52) |= 4u;
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
  *(v4 + 8) = self->_rank;
  *(v4 + 52) |= 8u;
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
  *(v4 + 48) = self->_addedToDigest;
  *(v4 + 52) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    *(v4 + 49) = self->_wasShownInDigestOnboarding;
    *(v4 + 52) |= 0x20u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sessionUUID copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_bundleId copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(v4 + 5))
  {
    if (![(NSString *)sessionUUID isEqual:?])
    {
      goto LABEL_34;
    }
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 3))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_34;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_avgNumBasicNotifications != *(v4 + 2))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_avgNumMessageNotifications != *(v4 + 3))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_avgNumTimeSensitiveNonMessageNotifications != *(v4 + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 52) & 8) == 0 || self->_rank != *(v4 + 8))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 52) & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 52) & 0x10) == 0)
    {
      goto LABEL_34;
    }

    if (self->_addedToDigest)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 52) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  v7 = (*(v4 + 52) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 52) & 0x20) != 0)
    {
      if (self->_wasShownInDigestOnboarding)
      {
        if (*(v4 + 49))
        {
          goto LABEL_42;
        }
      }

      else if (!*(v4 + 49))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 5))
  {
    [(ATXPBDigestOnboardingAppSelectionLoggingEvent *)self setSessionUUID:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(ATXPBDigestOnboardingAppSelectionLoggingEvent *)self setBundleId:?];
    v4 = v6;
  }

  v5 = *(v4 + 52);
  if (v5)
  {
    self->_avgNumBasicNotifications = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 52);
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

  else if ((*(v4 + 52) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_avgNumMessageNotifications = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 52);
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
  self->_avgNumTimeSensitiveNonMessageNotifications = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 52);
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
  self->_rank = *(v4 + 8);
  *&self->_has |= 8u;
  v5 = *(v4 + 52);
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
  self->_addedToDigest = *(v4 + 48);
  *&self->_has |= 0x10u;
  if ((*(v4 + 52) & 0x20) != 0)
  {
LABEL_11:
    self->_wasShownInDigestOnboarding = *(v4 + 49);
    *&self->_has |= 0x20u;
  }

LABEL_12:
}

@end
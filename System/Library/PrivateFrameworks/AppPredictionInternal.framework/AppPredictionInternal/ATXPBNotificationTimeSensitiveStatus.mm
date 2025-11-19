@interface ATXPBNotificationTimeSensitiveStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsTimeSensitiveNotification:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBNotificationTimeSensitiveStatus

- (void)setHasIsTimeSensitiveNotification:(BOOL)a3
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
  v8.super_class = ATXPBNotificationTimeSensitiveStatus;
  v4 = [(ATXPBNotificationTimeSensitiveStatus *)&v8 description];
  v5 = [(ATXPBNotificationTimeSensitiveStatus *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isTimeSensitiveNotification];
    [v4 setObject:v7 forKey:@"isTimeSensitiveNotification"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isTimeSensitiveAndEngagedNotification];
    [v4 setObject:v8 forKey:@"isTimeSensitiveAndEngagedNotification"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    isTimeSensitiveNotification = self->_isTimeSensitiveNotification;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    isTimeSensitiveAndEngagedNotification = self->_isTimeSensitiveAndEngagedNotification;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_bundleId)
  {
    v6 = v4;
    [v4 setBundleId:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[17] = self->_isTimeSensitiveNotification;
    v4[20] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[16] = self->_isTimeSensitiveAndEngagedNotification;
    v4[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 17) = self->_isTimeSensitiveNotification;
    *(v5 + 20) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_isTimeSensitiveAndEngagedNotification;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 1))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_12;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if ((*(v4 + 20) & 2) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(v4 + 17);
  if (self->_isTimeSensitiveNotification)
  {
    if ((*(v4 + 17) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 17))
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if (*(v4 + 20))
    {
      if (self->_isTimeSensitiveAndEngagedNotification)
      {
        if (*(v4 + 16))
        {
          goto LABEL_20;
        }
      }

      else if (!*(v4 + 16))
      {
LABEL_20:
        v6 = 1;
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

LABEL_13:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_isTimeSensitiveNotification;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_isTimeSensitiveAndEngagedNotification;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v6 = v4;
    [(ATXPBNotificationTimeSensitiveStatus *)self setBundleId:?];
    v4 = v6;
  }

  v5 = v4[20];
  if ((v5 & 2) != 0)
  {
    self->_isTimeSensitiveNotification = v4[17];
    *&self->_has |= 2u;
    v5 = v4[20];
  }

  if (v5)
  {
    self->_isTimeSensitiveAndEngagedNotification = v4[16];
    *&self->_has |= 1u;
  }
}

@end
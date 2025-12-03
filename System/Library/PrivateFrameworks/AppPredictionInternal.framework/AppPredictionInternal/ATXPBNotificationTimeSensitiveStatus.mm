@interface ATXPBNotificationTimeSensitiveStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsTimeSensitiveNotification:(BOOL)notification;
- (void)writeTo:(id)to;
@end

@implementation ATXPBNotificationTimeSensitiveStatus

- (void)setHasIsTimeSensitiveNotification:(BOOL)notification
{
  if (notification)
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
  dictionaryRepresentation = [(ATXPBNotificationTimeSensitiveStatus *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    isTimeSensitiveNotification = self->_isTimeSensitiveNotification;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    isTimeSensitiveAndEngagedNotification = self->_isTimeSensitiveAndEngagedNotification;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_bundleId)
  {
    v6 = toCopy;
    [toCopy setBundleId:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[17] = self->_isTimeSensitiveNotification;
    toCopy[20] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[16] = self->_isTimeSensitiveAndEngagedNotification;
    toCopy[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 1))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_12;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if ((*(equalCopy + 20) & 2) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(equalCopy + 17);
  if (self->_isTimeSensitiveNotification)
  {
    if ((*(equalCopy + 17) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 17))
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if (*(equalCopy + 20))
    {
      if (self->_isTimeSensitiveAndEngagedNotification)
      {
        if (*(equalCopy + 16))
        {
          goto LABEL_20;
        }
      }

      else if (!*(equalCopy + 16))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(ATXPBNotificationTimeSensitiveStatus *)self setBundleId:?];
    fromCopy = v6;
  }

  v5 = fromCopy[20];
  if ((v5 & 2) != 0)
  {
    self->_isTimeSensitiveNotification = fromCopy[17];
    *&self->_has |= 2u;
    v5 = fromCopy[20];
  }

  if (v5)
  {
    self->_isTimeSensitiveAndEngagedNotification = fromCopy[16];
    *&self->_has |= 1u;
  }
}

@end
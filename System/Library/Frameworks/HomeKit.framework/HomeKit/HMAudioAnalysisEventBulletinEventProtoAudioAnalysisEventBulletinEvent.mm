@interface HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEventStartDate:(BOOL)date;
- (void)setHasReason:(BOOL)reason;
- (void)setHasState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (fromCopy[8])
  {
    [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)self setThreadIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 72);
  if ((v5 & 8) != 0)
  {
    self->_state = fromCopy[4];
    *&self->_has |= 8u;
    v5 = *(fromCopy + 72);
  }

  if ((v5 & 4) != 0)
  {
    self->_reason = fromCopy[3];
    *&self->_has |= 4u;
  }

  if (fromCopy[7])
  {
    [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)self setNotificationUUID:?];
    fromCopy = v6;
  }

  if (fromCopy[9])
  {
    self->_dateOfOccurrence = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[5])
  {
    [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)self setAccessoryIdentifier:?];
    fromCopy = v6;
  }

  if (fromCopy[6])
  {
    [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)self setHomeIdentifier:?];
    fromCopy = v6;
  }

  if ((fromCopy[9] & 2) != 0)
  {
    self->_eventStartDate = fromCopy[2];
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_threadIdentifier hash];
  if ((*&self->_has & 8) != 0)
  {
    v4 = 2654435761 * self->_state;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_reason;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_notificationUUID hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_dateOfOccurrence;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_accessoryIdentifier hash];
  v9 = [(NSString *)self->_homeIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_eventStartDate;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  threadIdentifier = self->_threadIdentifier;
  if (threadIdentifier | *(equalCopy + 8))
  {
    if (![(NSString *)threadIdentifier isEqual:?])
    {
      goto LABEL_30;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 72);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 72) & 8) == 0 || self->_state != *(equalCopy + 4))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 72) & 8) != 0)
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_reason != *(equalCopy + 3))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 72) & 4) != 0)
  {
    goto LABEL_30;
  }

  notificationUUID = self->_notificationUUID;
  if (notificationUUID | *(equalCopy + 7))
  {
    if (![(NSString *)notificationUUID isEqual:?])
    {
LABEL_30:
      v11 = 0;
      goto LABEL_31;
    }

    has = self->_has;
    v7 = *(equalCopy + 72);
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_dateOfOccurrence != *(equalCopy + 1))
    {
      goto LABEL_30;
    }
  }

  else if (v7)
  {
    goto LABEL_30;
  }

  accessoryIdentifier = self->_accessoryIdentifier;
  if (accessoryIdentifier | *(equalCopy + 5) && ![(NSString *)accessoryIdentifier isEqual:?])
  {
    goto LABEL_30;
  }

  homeIdentifier = self->_homeIdentifier;
  if (homeIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)homeIdentifier isEqual:?])
    {
      goto LABEL_30;
    }
  }

  v11 = (*(equalCopy + 72) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_eventStartDate != *(equalCopy + 2))
    {
      goto LABEL_30;
    }

    v11 = 1;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_threadIdentifier copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_state;
    *(v5 + 72) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_reason;
    *(v5 + 72) |= 4u;
  }

  v9 = [(NSString *)self->_notificationUUID copyWithZone:zone];
  v10 = *(v5 + 56);
  *(v5 + 56) = v9;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_dateOfOccurrence;
    *(v5 + 72) |= 1u;
  }

  v11 = [(NSString *)self->_accessoryIdentifier copyWithZone:zone];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  v13 = [(NSString *)self->_homeIdentifier copyWithZone:zone];
  v14 = *(v5 + 48);
  *(v5 + 48) = v13;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_eventStartDate;
    *(v5 + 72) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_threadIdentifier)
  {
    [toCopy setThreadIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 4) = self->_state;
    *(toCopy + 72) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 3) = self->_reason;
    *(toCopy + 72) |= 4u;
  }

  if (self->_notificationUUID)
  {
    [v6 setNotificationUUID:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_dateOfOccurrence;
    *(toCopy + 72) |= 1u;
  }

  if (self->_accessoryIdentifier)
  {
    [v6 setAccessoryIdentifier:?];
    toCopy = v6;
  }

  if (self->_homeIdentifier)
  {
    [v6 setHomeIdentifier:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_eventStartDate;
    *(toCopy + 72) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_threadIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    state = self->_state;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    reason = self->_reason;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
  }

  if (self->_notificationUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (*&self->_has)
  {
    dateOfOccurrence = self->_dateOfOccurrence;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
  }

  if (self->_accessoryIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_homeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    eventStartDate = self->_eventStartDate;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  threadIdentifier = self->_threadIdentifier;
  if (threadIdentifier)
  {
    [dictionary setObject:threadIdentifier forKey:@"threadIdentifier"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_state];
    [v4 setObject:v7 forKey:@"state"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_reason];
    [v4 setObject:v8 forKey:@"reason"];
  }

  notificationUUID = self->_notificationUUID;
  if (notificationUUID)
  {
    [v4 setObject:notificationUUID forKey:@"notificationUUID"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dateOfOccurrence];
    [v4 setObject:v10 forKey:@"dateOfOccurrence"];
  }

  accessoryIdentifier = self->_accessoryIdentifier;
  if (accessoryIdentifier)
  {
    [v4 setObject:accessoryIdentifier forKey:@"accessoryIdentifier"];
  }

  homeIdentifier = self->_homeIdentifier;
  if (homeIdentifier)
  {
    [v4 setObject:homeIdentifier forKey:@"homeIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_eventStartDate];
    [v4 setObject:v13 forKey:@"eventStartDate"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent;
  v4 = [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)&v8 description];
  dictionaryRepresentation = [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasEventStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasState:(BOOL)state
{
  if (state)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

@end
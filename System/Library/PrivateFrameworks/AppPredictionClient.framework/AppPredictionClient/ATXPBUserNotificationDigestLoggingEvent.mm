@interface ATXPBUserNotificationDigestLoggingEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)eventTypeAsString:(int)string;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
- (int)StringAsEventType:(id)type;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEventType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ATXPBUserNotificationDigestLoggingEvent

- (int)eventType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_eventType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEventType:(BOOL)type
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

- (id)eventTypeAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C25D8[string];
  }

  return v4;
}

- (int)StringAsEventType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ScheduledView"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"CollapsedView"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"UpcomingView"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Total"])
  {
    v4 = 3;
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
  v8.super_class = ATXPBUserNotificationDigestLoggingEvent;
  v4 = [(ATXPBUserNotificationDigestLoggingEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBUserNotificationDigestLoggingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  digest = self->_digest;
  if (digest)
  {
    dictionaryRepresentation = [(ATXPBUserNotificationDigest *)digest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"digest"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    eventType = self->_eventType;
    if (eventType >= 4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v8 = off_1E80C25D8[eventType];
    }

    [dictionary setObject:v8 forKey:@"eventType"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
    [dictionary setObject:v9 forKey:@"timestamp"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_digest)
  {
    PBDataWriterWriteSubmessage();
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
  if (self->_digest)
  {
    v6 = toCopy;
    [toCopy setDigest:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 6) = self->_eventType;
    *(toCopy + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ATXPBUserNotificationDigest *)self->_digest copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_eventType;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 28) |= 1u;
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

  digest = self->_digest;
  if (digest | *(equalCopy + 2))
  {
    if (![(ATXPBUserNotificationDigest *)digest isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_eventType != *(equalCopy + 6))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
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
  v3 = [(ATXPBUserNotificationDigest *)self->_digest hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_eventType;
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
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v4.i64 = floor(timestamp + 0.5);
  v8 = (timestamp - *v4.i64) * 1.84467441e19;
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
  digest = self->_digest;
  v6 = *(fromCopy + 2);
  if (digest)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    digest = [(ATXPBUserNotificationDigest *)digest mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    digest = [(ATXPBUserNotificationDigestLoggingEvent *)self setDigest:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 28);
  if ((v7 & 2) != 0)
  {
    self->_eventType = *(fromCopy + 6);
    *&self->_has |= 2u;
    v7 = *(fromCopy + 28);
  }

  if (v7)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](digest, fromCopy);
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [(ATXPBUserNotificationDigestLoggingEvent *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = nCopy;
      v7 = [ATXPBUserNotificationDigest alloc];
      v8 = [v6 objectForKeyedSubscript:@"digest"];
      v9 = [(ATXPBUserNotificationDigest *)v7 initFromJSON:v8];
      [(ATXPBUserNotificationDigestLoggingEvent *)v5 setDigest:v9];

      v10 = [v6 objectForKeyedSubscript:@"eventType"];
      if ([v10 isEqualToString:@"ScheduledView"])
      {
        v11 = 0;
      }

      else if ([v10 isEqualToString:@"CollapsedView"])
      {
        v11 = 1;
      }

      else if ([v10 isEqualToString:@"UpcomingView"])
      {
        v11 = 2;
      }

      else if ([v10 isEqualToString:@"Total"])
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }

      [(ATXPBUserNotificationDigestLoggingEvent *)v5 setEventType:v11];
      v12 = [v6 objectForKeyedSubscript:@"timestamp"];
      [v12 doubleValue];
      [(ATXPBUserNotificationDigestLoggingEvent *)v5 setTimestamp:?];
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"digest";
  jsonRepresentation = [(ATXPBUserNotificationDigest *)self->_digest jsonRepresentation];
  v4 = [ATXJSONHelper wrapObject:jsonRepresentation];
  v13[0] = v4;
  v12[1] = @"eventType";
  eventType = self->_eventType;
  if (eventType >= 4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
  }

  else
  {
    v6 = off_1E80C4080[eventType];
  }

  v7 = [ATXJSONHelper wrapObject:v6];
  v13[1] = v7;
  v12[2] = @"timestamp";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  v9 = [ATXJSONHelper wrapObject:v8];
  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

@end
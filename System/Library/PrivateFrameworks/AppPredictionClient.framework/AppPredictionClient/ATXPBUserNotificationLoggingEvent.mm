@interface ATXPBUserNotificationLoggingEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deliveryReasonAsString:(int)string;
- (id)deliveryUIAsString:(int)string;
- (id)description;
- (id)dictionaryRepresentation;
- (id)eventTypeAsString:(int)string;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
- (int)StringAsDeliveryReason:(id)reason;
- (int)StringAsDeliveryUI:(id)i;
- (int)StringAsEventType:(id)type;
- (int)deliveryReason;
- (int)deliveryUI;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeliveryReason:(BOOL)reason;
- (void)setHasDeliveryUI:(BOOL)i;
- (void)setHasEventType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ATXPBUserNotificationLoggingEvent

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [(ATXPBUserNotificationLoggingEvent *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = nCopy;
      v7 = [ATXPBUserNotification alloc];
      v8 = [v6 objectForKeyedSubscript:@"notification"];
      v9 = [(ATXPBUserNotification *)v7 initFromJSON:v8];
      [(ATXPBUserNotificationLoggingEvent *)v5 setNotification:v9];

      v10 = [v6 objectForKeyedSubscript:@"eventType"];
      if ([v10 isEqualToString:@"Received"])
      {
        v11 = 0;
      }

      else if ([v10 isEqualToString:@"DefaultAction"])
      {
        v11 = 1;
      }

      else if ([v10 isEqualToString:@"SupplementaryAction"])
      {
        v11 = 2;
      }

      else if ([v10 isEqualToString:@"Clear"])
      {
        v11 = 3;
      }

      else if ([v10 isEqualToString:@"NotificationCenterClearAll"])
      {
        v11 = 4;
      }

      else if ([v10 isEqualToString:@"Removed"])
      {
        v11 = 5;
      }

      else if ([v10 isEqualToString:@"Hide"])
      {
        v11 = 6;
      }

      else if ([v10 isEqualToString:@"LongLook"])
      {
        v11 = 7;
      }

      else if ([v10 isEqualToString:@"Silence"])
      {
        v11 = 8;
      }

      else if ([v10 isEqualToString:@"AppLaunch"])
      {
        v11 = 9;
      }

      else if ([v10 isEqualToString:@"Expired"])
      {
        v11 = 10;
      }

      else if ([v10 isEqualToString:@"BannerPulldown"])
      {
        v11 = 11;
      }

      else if ([v10 isEqualToString:@"TapCoalesce"])
      {
        v11 = 12;
      }

      else if ([v10 isEqualToString:@"TapExpand"])
      {
        v11 = 19;
      }

      else if ([v10 isEqualToString:@"Deduped"])
      {
        v11 = 13;
      }

      else if ([v10 isEqualToString:@"DevActivated"])
      {
        v11 = 14;
      }

      else if ([v10 isEqualToString:@"DevUnlocked"])
      {
        v11 = 15;
      }

      else if ([v10 isEqualToString:@"ReceivedAndDeliveredProminently"])
      {
        v11 = 16;
      }

      else if ([v10 isEqualToString:@"ReceivedAndDeliveredNonprominently"])
      {
        v11 = 17;
      }

      else if ([v10 isEqualToString:@"Modified"])
      {
        v11 = 18;
      }

      else if ([v10 isEqualToString:@"ShortLookDefaultAction"])
      {
        v11 = 20;
      }

      else if ([v10 isEqualToString:@"ShortLookDismiss"])
      {
        v11 = 21;
      }

      else if ([v10 isEqualToString:@"ShortLookClear"])
      {
        v11 = 22;
      }

      else if ([v10 isEqualToString:@"LongLookDefaultAction"])
      {
        v11 = 23;
      }

      else if ([v10 isEqualToString:@"LongLookCustomAction"])
      {
        v11 = 24;
      }

      else if ([v10 isEqualToString:@"LongLookDismiss"])
      {
        v11 = 25;
      }

      else if ([v10 isEqualToString:@"LongLookRepark"])
      {
        v11 = 26;
      }

      else if ([v10 isEqualToString:@"Total"])
      {
        v11 = 27;
      }

      else
      {
        v11 = 0;
      }

      [(ATXPBUserNotificationLoggingEvent *)v5 setEventType:v11];
      v12 = [v6 objectForKeyedSubscript:@"timestamp"];
      [v12 doubleValue];
      [(ATXPBUserNotificationLoggingEvent *)v5 setTimestamp:?];
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"notification";
  jsonRepresentation = [(ATXPBUserNotification *)self->_notification jsonRepresentation];
  v4 = [ATXJSONHelper wrapObject:jsonRepresentation];
  v13[0] = v4;
  v12[1] = @"eventType";
  eventType = self->_eventType;
  if (eventType >= 0x1C)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
  }

  else
  {
    v6 = off_1E80C22C0[eventType];
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

- (int)eventType
{
  if ((*&self->_has & 8) != 0)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)eventTypeAsString:(int)string
{
  if (string >= 0x1C)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C5498[string];
  }

  return v4;
}

- (int)StringAsEventType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Received"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"DefaultAction"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SupplementaryAction"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Clear"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"NotificationCenterClearAll"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Removed"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"Hide"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"LongLook"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"Silence"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"AppLaunch"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"Expired"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"BannerPulldown"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"TapCoalesce"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"TapExpand"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"Deduped"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"DevActivated"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"DevUnlocked"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"ReceivedAndDeliveredProminently"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"ReceivedAndDeliveredNonprominently"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"Modified"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"ShortLookDefaultAction"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"ShortLookDismiss"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"ShortLookClear"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"LongLookDefaultAction"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"LongLookCustomAction"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"LongLookDismiss"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"LongLookRepark"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"Total"])
  {
    v4 = 27;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)deliveryReason
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_deliveryReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeliveryReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)deliveryReasonAsString:(int)string
{
  if (string >= 8)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C5578[string];
  }

  return v4;
}

- (int)StringAsDeliveryReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"Other"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"Application"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"Contact"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"MatchedContact"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"Urgency"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"MessageBreakthrough"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"Total"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)deliveryUI
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_deliveryUI;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeliveryUI:(BOOL)i
{
  if (i)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)deliveryUIAsString:(int)string
{
  if (string >= 8)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C55B8[string];
  }

  return v4;
}

- (int)StringAsDeliveryUI:(id)i
{
  iCopy = i;
  if ([iCopy isEqualToString:@"Digest"])
  {
    v4 = 0;
  }

  else if ([iCopy isEqualToString:@"MissedNotificationBundle"])
  {
    v4 = 1;
  }

  else if ([iCopy isEqualToString:@"NotificationCenter"])
  {
    v4 = 2;
  }

  else if ([iCopy isEqualToString:@"Banner"])
  {
    v4 = 3;
  }

  else if ([iCopy isEqualToString:@"LockScreen"])
  {
    v4 = 4;
  }

  else if ([iCopy isEqualToString:@"Other"])
  {
    v4 = 5;
  }

  else if ([iCopy isEqualToString:@"PriorityNotification"])
  {
    v4 = 6;
  }

  else if ([iCopy isEqualToString:@"Total"])
  {
    v4 = 7;
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
  v8.super_class = ATXPBUserNotificationLoggingEvent;
  v4 = [(ATXPBUserNotificationLoggingEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBUserNotificationLoggingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  notification = self->_notification;
  if (notification)
  {
    dictionaryRepresentation = [(ATXPBUserNotification *)notification dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"notification"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    eventType = self->_eventType;
    if (eventType >= 0x1C)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v8 = off_1E80C5498[eventType];
    }

    [dictionary setObject:v8 forKey:@"eventType"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
    [dictionary setObject:v9 forKey:@"timestamp"];
  }

  modeIdentifier = self->_modeIdentifier;
  if (modeIdentifier)
  {
    [dictionary setObject:modeIdentifier forKey:@"modeIdentifier"];
  }

  v11 = self->_has;
  if ((v11 & 2) != 0)
  {
    deliveryReason = self->_deliveryReason;
    if (deliveryReason >= 8)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_deliveryReason];
    }

    else
    {
      v13 = off_1E80C5578[deliveryReason];
    }

    [dictionary setObject:v13 forKey:@"deliveryReason"];

    v11 = self->_has;
  }

  if ((v11 & 4) != 0)
  {
    deliveryUI = self->_deliveryUI;
    if (deliveryUI >= 8)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_deliveryUI];
    }

    else
    {
      v15 = off_1E80C55B8[deliveryUI];
    }

    [dictionary setObject:v15 forKey:@"deliveryUI"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_notification)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v7;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_modeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v7;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_notification)
  {
    [toCopy setNotification:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 6) = self->_eventType;
    *(toCopy + 48) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 48) |= 1u;
  }

  if (self->_modeIdentifier)
  {
    [v7 setModeIdentifier:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    *(toCopy + 4) = self->_deliveryReason;
    *(toCopy + 48) |= 2u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    *(toCopy + 5) = self->_deliveryUI;
    *(toCopy + 48) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ATXPBUserNotification *)self->_notification copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 24) = self->_eventType;
    *(v5 + 48) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v9 = [(NSString *)self->_modeIdentifier copyWithZone:zone];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  v11 = self->_has;
  if ((v11 & 2) != 0)
  {
    *(v5 + 16) = self->_deliveryReason;
    *(v5 + 48) |= 2u;
    v11 = self->_has;
  }

  if ((v11 & 4) != 0)
  {
    *(v5 + 20) = self->_deliveryUI;
    *(v5 + 48) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  notification = self->_notification;
  if (notification | *(equalCopy + 5))
  {
    if (![(ATXPBUserNotification *)notification isEqual:?])
    {
      goto LABEL_26;
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_eventType != *(equalCopy + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_26;
  }

  modeIdentifier = self->_modeIdentifier;
  if (modeIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)modeIdentifier isEqual:?])
    {
LABEL_26:
      v8 = 0;
      goto LABEL_27;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_deliveryReason != *(equalCopy + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_26;
  }

  v8 = (*(equalCopy + 48) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_deliveryUI != *(equalCopy + 5))
    {
      goto LABEL_26;
    }

    v8 = 1;
  }

LABEL_27:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(ATXPBUserNotification *)self->_notification hash];
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_eventType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
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

LABEL_9:
  v11 = [(NSString *)self->_modeIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_deliveryReason;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v13 = 0;
    return v6 ^ v3 ^ v10 ^ v11 ^ v12 ^ v13;
  }

  v12 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v13 = 2654435761 * self->_deliveryUI;
  return v6 ^ v3 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  notification = self->_notification;
  v6 = *(fromCopy + 5);
  v9 = fromCopy;
  if (notification)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    notification = [(ATXPBUserNotification *)notification mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    notification = [(ATXPBUserNotificationLoggingEvent *)self setNotification:?];
  }

  fromCopy = v9;
LABEL_7:
  v7 = *(fromCopy + 48);
  if ((v7 & 8) != 0)
  {
    self->_eventType = *(fromCopy + 6);
    *&self->_has |= 8u;
    v7 = *(fromCopy + 48);
  }

  if (v7)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    notification = [(ATXPBUserNotificationLoggingEvent *)self setModeIdentifier:?];
    fromCopy = v9;
  }

  v8 = *(fromCopy + 48);
  if ((v8 & 2) != 0)
  {
    self->_deliveryReason = *(fromCopy + 4);
    *&self->_has |= 2u;
    v8 = *(fromCopy + 48);
  }

  if ((v8 & 4) != 0)
  {
    self->_deliveryUI = *(fromCopy + 5);
    *&self->_has |= 4u;
  }

  MEMORY[0x1EEE66BB8](notification, fromCopy);
}

@end
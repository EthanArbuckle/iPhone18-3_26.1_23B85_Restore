@interface ATXPBUserNotificationLoggingEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deliveryReasonAsString:(int)a3;
- (id)deliveryUIAsString:(int)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)eventTypeAsString:(int)a3;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
- (int)StringAsDeliveryReason:(id)a3;
- (int)StringAsDeliveryUI:(id)a3;
- (int)StringAsEventType:(id)a3;
- (int)deliveryReason;
- (int)deliveryUI;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeliveryReason:(BOOL)a3;
- (void)setHasDeliveryUI:(BOOL)a3;
- (void)setHasEventType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBUserNotificationLoggingEvent

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [(ATXPBUserNotificationLoggingEvent *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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
  v3 = [(ATXPBUserNotification *)self->_notification jsonRepresentation];
  v4 = [ATXJSONHelper wrapObject:v3];
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

- (void)setHasEventType:(BOOL)a3
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

- (id)eventTypeAsString:(int)a3
{
  if (a3 >= 0x1C)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E80C5498[a3];
  }

  return v4;
}

- (int)StringAsEventType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Received"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DefaultAction"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SupplementaryAction"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Clear"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NotificationCenterClearAll"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Removed"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Hide"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"LongLook"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Silence"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"AppLaunch"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"Expired"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"BannerPulldown"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"TapCoalesce"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"TapExpand"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"Deduped"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"DevActivated"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"DevUnlocked"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"ReceivedAndDeliveredProminently"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"ReceivedAndDeliveredNonprominently"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"Modified"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"ShortLookDefaultAction"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"ShortLookDismiss"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"ShortLookClear"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"LongLookDefaultAction"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"LongLookCustomAction"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"LongLookDismiss"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"LongLookRepark"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"Total"])
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

- (void)setHasDeliveryReason:(BOOL)a3
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

- (id)deliveryReasonAsString:(int)a3
{
  if (a3 >= 8)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E80C5578[a3];
  }

  return v4;
}

- (int)StringAsDeliveryReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Other"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Application"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Contact"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MatchedContact"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Urgency"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MessageBreakthrough"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Total"])
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

- (void)setHasDeliveryUI:(BOOL)a3
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

- (id)deliveryUIAsString:(int)a3
{
  if (a3 >= 8)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E80C55B8[a3];
  }

  return v4;
}

- (int)StringAsDeliveryUI:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Digest"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MissedNotificationBundle"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NotificationCenter"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Banner"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LockScreen"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Other"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PriorityNotification"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Total"])
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
  v5 = [(ATXPBUserNotificationLoggingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  notification = self->_notification;
  if (notification)
  {
    v5 = [(ATXPBUserNotification *)notification dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"notification"];
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

    [v3 setObject:v8 forKey:@"eventType"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];
  }

  modeIdentifier = self->_modeIdentifier;
  if (modeIdentifier)
  {
    [v3 setObject:modeIdentifier forKey:@"modeIdentifier"];
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

    [v3 setObject:v13 forKey:@"deliveryReason"];

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

    [v3 setObject:v15 forKey:@"deliveryUI"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_notification)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v7;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_modeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v7;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_notification)
  {
    [v4 setNotification:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 6) = self->_eventType;
    *(v4 + 48) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_timestamp;
    *(v4 + 48) |= 1u;
  }

  if (self->_modeIdentifier)
  {
    [v7 setModeIdentifier:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    *(v4 + 4) = self->_deliveryReason;
    *(v4 + 48) |= 2u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    *(v4 + 5) = self->_deliveryUI;
    *(v4 + 48) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ATXPBUserNotification *)self->_notification copyWithZone:a3];
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

  v9 = [(NSString *)self->_modeIdentifier copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  notification = self->_notification;
  if (notification | *(v4 + 5))
  {
    if (![(ATXPBUserNotification *)notification isEqual:?])
    {
      goto LABEL_26;
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_eventType != *(v4 + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_26;
  }

  modeIdentifier = self->_modeIdentifier;
  if (modeIdentifier | *(v4 + 4))
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
    if ((*(v4 + 48) & 2) == 0 || self->_deliveryReason != *(v4 + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_26;
  }

  v8 = (*(v4 + 48) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_deliveryUI != *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  notification = self->_notification;
  v6 = *(v4 + 5);
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  v7 = *(v4 + 48);
  if ((v7 & 8) != 0)
  {
    self->_eventType = *(v4 + 6);
    *&self->_has |= 8u;
    v7 = *(v4 + 48);
  }

  if (v7)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    notification = [(ATXPBUserNotificationLoggingEvent *)self setModeIdentifier:?];
    v4 = v9;
  }

  v8 = *(v4 + 48);
  if ((v8 & 2) != 0)
  {
    self->_deliveryReason = *(v4 + 4);
    *&self->_has |= 2u;
    v8 = *(v4 + 48);
  }

  if ((v8 & 4) != 0)
  {
    self->_deliveryUI = *(v4 + 5);
    *&self->_has |= 4u;
  }

  MEMORY[0x1EEE66BB8](notification, v4);
}

@end
@interface ATXPBNotificationDeliverySuggestion
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)oneofNotificationDeliverySuggestionAsString:(int)a3;
- (int)StringAsOneofNotificationDeliverySuggestion:(id)a3;
- (int)oneofNotificationDeliverySuggestion;
- (unint64_t)hash;
- (void)clearOneofValuesForOneofNotificationDeliverySuggestion;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOneofNotificationDeliverySuggestion:(BOOL)a3;
- (void)setHasScope:(BOOL)a3;
- (void)setInterruptionManagerTuning:(id)a3;
- (void)setPromoting:(id)a3;
- (void)setQuieting:(id)a3;
- (void)setSendMessagesToDigest:(id)a3;
- (void)setSendToDigest:(id)a3;
- (void)setSmartPause:(id)a3;
- (void)setTurnOffNotificationsForApp:(id)a3;
- (void)setUrgencyTuning:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBNotificationDeliverySuggestion

- (void)setSmartPause:(id)a3
{
  v4 = a3;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 1;
  smartPause = self->_smartPause;
  self->_smartPause = v4;
}

- (void)setQuieting:(id)a3
{
  v4 = a3;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 2;
  quieting = self->_quieting;
  self->_quieting = v4;
}

- (void)setPromoting:(id)a3
{
  v4 = a3;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 3;
  promoting = self->_promoting;
  self->_promoting = v4;
}

- (void)setInterruptionManagerTuning:(id)a3
{
  v4 = a3;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 4;
  interruptionManagerTuning = self->_interruptionManagerTuning;
  self->_interruptionManagerTuning = v4;
}

- (void)setSendToDigest:(id)a3
{
  v4 = a3;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 5;
  sendToDigest = self->_sendToDigest;
  self->_sendToDigest = v4;
}

- (void)setUrgencyTuning:(id)a3
{
  v4 = a3;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 6;
  urgencyTuning = self->_urgencyTuning;
  self->_urgencyTuning = v4;
}

- (void)setSendMessagesToDigest:(id)a3
{
  v4 = a3;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 7;
  sendMessagesToDigest = self->_sendMessagesToDigest;
  self->_sendMessagesToDigest = v4;
}

- (void)setTurnOffNotificationsForApp:(id)a3
{
  v4 = a3;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 8;
  turnOffNotificationsForApp = self->_turnOffNotificationsForApp;
  self->_turnOffNotificationsForApp = v4;
}

- (int)oneofNotificationDeliverySuggestion
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_oneofNotificationDeliverySuggestion;
  }

  else
  {
    return 0;
  }
}

- (void)setHasOneofNotificationDeliverySuggestion:(BOOL)a3
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

- (id)oneofNotificationDeliverySuggestionAsString:(int)a3
{
  if (a3 >= 9)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E80C6970[a3];
  }

  return v4;
}

- (int)StringAsOneofNotificationDeliverySuggestion:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"smartPause"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"quieting"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"promoting"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"interruptionManagerTuning"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"sendToDigest"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"urgencyTuning"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"sendMessagesToDigest"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"turnOffNotificationsForApp"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForOneofNotificationDeliverySuggestion
{
  *&self->_has &= ~2u;
  self->_oneofNotificationDeliverySuggestion = 0;
  smartPause = self->_smartPause;
  self->_smartPause = 0;

  quieting = self->_quieting;
  self->_quieting = 0;

  promoting = self->_promoting;
  self->_promoting = 0;

  interruptionManagerTuning = self->_interruptionManagerTuning;
  self->_interruptionManagerTuning = 0;

  sendToDigest = self->_sendToDigest;
  self->_sendToDigest = 0;

  urgencyTuning = self->_urgencyTuning;
  self->_urgencyTuning = 0;

  sendMessagesToDigest = self->_sendMessagesToDigest;
  self->_sendMessagesToDigest = 0;

  turnOffNotificationsForApp = self->_turnOffNotificationsForApp;
  self->_turnOffNotificationsForApp = 0;
}

- (void)setHasScope:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBNotificationDeliverySuggestion;
  v4 = [(ATXPBNotificationDeliverySuggestion *)&v8 description];
  v5 = [(ATXPBNotificationDeliverySuggestion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  smartPause = self->_smartPause;
  if (smartPause)
  {
    v5 = [(ATXPBNotificationSmartPauseSuggestion *)smartPause dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"smartPause"];
  }

  quieting = self->_quieting;
  if (quieting)
  {
    v7 = [(ATXPBNotificationQuietingSuggestion *)quieting dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"quieting"];
  }

  promoting = self->_promoting;
  if (promoting)
  {
    v9 = [(ATXPBNotificationPromotingSuggestion *)promoting dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"promoting"];
  }

  interruptionManagerTuning = self->_interruptionManagerTuning;
  if (interruptionManagerTuning)
  {
    v11 = [(ATXPBInterruptionManagerTuningSuggestion *)interruptionManagerTuning dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"interruptionManagerTuning"];
  }

  sendToDigest = self->_sendToDigest;
  if (sendToDigest)
  {
    v13 = [(ATXPBSendToDigestSuggestion *)sendToDigest dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"sendToDigest"];
  }

  urgencyTuning = self->_urgencyTuning;
  if (urgencyTuning)
  {
    v15 = [(ATXPBUrgencyTuningSuggestion *)urgencyTuning dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"urgencyTuning"];
  }

  sendMessagesToDigest = self->_sendMessagesToDigest;
  if (sendMessagesToDigest)
  {
    v17 = [(ATXPBSendMessagesToDigestSuggestion *)sendMessagesToDigest dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"sendMessagesToDigest"];
  }

  turnOffNotificationsForApp = self->_turnOffNotificationsForApp;
  if (turnOffNotificationsForApp)
  {
    v19 = [(ATXPBTurnOffNotificationsForAppSuggestion *)turnOffNotificationsForApp dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"turnOffNotificationsForApp"];
  }

  if ((*&self->_has & 2) != 0)
  {
    oneofNotificationDeliverySuggestion = self->_oneofNotificationDeliverySuggestion;
    if (oneofNotificationDeliverySuggestion >= 9)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_oneofNotificationDeliverySuggestion];
    }

    else
    {
      v21 = off_1E80C6970[oneofNotificationDeliverySuggestion];
    }

    [v3 setObject:v21 forKey:@"OneofNotificationDeliverySuggestion"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if (has)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
    [v3 setObject:v24 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithInt:self->_scope];
    [v3 setObject:v25 forKey:@"scope"];
  }

  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier)
  {
    [v3 setObject:entityIdentifier forKey:@"entityIdentifier"];
  }

  triggerNotificationUUID = self->_triggerNotificationUUID;
  if (triggerNotificationUUID)
  {
    [v3 setObject:triggerNotificationUUID forKey:@"triggerNotificationUUID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_entityIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_triggerNotificationUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_smartPause)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_quieting)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_promoting)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_interruptionManagerTuning)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_sendToDigest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_urgencyTuning)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_sendMessagesToDigest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_turnOffNotificationsForApp)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[8] = self->_oneofNotificationDeliverySuggestion;
    *(v4 + 120) |= 2u;
  }

  v6 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_timestamp;
    *(v4 + 120) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[14] = self->_scope;
    *(v4 + 120) |= 4u;
  }

  if (self->_entityIdentifier)
  {
    [v6 setEntityIdentifier:?];
    v4 = v6;
  }

  if (self->_triggerNotificationUUID)
  {
    [v6 setTriggerNotificationUUID:?];
    v4 = v6;
  }

  if (self->_smartPause)
  {
    [v6 setSmartPause:?];
    v4 = v6;
  }

  if (self->_quieting)
  {
    [v6 setQuieting:?];
    v4 = v6;
  }

  if (self->_promoting)
  {
    [v6 setPromoting:?];
    v4 = v6;
  }

  if (self->_interruptionManagerTuning)
  {
    [v6 setInterruptionManagerTuning:?];
    v4 = v6;
  }

  if (self->_sendToDigest)
  {
    [v6 setSendToDigest:?];
    v4 = v6;
  }

  if (self->_urgencyTuning)
  {
    [v6 setUrgencyTuning:?];
    v4 = v6;
  }

  if (self->_sendMessagesToDigest)
  {
    [v6 setSendMessagesToDigest:?];
    v4 = v6;
  }

  if (self->_turnOffNotificationsForApp)
  {
    [v6 setTurnOffNotificationsForApp:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_oneofNotificationDeliverySuggestion;
    *(v5 + 120) |= 2u;
  }

  v7 = [(NSString *)self->_uuid copyWithZone:a3];
  v8 = *(v6 + 112);
  *(v6 + 112) = v7;

  has = self->_has;
  if (has)
  {
    *(v6 + 8) = self->_timestamp;
    *(v6 + 120) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 56) = self->_scope;
    *(v6 + 120) |= 4u;
  }

  v10 = [(NSString *)self->_entityIdentifier copyWithZone:a3];
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  v12 = [(NSString *)self->_triggerNotificationUUID copyWithZone:a3];
  v13 = *(v6 + 88);
  *(v6 + 88) = v12;

  v14 = [(ATXPBNotificationSmartPauseSuggestion *)self->_smartPause copyWithZone:a3];
  v15 = *(v6 + 80);
  *(v6 + 80) = v14;

  v16 = [(ATXPBNotificationQuietingSuggestion *)self->_quieting copyWithZone:a3];
  v17 = *(v6 + 48);
  *(v6 + 48) = v16;

  v18 = [(ATXPBNotificationPromotingSuggestion *)self->_promoting copyWithZone:a3];
  v19 = *(v6 + 40);
  *(v6 + 40) = v18;

  v20 = [(ATXPBInterruptionManagerTuningSuggestion *)self->_interruptionManagerTuning copyWithZone:a3];
  v21 = *(v6 + 24);
  *(v6 + 24) = v20;

  v22 = [(ATXPBSendToDigestSuggestion *)self->_sendToDigest copyWithZone:a3];
  v23 = *(v6 + 72);
  *(v6 + 72) = v22;

  v24 = [(ATXPBUrgencyTuningSuggestion *)self->_urgencyTuning copyWithZone:a3];
  v25 = *(v6 + 104);
  *(v6 + 104) = v24;

  v26 = [(ATXPBSendMessagesToDigestSuggestion *)self->_sendMessagesToDigest copyWithZone:a3];
  v27 = *(v6 + 64);
  *(v6 + 64) = v26;

  v28 = [(ATXPBTurnOffNotificationsForAppSuggestion *)self->_turnOffNotificationsForApp copyWithZone:a3];
  v29 = *(v6 + 96);
  *(v6 + 96) = v28;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 120) & 2) == 0 || self->_oneofNotificationDeliverySuggestion != *(v4 + 8))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 120) & 2) != 0)
  {
    goto LABEL_40;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 14))
  {
    if (![(NSString *)uuid isEqual:?])
    {
LABEL_40:
      v17 = 0;
      goto LABEL_41;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(v4 + 120) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_40;
    }
  }

  else if (*(v4 + 120))
  {
    goto LABEL_40;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 120) & 4) == 0 || self->_scope != *(v4 + 14))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 120) & 4) != 0)
  {
    goto LABEL_40;
  }

  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier | *(v4 + 2) && ![(NSString *)entityIdentifier isEqual:?])
  {
    goto LABEL_40;
  }

  triggerNotificationUUID = self->_triggerNotificationUUID;
  if (triggerNotificationUUID | *(v4 + 11))
  {
    if (![(NSString *)triggerNotificationUUID isEqual:?])
    {
      goto LABEL_40;
    }
  }

  smartPause = self->_smartPause;
  if (smartPause | *(v4 + 10))
  {
    if (![(ATXPBNotificationSmartPauseSuggestion *)smartPause isEqual:?])
    {
      goto LABEL_40;
    }
  }

  quieting = self->_quieting;
  if (quieting | *(v4 + 6))
  {
    if (![(ATXPBNotificationQuietingSuggestion *)quieting isEqual:?])
    {
      goto LABEL_40;
    }
  }

  promoting = self->_promoting;
  if (promoting | *(v4 + 5))
  {
    if (![(ATXPBNotificationPromotingSuggestion *)promoting isEqual:?])
    {
      goto LABEL_40;
    }
  }

  interruptionManagerTuning = self->_interruptionManagerTuning;
  if (interruptionManagerTuning | *(v4 + 3))
  {
    if (![(ATXPBInterruptionManagerTuningSuggestion *)interruptionManagerTuning isEqual:?])
    {
      goto LABEL_40;
    }
  }

  sendToDigest = self->_sendToDigest;
  if (sendToDigest | *(v4 + 9))
  {
    if (![(ATXPBSendToDigestSuggestion *)sendToDigest isEqual:?])
    {
      goto LABEL_40;
    }
  }

  urgencyTuning = self->_urgencyTuning;
  if (urgencyTuning | *(v4 + 13))
  {
    if (![(ATXPBUrgencyTuningSuggestion *)urgencyTuning isEqual:?])
    {
      goto LABEL_40;
    }
  }

  sendMessagesToDigest = self->_sendMessagesToDigest;
  if (sendMessagesToDigest | *(v4 + 8))
  {
    if (![(ATXPBSendMessagesToDigestSuggestion *)sendMessagesToDigest isEqual:?])
    {
      goto LABEL_40;
    }
  }

  turnOffNotificationsForApp = self->_turnOffNotificationsForApp;
  if (turnOffNotificationsForApp | *(v4 + 12))
  {
    v17 = [(ATXPBTurnOffNotificationsForAppSuggestion *)turnOffNotificationsForApp isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_41:

  return v17;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_oneofNotificationDeliverySuggestion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_uuid hash];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v5.i64 = floor(timestamp + 0.5);
    v9 = (timestamp - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_scope;
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 ^ v3 ^ v7 ^ v11 ^ [(NSString *)self->_entityIdentifier hash];
  v13 = [(NSString *)self->_triggerNotificationUUID hash];
  v14 = v13 ^ [(ATXPBNotificationSmartPauseSuggestion *)self->_smartPause hash];
  v15 = v12 ^ v14 ^ [(ATXPBNotificationQuietingSuggestion *)self->_quieting hash];
  v16 = [(ATXPBNotificationPromotingSuggestion *)self->_promoting hash];
  v17 = v16 ^ [(ATXPBInterruptionManagerTuningSuggestion *)self->_interruptionManagerTuning hash];
  v18 = v17 ^ [(ATXPBSendToDigestSuggestion *)self->_sendToDigest hash];
  v19 = v15 ^ v18 ^ [(ATXPBUrgencyTuningSuggestion *)self->_urgencyTuning hash];
  v20 = [(ATXPBSendMessagesToDigestSuggestion *)self->_sendMessagesToDigest hash];
  return v19 ^ v20 ^ [(ATXPBTurnOffNotificationsForAppSuggestion *)self->_turnOffNotificationsForApp hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[30] & 2) != 0)
  {
    self->_oneofNotificationDeliverySuggestion = v4[8];
    *&self->_has |= 2u;
  }

  v23 = v4;
  if (*(v4 + 14))
  {
    [(ATXPBNotificationDeliverySuggestion *)self setUuid:?];
    v5 = v23;
  }

  v6 = *(v5 + 120);
  if (v6)
  {
    self->_timestamp = *(v5 + 1);
    *&self->_has |= 1u;
    v6 = *(v5 + 120);
  }

  if ((v6 & 4) != 0)
  {
    self->_scope = v5[14];
    *&self->_has |= 4u;
  }

  if (*(v5 + 2))
  {
    [(ATXPBNotificationDeliverySuggestion *)self setEntityIdentifier:?];
    v5 = v23;
  }

  if (*(v5 + 11))
  {
    [(ATXPBNotificationDeliverySuggestion *)self setTriggerNotificationUUID:?];
    v5 = v23;
  }

  smartPause = self->_smartPause;
  v8 = *(v5 + 10);
  if (smartPause)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(ATXPBNotificationSmartPauseSuggestion *)smartPause mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(ATXPBNotificationDeliverySuggestion *)self setSmartPause:?];
  }

  v5 = v23;
LABEL_19:
  quieting = self->_quieting;
  v10 = *(v5 + 6);
  if (quieting)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    [(ATXPBNotificationQuietingSuggestion *)quieting mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    [(ATXPBNotificationDeliverySuggestion *)self setQuieting:?];
  }

  v5 = v23;
LABEL_25:
  promoting = self->_promoting;
  v12 = *(v5 + 5);
  if (promoting)
  {
    if (!v12)
    {
      goto LABEL_31;
    }

    [(ATXPBNotificationPromotingSuggestion *)promoting mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_31;
    }

    [(ATXPBNotificationDeliverySuggestion *)self setPromoting:?];
  }

  v5 = v23;
LABEL_31:
  interruptionManagerTuning = self->_interruptionManagerTuning;
  v14 = *(v5 + 3);
  if (interruptionManagerTuning)
  {
    if (!v14)
    {
      goto LABEL_37;
    }

    [(ATXPBInterruptionManagerTuningSuggestion *)interruptionManagerTuning mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_37;
    }

    [(ATXPBNotificationDeliverySuggestion *)self setInterruptionManagerTuning:?];
  }

  v5 = v23;
LABEL_37:
  sendToDigest = self->_sendToDigest;
  v16 = *(v5 + 9);
  if (sendToDigest)
  {
    if (!v16)
    {
      goto LABEL_43;
    }

    [(ATXPBSendToDigestSuggestion *)sendToDigest mergeFrom:?];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_43;
    }

    [(ATXPBNotificationDeliverySuggestion *)self setSendToDigest:?];
  }

  v5 = v23;
LABEL_43:
  urgencyTuning = self->_urgencyTuning;
  v18 = *(v5 + 13);
  if (urgencyTuning)
  {
    if (!v18)
    {
      goto LABEL_49;
    }

    [(ATXPBUrgencyTuningSuggestion *)urgencyTuning mergeFrom:?];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_49;
    }

    [(ATXPBNotificationDeliverySuggestion *)self setUrgencyTuning:?];
  }

  v5 = v23;
LABEL_49:
  sendMessagesToDigest = self->_sendMessagesToDigest;
  v20 = *(v5 + 8);
  if (sendMessagesToDigest)
  {
    if (!v20)
    {
      goto LABEL_55;
    }

    [(ATXPBSendMessagesToDigestSuggestion *)sendMessagesToDigest mergeFrom:?];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_55;
    }

    [(ATXPBNotificationDeliverySuggestion *)self setSendMessagesToDigest:?];
  }

  v5 = v23;
LABEL_55:
  turnOffNotificationsForApp = self->_turnOffNotificationsForApp;
  v22 = *(v5 + 12);
  if (turnOffNotificationsForApp)
  {
    if (!v22)
    {
      goto LABEL_61;
    }

    turnOffNotificationsForApp = [(ATXPBTurnOffNotificationsForAppSuggestion *)turnOffNotificationsForApp mergeFrom:?];
  }

  else
  {
    if (!v22)
    {
      goto LABEL_61;
    }

    turnOffNotificationsForApp = [(ATXPBNotificationDeliverySuggestion *)self setTurnOffNotificationsForApp:?];
  }

  v5 = v23;
LABEL_61:

  MEMORY[0x1EEE66BB8](turnOffNotificationsForApp, v5);
}

@end
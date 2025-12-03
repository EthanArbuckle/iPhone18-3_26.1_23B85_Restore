@interface ATXPBNotificationDeliverySuggestion
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)oneofNotificationDeliverySuggestionAsString:(int)string;
- (int)StringAsOneofNotificationDeliverySuggestion:(id)suggestion;
- (int)oneofNotificationDeliverySuggestion;
- (unint64_t)hash;
- (void)clearOneofValuesForOneofNotificationDeliverySuggestion;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOneofNotificationDeliverySuggestion:(BOOL)suggestion;
- (void)setHasScope:(BOOL)scope;
- (void)setInterruptionManagerTuning:(id)tuning;
- (void)setPromoting:(id)promoting;
- (void)setQuieting:(id)quieting;
- (void)setSendMessagesToDigest:(id)digest;
- (void)setSendToDigest:(id)digest;
- (void)setSmartPause:(id)pause;
- (void)setTurnOffNotificationsForApp:(id)app;
- (void)setUrgencyTuning:(id)tuning;
- (void)writeTo:(id)to;
@end

@implementation ATXPBNotificationDeliverySuggestion

- (void)setSmartPause:(id)pause
{
  pauseCopy = pause;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 1;
  smartPause = self->_smartPause;
  self->_smartPause = pauseCopy;
}

- (void)setQuieting:(id)quieting
{
  quietingCopy = quieting;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 2;
  quieting = self->_quieting;
  self->_quieting = quietingCopy;
}

- (void)setPromoting:(id)promoting
{
  promotingCopy = promoting;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 3;
  promoting = self->_promoting;
  self->_promoting = promotingCopy;
}

- (void)setInterruptionManagerTuning:(id)tuning
{
  tuningCopy = tuning;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 4;
  interruptionManagerTuning = self->_interruptionManagerTuning;
  self->_interruptionManagerTuning = tuningCopy;
}

- (void)setSendToDigest:(id)digest
{
  digestCopy = digest;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 5;
  sendToDigest = self->_sendToDigest;
  self->_sendToDigest = digestCopy;
}

- (void)setUrgencyTuning:(id)tuning
{
  tuningCopy = tuning;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 6;
  urgencyTuning = self->_urgencyTuning;
  self->_urgencyTuning = tuningCopy;
}

- (void)setSendMessagesToDigest:(id)digest
{
  digestCopy = digest;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 7;
  sendMessagesToDigest = self->_sendMessagesToDigest;
  self->_sendMessagesToDigest = digestCopy;
}

- (void)setTurnOffNotificationsForApp:(id)app
{
  appCopy = app;
  [(ATXPBNotificationDeliverySuggestion *)self clearOneofValuesForOneofNotificationDeliverySuggestion];
  *&self->_has |= 2u;
  self->_oneofNotificationDeliverySuggestion = 8;
  turnOffNotificationsForApp = self->_turnOffNotificationsForApp;
  self->_turnOffNotificationsForApp = appCopy;
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

- (void)setHasOneofNotificationDeliverySuggestion:(BOOL)suggestion
{
  if (suggestion)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)oneofNotificationDeliverySuggestionAsString:(int)string
{
  if (string >= 9)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C6970[string];
  }

  return v4;
}

- (int)StringAsOneofNotificationDeliverySuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if ([suggestionCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([suggestionCopy isEqualToString:@"smartPause"])
  {
    v4 = 1;
  }

  else if ([suggestionCopy isEqualToString:@"quieting"])
  {
    v4 = 2;
  }

  else if ([suggestionCopy isEqualToString:@"promoting"])
  {
    v4 = 3;
  }

  else if ([suggestionCopy isEqualToString:@"interruptionManagerTuning"])
  {
    v4 = 4;
  }

  else if ([suggestionCopy isEqualToString:@"sendToDigest"])
  {
    v4 = 5;
  }

  else if ([suggestionCopy isEqualToString:@"urgencyTuning"])
  {
    v4 = 6;
  }

  else if ([suggestionCopy isEqualToString:@"sendMessagesToDigest"])
  {
    v4 = 7;
  }

  else if ([suggestionCopy isEqualToString:@"turnOffNotificationsForApp"])
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

- (void)setHasScope:(BOOL)scope
{
  if (scope)
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
  dictionaryRepresentation = [(ATXPBNotificationDeliverySuggestion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  smartPause = self->_smartPause;
  if (smartPause)
  {
    dictionaryRepresentation = [(ATXPBNotificationSmartPauseSuggestion *)smartPause dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"smartPause"];
  }

  quieting = self->_quieting;
  if (quieting)
  {
    dictionaryRepresentation2 = [(ATXPBNotificationQuietingSuggestion *)quieting dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"quieting"];
  }

  promoting = self->_promoting;
  if (promoting)
  {
    dictionaryRepresentation3 = [(ATXPBNotificationPromotingSuggestion *)promoting dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"promoting"];
  }

  interruptionManagerTuning = self->_interruptionManagerTuning;
  if (interruptionManagerTuning)
  {
    dictionaryRepresentation4 = [(ATXPBInterruptionManagerTuningSuggestion *)interruptionManagerTuning dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"interruptionManagerTuning"];
  }

  sendToDigest = self->_sendToDigest;
  if (sendToDigest)
  {
    dictionaryRepresentation5 = [(ATXPBSendToDigestSuggestion *)sendToDigest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"sendToDigest"];
  }

  urgencyTuning = self->_urgencyTuning;
  if (urgencyTuning)
  {
    dictionaryRepresentation6 = [(ATXPBUrgencyTuningSuggestion *)urgencyTuning dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"urgencyTuning"];
  }

  sendMessagesToDigest = self->_sendMessagesToDigest;
  if (sendMessagesToDigest)
  {
    dictionaryRepresentation7 = [(ATXPBSendMessagesToDigestSuggestion *)sendMessagesToDigest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"sendMessagesToDigest"];
  }

  turnOffNotificationsForApp = self->_turnOffNotificationsForApp;
  if (turnOffNotificationsForApp)
  {
    dictionaryRepresentation8 = [(ATXPBTurnOffNotificationsForAppSuggestion *)turnOffNotificationsForApp dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"turnOffNotificationsForApp"];
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

    [dictionary setObject:v21 forKey:@"OneofNotificationDeliverySuggestion"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if (has)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
    [dictionary setObject:v24 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithInt:self->_scope];
    [dictionary setObject:v25 forKey:@"scope"];
  }

  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier)
  {
    [dictionary setObject:entityIdentifier forKey:@"entityIdentifier"];
  }

  triggerNotificationUUID = self->_triggerNotificationUUID;
  if (triggerNotificationUUID)
  {
    [dictionary setObject:triggerNotificationUUID forKey:@"triggerNotificationUUID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_entityIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_triggerNotificationUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_smartPause)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_quieting)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_promoting)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_interruptionManagerTuning)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_sendToDigest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_urgencyTuning)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_sendMessagesToDigest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_turnOffNotificationsForApp)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[8] = self->_oneofNotificationDeliverySuggestion;
    *(toCopy + 120) |= 2u;
  }

  v6 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 120) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[14] = self->_scope;
    *(toCopy + 120) |= 4u;
  }

  if (self->_entityIdentifier)
  {
    [v6 setEntityIdentifier:?];
    toCopy = v6;
  }

  if (self->_triggerNotificationUUID)
  {
    [v6 setTriggerNotificationUUID:?];
    toCopy = v6;
  }

  if (self->_smartPause)
  {
    [v6 setSmartPause:?];
    toCopy = v6;
  }

  if (self->_quieting)
  {
    [v6 setQuieting:?];
    toCopy = v6;
  }

  if (self->_promoting)
  {
    [v6 setPromoting:?];
    toCopy = v6;
  }

  if (self->_interruptionManagerTuning)
  {
    [v6 setInterruptionManagerTuning:?];
    toCopy = v6;
  }

  if (self->_sendToDigest)
  {
    [v6 setSendToDigest:?];
    toCopy = v6;
  }

  if (self->_urgencyTuning)
  {
    [v6 setUrgencyTuning:?];
    toCopy = v6;
  }

  if (self->_sendMessagesToDigest)
  {
    [v6 setSendMessagesToDigest:?];
    toCopy = v6;
  }

  if (self->_turnOffNotificationsForApp)
  {
    [v6 setTurnOffNotificationsForApp:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_oneofNotificationDeliverySuggestion;
    *(v5 + 120) |= 2u;
  }

  v7 = [(NSString *)self->_uuid copyWithZone:zone];
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

  v10 = [(NSString *)self->_entityIdentifier copyWithZone:zone];
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  v12 = [(NSString *)self->_triggerNotificationUUID copyWithZone:zone];
  v13 = *(v6 + 88);
  *(v6 + 88) = v12;

  v14 = [(ATXPBNotificationSmartPauseSuggestion *)self->_smartPause copyWithZone:zone];
  v15 = *(v6 + 80);
  *(v6 + 80) = v14;

  v16 = [(ATXPBNotificationQuietingSuggestion *)self->_quieting copyWithZone:zone];
  v17 = *(v6 + 48);
  *(v6 + 48) = v16;

  v18 = [(ATXPBNotificationPromotingSuggestion *)self->_promoting copyWithZone:zone];
  v19 = *(v6 + 40);
  *(v6 + 40) = v18;

  v20 = [(ATXPBInterruptionManagerTuningSuggestion *)self->_interruptionManagerTuning copyWithZone:zone];
  v21 = *(v6 + 24);
  *(v6 + 24) = v20;

  v22 = [(ATXPBSendToDigestSuggestion *)self->_sendToDigest copyWithZone:zone];
  v23 = *(v6 + 72);
  *(v6 + 72) = v22;

  v24 = [(ATXPBUrgencyTuningSuggestion *)self->_urgencyTuning copyWithZone:zone];
  v25 = *(v6 + 104);
  *(v6 + 104) = v24;

  v26 = [(ATXPBSendMessagesToDigestSuggestion *)self->_sendMessagesToDigest copyWithZone:zone];
  v27 = *(v6 + 64);
  *(v6 + 64) = v26;

  v28 = [(ATXPBTurnOffNotificationsForAppSuggestion *)self->_turnOffNotificationsForApp copyWithZone:zone];
  v29 = *(v6 + 96);
  *(v6 + 96) = v28;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 120) & 2) == 0 || self->_oneofNotificationDeliverySuggestion != *(equalCopy + 8))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 120) & 2) != 0)
  {
    goto LABEL_40;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 14))
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
    if ((*(equalCopy + 120) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_40;
    }
  }

  else if (*(equalCopy + 120))
  {
    goto LABEL_40;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 120) & 4) == 0 || self->_scope != *(equalCopy + 14))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 120) & 4) != 0)
  {
    goto LABEL_40;
  }

  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier | *(equalCopy + 2) && ![(NSString *)entityIdentifier isEqual:?])
  {
    goto LABEL_40;
  }

  triggerNotificationUUID = self->_triggerNotificationUUID;
  if (triggerNotificationUUID | *(equalCopy + 11))
  {
    if (![(NSString *)triggerNotificationUUID isEqual:?])
    {
      goto LABEL_40;
    }
  }

  smartPause = self->_smartPause;
  if (smartPause | *(equalCopy + 10))
  {
    if (![(ATXPBNotificationSmartPauseSuggestion *)smartPause isEqual:?])
    {
      goto LABEL_40;
    }
  }

  quieting = self->_quieting;
  if (quieting | *(equalCopy + 6))
  {
    if (![(ATXPBNotificationQuietingSuggestion *)quieting isEqual:?])
    {
      goto LABEL_40;
    }
  }

  promoting = self->_promoting;
  if (promoting | *(equalCopy + 5))
  {
    if (![(ATXPBNotificationPromotingSuggestion *)promoting isEqual:?])
    {
      goto LABEL_40;
    }
  }

  interruptionManagerTuning = self->_interruptionManagerTuning;
  if (interruptionManagerTuning | *(equalCopy + 3))
  {
    if (![(ATXPBInterruptionManagerTuningSuggestion *)interruptionManagerTuning isEqual:?])
    {
      goto LABEL_40;
    }
  }

  sendToDigest = self->_sendToDigest;
  if (sendToDigest | *(equalCopy + 9))
  {
    if (![(ATXPBSendToDigestSuggestion *)sendToDigest isEqual:?])
    {
      goto LABEL_40;
    }
  }

  urgencyTuning = self->_urgencyTuning;
  if (urgencyTuning | *(equalCopy + 13))
  {
    if (![(ATXPBUrgencyTuningSuggestion *)urgencyTuning isEqual:?])
    {
      goto LABEL_40;
    }
  }

  sendMessagesToDigest = self->_sendMessagesToDigest;
  if (sendMessagesToDigest | *(equalCopy + 8))
  {
    if (![(ATXPBSendMessagesToDigestSuggestion *)sendMessagesToDigest isEqual:?])
    {
      goto LABEL_40;
    }
  }

  turnOffNotificationsForApp = self->_turnOffNotificationsForApp;
  if (turnOffNotificationsForApp | *(equalCopy + 12))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[30] & 2) != 0)
  {
    self->_oneofNotificationDeliverySuggestion = fromCopy[8];
    *&self->_has |= 2u;
  }

  v23 = fromCopy;
  if (*(fromCopy + 14))
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
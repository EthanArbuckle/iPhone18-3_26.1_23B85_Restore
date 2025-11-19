@interface ATXTimelineRelevancePBTimelineRelevanceRotation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsClientModelId:(id)a3;
- (int)StringAsEngagement:(id)a3;
- (int)StringAsRotationEventType:(id)a3;
- (int)clientModelId;
- (int)engagement;
- (int)rotationEventType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasClientModelId:(BOOL)a3;
- (void)setHasEngagement:(BOOL)a3;
- (void)setHasIsMediumOrHighConfidence:(BOOL)a3;
- (void)setHasRotationEventType:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXTimelineRelevancePBTimelineRelevanceRotation

- (void)setHasTimestamp:(BOOL)a3
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

- (int)rotationEventType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_rotationEventType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRotationEventType:(BOOL)a3
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

- (int)StringAsRotationEventType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"EventTypeSystemSuggest"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"EventTypeUserScroll"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EventTypeSystemFallback"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"EventTypeSystemUpdate"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"EventTypeStackCreated"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"EventTypeStackDestroyed"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"EventTypeWidgetsAdded"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"EventTypeTopWidgetRemoved"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"EventTypeUnknown"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsMediumOrHighConfidence:(BOOL)a3
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

- (int)clientModelId
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_clientModelId;
  }

  else
  {
    return 0;
  }
}

- (void)setHasClientModelId:(BOOL)a3
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

- (int)StringAsClientModelId:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TimelineRelevance"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Other"];
  }

  return v4;
}

- (int)engagement
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_engagement;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEngagement:(BOOL)a3
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

- (int)StringAsEngagement:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NotSeen"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Shown"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UserRotate"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Dwell"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Tapped"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXTimelineRelevancePBTimelineRelevanceRotation;
  v4 = [(ATXTimelineRelevancePBTimelineRelevanceRotation *)&v8 description];
  v5 = [(ATXTimelineRelevancePBTimelineRelevanceRotation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  rotationEventType = self->_rotationEventType;
  if (rotationEventType >= 9)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rotationEventType];
  }

  else
  {
    v7 = off_27859E578[rotationEventType];
  }

  [v3 setObject:v7 forKey:@"rotationEventType"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMediumOrHighConfidence];
  [v3 setObject:v8 forKey:@"isMediumOrHighConfidence"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_duration];
    [v3 setObject:v11 forKey:@"duration"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_25;
    }

LABEL_21:
    engagement = self->_engagement;
    if (engagement >= 6)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_engagement];
    }

    else
    {
      v13 = off_27859E5C0[engagement];
    }

    [v3 setObject:v13 forKey:@"engagement"];

    goto LABEL_25;
  }

LABEL_14:
  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    if (clientModelId == 1)
    {
      v10 = @"Other";
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_clientModelId];
    }
  }

  else
  {
    v10 = @"TimelineRelevance";
  }

  [v3 setObject:v10 forKey:@"clientModelId"];

  has = self->_has;
  if (has)
  {
    goto LABEL_20;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_25:

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  rotationEventType = self->_rotationEventType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  isMediumOrHighConfidence = self->_isMediumOrHighConfidence;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  clientModelId = self->_clientModelId;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  duration = self->_duration;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    engagement = self->_engagement;
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 40) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 8) = self->_rotationEventType;
  *(v4 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v4 + 36) = self->_isMediumOrHighConfidence;
  *(v4 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 6) = self->_clientModelId;
  *(v4 + 40) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v4[1] = self->_duration;
  *(v4 + 40) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(v4 + 7) = self->_engagement;
    *(v4 + 40) |= 8u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 40) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_rotationEventType;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 36) = self->_isMediumOrHighConfidence;
  *(result + 40) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 6) = self->_clientModelId;
  *(result + 40) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 1) = self->_duration;
  *(result + 40) |= 1u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 7) = self->_engagement;
  *(result + 40) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 40) & 0x10) == 0 || self->_rotationEventType != *(v4 + 8))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 40) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(v4 + 40) & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_34:
    v6 = 0;
    goto LABEL_35;
  }

  if ((*(v4 + 40) & 0x20) == 0)
  {
    goto LABEL_34;
  }

  v5 = *(v4 + 36);
  if (self->_isMediumOrHighConfidence)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_34;
  }

LABEL_14:
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_clientModelId != *(v4 + 6))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_duration != *(v4 + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_34;
  }

  v6 = (*(v4 + 40) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_engagement != *(v4 + 7))
    {
      goto LABEL_34;
    }

    v6 = 1;
  }

LABEL_35:

  return v6;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_rotationEventType;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_isMediumOrHighConfidence;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_clientModelId;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_duration;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_engagement;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 40) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_rotationEventType = *(v4 + 8);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_isMediumOrHighConfidence = *(v4 + 36);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_clientModelId = *(v4 + 6);
  *&self->_has |= 4u;
  v5 = *(v4 + 40);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_duration = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 40) & 8) != 0)
  {
LABEL_7:
    self->_engagement = *(v4 + 7);
    *&self->_has |= 8u;
  }

LABEL_8:
}

@end
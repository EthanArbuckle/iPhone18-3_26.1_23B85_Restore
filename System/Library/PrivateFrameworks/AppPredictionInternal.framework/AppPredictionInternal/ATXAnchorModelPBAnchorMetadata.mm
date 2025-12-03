@interface ATXAnchorModelPBAnchorMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAnchorEventType:(id)type;
- (int)StringAsAnchorType:(id)type;
- (int)StringAsDayOfWeek:(id)week;
- (int)StringAsLocationType:(id)type;
- (int)anchorEventType;
- (int)anchorType;
- (int)dayOfWeek;
- (int)locationType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAnchorType:(BOOL)type;
- (void)setHasDayOfMonth:(BOOL)month;
- (void)setHasDayOfWeek:(BOOL)week;
- (void)setHasHourOfDay:(BOOL)day;
- (void)setHasLocationType:(BOOL)type;
- (void)setHasMonth:(BOOL)month;
- (void)writeTo:(id)to;
@end

@implementation ATXAnchorModelPBAnchorMetadata

- (int)anchorType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_anchorType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAnchorType:(BOOL)type
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

- (int)StringAsAnchorType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ANCHOR_TYPE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_BLUETOOTH_CONNECTED"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_BLUETOOTH_DISCONNECTED"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_IDLE_TIME_BEGIN"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_IDLE_TIME_END"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_CARPLAY_CONNECTED"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_CARPLAY_DISCONNECTED"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_LOI_ENTRANCE"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_LOI_EXIT"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_WORKOUT_START"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_WORKOUT_END"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_HEADING_HOME"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_HEADING_TO_WORK"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_FIRST_CALENDAR_EVENT_OF_DAY"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_LAST_CALENDAR_EVENT_OF_DAY"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_UPCOMING_SEMANTIC_EVENT"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_WIRED_AUDIO_DEVICE_CONNECTED"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_TYPE_WIRED_AUDIO_DEVICE_DISCONNECTED"])
  {
    v4 = 17;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)anchorEventType
{
  if (*&self->_has)
  {
    return self->_anchorEventType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAnchorEventType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_BLUETOOTH_DEVICE_OTHER"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_BLUETOOTH_DEVICE_IMAGING"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_BLUETOOTH_DEVICE_AUDIO"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_BLUETOOTH_DEVICE_VEHICLE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_LOI_UNKNOWN"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_LOI_HOME"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_LOI_WORK"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_LOI_GYM"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_CALENDAR_EVENT_IS_ORGANIZER"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_CALENDAR_EVENT_IS_NOT_ORGANIZER"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_UPCOMING_SEMANTIC_EVENT_FLIGHT"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_UPCOMING_SEMANTIC_EVENT_BUS"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_UPCOMING_SEMANTIC_EVENT_TRAIN"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_UPCOMING_SEMANTIC_EVENT_HOTEL"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_UPCOMING_SEMANTIC_EVENT_CAR"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_UPCOMING_SEMANTIC_EVENT_TICKET"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_UPCOMING_SEMANTIC_EVENT_MOVIE"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_UPCOMING_SEMANTIC_EVENT_FOOD"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_UPCOMING_SEMANTIC_EVENT_SOCIAL"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_UPCOMING_SEMANTIC_EVENT_OTHER"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_WORKOUT_WALKING"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_WORKOUT_RUNNING"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_WORKOUT_CYCLING"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_WORKOUT_ELLIPTICAL"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_WORKOUT_STEPPER"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_WORKOUT_ROWING"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_WORKOUT_WHEELCHAIR_WALK_PACE"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_WORKOUT_WHEELCHAIR_RUN_PACE"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_WORKOUT_HIIT"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_WORKOUT_HIKING"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_WORKOUT_YOGA"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_EVENT_TYPE_WORKOUT_OTHER"])
  {
    v4 = 32;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMonth:(BOOL)month
{
  if (month)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasDayOfMonth:(BOOL)month
{
  if (month)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHourOfDay:(BOOL)day
{
  if (day)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)dayOfWeek
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_dayOfWeek;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDayOfWeek:(BOOL)week
{
  if (week)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsDayOfWeek:(id)week
{
  weekCopy = week;
  if ([weekCopy isEqualToString:@"ANCHOR_DAY_OF_WEEK_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([weekCopy isEqualToString:@"ANCHOR_DAY_OF_WEEK_SUNDAY"])
  {
    v4 = 1;
  }

  else if ([weekCopy isEqualToString:@"ANCHOR_DAY_OF_WEEK_MONDAY"])
  {
    v4 = 2;
  }

  else if ([weekCopy isEqualToString:@"ANCHOR_DAY_OF_WEEK_TUESDAY"])
  {
    v4 = 3;
  }

  else if ([weekCopy isEqualToString:@"ANCHOR_DAY_OF_WEEK_WEDNESDAY"])
  {
    v4 = 4;
  }

  else if ([weekCopy isEqualToString:@"ANCHOR_DAY_OF_WEEK_THURSDAY"])
  {
    v4 = 5;
  }

  else if ([weekCopy isEqualToString:@"ANCHOR_DAY_OF_WEEK_FRIDAY"])
  {
    v4 = 6;
  }

  else if ([weekCopy isEqualToString:@"ANCHOR_DAY_OF_WEEK_SATURDAY"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)locationType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_locationType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLocationType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsLocationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ANCHOR_LOCATION_TYPE_OTHER"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_LOCATION_TYPE_HOME"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_LOCATION_TYPE_WORK"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ANCHOR_LOCATION_TYPE_GYM"])
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXAnchorModelPBAnchorMetadata;
  v4 = [(ATXAnchorModelPBAnchorMetadata *)&v8 description];
  dictionaryRepresentation = [(ATXAnchorModelPBAnchorMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    anchorType = self->_anchorType;
    if (anchorType >= 0x12)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_anchorType];
    }

    else
    {
      v5 = off_27859EC08[anchorType];
    }

    [dictionary setObject:v5 forKey:@"anchorType"];
  }

  anchorEventIdentifier = self->_anchorEventIdentifier;
  if (anchorEventIdentifier)
  {
    [dictionary setObject:anchorEventIdentifier forKey:@"anchorEventIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    anchorEventType = self->_anchorEventType;
    if (anchorEventType >= 0x21)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_anchorEventType];
    }

    else
    {
      v9 = off_27859EC98[anchorEventType];
    }

    [dictionary setObject:v9 forKey:@"anchorEventType"];

    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_month];
    [dictionary setObject:v10 forKey:@"month"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_15:
      if ((has & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_15;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dayOfMonth];
  [dictionary setObject:v11 forKey:@"dayOfMonth"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hourOfDay];
  [dictionary setObject:v12 forKey:@"hourOfDay"];

  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  dayOfWeek = self->_dayOfWeek;
  if (dayOfWeek >= 8)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_dayOfWeek];
  }

  else
  {
    v14 = off_27859EDA0[dayOfWeek];
  }

  [dictionary setObject:v14 forKey:@"dayOfWeek"];

LABEL_25:
  locationIdentifier = self->_locationIdentifier;
  if (locationIdentifier)
  {
    [dictionary setObject:locationIdentifier forKey:@"locationIdentifier"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    locationType = self->_locationType;
    if (locationType >= 4)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_locationType];
    }

    else
    {
      v17 = off_27859EDE0[locationType];
    }

    [dictionary setObject:v17 forKey:@"locationType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    anchorType = self->_anchorType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_anchorEventIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    anchorEventType = self->_anchorEventType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  month = self->_month;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  dayOfMonth = self->_dayOfMonth;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  hourOfDay = self->_hourOfDay;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    dayOfWeek = self->_dayOfWeek;
    PBDataWriterWriteInt32Field();
  }

LABEL_11:
  if (self->_locationIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    locationType = self->_locationType;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[5] = self->_anchorType;
    *(toCopy + 56) |= 2u;
  }

  v6 = toCopy;
  if (self->_anchorEventIdentifier)
  {
    [toCopy setAnchorEventIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    toCopy[4] = self->_anchorEventType;
    *(toCopy + 56) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  toCopy[13] = self->_month;
  *(toCopy + 56) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[6] = self->_dayOfMonth;
  *(toCopy + 56) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  toCopy[8] = self->_hourOfDay;
  *(toCopy + 56) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    toCopy[7] = self->_dayOfWeek;
    *(toCopy + 56) |= 8u;
  }

LABEL_11:
  if (self->_locationIdentifier)
  {
    [v6 setLocationIdentifier:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    toCopy[12] = self->_locationType;
    *(toCopy + 56) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_anchorType;
    *(v5 + 56) |= 2u;
  }

  v7 = [(NSString *)self->_anchorEventIdentifier copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  has = self->_has;
  if (has)
  {
    *(v6 + 16) = self->_anchorEventType;
    *(v6 + 56) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 52) = self->_month;
  *(v6 + 56) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v6 + 24) = self->_dayOfMonth;
  *(v6 + 56) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(v6 + 32) = self->_hourOfDay;
  *(v6 + 56) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(v6 + 28) = self->_dayOfWeek;
    *(v6 + 56) |= 8u;
  }

LABEL_9:
  v10 = [(NSString *)self->_locationIdentifier copyWithZone:zone];
  v11 = *(v6 + 40);
  *(v6 + 40) = v10;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 48) = self->_locationType;
    *(v6 + 56) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v6 = *(equalCopy + 56);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_anchorType != *(equalCopy + 5))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_42;
  }

  anchorEventIdentifier = self->_anchorEventIdentifier;
  if (anchorEventIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)anchorEventIdentifier isEqual:?])
    {
      goto LABEL_42;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 56);
  if (has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_anchorEventType != *(equalCopy + 4))
    {
      goto LABEL_42;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_42;
  }

  if ((has & 0x40) != 0)
  {
    if ((*(equalCopy + 56) & 0x40) == 0 || self->_month != *(equalCopy + 13))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 56) & 0x40) != 0)
  {
    goto LABEL_42;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_dayOfMonth != *(equalCopy + 6))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_42;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 56) & 0x10) == 0 || self->_hourOfDay != *(equalCopy + 8))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 56) & 0x10) != 0)
  {
    goto LABEL_42;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_dayOfWeek != *(equalCopy + 7))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 56) & 8) != 0)
  {
    goto LABEL_42;
  }

  locationIdentifier = self->_locationIdentifier;
  if (locationIdentifier | *(equalCopy + 5))
  {
    if ([(NSString *)locationIdentifier isEqual:?])
    {
      has = self->_has;
      goto LABEL_38;
    }

LABEL_42:
    v10 = 0;
    goto LABEL_43;
  }

LABEL_38:
  v10 = (*(equalCopy + 56) & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 56) & 0x20) == 0 || self->_locationType != *(equalCopy + 12))
    {
      goto LABEL_42;
    }

    v10 = 1;
  }

LABEL_43:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_anchorType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_anchorEventIdentifier hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_anchorEventType;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_month;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_dayOfMonth;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = 2654435761 * self->_hourOfDay;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    v9 = 2654435761 * self->_dayOfWeek;
    goto LABEL_15;
  }

LABEL_14:
  v9 = 0;
LABEL_15:
  v10 = [(NSString *)self->_locationIdentifier hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v11 = 2654435761 * self->_locationType;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[14] & 2) != 0)
  {
    self->_anchorType = fromCopy[5];
    *&self->_has |= 2u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(ATXAnchorModelPBAnchorMetadata *)self setAnchorEventIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 56);
  if (v5)
  {
    self->_anchorEventType = fromCopy[4];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 56);
    if ((v5 & 0x40) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((fromCopy[14] & 0x40) == 0)
  {
    goto LABEL_7;
  }

  self->_month = fromCopy[13];
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 56);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_dayOfMonth = fromCopy[6];
  *&self->_has |= 4u;
  v5 = *(fromCopy + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  self->_hourOfDay = fromCopy[8];
  *&self->_has |= 0x10u;
  if ((fromCopy[14] & 8) != 0)
  {
LABEL_10:
    self->_dayOfWeek = fromCopy[7];
    *&self->_has |= 8u;
  }

LABEL_11:
  if (*(fromCopy + 5))
  {
    [(ATXAnchorModelPBAnchorMetadata *)self setLocationIdentifier:?];
    fromCopy = v6;
  }

  if ((fromCopy[14] & 0x20) != 0)
  {
    self->_locationType = fromCopy[12];
    *&self->_has |= 0x20u;
  }
}

@end
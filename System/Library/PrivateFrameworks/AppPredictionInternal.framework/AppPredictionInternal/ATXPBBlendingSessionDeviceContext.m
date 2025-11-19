@interface ATXPBBlendingSessionDeviceContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCurrentLOIType:(id)a3;
- (int)currentLOIType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCurrentLOIType:(BOOL)a3;
- (void)setHasDateInWeekend:(BOOL)a3;
- (void)setHasDayOfWeek:(BOOL)a3;
- (void)setHasLastUnlockMoreThan1HourAgo:(BOOL)a3;
- (void)setHasLastUnlockMoreThan30MinutesAgo:(BOOL)a3;
- (void)setHasTimeOfDay:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBBlendingSessionDeviceContext

- (void)setHasTimeOfDay:(BOOL)a3
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

- (void)setHasDayOfWeek:(BOOL)a3
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

- (void)setHasDateInWeekend:(BOOL)a3
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

- (void)setHasLastUnlockMoreThan30MinutesAgo:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasLastUnlockMoreThan1HourAgo:(BOOL)a3
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

- (int)currentLOIType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_currentLOIType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCurrentLOIType:(BOOL)a3
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

- (int)StringAsCurrentLOIType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Other"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Home"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Work"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Gym"])
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
  v8.super_class = ATXPBBlendingSessionDeviceContext;
  v4 = [(ATXPBBlendingSessionDeviceContext *)&v8 description];
  v5 = [(ATXPBBlendingSessionDeviceContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_timeOfDay];
    [v3 setObject:v7 forKey:@"timeOfDay"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dayOfWeek];
  [v3 setObject:v8 forKey:@"dayOfWeek"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_dateInWeekend];
  [v3 setObject:v9 forKey:@"dateInWeekend"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastUnlockMoreThan30MinutesAgo];
  [v3 setObject:v10 forKey:@"lastUnlockMoreThan30MinutesAgo"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastUnlockMoreThan1HourAgo];
  [v3 setObject:v11 forKey:@"lastUnlockMoreThan1HourAgo"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  currentLOIType = self->_currentLOIType;
  if (currentLOIType >= 4)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_currentLOIType];
  }

  else
  {
    v13 = off_278597E98[currentLOIType];
  }

  [v3 setObject:v13 forKey:@"currentLOIType"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_secondsBeforeBlendingUpdate];
  [v3 setObject:v5 forKey:@"secondsBeforeBlendingUpdate"];

LABEL_9:

  return v3;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    timeOfDay = self->_timeOfDay;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  dayOfWeek = self->_dayOfWeek;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  dateInWeekend = self->_dateInWeekend;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  lastUnlockMoreThan30MinutesAgo = self->_lastUnlockMoreThan30MinutesAgo;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  lastUnlockMoreThan1HourAgo = self->_lastUnlockMoreThan1HourAgo;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  currentLOIType = self->_currentLOIType;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_8:
    secondsBeforeBlendingUpdate = self->_secondsBeforeBlendingUpdate;
    PBDataWriterWriteDoubleField();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[6] = self->_timeOfDay;
    *(v4 + 32) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[5] = self->_dayOfWeek;
  *(v4 + 32) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 28) = self->_dateInWeekend;
  *(v4 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v4 + 30) = self->_lastUnlockMoreThan30MinutesAgo;
  *(v4 + 32) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 29) = self->_lastUnlockMoreThan1HourAgo;
  *(v4 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v4[4] = self->_currentLOIType;
  *(v4 + 32) |= 2u;
  if (*&self->_has)
  {
LABEL_8:
    *(v4 + 1) = *&self->_secondsBeforeBlendingUpdate;
    *(v4 + 32) |= 1u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 6) = self->_timeOfDay;
    *(result + 32) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_dayOfWeek;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 28) = self->_dateInWeekend;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 30) = self->_lastUnlockMoreThan30MinutesAgo;
  *(result + 32) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 29) = self->_lastUnlockMoreThan1HourAgo;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 4) = self->_currentLOIType;
  *(result + 32) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 1) = *&self->_secondsBeforeBlendingUpdate;
  *(result + 32) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0 || self->_timeOfDay != *(v4 + 6))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 32) & 8) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_dayOfWeek != *(v4 + 5))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 32) & 0x10) == 0)
    {
      goto LABEL_44;
    }

    v5 = *(v4 + 28);
    if (self->_dateInWeekend)
    {
      if ((*(v4 + 28) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (*(v4 + 28))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 32) & 0x10) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 32) & 0x40) == 0)
    {
      goto LABEL_44;
    }

    v6 = *(v4 + 30);
    if (self->_lastUnlockMoreThan30MinutesAgo)
    {
      if ((*(v4 + 30) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (*(v4 + 30))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 32) & 0x40) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(v4 + 32) & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_44:
    v8 = 0;
    goto LABEL_45;
  }

  if ((*(v4 + 32) & 0x20) == 0)
  {
    goto LABEL_44;
  }

  v7 = *(v4 + 29);
  if (self->_lastUnlockMoreThan1HourAgo)
  {
    if ((*(v4 + 29) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (*(v4 + 29))
  {
    goto LABEL_44;
  }

LABEL_18:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_currentLOIType != *(v4 + 4))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_44;
  }

  v8 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_secondsBeforeBlendingUpdate != *(v4 + 1))
    {
      goto LABEL_44;
    }

    v8 = 1;
  }

LABEL_45:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v4 = 2654435761 * self->_timeOfDay;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_dayOfWeek;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_dateInWeekend;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_lastUnlockMoreThan30MinutesAgo;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_lastUnlockMoreThan1HourAgo;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_17:
    v9 = 0;
    if (*&self->_has)
    {
      goto LABEL_8;
    }

LABEL_18:
    v13 = 0;
    return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v13;
  }

LABEL_16:
  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  v9 = 2654435761 * self->_currentLOIType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  secondsBeforeBlendingUpdate = self->_secondsBeforeBlendingUpdate;
  if (secondsBeforeBlendingUpdate < 0.0)
  {
    secondsBeforeBlendingUpdate = -secondsBeforeBlendingUpdate;
  }

  *v2.i64 = floor(secondsBeforeBlendingUpdate + 0.5);
  v11 = (secondsBeforeBlendingUpdate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 8) != 0)
  {
    self->_timeOfDay = *(v4 + 6);
    *&self->_has |= 8u;
    v5 = *(v4 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_dayOfWeek = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_dateInWeekend = *(v4 + 28);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_lastUnlockMoreThan30MinutesAgo = *(v4 + 30);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_lastUnlockMoreThan1HourAgo = *(v4 + 29);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 32);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_currentLOIType = *(v4 + 4);
  *&self->_has |= 2u;
  if (*(v4 + 32))
  {
LABEL_8:
    self->_secondsBeforeBlendingUpdate = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_9:
}

@end
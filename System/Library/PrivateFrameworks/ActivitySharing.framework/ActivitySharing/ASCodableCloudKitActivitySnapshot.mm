@interface ASCodableCloudKitActivitySnapshot
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActiveHoursGoal:(BOOL)goal;
- (void)setHasAmm:(BOOL)amm;
- (void)setHasBriskMinutes:(BOOL)minutes;
- (void)setHasBriskMinutesGoal:(BOOL)goal;
- (void)setHasEnergyBurned:(BOOL)burned;
- (void)setHasEnergyBurnedGoal:(BOOL)goal;
- (void)setHasMmg:(BOOL)mmg;
- (void)setHasMmv:(BOOL)mmv;
- (void)setHasPushCount:(BOOL)count;
- (void)setHasSnapshotIndex:(BOOL)index;
- (void)setHasStepCount:(BOOL)count;
- (void)setHasTimeZoneOffsetFromUTCForNoon:(BOOL)noon;
- (void)setHasWalkingAndRunningDistance:(BOOL)distance;
- (void)setHasWheelchairUse:(BOOL)use;
- (void)writeTo:(id)to;
@end

@implementation ASCodableCloudKitActivitySnapshot

- (void)setHasSnapshotIndex:(BOOL)index
{
  if (index)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasTimeZoneOffsetFromUTCForNoon:(BOOL)noon
{
  if (noon)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasEnergyBurned:(BOOL)burned
{
  if (burned)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasEnergyBurnedGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasBriskMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasBriskMinutesGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasActiveHoursGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasWalkingAndRunningDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasStepCount:(BOOL)count
{
  if (count)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasPushCount:(BOOL)count
{
  if (count)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasWheelchairUse:(BOOL)use
{
  if (use)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasMmv:(BOOL)mmv
{
  if (mmv)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasMmg:(BOOL)mmg
{
  if (mmg)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasAmm:(BOOL)amm
{
  if (amm)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableCloudKitActivitySnapshot;
  v4 = [(ASCodableCloudKitActivitySnapshot *)&v8 description];
  dictionaryRepresentation = [(ASCodableCloudKitActivitySnapshot *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(ASCodableCloudKitSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
  }

  sourceUUID = self->_sourceUUID;
  if (sourceUUID)
  {
    [dictionary setObject:sourceUUID forKey:@"sourceUUID"];
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_snapshotIndex];
    [dictionary setObject:v10 forKey:@"snapshotIndex"];

    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timeZoneOffsetFromUTCForNoon];
  [dictionary setObject:v11 forKey:@"timeZoneOffsetFromUTCForNoon"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_energyBurned];
  [dictionary setObject:v12 forKey:@"energyBurned"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_energyBurnedGoal];
  [dictionary setObject:v13 forKey:@"energyBurnedGoal"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_briskMinutes];
  [dictionary setObject:v14 forKey:@"briskMinutes"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_briskMinutesGoal];
  [dictionary setObject:v15 forKey:@"briskMinutesGoal"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_activeHours];
  [dictionary setObject:v16 forKey:@"activeHours"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_activeHoursGoal];
  [dictionary setObject:v17 forKey:@"activeHoursGoal"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_walkingAndRunningDistance];
  [dictionary setObject:v18 forKey:@"walkingAndRunningDistance"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_15:
    if ((has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_stepCount];
  [dictionary setObject:v19 forKey:@"stepCount"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_16:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pushCount];
  [dictionary setObject:v20 forKey:@"pushCount"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_17:
    if ((has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_wheelchairUse];
  [dictionary setObject:v21 forKey:@"wheelchairUse"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_18:
    if ((has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mmv];
  [dictionary setObject:v22 forKey:@"mmv"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_19:
    if ((has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_37:
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mmg];
  [dictionary setObject:v23 forKey:@"mmg"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_20:
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_amm];
    [dictionary setObject:v8 forKey:@"amm"];
  }

LABEL_21:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v21 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v21;
  }

  if (self->_sourceUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v21;
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    snapshotIndex = self->_snapshotIndex;
    PBDataWriterWriteInt64Field();
    toCopy = v21;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  timeZoneOffsetFromUTCForNoon = self->_timeZoneOffsetFromUTCForNoon;
  PBDataWriterWriteInt64Field();
  toCopy = v21;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  energyBurned = self->_energyBurned;
  PBDataWriterWriteDoubleField();
  toCopy = v21;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  energyBurnedGoal = self->_energyBurnedGoal;
  PBDataWriterWriteDoubleField();
  toCopy = v21;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  briskMinutes = self->_briskMinutes;
  PBDataWriterWriteDoubleField();
  toCopy = v21;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  briskMinutesGoal = self->_briskMinutesGoal;
  PBDataWriterWriteDoubleField();
  toCopy = v21;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  activeHours = self->_activeHours;
  PBDataWriterWriteDoubleField();
  toCopy = v21;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  activeHoursGoal = self->_activeHoursGoal;
  PBDataWriterWriteDoubleField();
  toCopy = v21;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  walkingAndRunningDistance = self->_walkingAndRunningDistance;
  PBDataWriterWriteDoubleField();
  toCopy = v21;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_15:
    if ((has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  stepCount = self->_stepCount;
  PBDataWriterWriteDoubleField();
  toCopy = v21;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_16:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  pushCount = self->_pushCount;
  PBDataWriterWriteDoubleField();
  toCopy = v21;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_17:
    if ((has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  wheelchairUse = self->_wheelchairUse;
  PBDataWriterWriteInt64Field();
  toCopy = v21;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_18:
    if ((has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  mmv = self->_mmv;
  PBDataWriterWriteDoubleField();
  toCopy = v21;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_19:
    if ((has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_37:
  mmg = self->_mmg;
  PBDataWriterWriteDoubleField();
  toCopy = v21;
  if ((*&self->_has & 4) != 0)
  {
LABEL_20:
    amm = self->_amm;
    PBDataWriterWriteInt64Field();
    toCopy = v21;
  }

LABEL_21:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v6;
  }

  if (self->_sourceUUID)
  {
    [v6 setSourceUUID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(toCopy + 11) = self->_snapshotIndex;
    *(toCopy + 72) |= 0x400u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 13) = self->_timeZoneOffsetFromUTCForNoon;
  *(toCopy + 72) |= 0x1000u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(toCopy + 6) = *&self->_energyBurned;
  *(toCopy + 72) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(toCopy + 7) = *&self->_energyBurnedGoal;
  *(toCopy + 72) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(toCopy + 4) = *&self->_briskMinutes;
  *(toCopy + 72) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(toCopy + 5) = *&self->_briskMinutesGoal;
  *(toCopy + 72) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(toCopy + 1) = *&self->_activeHours;
  *(toCopy + 72) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(toCopy + 2) = *&self->_activeHoursGoal;
  *(toCopy + 72) |= 2u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(toCopy + 14) = *&self->_walkingAndRunningDistance;
  *(toCopy + 72) |= 0x2000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_15:
    if ((has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(toCopy + 12) = *&self->_stepCount;
  *(toCopy + 72) |= 0x800u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_16:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 10) = *&self->_pushCount;
  *(toCopy + 72) |= 0x200u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_17:
    if ((has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 15) = self->_wheelchairUse;
  *(toCopy + 72) |= 0x4000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_18:
    if ((has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 9) = *&self->_mmv;
  *(toCopy + 72) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_19:
    if ((has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_37:
  *(toCopy + 8) = *&self->_mmg;
  *(toCopy + 72) |= 0x80u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_20:
    *(toCopy + 3) = self->_amm;
    *(toCopy + 72) |= 4u;
  }

LABEL_21:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ASCodableCloudKitSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 128);
  *(v5 + 128) = v6;

  v8 = [(NSData *)self->_sourceUUID copyWithZone:zone];
  v9 = *(v5 + 136);
  *(v5 + 136) = v8;

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(v5 + 88) = self->_snapshotIndex;
    *(v5 + 144) |= 0x400u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 104) = self->_timeZoneOffsetFromUTCForNoon;
  *(v5 + 144) |= 0x1000u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 48) = self->_energyBurned;
  *(v5 + 144) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 56) = self->_energyBurnedGoal;
  *(v5 + 144) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 32) = self->_briskMinutes;
  *(v5 + 144) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 40) = self->_briskMinutesGoal;
  *(v5 + 144) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 8) = self->_activeHours;
  *(v5 + 144) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 16) = self->_activeHoursGoal;
  *(v5 + 144) |= 2u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 112) = self->_walkingAndRunningDistance;
  *(v5 + 144) |= 0x2000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 96) = self->_stepCount;
  *(v5 + 144) |= 0x800u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 80) = self->_pushCount;
  *(v5 + 144) |= 0x200u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 120) = self->_wheelchairUse;
  *(v5 + 144) |= 0x4000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    *(v5 + 64) = self->_mmg;
    *(v5 + 144) |= 0x80u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_16;
  }

LABEL_30:
  *(v5 + 72) = self->_mmv;
  *(v5 + 144) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((has & 4) != 0)
  {
LABEL_16:
    *(v5 + 24) = self->_amm;
    *(v5 + 144) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_81;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 16))
  {
    if (![(ASCodableCloudKitSample *)sample isEqual:?])
    {
      goto LABEL_81;
    }
  }

  sourceUUID = self->_sourceUUID;
  if (sourceUUID | *(equalCopy + 17))
  {
    if (![(NSData *)sourceUUID isEqual:?])
    {
      goto LABEL_81;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 72);
  if ((has & 0x400) != 0)
  {
    if ((*(equalCopy + 72) & 0x400) == 0 || self->_snapshotIndex != *(equalCopy + 11))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 72) & 0x400) != 0)
  {
LABEL_81:
    v9 = 0;
    goto LABEL_82;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 72) & 0x1000) == 0 || self->_timeZoneOffsetFromUTCForNoon != *(equalCopy + 13))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 72) & 0x1000) != 0)
  {
    goto LABEL_81;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_energyBurned != *(equalCopy + 6))
    {
      goto LABEL_81;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_81;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_energyBurnedGoal != *(equalCopy + 7))
    {
      goto LABEL_81;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_81;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_briskMinutes != *(equalCopy + 4))
    {
      goto LABEL_81;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_81;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_briskMinutesGoal != *(equalCopy + 5))
    {
      goto LABEL_81;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_81;
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_activeHours != *(equalCopy + 1))
    {
      goto LABEL_81;
    }
  }

  else if (v8)
  {
    goto LABEL_81;
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_activeHoursGoal != *(equalCopy + 2))
    {
      goto LABEL_81;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 72) & 0x2000) == 0 || self->_walkingAndRunningDistance != *(equalCopy + 14))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 72) & 0x2000) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 72) & 0x800) == 0 || self->_stepCount != *(equalCopy + 12))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 72) & 0x800) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 72) & 0x200) == 0 || self->_pushCount != *(equalCopy + 10))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 72) & 0x200) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(equalCopy + 72) & 0x4000) == 0 || self->_wheelchairUse != *(equalCopy + 15))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 72) & 0x4000) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 72) & 0x100) == 0 || self->_mmv != *(equalCopy + 9))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 72) & 0x100) != 0)
  {
    goto LABEL_81;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_mmg != *(equalCopy + 8))
    {
      goto LABEL_81;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_81;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_amm != *(equalCopy + 3))
    {
      goto LABEL_81;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v8 & 4) == 0;
  }

LABEL_82:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(ASCodableCloudKitSample *)self->_sample hash];
  v4 = [(NSData *)self->_sourceUUID hash];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v8 = 2654435761 * self->_snapshotIndex;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v9 = 2654435761 * self->_timeZoneOffsetFromUTCForNoon;
  if ((has & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  energyBurned = self->_energyBurned;
  if (energyBurned < 0.0)
  {
    energyBurned = -energyBurned;
  }

  *v5.i64 = floor(energyBurned + 0.5);
  v11 = (energyBurned - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v5 = vbslq_s8(vnegq_f64(v12), v6, v5);
  v13 = 2654435761u * *v5.i64;
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

LABEL_11:
  if ((has & 0x40) != 0)
  {
    energyBurnedGoal = self->_energyBurnedGoal;
    if (energyBurnedGoal < 0.0)
    {
      energyBurnedGoal = -energyBurnedGoal;
    }

    *v5.i64 = floor(energyBurnedGoal + 0.5);
    v16 = (energyBurnedGoal - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v17), v6, v5);
    v14 = 2654435761u * *v5.i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((has & 8) != 0)
  {
    briskMinutes = self->_briskMinutes;
    if (briskMinutes < 0.0)
    {
      briskMinutes = -briskMinutes;
    }

    *v5.i64 = floor(briskMinutes + 0.5);
    v20 = (briskMinutes - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v21), v6, v5);
    v18 = 2654435761u * *v5.i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((has & 0x10) != 0)
  {
    briskMinutesGoal = self->_briskMinutesGoal;
    if (briskMinutesGoal < 0.0)
    {
      briskMinutesGoal = -briskMinutesGoal;
    }

    *v5.i64 = floor(briskMinutesGoal + 0.5);
    v24 = (briskMinutesGoal - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v25), v6, v5);
    v22 = 2654435761u * *v5.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabs(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if (has)
  {
    activeHours = self->_activeHours;
    if (activeHours < 0.0)
    {
      activeHours = -activeHours;
    }

    *v5.i64 = floor(activeHours + 0.5);
    v28 = (activeHours - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v29), v6, v5);
    v26 = 2654435761u * *v5.i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((has & 2) != 0)
  {
    activeHoursGoal = self->_activeHoursGoal;
    if (activeHoursGoal < 0.0)
    {
      activeHoursGoal = -activeHoursGoal;
    }

    *v5.i64 = floor(activeHoursGoal + 0.5);
    v32 = (activeHoursGoal - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v33), v6, v5);
    v30 = 2654435761u * *v5.i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabs(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    walkingAndRunningDistance = self->_walkingAndRunningDistance;
    if (walkingAndRunningDistance < 0.0)
    {
      walkingAndRunningDistance = -walkingAndRunningDistance;
    }

    *v5.i64 = floor(walkingAndRunningDistance + 0.5);
    v36 = (walkingAndRunningDistance - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v37), v6, v5);
    v34 = 2654435761u * *v5.i64;
    if (v36 >= 0.0)
    {
      if (v36 > 0.0)
      {
        v34 += v36;
      }
    }

    else
    {
      v34 -= fabs(v36);
    }
  }

  else
  {
    v34 = 0;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    stepCount = self->_stepCount;
    if (stepCount < 0.0)
    {
      stepCount = -stepCount;
    }

    *v5.i64 = floor(stepCount + 0.5);
    v40 = (stepCount - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v41.f64[0] = NAN;
    v41.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v41), v6, v5);
    v38 = 2654435761u * *v5.i64;
    if (v40 >= 0.0)
    {
      if (v40 > 0.0)
      {
        v38 += v40;
      }
    }

    else
    {
      v38 -= fabs(v40);
    }
  }

  else
  {
    v38 = 0;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    pushCount = self->_pushCount;
    if (pushCount < 0.0)
    {
      pushCount = -pushCount;
    }

    *v5.i64 = floor(pushCount + 0.5);
    v44 = (pushCount - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v45.f64[0] = NAN;
    v45.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v45), v6, v5);
    v42 = 2654435761u * *v5.i64;
    if (v44 >= 0.0)
    {
      if (v44 > 0.0)
      {
        v42 += v44;
      }
    }

    else
    {
      v42 -= fabs(v44);
    }
  }

  else
  {
    v42 = 0;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    v46 = 2654435761 * self->_wheelchairUse;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_79;
    }

LABEL_84:
    v50 = 0;
    goto LABEL_85;
  }

  v46 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_84;
  }

LABEL_79:
  mmv = self->_mmv;
  if (mmv < 0.0)
  {
    mmv = -mmv;
  }

  *v5.i64 = floor(mmv + 0.5);
  v48 = (mmv - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v49.f64[0] = NAN;
  v49.f64[1] = NAN;
  v5 = vbslq_s8(vnegq_f64(v49), v6, v5);
  v50 = 2654435761u * *v5.i64;
  if (v48 >= 0.0)
  {
    if (v48 > 0.0)
    {
      v50 += v48;
    }
  }

  else
  {
    v50 -= fabs(v48);
  }

LABEL_85:
  if ((has & 0x80) != 0)
  {
    mmg = self->_mmg;
    if (mmg < 0.0)
    {
      mmg = -mmg;
    }

    *v5.i64 = floor(mmg + 0.5);
    v53 = (mmg - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v54.f64[0] = NAN;
    v54.f64[1] = NAN;
    v51 = 2654435761u * *vbslq_s8(vnegq_f64(v54), v6, v5).i64;
    if (v53 >= 0.0)
    {
      if (v53 > 0.0)
      {
        v51 += v53;
      }
    }

    else
    {
      v51 -= fabs(v53);
    }
  }

  else
  {
    v51 = 0;
  }

  if ((has & 4) != 0)
  {
    v55 = 2654435761 * self->_amm;
  }

  else
  {
    v55 = 0;
  }

  return v4 ^ v3 ^ v8 ^ v9 ^ v13 ^ v14 ^ v18 ^ v22 ^ v26 ^ v30 ^ v34 ^ v38 ^ v42 ^ v46 ^ v50 ^ v51 ^ v55;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 16);
  v8 = fromCopy;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ASCodableCloudKitSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ASCodableCloudKitActivitySnapshot *)self setSample:?];
  }

  fromCopy = v8;
LABEL_7:
  if (*(fromCopy + 17))
  {
    [(ASCodableCloudKitActivitySnapshot *)self setSourceUUID:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 72);
  if ((v7 & 0x400) != 0)
  {
    self->_snapshotIndex = *(fromCopy + 11);
    *&self->_has |= 0x400u;
    v7 = *(fromCopy + 72);
    if ((v7 & 0x1000) == 0)
    {
LABEL_11:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_30;
    }
  }

  else if ((*(fromCopy + 72) & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  self->_timeZoneOffsetFromUTCForNoon = *(fromCopy + 13);
  *&self->_has |= 0x1000u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x20) == 0)
  {
LABEL_12:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_energyBurned = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x40) == 0)
  {
LABEL_13:
    if ((v7 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_energyBurnedGoal = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v7 = *(fromCopy + 72);
  if ((v7 & 8) == 0)
  {
LABEL_14:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_briskMinutes = *(fromCopy + 4);
  *&self->_has |= 8u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x10) == 0)
  {
LABEL_15:
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_briskMinutesGoal = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v7 = *(fromCopy + 72);
  if ((v7 & 1) == 0)
  {
LABEL_16:
    if ((v7 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_activeHours = *(fromCopy + 1);
  *&self->_has |= 1u;
  v7 = *(fromCopy + 72);
  if ((v7 & 2) == 0)
  {
LABEL_17:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_activeHoursGoal = *(fromCopy + 2);
  *&self->_has |= 2u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x2000) == 0)
  {
LABEL_18:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_walkingAndRunningDistance = *(fromCopy + 14);
  *&self->_has |= 0x2000u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x800) == 0)
  {
LABEL_19:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_stepCount = *(fromCopy + 12);
  *&self->_has |= 0x800u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x200) == 0)
  {
LABEL_20:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_pushCount = *(fromCopy + 10);
  *&self->_has |= 0x200u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x4000) == 0)
  {
LABEL_21:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_wheelchairUse = *(fromCopy + 15);
  *&self->_has |= 0x4000u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x100) == 0)
  {
LABEL_22:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_mmv = *(fromCopy + 9);
  *&self->_has |= 0x100u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x80) == 0)
  {
LABEL_23:
    if ((v7 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_41:
  self->_mmg = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 72) & 4) != 0)
  {
LABEL_24:
    self->_amm = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_25:

  MEMORY[0x2821F96F8]();
}

@end
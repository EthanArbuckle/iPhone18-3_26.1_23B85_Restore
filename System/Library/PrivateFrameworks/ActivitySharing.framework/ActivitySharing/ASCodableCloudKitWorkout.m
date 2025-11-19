@interface ASCodableCloudKitWorkout
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasGoalInCanonicalUnit:(BOOL)a3;
- (void)setHasGoalType:(BOOL)a3;
- (void)setHasIsIndoorWorkout:(BOOL)a3;
- (void)setHasIsWatchWorkout:(BOOL)a3;
- (void)setHasTotalBasalEnergyBurnedInCanonicalUnit:(BOOL)a3;
- (void)setHasTotalDistanceInCanonicalUnit:(BOOL)a3;
- (void)setHasTotalEnergyBurnedInCanonicalUnit:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableCloudKitWorkout

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTotalEnergyBurnedInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTotalBasalEnergyBurnedInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasTotalDistanceInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasGoalType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasGoalInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsWatchWorkout:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsIndoorWorkout:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableCloudKitWorkout;
  v4 = [(ASCodableCloudKitWorkout *)&v8 description];
  v5 = [(ASCodableCloudKitWorkout *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    v5 = [(ASCodableCloudKitSample *)sample dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sample"];
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v3 setObject:v18 forKey:@"type"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_32;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  [v3 setObject:v19 forKey:@"duration"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalEnergyBurnedInCanonicalUnit];
  [v3 setObject:v20 forKey:@"totalEnergyBurnedInCanonicalUnit"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalBasalEnergyBurnedInCanonicalUnit];
  [v3 setObject:v21 forKey:@"totalBasalEnergyBurnedInCanonicalUnit"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalDistanceInCanonicalUnit];
  [v3 setObject:v22 forKey:@"totalDistanceInCanonicalUnit"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_35:
  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_goalType];
  [v3 setObject:v23 forKey:@"goalType"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_goalInCanonicalUnit];
    [v3 setObject:v7 forKey:@"goalInCanonicalUnit"];
  }

LABEL_11:
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  v9 = self->_has;
  if ((v9 & 0x200) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isWatchWorkout];
    [v3 setObject:v10 forKey:@"isWatchWorkout"];

    v9 = self->_has;
  }

  if ((v9 & 0x100) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_isIndoorWorkout];
    [v3 setObject:v11 forKey:@"isIndoorWorkout"];
  }

  deviceManufacturer = self->_deviceManufacturer;
  if (deviceManufacturer)
  {
    [v3 setObject:deviceManufacturer forKey:@"deviceManufacturer"];
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v3 setObject:deviceModel forKey:@"deviceModel"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_amm];
    [v3 setObject:v14 forKey:@"amm"];
  }

  seymourCatalogWorkoutIdentifier = self->_seymourCatalogWorkoutIdentifier;
  if (seymourCatalogWorkoutIdentifier)
  {
    [v3 setObject:seymourCatalogWorkoutIdentifier forKey:@"seymourCatalogWorkoutIdentifier"];
  }

  seymourMediaType = self->_seymourMediaType;
  if (seymourMediaType)
  {
    [v3 setObject:seymourMediaType forKey:@"seymourMediaType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v17 = v4;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    v4 = v17;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_32;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  duration = self->_duration;
  PBDataWriterWriteDoubleField();
  v4 = v17;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  totalEnergyBurnedInCanonicalUnit = self->_totalEnergyBurnedInCanonicalUnit;
  PBDataWriterWriteDoubleField();
  v4 = v17;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  totalBasalEnergyBurnedInCanonicalUnit = self->_totalBasalEnergyBurnedInCanonicalUnit;
  PBDataWriterWriteDoubleField();
  v4 = v17;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  totalDistanceInCanonicalUnit = self->_totalDistanceInCanonicalUnit;
  PBDataWriterWriteDoubleField();
  v4 = v17;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_35:
  goalType = self->_goalType;
  PBDataWriterWriteInt64Field();
  v4 = v17;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    goalInCanonicalUnit = self->_goalInCanonicalUnit;
    PBDataWriterWriteDoubleField();
    v4 = v17;
  }

LABEL_11:
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  v7 = self->_has;
  if ((v7 & 0x200) != 0)
  {
    isWatchWorkout = self->_isWatchWorkout;
    PBDataWriterWriteBOOLField();
    v4 = v17;
    v7 = self->_has;
  }

  if ((v7 & 0x100) != 0)
  {
    isIndoorWorkout = self->_isIndoorWorkout;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_deviceManufacturer)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (*&self->_has)
  {
    amm = self->_amm;
    PBDataWriterWriteInt64Field();
    v4 = v17;
  }

  if (self->_seymourCatalogWorkoutIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_seymourMediaType)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_sample)
  {
    [v4 setSample:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(v4 + 8) = self->_type;
    *(v4 + 62) |= 0x80u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_32;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 2) = *&self->_duration;
  *(v4 + 62) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 7) = *&self->_totalEnergyBurnedInCanonicalUnit;
  *(v4 + 62) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v4 + 5) = *&self->_totalBasalEnergyBurnedInCanonicalUnit;
  *(v4 + 62) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v4 + 6) = *&self->_totalDistanceInCanonicalUnit;
  *(v4 + 62) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_35:
  *(v4 + 4) = self->_goalType;
  *(v4 + 62) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    *(v4 + 3) = *&self->_goalInCanonicalUnit;
    *(v4 + 62) |= 4u;
  }

LABEL_11:
  if (self->_bundleID)
  {
    [v7 setBundleID:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x200) != 0)
  {
    *(v4 + 121) = self->_isWatchWorkout;
    *(v4 + 62) |= 0x200u;
    v6 = self->_has;
  }

  if ((v6 & 0x100) != 0)
  {
    *(v4 + 120) = self->_isIndoorWorkout;
    *(v4 + 62) |= 0x100u;
  }

  if (self->_deviceManufacturer)
  {
    [v7 setDeviceManufacturer:?];
    v4 = v7;
  }

  if (self->_deviceModel)
  {
    [v7 setDeviceModel:?];
    v4 = v7;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_amm;
    *(v4 + 62) |= 1u;
  }

  if (self->_seymourCatalogWorkoutIdentifier)
  {
    [v7 setSeymourCatalogWorkoutIdentifier:?];
    v4 = v7;
  }

  if (self->_seymourMediaType)
  {
    [v7 setSeymourMediaType:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ASCodableCloudKitSample *)self->_sample copyWithZone:a3];
  v7 = *(v5 + 96);
  *(v5 + 96) = v6;

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(v5 + 64) = self->_type;
    *(v5 + 124) |= 0x80u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_duration;
  *(v5 + 124) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 56) = self->_totalEnergyBurnedInCanonicalUnit;
  *(v5 + 124) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 40) = self->_totalBasalEnergyBurnedInCanonicalUnit;
  *(v5 + 124) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 48) = self->_totalDistanceInCanonicalUnit;
  *(v5 + 124) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_21:
  *(v5 + 32) = self->_goalType;
  *(v5 + 124) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(v5 + 24) = self->_goalInCanonicalUnit;
    *(v5 + 124) |= 4u;
  }

LABEL_9:
  v9 = [(NSString *)self->_bundleID copyWithZone:a3];
  v10 = *(v5 + 72);
  *(v5 + 72) = v9;

  v11 = self->_has;
  if ((v11 & 0x200) != 0)
  {
    *(v5 + 121) = self->_isWatchWorkout;
    *(v5 + 124) |= 0x200u;
    v11 = self->_has;
  }

  if ((v11 & 0x100) != 0)
  {
    *(v5 + 120) = self->_isIndoorWorkout;
    *(v5 + 124) |= 0x100u;
  }

  v12 = [(NSString *)self->_deviceManufacturer copyWithZone:a3];
  v13 = *(v5 + 80);
  *(v5 + 80) = v12;

  v14 = [(NSString *)self->_deviceModel copyWithZone:a3];
  v15 = *(v5 + 88);
  *(v5 + 88) = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_amm;
    *(v5 + 124) |= 1u;
  }

  v16 = [(NSString *)self->_seymourCatalogWorkoutIdentifier copyWithZone:a3];
  v17 = *(v5 + 104);
  *(v5 + 104) = v16;

  v18 = [(NSString *)self->_seymourMediaType copyWithZone:a3];
  v19 = *(v5 + 112);
  *(v5 + 112) = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_71;
  }

  sample = self->_sample;
  if (sample | *(v4 + 12))
  {
    if (![(ASCodableCloudKitSample *)sample isEqual:?])
    {
      goto LABEL_71;
    }
  }

  has = self->_has;
  v7 = *(v4 + 62);
  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_type != *(v4 + 8))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_duration != *(v4 + 2))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_totalEnergyBurnedInCanonicalUnit != *(v4 + 7))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_totalBasalEnergyBurnedInCanonicalUnit != *(v4 + 5))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_totalDistanceInCanonicalUnit != *(v4 + 6))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_goalType != *(v4 + 4))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_goalInCanonicalUnit != *(v4 + 3))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_71;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 9))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_71;
    }

    has = self->_has;
  }

  v9 = *(v4 + 62);
  if ((has & 0x200) != 0)
  {
    if ((*(v4 + 62) & 0x200) == 0)
    {
      goto LABEL_71;
    }

    v13 = *(v4 + 121);
    if (self->_isWatchWorkout)
    {
      if ((*(v4 + 121) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (*(v4 + 121))
    {
      goto LABEL_71;
    }
  }

  else if ((*(v4 + 62) & 0x200) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x100) == 0)
  {
    if ((*(v4 + 62) & 0x100) == 0)
    {
      goto LABEL_46;
    }

LABEL_71:
    v17 = 0;
    goto LABEL_72;
  }

  if ((*(v4 + 62) & 0x100) == 0)
  {
    goto LABEL_71;
  }

  v14 = *(v4 + 120);
  if (self->_isIndoorWorkout)
  {
    if ((*(v4 + 120) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if (*(v4 + 120))
  {
    goto LABEL_71;
  }

LABEL_46:
  deviceManufacturer = self->_deviceManufacturer;
  if (deviceManufacturer | *(v4 + 10) && ![(NSString *)deviceManufacturer isEqual:?])
  {
    goto LABEL_71;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel | *(v4 + 11))
  {
    if (![(NSString *)deviceModel isEqual:?])
    {
      goto LABEL_71;
    }
  }

  v12 = *(v4 + 62);
  if (*&self->_has)
  {
    if ((v12 & 1) == 0 || self->_amm != *(v4 + 1))
    {
      goto LABEL_71;
    }
  }

  else if (v12)
  {
    goto LABEL_71;
  }

  seymourCatalogWorkoutIdentifier = self->_seymourCatalogWorkoutIdentifier;
  if (seymourCatalogWorkoutIdentifier | *(v4 + 13) && ![(NSString *)seymourCatalogWorkoutIdentifier isEqual:?])
  {
    goto LABEL_71;
  }

  seymourMediaType = self->_seymourMediaType;
  if (seymourMediaType | *(v4 + 14))
  {
    v17 = [(NSString *)seymourMediaType isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_72:

  return v17;
}

- (unint64_t)hash
{
  v39 = [(ASCodableCloudKitSample *)self->_sample hash];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v38 = 2654435761 * self->_type;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v38 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  duration = self->_duration;
  if (duration < 0.0)
  {
    duration = -duration;
  }

  *v3.i64 = floor(duration + 0.5);
  v7 = (duration - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v8), v4, v3);
  v9 = 2654435761u * *v3.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_9:
  if ((has & 0x40) != 0)
  {
    totalEnergyBurnedInCanonicalUnit = self->_totalEnergyBurnedInCanonicalUnit;
    if (totalEnergyBurnedInCanonicalUnit < 0.0)
    {
      totalEnergyBurnedInCanonicalUnit = -totalEnergyBurnedInCanonicalUnit;
    }

    *v3.i64 = floor(totalEnergyBurnedInCanonicalUnit + 0.5);
    v12 = (totalEnergyBurnedInCanonicalUnit - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v13), v4, v3);
    v10 = 2654435761u * *v3.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((has & 0x10) != 0)
  {
    totalBasalEnergyBurnedInCanonicalUnit = self->_totalBasalEnergyBurnedInCanonicalUnit;
    if (totalBasalEnergyBurnedInCanonicalUnit < 0.0)
    {
      totalBasalEnergyBurnedInCanonicalUnit = -totalBasalEnergyBurnedInCanonicalUnit;
    }

    *v3.i64 = floor(totalBasalEnergyBurnedInCanonicalUnit + 0.5);
    v16 = (totalBasalEnergyBurnedInCanonicalUnit - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v17), v4, v3);
    v14 = 2654435761u * *v3.i64;
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

  if ((has & 0x20) != 0)
  {
    totalDistanceInCanonicalUnit = self->_totalDistanceInCanonicalUnit;
    if (totalDistanceInCanonicalUnit < 0.0)
    {
      totalDistanceInCanonicalUnit = -totalDistanceInCanonicalUnit;
    }

    *v3.i64 = floor(totalDistanceInCanonicalUnit + 0.5);
    v20 = (totalDistanceInCanonicalUnit - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v21), v4, v3);
    v18 = 2654435761u * *v3.i64;
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

  if ((has & 8) != 0)
  {
    v35 = 2654435761 * self->_goalType;
  }

  else
  {
    v35 = 0;
  }

  v36 = v18;
  v37 = v14;
  if ((has & 4) != 0)
  {
    goalInCanonicalUnit = self->_goalInCanonicalUnit;
    if (goalInCanonicalUnit < 0.0)
    {
      goalInCanonicalUnit = -goalInCanonicalUnit;
    }

    *v3.i64 = floor(goalInCanonicalUnit + 0.5);
    v24 = (goalInCanonicalUnit - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v22 = 2654435761u * *vbslq_s8(vnegq_f64(v25), v4, v3).i64;
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

  v26 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 0x200) != 0)
  {
    v27 = 2654435761 * self->_isWatchWorkout;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v27 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_48:
      v28 = 2654435761 * self->_isIndoorWorkout;
      goto LABEL_51;
    }
  }

  v28 = 0;
LABEL_51:
  v29 = [(NSString *)self->_deviceManufacturer hash];
  v30 = [(NSString *)self->_deviceModel hash];
  if (*&self->_has)
  {
    v31 = 2654435761 * self->_amm;
  }

  else
  {
    v31 = 0;
  }

  v32 = v38 ^ v39 ^ v9 ^ v10 ^ v37 ^ v36 ^ v35 ^ v22 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
  v33 = v31 ^ [(NSString *)self->_seymourCatalogWorkoutIdentifier hash];
  return v32 ^ v33 ^ [(NSString *)self->_seymourMediaType hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  sample = self->_sample;
  v6 = *(v4 + 12);
  v9 = v4;
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

    [(ASCodableCloudKitWorkout *)self setSample:?];
  }

  v4 = v9;
LABEL_7:
  v7 = *(v4 + 62);
  if ((v7 & 0x80) != 0)
  {
    self->_type = *(v4 + 8);
    *&self->_has |= 0x80u;
    v7 = *(v4 + 62);
    if ((v7 & 2) == 0)
    {
LABEL_9:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_36;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_duration = *(v4 + 2);
  *&self->_has |= 2u;
  v7 = *(v4 + 62);
  if ((v7 & 0x40) == 0)
  {
LABEL_10:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_totalEnergyBurnedInCanonicalUnit = *(v4 + 7);
  *&self->_has |= 0x40u;
  v7 = *(v4 + 62);
  if ((v7 & 0x10) == 0)
  {
LABEL_11:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_totalBasalEnergyBurnedInCanonicalUnit = *(v4 + 5);
  *&self->_has |= 0x10u;
  v7 = *(v4 + 62);
  if ((v7 & 0x20) == 0)
  {
LABEL_12:
    if ((v7 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_totalDistanceInCanonicalUnit = *(v4 + 6);
  *&self->_has |= 0x20u;
  v7 = *(v4 + 62);
  if ((v7 & 8) == 0)
  {
LABEL_13:
    if ((v7 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_39:
  self->_goalType = *(v4 + 4);
  *&self->_has |= 8u;
  if ((*(v4 + 62) & 4) != 0)
  {
LABEL_14:
    self->_goalInCanonicalUnit = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_15:
  if (*(v4 + 9))
  {
    [(ASCodableCloudKitWorkout *)self setBundleID:?];
    v4 = v9;
  }

  v8 = *(v4 + 62);
  if ((v8 & 0x200) != 0)
  {
    self->_isWatchWorkout = *(v4 + 121);
    *&self->_has |= 0x200u;
    v8 = *(v4 + 62);
  }

  if ((v8 & 0x100) != 0)
  {
    self->_isIndoorWorkout = *(v4 + 120);
    *&self->_has |= 0x100u;
  }

  if (*(v4 + 10))
  {
    [(ASCodableCloudKitWorkout *)self setDeviceManufacturer:?];
    v4 = v9;
  }

  if (*(v4 + 11))
  {
    [(ASCodableCloudKitWorkout *)self setDeviceModel:?];
    v4 = v9;
  }

  if (*(v4 + 62))
  {
    self->_amm = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 13))
  {
    [(ASCodableCloudKitWorkout *)self setSeymourCatalogWorkoutIdentifier:?];
    v4 = v9;
  }

  if (*(v4 + 14))
  {
    [(ASCodableCloudKitWorkout *)self setSeymourMediaType:?];
  }

  MEMORY[0x2821F96F8]();
}

@end
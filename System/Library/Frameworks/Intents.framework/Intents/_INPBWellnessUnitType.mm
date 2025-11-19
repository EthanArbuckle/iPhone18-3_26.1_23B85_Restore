@interface _INPBWellnessUnitType
- (BOOL)isEqual:(id)a3;
- (_INPBWellnessUnitType)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsBloodGlucoseUnit:(id)a3;
- (int)StringAsBloodPressureUnit:(id)a3;
- (int)StringAsEnergyUnit:(id)a3;
- (int)StringAsHeartRateUnit:(id)a3;
- (int)StringAsLengthUnit:(id)a3;
- (int)StringAsMassUnit:(id)a3;
- (int)StringAsRespiratoryRateUnit:(id)a3;
- (int)StringAsTemperatureUnit:(id)a3;
- (int)StringAsTimeUnit:(id)a3;
- (int)StringAsVolumeUnit:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setBloodGlucoseUnit:(int)a3;
- (void)setBloodPressureUnit:(int)a3;
- (void)setEnergyUnit:(int)a3;
- (void)setHasBloodPressureUnit:(BOOL)a3;
- (void)setHasEnergyUnit:(BOOL)a3;
- (void)setHasHeartRateUnit:(BOOL)a3;
- (void)setHasLengthUnit:(BOOL)a3;
- (void)setHasMassUnit:(BOOL)a3;
- (void)setHasRespiratoryRateUnit:(BOOL)a3;
- (void)setHasTemperatureUnit:(BOOL)a3;
- (void)setHasTimeUnit:(BOOL)a3;
- (void)setHasVolumeUnit:(BOOL)a3;
- (void)setHeartRateUnit:(int)a3;
- (void)setLengthUnit:(int)a3;
- (void)setMassUnit:(int)a3;
- (void)setRespiratoryRateUnit:(int)a3;
- (void)setTemperatureUnit:(int)a3;
- (void)setTimeUnit:(int)a3;
- (void)setVolumeUnit:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBWellnessUnitType

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBWellnessUnitType *)self hasBloodGlucoseUnit])
  {
    v4 = [(_INPBWellnessUnitType *)self bloodGlucoseUnit];
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = *(&off_1E72814C8 + v4);
    }

    [v3 setObject:v5 forKeyedSubscript:@"bloodGlucoseUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasBloodPressureUnit])
  {
    v6 = [(_INPBWellnessUnitType *)self bloodPressureUnit];
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = @"MMHG";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
      }
    }

    else
    {
      v7 = @"UNKNOWN_BLOOD_PRESSURE_UNIT";
    }

    [v3 setObject:v7 forKeyedSubscript:@"bloodPressureUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasEnergyUnit])
  {
    v8 = [(_INPBWellnessUnitType *)self energyUnit];
    if (v8 >= 6)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = *(&off_1E72814E0 + v8);
    }

    [v3 setObject:v9 forKeyedSubscript:@"energyUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasHeartRateUnit])
  {
    v10 = [(_INPBWellnessUnitType *)self heartRateUnit];
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = @"BPM";
      }

      else
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
      }
    }

    else
    {
      v11 = @"UNKNOWN_HEART_RATE_UNIT";
    }

    [v3 setObject:v11 forKeyedSubscript:@"heartRateUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasLengthUnit])
  {
    v12 = [(_INPBWellnessUnitType *)self lengthUnit];
    if ((v12 - 1) >= 0x16)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
    }

    else
    {
      v13 = *(&off_1E7281510 + (v12 - 1));
    }

    [v3 setObject:v13 forKeyedSubscript:@"lengthUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasMassUnit])
  {
    v14 = [(_INPBWellnessUnitType *)self massUnit];
    if (v14 >= 0x11)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = *(&off_1E72815C0 + v14);
    }

    [v3 setObject:v15 forKeyedSubscript:@"massUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasRespiratoryRateUnit])
  {
    v16 = [(_INPBWellnessUnitType *)self respiratoryRateUnit];
    if (v16)
    {
      if (v16 == 1)
      {
        v17 = @"BREATHMIN";
      }

      else
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
      }
    }

    else
    {
      v17 = @"UNKNOWN_RESPIRATORY_RATE_UNIT";
    }

    [v3 setObject:v17 forKeyedSubscript:@"respiratoryRateUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasTemperatureUnit])
  {
    v18 = [(_INPBWellnessUnitType *)self temperatureUnit];
    if ((v18 - 1) >= 3)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v18];
    }

    else
    {
      v19 = *(&off_1E7281648 + (v18 - 1));
    }

    [v3 setObject:v19 forKeyedSubscript:@"temperatureUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasTimeUnit])
  {
    v20 = [(_INPBWellnessUnitType *)self timeUnit];
    if (v20 >= 8)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v20];
    }

    else
    {
      v21 = *(&off_1E7281660 + v20);
    }

    [v3 setObject:v21 forKeyedSubscript:@"timeUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasVolumeUnit])
  {
    v22 = [(_INPBWellnessUnitType *)self volumeUnit];
    if (v22 >= 0x1D)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v22];
    }

    else
    {
      v23 = *(&off_1E72816A0 + v22);
    }

    [v3 setObject:v23 forKeyedSubscript:@"volumeUnit"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBWellnessUnitType *)self hasBloodGlucoseUnit])
  {
    v13 = 2654435761 * self->_bloodGlucoseUnit;
  }

  else
  {
    v13 = 0;
  }

  if ([(_INPBWellnessUnitType *)self hasBloodPressureUnit])
  {
    v3 = 2654435761 * self->_bloodPressureUnit;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBWellnessUnitType *)self hasEnergyUnit])
  {
    v4 = 2654435761 * self->_energyUnit;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBWellnessUnitType *)self hasHeartRateUnit])
  {
    v5 = 2654435761 * self->_heartRateUnit;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBWellnessUnitType *)self hasLengthUnit])
  {
    v6 = 2654435761 * self->_lengthUnit;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBWellnessUnitType *)self hasMassUnit])
  {
    v7 = 2654435761 * self->_massUnit;
  }

  else
  {
    v7 = 0;
  }

  if ([(_INPBWellnessUnitType *)self hasRespiratoryRateUnit])
  {
    v8 = 2654435761 * self->_respiratoryRateUnit;
  }

  else
  {
    v8 = 0;
  }

  if ([(_INPBWellnessUnitType *)self hasTemperatureUnit])
  {
    v9 = 2654435761 * self->_temperatureUnit;
  }

  else
  {
    v9 = 0;
  }

  if ([(_INPBWellnessUnitType *)self hasTimeUnit])
  {
    v10 = 2654435761 * self->_timeUnit;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBWellnessUnitType *)self hasVolumeUnit])
  {
    v11 = 2654435761 * self->_volumeUnit;
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v13 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  v5 = [(_INPBWellnessUnitType *)self hasBloodGlucoseUnit];
  if (v5 != [v4 hasBloodGlucoseUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasBloodGlucoseUnit])
  {
    if ([v4 hasBloodGlucoseUnit])
    {
      bloodGlucoseUnit = self->_bloodGlucoseUnit;
      if (bloodGlucoseUnit != [v4 bloodGlucoseUnit])
      {
        goto LABEL_39;
      }
    }
  }

  v7 = [(_INPBWellnessUnitType *)self hasBloodPressureUnit];
  if (v7 != [v4 hasBloodPressureUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasBloodPressureUnit])
  {
    if ([v4 hasBloodPressureUnit])
    {
      bloodPressureUnit = self->_bloodPressureUnit;
      if (bloodPressureUnit != [v4 bloodPressureUnit])
      {
        goto LABEL_39;
      }
    }
  }

  v9 = [(_INPBWellnessUnitType *)self hasEnergyUnit];
  if (v9 != [v4 hasEnergyUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasEnergyUnit])
  {
    if ([v4 hasEnergyUnit])
    {
      energyUnit = self->_energyUnit;
      if (energyUnit != [v4 energyUnit])
      {
        goto LABEL_39;
      }
    }
  }

  v11 = [(_INPBWellnessUnitType *)self hasHeartRateUnit];
  if (v11 != [v4 hasHeartRateUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasHeartRateUnit])
  {
    if ([v4 hasHeartRateUnit])
    {
      heartRateUnit = self->_heartRateUnit;
      if (heartRateUnit != [v4 heartRateUnit])
      {
        goto LABEL_39;
      }
    }
  }

  v13 = [(_INPBWellnessUnitType *)self hasLengthUnit];
  if (v13 != [v4 hasLengthUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasLengthUnit])
  {
    if ([v4 hasLengthUnit])
    {
      lengthUnit = self->_lengthUnit;
      if (lengthUnit != [v4 lengthUnit])
      {
        goto LABEL_39;
      }
    }
  }

  v15 = [(_INPBWellnessUnitType *)self hasMassUnit];
  if (v15 != [v4 hasMassUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasMassUnit])
  {
    if ([v4 hasMassUnit])
    {
      massUnit = self->_massUnit;
      if (massUnit != [v4 massUnit])
      {
        goto LABEL_39;
      }
    }
  }

  v17 = [(_INPBWellnessUnitType *)self hasRespiratoryRateUnit];
  if (v17 != [v4 hasRespiratoryRateUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasRespiratoryRateUnit])
  {
    if ([v4 hasRespiratoryRateUnit])
    {
      respiratoryRateUnit = self->_respiratoryRateUnit;
      if (respiratoryRateUnit != [v4 respiratoryRateUnit])
      {
        goto LABEL_39;
      }
    }
  }

  if ((v19 = -[_INPBWellnessUnitType hasTemperatureUnit](self, "hasTemperatureUnit"), v19 == [v4 hasTemperatureUnit]) && (!-[_INPBWellnessUnitType hasTemperatureUnit](self, "hasTemperatureUnit") || !objc_msgSend(v4, "hasTemperatureUnit") || (temperatureUnit = self->_temperatureUnit, temperatureUnit == objc_msgSend(v4, "temperatureUnit"))) && (v21 = -[_INPBWellnessUnitType hasTimeUnit](self, "hasTimeUnit"), v21 == objc_msgSend(v4, "hasTimeUnit")) && (!-[_INPBWellnessUnitType hasTimeUnit](self, "hasTimeUnit") || !objc_msgSend(v4, "hasTimeUnit") || (timeUnit = self->_timeUnit, timeUnit == objc_msgSend(v4, "timeUnit"))) && (v23 = -[_INPBWellnessUnitType hasVolumeUnit](self, "hasVolumeUnit"), v23 == objc_msgSend(v4, "hasVolumeUnit")) && (!-[_INPBWellnessUnitType hasVolumeUnit](self, "hasVolumeUnit") || !objc_msgSend(v4, "hasVolumeUnit") || (volumeUnit = self->_volumeUnit, volumeUnit == objc_msgSend(v4, "volumeUnit"))))
  {
    v24 = 1;
  }

  else
  {
LABEL_39:
    v24 = 0;
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBWellnessUnitType allocWithZone:?]];
  if ([(_INPBWellnessUnitType *)self hasBloodGlucoseUnit])
  {
    [(_INPBWellnessUnitType *)v4 setBloodGlucoseUnit:[(_INPBWellnessUnitType *)self bloodGlucoseUnit]];
  }

  if ([(_INPBWellnessUnitType *)self hasBloodPressureUnit])
  {
    [(_INPBWellnessUnitType *)v4 setBloodPressureUnit:[(_INPBWellnessUnitType *)self bloodPressureUnit]];
  }

  if ([(_INPBWellnessUnitType *)self hasEnergyUnit])
  {
    [(_INPBWellnessUnitType *)v4 setEnergyUnit:[(_INPBWellnessUnitType *)self energyUnit]];
  }

  if ([(_INPBWellnessUnitType *)self hasHeartRateUnit])
  {
    [(_INPBWellnessUnitType *)v4 setHeartRateUnit:[(_INPBWellnessUnitType *)self heartRateUnit]];
  }

  if ([(_INPBWellnessUnitType *)self hasLengthUnit])
  {
    [(_INPBWellnessUnitType *)v4 setLengthUnit:[(_INPBWellnessUnitType *)self lengthUnit]];
  }

  if ([(_INPBWellnessUnitType *)self hasMassUnit])
  {
    [(_INPBWellnessUnitType *)v4 setMassUnit:[(_INPBWellnessUnitType *)self massUnit]];
  }

  if ([(_INPBWellnessUnitType *)self hasRespiratoryRateUnit])
  {
    [(_INPBWellnessUnitType *)v4 setRespiratoryRateUnit:[(_INPBWellnessUnitType *)self respiratoryRateUnit]];
  }

  if ([(_INPBWellnessUnitType *)self hasTemperatureUnit])
  {
    [(_INPBWellnessUnitType *)v4 setTemperatureUnit:[(_INPBWellnessUnitType *)self temperatureUnit]];
  }

  if ([(_INPBWellnessUnitType *)self hasTimeUnit])
  {
    [(_INPBWellnessUnitType *)v4 setTimeUnit:[(_INPBWellnessUnitType *)self timeUnit]];
  }

  if ([(_INPBWellnessUnitType *)self hasVolumeUnit])
  {
    [(_INPBWellnessUnitType *)v4 setVolumeUnit:[(_INPBWellnessUnitType *)self volumeUnit]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBWellnessUnitType *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBWellnessUnitType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBWellnessUnitType *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  if ([(_INPBWellnessUnitType *)self hasBloodGlucoseUnit])
  {
    bloodGlucoseUnit = self->_bloodGlucoseUnit;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBWellnessUnitType *)self hasBloodPressureUnit])
  {
    bloodPressureUnit = self->_bloodPressureUnit;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBWellnessUnitType *)self hasEnergyUnit])
  {
    energyUnit = self->_energyUnit;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBWellnessUnitType *)self hasHeartRateUnit])
  {
    heartRateUnit = self->_heartRateUnit;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBWellnessUnitType *)self hasLengthUnit])
  {
    lengthUnit = self->_lengthUnit;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBWellnessUnitType *)self hasMassUnit])
  {
    massUnit = self->_massUnit;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBWellnessUnitType *)self hasRespiratoryRateUnit])
  {
    respiratoryRateUnit = self->_respiratoryRateUnit;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBWellnessUnitType *)self hasTemperatureUnit])
  {
    temperatureUnit = self->_temperatureUnit;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBWellnessUnitType *)self hasTimeUnit])
  {
    timeUnit = self->_timeUnit;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBWellnessUnitType *)self hasVolumeUnit])
  {
    volumeUnit = self->_volumeUnit;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsVolumeUnit:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_VOLUME_UNIT"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MEGALITER"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KILOLITER"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LITER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"DECILITER"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CENTILITER"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MILLILITER"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CUBIC_KILOMETER"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"CUBIC_DECIMETER"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CUBIC_MILLIMETER"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"CUBIC_INCH"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"CUBIC_FEET"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"CUBIC_YARD"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"CUBIC_MILE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"ACRE_FOEET"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"BUSHEL"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"TEASPOON"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"TABLESPOON"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"FLUID_OUNCE"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"CUP"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"PINT"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"QUART"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"GALLON"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"IMPERIAL_TEASPOON"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"IMPERIAL_QUART"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"IMPERIAL_GALLON"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"METRIC_CUP"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"CUBIC_CENTIMETER"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"CUBIC_METER"])
  {
    v4 = 28;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasVolumeUnit:(BOOL)a3
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

- (void)setVolumeUnit:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFDFF;
  }

  else
  {
    *&self->_has = has | 0x200;
    self->_volumeUnit = a3;
  }
}

- (int)StringAsTimeUnit:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_TIME_UNIT"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SECOND"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MINUTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HOUR"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"DAY"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"WEEK"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MONTH"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"YEAR"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTimeUnit:(BOOL)a3
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

- (void)setTimeUnit:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFEFF;
  }

  else
  {
    *&self->_has = has | 0x100;
    self->_timeUnit = a3;
  }
}

- (int)StringAsTemperatureUnit:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CELSIUS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FAHRENHEIT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KELVIN"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasTemperatureUnit:(BOOL)a3
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

- (void)setTemperatureUnit:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFF7F;
  }

  else
  {
    *&self->_has = has | 0x80;
    self->_temperatureUnit = a3;
  }
}

- (int)StringAsRespiratoryRateUnit:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_RESPIRATORY_RATE_UNIT"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"BREATHMIN"];
  }

  return v4;
}

- (void)setHasRespiratoryRateUnit:(BOOL)a3
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

- (void)setRespiratoryRateUnit:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFBF;
  }

  else
  {
    *&self->_has = has | 0x40;
    self->_respiratoryRateUnit = a3;
  }
}

- (int)StringAsMassUnit:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_MASS_UNIT"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KILOGRAM"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GRAM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DECIGRAM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CENTIGRAM"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MILLIGRAM"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MICROGRAM"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"NANOGRAM"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"PICOGRAM"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"OUNCE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"POUND"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"STONE"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"METRIC_TONNE"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SHORT_TONNE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"CARATS"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"OUNCE_TROY"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SLUG"])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMassUnit:(BOOL)a3
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

- (void)setMassUnit:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_massUnit = a3;
  }
}

- (int)StringAsLengthUnit:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"METERS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MILES"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CENTIMETER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FOOT"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"INCH"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"YARD"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"KILOMETER"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"MEGAMETER"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"HECTOMETER"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"DECAMETER"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"DECIMETER"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"MILLIMETER"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"MICROMETER"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"NANOMETER"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"PICOMETER"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SCANDINAVIAN_MILE"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"LIGHTYEAR"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"NAUTICAL_MILE"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"FATHOM"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"FURLONG"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"ASTRONOMICAL_UNIT"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"PARSEC"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasLengthUnit:(BOOL)a3
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

- (void)setLengthUnit:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_lengthUnit = a3;
  }
}

- (int)StringAsHeartRateUnit:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_HEART_RATE_UNIT"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"BPM"];
  }

  return v4;
}

- (void)setHasHeartRateUnit:(BOOL)a3
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

- (void)setHeartRateUnit:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_heartRateUnit = a3;
  }
}

- (int)StringAsEnergyUnit:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_ENERGY_UNIT"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KILOJOULE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"JOULE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KILOCALORIE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CALORIE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KILOWATT_HOUR"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEnergyUnit:(BOOL)a3
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

- (void)setEnergyUnit:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_energyUnit = a3;
  }
}

- (int)StringAsBloodPressureUnit:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_BLOOD_PRESSURE_UNIT"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"MMHG"];
  }

  return v4;
}

- (void)setHasBloodPressureUnit:(BOOL)a3
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

- (void)setBloodPressureUnit:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_bloodPressureUnit = a3;
  }
}

- (int)StringAsBloodGlucoseUnit:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_BLOOD_GLUCOSE_UNIT"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MGDL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MMOLL"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBloodGlucoseUnit:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_bloodGlucoseUnit = a3;
  }
}

@end
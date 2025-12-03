@interface _INPBWellnessUnitType
- (BOOL)isEqual:(id)equal;
- (_INPBWellnessUnitType)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsBloodGlucoseUnit:(id)unit;
- (int)StringAsBloodPressureUnit:(id)unit;
- (int)StringAsEnergyUnit:(id)unit;
- (int)StringAsHeartRateUnit:(id)unit;
- (int)StringAsLengthUnit:(id)unit;
- (int)StringAsMassUnit:(id)unit;
- (int)StringAsRespiratoryRateUnit:(id)unit;
- (int)StringAsTemperatureUnit:(id)unit;
- (int)StringAsTimeUnit:(id)unit;
- (int)StringAsVolumeUnit:(id)unit;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setBloodGlucoseUnit:(int)unit;
- (void)setBloodPressureUnit:(int)unit;
- (void)setEnergyUnit:(int)unit;
- (void)setHasBloodPressureUnit:(BOOL)unit;
- (void)setHasEnergyUnit:(BOOL)unit;
- (void)setHasHeartRateUnit:(BOOL)unit;
- (void)setHasLengthUnit:(BOOL)unit;
- (void)setHasMassUnit:(BOOL)unit;
- (void)setHasRespiratoryRateUnit:(BOOL)unit;
- (void)setHasTemperatureUnit:(BOOL)unit;
- (void)setHasTimeUnit:(BOOL)unit;
- (void)setHasVolumeUnit:(BOOL)unit;
- (void)setHeartRateUnit:(int)unit;
- (void)setLengthUnit:(int)unit;
- (void)setMassUnit:(int)unit;
- (void)setRespiratoryRateUnit:(int)unit;
- (void)setTemperatureUnit:(int)unit;
- (void)setTimeUnit:(int)unit;
- (void)setVolumeUnit:(int)unit;
- (void)writeTo:(id)to;
@end

@implementation _INPBWellnessUnitType

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBWellnessUnitType *)self hasBloodGlucoseUnit])
  {
    bloodGlucoseUnit = [(_INPBWellnessUnitType *)self bloodGlucoseUnit];
    if (bloodGlucoseUnit >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", bloodGlucoseUnit];
    }

    else
    {
      v5 = *(&off_1E72814C8 + bloodGlucoseUnit);
    }

    [dictionary setObject:v5 forKeyedSubscript:@"bloodGlucoseUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasBloodPressureUnit])
  {
    bloodPressureUnit = [(_INPBWellnessUnitType *)self bloodPressureUnit];
    if (bloodPressureUnit)
    {
      if (bloodPressureUnit == 1)
      {
        v7 = @"MMHG";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", bloodPressureUnit];
      }
    }

    else
    {
      v7 = @"UNKNOWN_BLOOD_PRESSURE_UNIT";
    }

    [dictionary setObject:v7 forKeyedSubscript:@"bloodPressureUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasEnergyUnit])
  {
    energyUnit = [(_INPBWellnessUnitType *)self energyUnit];
    if (energyUnit >= 6)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", energyUnit];
    }

    else
    {
      v9 = *(&off_1E72814E0 + energyUnit);
    }

    [dictionary setObject:v9 forKeyedSubscript:@"energyUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasHeartRateUnit])
  {
    heartRateUnit = [(_INPBWellnessUnitType *)self heartRateUnit];
    if (heartRateUnit)
    {
      if (heartRateUnit == 1)
      {
        v11 = @"BPM";
      }

      else
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", heartRateUnit];
      }
    }

    else
    {
      v11 = @"UNKNOWN_HEART_RATE_UNIT";
    }

    [dictionary setObject:v11 forKeyedSubscript:@"heartRateUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasLengthUnit])
  {
    lengthUnit = [(_INPBWellnessUnitType *)self lengthUnit];
    if ((lengthUnit - 1) >= 0x16)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", lengthUnit];
    }

    else
    {
      v13 = *(&off_1E7281510 + (lengthUnit - 1));
    }

    [dictionary setObject:v13 forKeyedSubscript:@"lengthUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasMassUnit])
  {
    massUnit = [(_INPBWellnessUnitType *)self massUnit];
    if (massUnit >= 0x11)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", massUnit];
    }

    else
    {
      v15 = *(&off_1E72815C0 + massUnit);
    }

    [dictionary setObject:v15 forKeyedSubscript:@"massUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasRespiratoryRateUnit])
  {
    respiratoryRateUnit = [(_INPBWellnessUnitType *)self respiratoryRateUnit];
    if (respiratoryRateUnit)
    {
      if (respiratoryRateUnit == 1)
      {
        v17 = @"BREATHMIN";
      }

      else
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", respiratoryRateUnit];
      }
    }

    else
    {
      v17 = @"UNKNOWN_RESPIRATORY_RATE_UNIT";
    }

    [dictionary setObject:v17 forKeyedSubscript:@"respiratoryRateUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasTemperatureUnit])
  {
    temperatureUnit = [(_INPBWellnessUnitType *)self temperatureUnit];
    if ((temperatureUnit - 1) >= 3)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", temperatureUnit];
    }

    else
    {
      v19 = *(&off_1E7281648 + (temperatureUnit - 1));
    }

    [dictionary setObject:v19 forKeyedSubscript:@"temperatureUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasTimeUnit])
  {
    timeUnit = [(_INPBWellnessUnitType *)self timeUnit];
    if (timeUnit >= 8)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", timeUnit];
    }

    else
    {
      v21 = *(&off_1E7281660 + timeUnit);
    }

    [dictionary setObject:v21 forKeyedSubscript:@"timeUnit"];
  }

  if ([(_INPBWellnessUnitType *)self hasVolumeUnit])
  {
    volumeUnit = [(_INPBWellnessUnitType *)self volumeUnit];
    if (volumeUnit >= 0x1D)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", volumeUnit];
    }

    else
    {
      v23 = *(&off_1E72816A0 + volumeUnit);
    }

    [dictionary setObject:v23 forKeyedSubscript:@"volumeUnit"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  hasBloodGlucoseUnit = [(_INPBWellnessUnitType *)self hasBloodGlucoseUnit];
  if (hasBloodGlucoseUnit != [equalCopy hasBloodGlucoseUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasBloodGlucoseUnit])
  {
    if ([equalCopy hasBloodGlucoseUnit])
    {
      bloodGlucoseUnit = self->_bloodGlucoseUnit;
      if (bloodGlucoseUnit != [equalCopy bloodGlucoseUnit])
      {
        goto LABEL_39;
      }
    }
  }

  hasBloodPressureUnit = [(_INPBWellnessUnitType *)self hasBloodPressureUnit];
  if (hasBloodPressureUnit != [equalCopy hasBloodPressureUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasBloodPressureUnit])
  {
    if ([equalCopy hasBloodPressureUnit])
    {
      bloodPressureUnit = self->_bloodPressureUnit;
      if (bloodPressureUnit != [equalCopy bloodPressureUnit])
      {
        goto LABEL_39;
      }
    }
  }

  hasEnergyUnit = [(_INPBWellnessUnitType *)self hasEnergyUnit];
  if (hasEnergyUnit != [equalCopy hasEnergyUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasEnergyUnit])
  {
    if ([equalCopy hasEnergyUnit])
    {
      energyUnit = self->_energyUnit;
      if (energyUnit != [equalCopy energyUnit])
      {
        goto LABEL_39;
      }
    }
  }

  hasHeartRateUnit = [(_INPBWellnessUnitType *)self hasHeartRateUnit];
  if (hasHeartRateUnit != [equalCopy hasHeartRateUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasHeartRateUnit])
  {
    if ([equalCopy hasHeartRateUnit])
    {
      heartRateUnit = self->_heartRateUnit;
      if (heartRateUnit != [equalCopy heartRateUnit])
      {
        goto LABEL_39;
      }
    }
  }

  hasLengthUnit = [(_INPBWellnessUnitType *)self hasLengthUnit];
  if (hasLengthUnit != [equalCopy hasLengthUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasLengthUnit])
  {
    if ([equalCopy hasLengthUnit])
    {
      lengthUnit = self->_lengthUnit;
      if (lengthUnit != [equalCopy lengthUnit])
      {
        goto LABEL_39;
      }
    }
  }

  hasMassUnit = [(_INPBWellnessUnitType *)self hasMassUnit];
  if (hasMassUnit != [equalCopy hasMassUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasMassUnit])
  {
    if ([equalCopy hasMassUnit])
    {
      massUnit = self->_massUnit;
      if (massUnit != [equalCopy massUnit])
      {
        goto LABEL_39;
      }
    }
  }

  hasRespiratoryRateUnit = [(_INPBWellnessUnitType *)self hasRespiratoryRateUnit];
  if (hasRespiratoryRateUnit != [equalCopy hasRespiratoryRateUnit])
  {
    goto LABEL_39;
  }

  if ([(_INPBWellnessUnitType *)self hasRespiratoryRateUnit])
  {
    if ([equalCopy hasRespiratoryRateUnit])
    {
      respiratoryRateUnit = self->_respiratoryRateUnit;
      if (respiratoryRateUnit != [equalCopy respiratoryRateUnit])
      {
        goto LABEL_39;
      }
    }
  }

  if ((v19 = -[_INPBWellnessUnitType hasTemperatureUnit](self, "hasTemperatureUnit"), v19 == [equalCopy hasTemperatureUnit]) && (!-[_INPBWellnessUnitType hasTemperatureUnit](self, "hasTemperatureUnit") || !objc_msgSend(equalCopy, "hasTemperatureUnit") || (temperatureUnit = self->_temperatureUnit, temperatureUnit == objc_msgSend(equalCopy, "temperatureUnit"))) && (v21 = -[_INPBWellnessUnitType hasTimeUnit](self, "hasTimeUnit"), v21 == objc_msgSend(equalCopy, "hasTimeUnit")) && (!-[_INPBWellnessUnitType hasTimeUnit](self, "hasTimeUnit") || !objc_msgSend(equalCopy, "hasTimeUnit") || (timeUnit = self->_timeUnit, timeUnit == objc_msgSend(equalCopy, "timeUnit"))) && (v23 = -[_INPBWellnessUnitType hasVolumeUnit](self, "hasVolumeUnit"), v23 == objc_msgSend(equalCopy, "hasVolumeUnit")) && (!-[_INPBWellnessUnitType hasVolumeUnit](self, "hasVolumeUnit") || !objc_msgSend(equalCopy, "hasVolumeUnit") || (volumeUnit = self->_volumeUnit, volumeUnit == objc_msgSend(equalCopy, "volumeUnit"))))
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBWellnessUnitType *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBWellnessUnitType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBWellnessUnitType *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (int)StringAsVolumeUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"UNKNOWN_VOLUME_UNIT"])
  {
    v4 = 0;
  }

  else if ([unitCopy isEqualToString:@"MEGALITER"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"KILOLITER"])
  {
    v4 = 2;
  }

  else if ([unitCopy isEqualToString:@"LITER"])
  {
    v4 = 3;
  }

  else if ([unitCopy isEqualToString:@"DECILITER"])
  {
    v4 = 4;
  }

  else if ([unitCopy isEqualToString:@"CENTILITER"])
  {
    v4 = 5;
  }

  else if ([unitCopy isEqualToString:@"MILLILITER"])
  {
    v4 = 6;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_KILOMETER"])
  {
    v4 = 7;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_DECIMETER"])
  {
    v4 = 8;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_MILLIMETER"])
  {
    v4 = 9;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_INCH"])
  {
    v4 = 10;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_FEET"])
  {
    v4 = 11;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_YARD"])
  {
    v4 = 12;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_MILE"])
  {
    v4 = 13;
  }

  else if ([unitCopy isEqualToString:@"ACRE_FOEET"])
  {
    v4 = 14;
  }

  else if ([unitCopy isEqualToString:@"BUSHEL"])
  {
    v4 = 15;
  }

  else if ([unitCopy isEqualToString:@"TEASPOON"])
  {
    v4 = 16;
  }

  else if ([unitCopy isEqualToString:@"TABLESPOON"])
  {
    v4 = 17;
  }

  else if ([unitCopy isEqualToString:@"FLUID_OUNCE"])
  {
    v4 = 18;
  }

  else if ([unitCopy isEqualToString:@"CUP"])
  {
    v4 = 19;
  }

  else if ([unitCopy isEqualToString:@"PINT"])
  {
    v4 = 20;
  }

  else if ([unitCopy isEqualToString:@"QUART"])
  {
    v4 = 21;
  }

  else if ([unitCopy isEqualToString:@"GALLON"])
  {
    v4 = 22;
  }

  else if ([unitCopy isEqualToString:@"IMPERIAL_TEASPOON"])
  {
    v4 = 23;
  }

  else if ([unitCopy isEqualToString:@"IMPERIAL_QUART"])
  {
    v4 = 24;
  }

  else if ([unitCopy isEqualToString:@"IMPERIAL_GALLON"])
  {
    v4 = 25;
  }

  else if ([unitCopy isEqualToString:@"METRIC_CUP"])
  {
    v4 = 26;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_CENTIMETER"])
  {
    v4 = 27;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_METER"])
  {
    v4 = 28;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasVolumeUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setVolumeUnit:(int)unit
{
  has = self->_has;
  if (unit == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFDFF;
  }

  else
  {
    *&self->_has = has | 0x200;
    self->_volumeUnit = unit;
  }
}

- (int)StringAsTimeUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"UNKNOWN_TIME_UNIT"])
  {
    v4 = 0;
  }

  else if ([unitCopy isEqualToString:@"SECOND"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"MINUTE"])
  {
    v4 = 2;
  }

  else if ([unitCopy isEqualToString:@"HOUR"])
  {
    v4 = 3;
  }

  else if ([unitCopy isEqualToString:@"DAY"])
  {
    v4 = 4;
  }

  else if ([unitCopy isEqualToString:@"WEEK"])
  {
    v4 = 5;
  }

  else if ([unitCopy isEqualToString:@"MONTH"])
  {
    v4 = 6;
  }

  else if ([unitCopy isEqualToString:@"YEAR"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTimeUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setTimeUnit:(int)unit
{
  has = self->_has;
  if (unit == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFEFF;
  }

  else
  {
    *&self->_has = has | 0x100;
    self->_timeUnit = unit;
  }
}

- (int)StringAsTemperatureUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"CELSIUS"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"FAHRENHEIT"])
  {
    v4 = 2;
  }

  else if ([unitCopy isEqualToString:@"KELVIN"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasTemperatureUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setTemperatureUnit:(int)unit
{
  has = self->_has;
  if (unit == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFF7F;
  }

  else
  {
    *&self->_has = has | 0x80;
    self->_temperatureUnit = unit;
  }
}

- (int)StringAsRespiratoryRateUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"UNKNOWN_RESPIRATORY_RATE_UNIT"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [unitCopy isEqualToString:@"BREATHMIN"];
  }

  return v4;
}

- (void)setHasRespiratoryRateUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setRespiratoryRateUnit:(int)unit
{
  has = self->_has;
  if (unit == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFBF;
  }

  else
  {
    *&self->_has = has | 0x40;
    self->_respiratoryRateUnit = unit;
  }
}

- (int)StringAsMassUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"UNKNOWN_MASS_UNIT"])
  {
    v4 = 0;
  }

  else if ([unitCopy isEqualToString:@"KILOGRAM"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"GRAM"])
  {
    v4 = 2;
  }

  else if ([unitCopy isEqualToString:@"DECIGRAM"])
  {
    v4 = 3;
  }

  else if ([unitCopy isEqualToString:@"CENTIGRAM"])
  {
    v4 = 4;
  }

  else if ([unitCopy isEqualToString:@"MILLIGRAM"])
  {
    v4 = 5;
  }

  else if ([unitCopy isEqualToString:@"MICROGRAM"])
  {
    v4 = 6;
  }

  else if ([unitCopy isEqualToString:@"NANOGRAM"])
  {
    v4 = 7;
  }

  else if ([unitCopy isEqualToString:@"PICOGRAM"])
  {
    v4 = 8;
  }

  else if ([unitCopy isEqualToString:@"OUNCE"])
  {
    v4 = 9;
  }

  else if ([unitCopy isEqualToString:@"POUND"])
  {
    v4 = 10;
  }

  else if ([unitCopy isEqualToString:@"STONE"])
  {
    v4 = 11;
  }

  else if ([unitCopy isEqualToString:@"METRIC_TONNE"])
  {
    v4 = 12;
  }

  else if ([unitCopy isEqualToString:@"SHORT_TONNE"])
  {
    v4 = 13;
  }

  else if ([unitCopy isEqualToString:@"CARATS"])
  {
    v4 = 14;
  }

  else if ([unitCopy isEqualToString:@"OUNCE_TROY"])
  {
    v4 = 15;
  }

  else if ([unitCopy isEqualToString:@"SLUG"])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMassUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setMassUnit:(int)unit
{
  has = self->_has;
  if (unit == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_massUnit = unit;
  }
}

- (int)StringAsLengthUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"METERS"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"MILES"])
  {
    v4 = 2;
  }

  else if ([unitCopy isEqualToString:@"CENTIMETER"])
  {
    v4 = 3;
  }

  else if ([unitCopy isEqualToString:@"FOOT"])
  {
    v4 = 4;
  }

  else if ([unitCopy isEqualToString:@"INCH"])
  {
    v4 = 5;
  }

  else if ([unitCopy isEqualToString:@"YARD"])
  {
    v4 = 6;
  }

  else if ([unitCopy isEqualToString:@"KILOMETER"])
  {
    v4 = 7;
  }

  else if ([unitCopy isEqualToString:@"MEGAMETER"])
  {
    v4 = 8;
  }

  else if ([unitCopy isEqualToString:@"HECTOMETER"])
  {
    v4 = 9;
  }

  else if ([unitCopy isEqualToString:@"DECAMETER"])
  {
    v4 = 10;
  }

  else if ([unitCopy isEqualToString:@"DECIMETER"])
  {
    v4 = 11;
  }

  else if ([unitCopy isEqualToString:@"MILLIMETER"])
  {
    v4 = 12;
  }

  else if ([unitCopy isEqualToString:@"MICROMETER"])
  {
    v4 = 13;
  }

  else if ([unitCopy isEqualToString:@"NANOMETER"])
  {
    v4 = 14;
  }

  else if ([unitCopy isEqualToString:@"PICOMETER"])
  {
    v4 = 15;
  }

  else if ([unitCopy isEqualToString:@"SCANDINAVIAN_MILE"])
  {
    v4 = 16;
  }

  else if ([unitCopy isEqualToString:@"LIGHTYEAR"])
  {
    v4 = 17;
  }

  else if ([unitCopy isEqualToString:@"NAUTICAL_MILE"])
  {
    v4 = 18;
  }

  else if ([unitCopy isEqualToString:@"FATHOM"])
  {
    v4 = 19;
  }

  else if ([unitCopy isEqualToString:@"FURLONG"])
  {
    v4 = 20;
  }

  else if ([unitCopy isEqualToString:@"ASTRONOMICAL_UNIT"])
  {
    v4 = 21;
  }

  else if ([unitCopy isEqualToString:@"PARSEC"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasLengthUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setLengthUnit:(int)unit
{
  has = self->_has;
  if (unit == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_lengthUnit = unit;
  }
}

- (int)StringAsHeartRateUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"UNKNOWN_HEART_RATE_UNIT"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [unitCopy isEqualToString:@"BPM"];
  }

  return v4;
}

- (void)setHasHeartRateUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHeartRateUnit:(int)unit
{
  has = self->_has;
  if (unit == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_heartRateUnit = unit;
  }
}

- (int)StringAsEnergyUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"UNKNOWN_ENERGY_UNIT"])
  {
    v4 = 0;
  }

  else if ([unitCopy isEqualToString:@"KILOJOULE"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"JOULE"])
  {
    v4 = 2;
  }

  else if ([unitCopy isEqualToString:@"KILOCALORIE"])
  {
    v4 = 3;
  }

  else if ([unitCopy isEqualToString:@"CALORIE"])
  {
    v4 = 4;
  }

  else if ([unitCopy isEqualToString:@"KILOWATT_HOUR"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEnergyUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setEnergyUnit:(int)unit
{
  has = self->_has;
  if (unit == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_energyUnit = unit;
  }
}

- (int)StringAsBloodPressureUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"UNKNOWN_BLOOD_PRESSURE_UNIT"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [unitCopy isEqualToString:@"MMHG"];
  }

  return v4;
}

- (void)setHasBloodPressureUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setBloodPressureUnit:(int)unit
{
  has = self->_has;
  if (unit == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_bloodPressureUnit = unit;
  }
}

- (int)StringAsBloodGlucoseUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"UNKNOWN_BLOOD_GLUCOSE_UNIT"])
  {
    v4 = 0;
  }

  else if ([unitCopy isEqualToString:@"MGDL"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"MMOLL"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBloodGlucoseUnit:(int)unit
{
  has = self->_has;
  if (unit == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_bloodGlucoseUnit = unit;
  }
}

@end
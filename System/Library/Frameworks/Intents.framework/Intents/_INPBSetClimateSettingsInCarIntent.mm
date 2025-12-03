@interface _INPBSetClimateSettingsInCarIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetClimateSettingsInCarIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAirCirculationMode:(id)mode;
- (int)StringAsClimateZone:(id)zone;
- (int)StringAsRelativeFanSpeedSetting:(id)setting;
- (int)StringAsRelativeTemperatureSetting:(id)setting;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAirCirculationMode:(int)mode;
- (void)setClimateZone:(int)zone;
- (void)setHasClimateZone:(BOOL)zone;
- (void)setHasEnableAirConditioner:(BOOL)conditioner;
- (void)setHasEnableAutoMode:(BOOL)mode;
- (void)setHasEnableClimateControl:(BOOL)control;
- (void)setHasEnableFan:(BOOL)fan;
- (void)setHasRelativeFanSpeedSetting:(BOOL)setting;
- (void)setHasRelativeTemperatureSetting:(BOOL)setting;
- (void)setRelativeFanSpeedSetting:(int)setting;
- (void)setRelativeTemperatureSetting:(int)setting;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetClimateSettingsInCarIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSetClimateSettingsInCarIntent *)self hasAirCirculationMode])
  {
    airCirculationMode = [(_INPBSetClimateSettingsInCarIntent *)self airCirculationMode];
    if (airCirculationMode == 1)
    {
      v5 = @"FRESH_AIR";
    }

    else if (airCirculationMode == 2)
    {
      v5 = @"RECIRCULATE_AIR";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", airCirculationMode];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"airCirculationMode"];
  }

  carName = [(_INPBSetClimateSettingsInCarIntent *)self carName];
  dictionaryRepresentation = [carName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"carName"];

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasClimateZone])
  {
    climateZone = [(_INPBSetClimateSettingsInCarIntent *)self climateZone];
    v9 = climateZone - 1;
    if (climateZone - 1) < 0x16 && ((0x3F8383u >> v9))
    {
      v10 = off_1E7280B08[v9];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", climateZone];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"climateZone"];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAirConditioner])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetClimateSettingsInCarIntent enableAirConditioner](self, "enableAirConditioner")}];
    [dictionary setObject:v11 forKeyedSubscript:@"enableAirConditioner"];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAutoMode])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetClimateSettingsInCarIntent enableAutoMode](self, "enableAutoMode")}];
    [dictionary setObject:v12 forKeyedSubscript:@"enableAutoMode"];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableClimateControl])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetClimateSettingsInCarIntent enableClimateControl](self, "enableClimateControl")}];
    [dictionary setObject:v13 forKeyedSubscript:@"enableClimateControl"];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableFan])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetClimateSettingsInCarIntent enableFan](self, "enableFan")}];
    [dictionary setObject:v14 forKeyedSubscript:@"enableFan"];
  }

  fanSpeedIndex = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedIndex];
  dictionaryRepresentation2 = [fanSpeedIndex dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"fanSpeedIndex"];

  fanSpeedPercentage = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedPercentage];
  dictionaryRepresentation3 = [fanSpeedPercentage dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"fanSpeedPercentage"];

  intentMetadata = [(_INPBSetClimateSettingsInCarIntent *)self intentMetadata];
  dictionaryRepresentation4 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeFanSpeedSetting])
  {
    relativeFanSpeedSetting = [(_INPBSetClimateSettingsInCarIntent *)self relativeFanSpeedSetting];
    if ((relativeFanSpeedSetting - 1) >= 4)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", relativeFanSpeedSetting];
    }

    else
    {
      v22 = off_1E7280BB8[(relativeFanSpeedSetting - 1)];
    }

    [dictionary setObject:v22 forKeyedSubscript:@"relativeFanSpeedSetting"];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeTemperatureSetting])
  {
    relativeTemperatureSetting = [(_INPBSetClimateSettingsInCarIntent *)self relativeTemperatureSetting];
    if ((relativeTemperatureSetting - 1) >= 4)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", relativeTemperatureSetting];
    }

    else
    {
      v24 = off_1E7280BB8[(relativeTemperatureSetting - 1)];
    }

    [dictionary setObject:v24 forKeyedSubscript:@"relativeTemperatureSetting"];
  }

  temperature = [(_INPBSetClimateSettingsInCarIntent *)self temperature];
  dictionaryRepresentation5 = [temperature dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"temperature"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBSetClimateSettingsInCarIntent *)self hasAirCirculationMode])
  {
    v15 = 2654435761 * self->_airCirculationMode;
  }

  else
  {
    v15 = 0;
  }

  v14 = [(_INPBDataString *)self->_carName hash];
  if ([(_INPBSetClimateSettingsInCarIntent *)self hasClimateZone])
  {
    v13 = 2654435761 * self->_climateZone;
  }

  else
  {
    v13 = 0;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAirConditioner])
  {
    v3 = 2654435761 * self->_enableAirConditioner;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAutoMode])
  {
    v4 = 2654435761 * self->_enableAutoMode;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableClimateControl])
  {
    v5 = 2654435761 * self->_enableClimateControl;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableFan])
  {
    v6 = 2654435761 * self->_enableFan;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_INPBInteger *)self->_fanSpeedIndex hash];
  v8 = [(_INPBDouble *)self->_fanSpeedPercentage hash];
  v9 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeFanSpeedSetting])
  {
    v10 = 2654435761 * self->_relativeFanSpeedSetting;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeTemperatureSetting])
  {
    v11 = 2654435761 * self->_relativeTemperatureSetting;
  }

  else
  {
    v11 = 0;
  }

  return v14 ^ v15 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(_INPBTemperature *)self->_temperature hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_59;
  }

  hasAirCirculationMode = [(_INPBSetClimateSettingsInCarIntent *)self hasAirCirculationMode];
  if (hasAirCirculationMode != [equalCopy hasAirCirculationMode])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasAirCirculationMode])
  {
    if ([equalCopy hasAirCirculationMode])
    {
      airCirculationMode = self->_airCirculationMode;
      if (airCirculationMode != [equalCopy airCirculationMode])
      {
        goto LABEL_59;
      }
    }
  }

  carName = [(_INPBSetClimateSettingsInCarIntent *)self carName];
  carName2 = [equalCopy carName];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_58;
  }

  carName3 = [(_INPBSetClimateSettingsInCarIntent *)self carName];
  if (carName3)
  {
    v10 = carName3;
    carName4 = [(_INPBSetClimateSettingsInCarIntent *)self carName];
    carName5 = [equalCopy carName];
    v13 = [carName4 isEqual:carName5];

    if (!v13)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  hasClimateZone = [(_INPBSetClimateSettingsInCarIntent *)self hasClimateZone];
  if (hasClimateZone != [equalCopy hasClimateZone])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasClimateZone])
  {
    if ([equalCopy hasClimateZone])
    {
      climateZone = self->_climateZone;
      if (climateZone != [equalCopy climateZone])
      {
        goto LABEL_59;
      }
    }
  }

  hasEnableAirConditioner = [(_INPBSetClimateSettingsInCarIntent *)self hasEnableAirConditioner];
  if (hasEnableAirConditioner != [equalCopy hasEnableAirConditioner])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAirConditioner])
  {
    if ([equalCopy hasEnableAirConditioner])
    {
      enableAirConditioner = self->_enableAirConditioner;
      if (enableAirConditioner != [equalCopy enableAirConditioner])
      {
        goto LABEL_59;
      }
    }
  }

  hasEnableAutoMode = [(_INPBSetClimateSettingsInCarIntent *)self hasEnableAutoMode];
  if (hasEnableAutoMode != [equalCopy hasEnableAutoMode])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAutoMode])
  {
    if ([equalCopy hasEnableAutoMode])
    {
      enableAutoMode = self->_enableAutoMode;
      if (enableAutoMode != [equalCopy enableAutoMode])
      {
        goto LABEL_59;
      }
    }
  }

  hasEnableClimateControl = [(_INPBSetClimateSettingsInCarIntent *)self hasEnableClimateControl];
  if (hasEnableClimateControl != [equalCopy hasEnableClimateControl])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableClimateControl])
  {
    if ([equalCopy hasEnableClimateControl])
    {
      enableClimateControl = self->_enableClimateControl;
      if (enableClimateControl != [equalCopy enableClimateControl])
      {
        goto LABEL_59;
      }
    }
  }

  hasEnableFan = [(_INPBSetClimateSettingsInCarIntent *)self hasEnableFan];
  if (hasEnableFan != [equalCopy hasEnableFan])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableFan])
  {
    if ([equalCopy hasEnableFan])
    {
      enableFan = self->_enableFan;
      if (enableFan != [equalCopy enableFan])
      {
        goto LABEL_59;
      }
    }
  }

  carName = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedIndex];
  carName2 = [equalCopy fanSpeedIndex];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_58;
  }

  fanSpeedIndex = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedIndex];
  if (fanSpeedIndex)
  {
    v25 = fanSpeedIndex;
    fanSpeedIndex2 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedIndex];
    fanSpeedIndex3 = [equalCopy fanSpeedIndex];
    v28 = [fanSpeedIndex2 isEqual:fanSpeedIndex3];

    if (!v28)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  carName = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedPercentage];
  carName2 = [equalCopy fanSpeedPercentage];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_58;
  }

  fanSpeedPercentage = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedPercentage];
  if (fanSpeedPercentage)
  {
    v30 = fanSpeedPercentage;
    fanSpeedPercentage2 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedPercentage];
    fanSpeedPercentage3 = [equalCopy fanSpeedPercentage];
    v33 = [fanSpeedPercentage2 isEqual:fanSpeedPercentage3];

    if (!v33)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  carName = [(_INPBSetClimateSettingsInCarIntent *)self intentMetadata];
  carName2 = [equalCopy intentMetadata];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_58;
  }

  intentMetadata = [(_INPBSetClimateSettingsInCarIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v35 = intentMetadata;
    intentMetadata2 = [(_INPBSetClimateSettingsInCarIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v38 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v38)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  hasRelativeFanSpeedSetting = [(_INPBSetClimateSettingsInCarIntent *)self hasRelativeFanSpeedSetting];
  if (hasRelativeFanSpeedSetting != [equalCopy hasRelativeFanSpeedSetting])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeFanSpeedSetting])
  {
    if ([equalCopy hasRelativeFanSpeedSetting])
    {
      relativeFanSpeedSetting = self->_relativeFanSpeedSetting;
      if (relativeFanSpeedSetting != [equalCopy relativeFanSpeedSetting])
      {
        goto LABEL_59;
      }
    }
  }

  hasRelativeTemperatureSetting = [(_INPBSetClimateSettingsInCarIntent *)self hasRelativeTemperatureSetting];
  if (hasRelativeTemperatureSetting != [equalCopy hasRelativeTemperatureSetting])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeTemperatureSetting])
  {
    if ([equalCopy hasRelativeTemperatureSetting])
    {
      relativeTemperatureSetting = self->_relativeTemperatureSetting;
      if (relativeTemperatureSetting != [equalCopy relativeTemperatureSetting])
      {
        goto LABEL_59;
      }
    }
  }

  carName = [(_INPBSetClimateSettingsInCarIntent *)self temperature];
  carName2 = [equalCopy temperature];
  if ((carName != 0) != (carName2 == 0))
  {
    temperature = [(_INPBSetClimateSettingsInCarIntent *)self temperature];
    if (!temperature)
    {

LABEL_62:
      v48 = 1;
      goto LABEL_60;
    }

    v44 = temperature;
    temperature2 = [(_INPBSetClimateSettingsInCarIntent *)self temperature];
    temperature3 = [equalCopy temperature];
    v47 = [temperature2 isEqual:temperature3];

    if (v47)
    {
      goto LABEL_62;
    }
  }

  else
  {
LABEL_58:
  }

LABEL_59:
  v48 = 0;
LABEL_60:

  return v48;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetClimateSettingsInCarIntent allocWithZone:](_INPBSetClimateSettingsInCarIntent init];
  if ([(_INPBSetClimateSettingsInCarIntent *)self hasAirCirculationMode])
  {
    [(_INPBSetClimateSettingsInCarIntent *)v5 setAirCirculationMode:[(_INPBSetClimateSettingsInCarIntent *)self airCirculationMode]];
  }

  v6 = [(_INPBDataString *)self->_carName copyWithZone:zone];
  [(_INPBSetClimateSettingsInCarIntent *)v5 setCarName:v6];

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasClimateZone])
  {
    [(_INPBSetClimateSettingsInCarIntent *)v5 setClimateZone:[(_INPBSetClimateSettingsInCarIntent *)self climateZone]];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAirConditioner])
  {
    [(_INPBSetClimateSettingsInCarIntent *)v5 setEnableAirConditioner:[(_INPBSetClimateSettingsInCarIntent *)self enableAirConditioner]];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAutoMode])
  {
    [(_INPBSetClimateSettingsInCarIntent *)v5 setEnableAutoMode:[(_INPBSetClimateSettingsInCarIntent *)self enableAutoMode]];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableClimateControl])
  {
    [(_INPBSetClimateSettingsInCarIntent *)v5 setEnableClimateControl:[(_INPBSetClimateSettingsInCarIntent *)self enableClimateControl]];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableFan])
  {
    [(_INPBSetClimateSettingsInCarIntent *)v5 setEnableFan:[(_INPBSetClimateSettingsInCarIntent *)self enableFan]];
  }

  v7 = [(_INPBInteger *)self->_fanSpeedIndex copyWithZone:zone];
  [(_INPBSetClimateSettingsInCarIntent *)v5 setFanSpeedIndex:v7];

  v8 = [(_INPBDouble *)self->_fanSpeedPercentage copyWithZone:zone];
  [(_INPBSetClimateSettingsInCarIntent *)v5 setFanSpeedPercentage:v8];

  v9 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetClimateSettingsInCarIntent *)v5 setIntentMetadata:v9];

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeFanSpeedSetting])
  {
    [(_INPBSetClimateSettingsInCarIntent *)v5 setRelativeFanSpeedSetting:[(_INPBSetClimateSettingsInCarIntent *)self relativeFanSpeedSetting]];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeTemperatureSetting])
  {
    [(_INPBSetClimateSettingsInCarIntent *)v5 setRelativeTemperatureSetting:[(_INPBSetClimateSettingsInCarIntent *)self relativeTemperatureSetting]];
  }

  v10 = [(_INPBTemperature *)self->_temperature copyWithZone:zone];
  [(_INPBSetClimateSettingsInCarIntent *)v5 setTemperature:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetClimateSettingsInCarIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetClimateSettingsInCarIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetClimateSettingsInCarIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBSetClimateSettingsInCarIntent *)self hasAirCirculationMode])
  {
    airCirculationMode = self->_airCirculationMode;
    PBDataWriterWriteInt32Field();
  }

  carName = [(_INPBSetClimateSettingsInCarIntent *)self carName];

  if (carName)
  {
    carName2 = [(_INPBSetClimateSettingsInCarIntent *)self carName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasClimateZone])
  {
    climateZone = self->_climateZone;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAirConditioner])
  {
    enableAirConditioner = self->_enableAirConditioner;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAutoMode])
  {
    enableAutoMode = self->_enableAutoMode;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableClimateControl])
  {
    enableClimateControl = self->_enableClimateControl;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableFan])
  {
    enableFan = self->_enableFan;
    PBDataWriterWriteBOOLField();
  }

  fanSpeedIndex = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedIndex];

  if (fanSpeedIndex)
  {
    fanSpeedIndex2 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedIndex];
    PBDataWriterWriteSubmessage();
  }

  fanSpeedPercentage = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedPercentage];

  if (fanSpeedPercentage)
  {
    fanSpeedPercentage2 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedPercentage];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBSetClimateSettingsInCarIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetClimateSettingsInCarIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeFanSpeedSetting])
  {
    relativeFanSpeedSetting = self->_relativeFanSpeedSetting;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeTemperatureSetting])
  {
    relativeTemperatureSetting = self->_relativeTemperatureSetting;
    PBDataWriterWriteInt32Field();
  }

  temperature = [(_INPBSetClimateSettingsInCarIntent *)self temperature];

  v21 = toCopy;
  if (temperature)
  {
    temperature2 = [(_INPBSetClimateSettingsInCarIntent *)self temperature];
    PBDataWriterWriteSubmessage();

    v21 = toCopy;
  }
}

- (int)StringAsRelativeTemperatureSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy isEqualToString:@"LOWEST"])
  {
    v4 = 1;
  }

  else if ([settingCopy isEqualToString:@"LOWER"])
  {
    v4 = 2;
  }

  else if ([settingCopy isEqualToString:@"HIGHER"])
  {
    v4 = 3;
  }

  else if ([settingCopy isEqualToString:@"HIGHEST"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasRelativeTemperatureSetting:(BOOL)setting
{
  if (setting)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setRelativeTemperatureSetting:(int)setting
{
  has = self->_has;
  if (setting == 0x7FFFFFFF)
  {
    *&self->_has = has & 0x7F;
  }

  else
  {
    *&self->_has = has | 0x80;
    self->_relativeTemperatureSetting = setting;
  }
}

- (int)StringAsRelativeFanSpeedSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy isEqualToString:@"LOWEST"])
  {
    v4 = 1;
  }

  else if ([settingCopy isEqualToString:@"LOWER"])
  {
    v4 = 2;
  }

  else if ([settingCopy isEqualToString:@"HIGHER"])
  {
    v4 = 3;
  }

  else if ([settingCopy isEqualToString:@"HIGHEST"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasRelativeFanSpeedSetting:(BOOL)setting
{
  if (setting)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setRelativeFanSpeedSetting:(int)setting
{
  has = self->_has;
  if (setting == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xBF;
  }

  else
  {
    *&self->_has = has | 0x40;
    self->_relativeFanSpeedSetting = setting;
  }
}

- (void)setHasEnableFan:(BOOL)fan
{
  if (fan)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasEnableClimateControl:(BOOL)control
{
  if (control)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasEnableAutoMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEnableAirConditioner:(BOOL)conditioner
{
  if (conditioner)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsClimateZone:(id)zone
{
  zoneCopy = zone;
  if ([zoneCopy isEqualToString:@"DRIVER"])
  {
    v4 = 1;
  }

  else if ([zoneCopy isEqualToString:@"PASSENGER"])
  {
    v4 = 2;
  }

  else if ([zoneCopy isEqualToString:@"FRONT_LEFT"])
  {
    v4 = 8;
  }

  else if ([zoneCopy isEqualToString:@"FRONT_RIGHT"])
  {
    v4 = 9;
  }

  else if ([zoneCopy isEqualToString:@"FRONT"])
  {
    v4 = 10;
  }

  else if ([zoneCopy isEqualToString:@"REAR_LEFT"])
  {
    v4 = 16;
  }

  else if ([zoneCopy isEqualToString:@"REAR_RIGHT"])
  {
    v4 = 17;
  }

  else if ([zoneCopy isEqualToString:@"REAR"])
  {
    v4 = 18;
  }

  else if ([zoneCopy isEqualToString:@"THIRD_ROW_LEFT"])
  {
    v4 = 19;
  }

  else if ([zoneCopy isEqualToString:@"THIRD_ROW_RIGHT"])
  {
    v4 = 20;
  }

  else if ([zoneCopy isEqualToString:@"THIRD_ROW"])
  {
    v4 = 21;
  }

  else if ([zoneCopy isEqualToString:@"ALL"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasClimateZone:(BOOL)zone
{
  if (zone)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setClimateZone:(int)zone
{
  has = self->_has;
  if (zone == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_climateZone = zone;
  }
}

- (int)StringAsAirCirculationMode:(id)mode
{
  modeCopy = mode;
  v4 = 1;
  if (([modeCopy isEqualToString:@"FRESH_AIR"] & 1) == 0)
  {
    if ([modeCopy isEqualToString:@"RECIRCULATE_AIR"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setAirCirculationMode:(int)mode
{
  has = self->_has;
  if (mode == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_airCirculationMode = mode;
  }
}

@end
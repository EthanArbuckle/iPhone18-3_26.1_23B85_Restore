@interface _INPBSetClimateSettingsInCarIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetClimateSettingsInCarIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAirCirculationMode:(id)a3;
- (int)StringAsClimateZone:(id)a3;
- (int)StringAsRelativeFanSpeedSetting:(id)a3;
- (int)StringAsRelativeTemperatureSetting:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAirCirculationMode:(int)a3;
- (void)setClimateZone:(int)a3;
- (void)setHasClimateZone:(BOOL)a3;
- (void)setHasEnableAirConditioner:(BOOL)a3;
- (void)setHasEnableAutoMode:(BOOL)a3;
- (void)setHasEnableClimateControl:(BOOL)a3;
- (void)setHasEnableFan:(BOOL)a3;
- (void)setHasRelativeFanSpeedSetting:(BOOL)a3;
- (void)setHasRelativeTemperatureSetting:(BOOL)a3;
- (void)setRelativeFanSpeedSetting:(int)a3;
- (void)setRelativeTemperatureSetting:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetClimateSettingsInCarIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSetClimateSettingsInCarIntent *)self hasAirCirculationMode])
  {
    v4 = [(_INPBSetClimateSettingsInCarIntent *)self airCirculationMode];
    if (v4 == 1)
    {
      v5 = @"FRESH_AIR";
    }

    else if (v4 == 2)
    {
      v5 = @"RECIRCULATE_AIR";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"airCirculationMode"];
  }

  v6 = [(_INPBSetClimateSettingsInCarIntent *)self carName];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"carName"];

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasClimateZone])
  {
    v8 = [(_INPBSetClimateSettingsInCarIntent *)self climateZone];
    v9 = v8 - 1;
    if (v8 - 1) < 0x16 && ((0x3F8383u >> v9))
    {
      v10 = off_1E7280B08[v9];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    [v3 setObject:v10 forKeyedSubscript:@"climateZone"];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAirConditioner])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetClimateSettingsInCarIntent enableAirConditioner](self, "enableAirConditioner")}];
    [v3 setObject:v11 forKeyedSubscript:@"enableAirConditioner"];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAutoMode])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetClimateSettingsInCarIntent enableAutoMode](self, "enableAutoMode")}];
    [v3 setObject:v12 forKeyedSubscript:@"enableAutoMode"];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableClimateControl])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetClimateSettingsInCarIntent enableClimateControl](self, "enableClimateControl")}];
    [v3 setObject:v13 forKeyedSubscript:@"enableClimateControl"];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableFan])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetClimateSettingsInCarIntent enableFan](self, "enableFan")}];
    [v3 setObject:v14 forKeyedSubscript:@"enableFan"];
  }

  v15 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedIndex];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"fanSpeedIndex"];

  v17 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedPercentage];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"fanSpeedPercentage"];

  v19 = [(_INPBSetClimateSettingsInCarIntent *)self intentMetadata];
  v20 = [v19 dictionaryRepresentation];
  [v3 setObject:v20 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeFanSpeedSetting])
  {
    v21 = [(_INPBSetClimateSettingsInCarIntent *)self relativeFanSpeedSetting];
    if ((v21 - 1) >= 4)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v21];
    }

    else
    {
      v22 = off_1E7280BB8[(v21 - 1)];
    }

    [v3 setObject:v22 forKeyedSubscript:@"relativeFanSpeedSetting"];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeTemperatureSetting])
  {
    v23 = [(_INPBSetClimateSettingsInCarIntent *)self relativeTemperatureSetting];
    if ((v23 - 1) >= 4)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v23];
    }

    else
    {
      v24 = off_1E7280BB8[(v23 - 1)];
    }

    [v3 setObject:v24 forKeyedSubscript:@"relativeTemperatureSetting"];
  }

  v25 = [(_INPBSetClimateSettingsInCarIntent *)self temperature];
  v26 = [v25 dictionaryRepresentation];
  [v3 setObject:v26 forKeyedSubscript:@"temperature"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_59;
  }

  v5 = [(_INPBSetClimateSettingsInCarIntent *)self hasAirCirculationMode];
  if (v5 != [v4 hasAirCirculationMode])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasAirCirculationMode])
  {
    if ([v4 hasAirCirculationMode])
    {
      airCirculationMode = self->_airCirculationMode;
      if (airCirculationMode != [v4 airCirculationMode])
      {
        goto LABEL_59;
      }
    }
  }

  v7 = [(_INPBSetClimateSettingsInCarIntent *)self carName];
  v8 = [v4 carName];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_58;
  }

  v9 = [(_INPBSetClimateSettingsInCarIntent *)self carName];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBSetClimateSettingsInCarIntent *)self carName];
    v12 = [v4 carName];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v14 = [(_INPBSetClimateSettingsInCarIntent *)self hasClimateZone];
  if (v14 != [v4 hasClimateZone])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasClimateZone])
  {
    if ([v4 hasClimateZone])
    {
      climateZone = self->_climateZone;
      if (climateZone != [v4 climateZone])
      {
        goto LABEL_59;
      }
    }
  }

  v16 = [(_INPBSetClimateSettingsInCarIntent *)self hasEnableAirConditioner];
  if (v16 != [v4 hasEnableAirConditioner])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAirConditioner])
  {
    if ([v4 hasEnableAirConditioner])
    {
      enableAirConditioner = self->_enableAirConditioner;
      if (enableAirConditioner != [v4 enableAirConditioner])
      {
        goto LABEL_59;
      }
    }
  }

  v18 = [(_INPBSetClimateSettingsInCarIntent *)self hasEnableAutoMode];
  if (v18 != [v4 hasEnableAutoMode])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableAutoMode])
  {
    if ([v4 hasEnableAutoMode])
    {
      enableAutoMode = self->_enableAutoMode;
      if (enableAutoMode != [v4 enableAutoMode])
      {
        goto LABEL_59;
      }
    }
  }

  v20 = [(_INPBSetClimateSettingsInCarIntent *)self hasEnableClimateControl];
  if (v20 != [v4 hasEnableClimateControl])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableClimateControl])
  {
    if ([v4 hasEnableClimateControl])
    {
      enableClimateControl = self->_enableClimateControl;
      if (enableClimateControl != [v4 enableClimateControl])
      {
        goto LABEL_59;
      }
    }
  }

  v22 = [(_INPBSetClimateSettingsInCarIntent *)self hasEnableFan];
  if (v22 != [v4 hasEnableFan])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasEnableFan])
  {
    if ([v4 hasEnableFan])
    {
      enableFan = self->_enableFan;
      if (enableFan != [v4 enableFan])
      {
        goto LABEL_59;
      }
    }
  }

  v7 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedIndex];
  v8 = [v4 fanSpeedIndex];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_58;
  }

  v24 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedIndex];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedIndex];
    v27 = [v4 fanSpeedIndex];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v7 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedPercentage];
  v8 = [v4 fanSpeedPercentage];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_58;
  }

  v29 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedPercentage];
  if (v29)
  {
    v30 = v29;
    v31 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedPercentage];
    v32 = [v4 fanSpeedPercentage];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v7 = [(_INPBSetClimateSettingsInCarIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_58;
  }

  v34 = [(_INPBSetClimateSettingsInCarIntent *)self intentMetadata];
  if (v34)
  {
    v35 = v34;
    v36 = [(_INPBSetClimateSettingsInCarIntent *)self intentMetadata];
    v37 = [v4 intentMetadata];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v39 = [(_INPBSetClimateSettingsInCarIntent *)self hasRelativeFanSpeedSetting];
  if (v39 != [v4 hasRelativeFanSpeedSetting])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeFanSpeedSetting])
  {
    if ([v4 hasRelativeFanSpeedSetting])
    {
      relativeFanSpeedSetting = self->_relativeFanSpeedSetting;
      if (relativeFanSpeedSetting != [v4 relativeFanSpeedSetting])
      {
        goto LABEL_59;
      }
    }
  }

  v41 = [(_INPBSetClimateSettingsInCarIntent *)self hasRelativeTemperatureSetting];
  if (v41 != [v4 hasRelativeTemperatureSetting])
  {
    goto LABEL_59;
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeTemperatureSetting])
  {
    if ([v4 hasRelativeTemperatureSetting])
    {
      relativeTemperatureSetting = self->_relativeTemperatureSetting;
      if (relativeTemperatureSetting != [v4 relativeTemperatureSetting])
      {
        goto LABEL_59;
      }
    }
  }

  v7 = [(_INPBSetClimateSettingsInCarIntent *)self temperature];
  v8 = [v4 temperature];
  if ((v7 != 0) != (v8 == 0))
  {
    v43 = [(_INPBSetClimateSettingsInCarIntent *)self temperature];
    if (!v43)
    {

LABEL_62:
      v48 = 1;
      goto LABEL_60;
    }

    v44 = v43;
    v45 = [(_INPBSetClimateSettingsInCarIntent *)self temperature];
    v46 = [v4 temperature];
    v47 = [v45 isEqual:v46];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetClimateSettingsInCarIntent allocWithZone:](_INPBSetClimateSettingsInCarIntent init];
  if ([(_INPBSetClimateSettingsInCarIntent *)self hasAirCirculationMode])
  {
    [(_INPBSetClimateSettingsInCarIntent *)v5 setAirCirculationMode:[(_INPBSetClimateSettingsInCarIntent *)self airCirculationMode]];
  }

  v6 = [(_INPBDataString *)self->_carName copyWithZone:a3];
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

  v7 = [(_INPBInteger *)self->_fanSpeedIndex copyWithZone:a3];
  [(_INPBSetClimateSettingsInCarIntent *)v5 setFanSpeedIndex:v7];

  v8 = [(_INPBDouble *)self->_fanSpeedPercentage copyWithZone:a3];
  [(_INPBSetClimateSettingsInCarIntent *)v5 setFanSpeedPercentage:v8];

  v9 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetClimateSettingsInCarIntent *)v5 setIntentMetadata:v9];

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeFanSpeedSetting])
  {
    [(_INPBSetClimateSettingsInCarIntent *)v5 setRelativeFanSpeedSetting:[(_INPBSetClimateSettingsInCarIntent *)self relativeFanSpeedSetting]];
  }

  if ([(_INPBSetClimateSettingsInCarIntent *)self hasRelativeTemperatureSetting])
  {
    [(_INPBSetClimateSettingsInCarIntent *)v5 setRelativeTemperatureSetting:[(_INPBSetClimateSettingsInCarIntent *)self relativeTemperatureSetting]];
  }

  v10 = [(_INPBTemperature *)self->_temperature copyWithZone:a3];
  [(_INPBSetClimateSettingsInCarIntent *)v5 setTemperature:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetClimateSettingsInCarIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetClimateSettingsInCarIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetClimateSettingsInCarIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v23 = a3;
  if ([(_INPBSetClimateSettingsInCarIntent *)self hasAirCirculationMode])
  {
    airCirculationMode = self->_airCirculationMode;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBSetClimateSettingsInCarIntent *)self carName];

  if (v5)
  {
    v6 = [(_INPBSetClimateSettingsInCarIntent *)self carName];
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

  v12 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedIndex];

  if (v12)
  {
    v13 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedIndex];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedPercentage];

  if (v14)
  {
    v15 = [(_INPBSetClimateSettingsInCarIntent *)self fanSpeedPercentage];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_INPBSetClimateSettingsInCarIntent *)self intentMetadata];

  if (v16)
  {
    v17 = [(_INPBSetClimateSettingsInCarIntent *)self intentMetadata];
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

  v20 = [(_INPBSetClimateSettingsInCarIntent *)self temperature];

  v21 = v23;
  if (v20)
  {
    v22 = [(_INPBSetClimateSettingsInCarIntent *)self temperature];
    PBDataWriterWriteSubmessage();

    v21 = v23;
  }
}

- (int)StringAsRelativeTemperatureSetting:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LOWEST"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LOWER"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HIGHER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HIGHEST"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasRelativeTemperatureSetting:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setRelativeTemperatureSetting:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0x7F;
  }

  else
  {
    *&self->_has = has | 0x80;
    self->_relativeTemperatureSetting = a3;
  }
}

- (int)StringAsRelativeFanSpeedSetting:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LOWEST"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LOWER"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HIGHER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HIGHEST"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasRelativeFanSpeedSetting:(BOOL)a3
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

- (void)setRelativeFanSpeedSetting:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xBF;
  }

  else
  {
    *&self->_has = has | 0x40;
    self->_relativeFanSpeedSetting = a3;
  }
}

- (void)setHasEnableFan:(BOOL)a3
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

- (void)setHasEnableClimateControl:(BOOL)a3
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

- (void)setHasEnableAutoMode:(BOOL)a3
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

- (void)setHasEnableAirConditioner:(BOOL)a3
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

- (int)StringAsClimateZone:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DRIVER"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PASSENGER"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"FRONT_LEFT"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"FRONT_RIGHT"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"FRONT"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"REAR_LEFT"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"REAR_RIGHT"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"REAR"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"THIRD_ROW_LEFT"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"THIRD_ROW_RIGHT"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"THIRD_ROW"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"ALL"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasClimateZone:(BOOL)a3
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

- (void)setClimateZone:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_climateZone = a3;
  }
}

- (int)StringAsAirCirculationMode:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"FRESH_AIR"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"RECIRCULATE_AIR"])
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

- (void)setAirCirculationMode:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_airCirculationMode = a3;
  }
}

@end
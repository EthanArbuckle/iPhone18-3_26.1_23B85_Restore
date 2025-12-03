@interface _INPBSetSeatSettingsInCarIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetSeatSettingsInCarIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsRelativeLevelSetting:(id)setting;
- (int)StringAsSeat:(id)seat;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasEnableHeating:(BOOL)heating;
- (void)setHasEnableMassage:(BOOL)massage;
- (void)setHasRelativeLevelSetting:(BOOL)setting;
- (void)setHasSeat:(BOOL)seat;
- (void)setRelativeLevelSetting:(int)setting;
- (void)setSeat:(int)seat;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetSeatSettingsInCarIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  carName = [(_INPBSetSeatSettingsInCarIntent *)self carName];
  dictionaryRepresentation = [carName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"carName"];

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableCooling])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetSeatSettingsInCarIntent enableCooling](self, "enableCooling")}];
    [dictionary setObject:v6 forKeyedSubscript:@"enableCooling"];
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableHeating])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetSeatSettingsInCarIntent enableHeating](self, "enableHeating")}];
    [dictionary setObject:v7 forKeyedSubscript:@"enableHeating"];
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableMassage])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetSeatSettingsInCarIntent enableMassage](self, "enableMassage")}];
    [dictionary setObject:v8 forKeyedSubscript:@"enableMassage"];
  }

  intentMetadata = [(_INPBSetSeatSettingsInCarIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  level = [(_INPBSetSeatSettingsInCarIntent *)self level];
  dictionaryRepresentation3 = [level dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"level"];

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasRelativeLevelSetting])
  {
    relativeLevelSetting = [(_INPBSetSeatSettingsInCarIntent *)self relativeLevelSetting];
    if ((relativeLevelSetting - 1) >= 4)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", relativeLevelSetting];
    }

    else
    {
      v14 = off_1E7285BC8[(relativeLevelSetting - 1)];
    }

    [dictionary setObject:v14 forKeyedSubscript:@"relativeLevelSetting"];
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasSeat])
  {
    seat = [(_INPBSetSeatSettingsInCarIntent *)self seat];
    v16 = seat - 1;
    if (seat - 1) < 0x16 && ((0x3F8383u >> v16))
    {
      v17 = off_1E7285BE8[v16];
    }

    else
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", seat];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"seat"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_carName hash];
  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableCooling])
  {
    v4 = 2654435761 * self->_enableCooling;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableHeating])
  {
    v5 = 2654435761 * self->_enableHeating;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableMassage])
  {
    v6 = 2654435761 * self->_enableMassage;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v8 = [(_INPBInteger *)self->_level hash];
  if ([(_INPBSetSeatSettingsInCarIntent *)self hasRelativeLevelSetting])
  {
    v9 = 2654435761 * self->_relativeLevelSetting;
  }

  else
  {
    v9 = 0;
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasSeat])
  {
    v10 = 2654435761 * self->_seat;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  carName = [(_INPBSetSeatSettingsInCarIntent *)self carName];
  carName2 = [equalCopy carName];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_28;
  }

  carName3 = [(_INPBSetSeatSettingsInCarIntent *)self carName];
  if (carName3)
  {
    v8 = carName3;
    carName4 = [(_INPBSetSeatSettingsInCarIntent *)self carName];
    carName5 = [equalCopy carName];
    v11 = [carName4 isEqual:carName5];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  hasEnableCooling = [(_INPBSetSeatSettingsInCarIntent *)self hasEnableCooling];
  if (hasEnableCooling != [equalCopy hasEnableCooling])
  {
    goto LABEL_29;
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableCooling])
  {
    if ([equalCopy hasEnableCooling])
    {
      enableCooling = self->_enableCooling;
      if (enableCooling != [equalCopy enableCooling])
      {
        goto LABEL_29;
      }
    }
  }

  hasEnableHeating = [(_INPBSetSeatSettingsInCarIntent *)self hasEnableHeating];
  if (hasEnableHeating != [equalCopy hasEnableHeating])
  {
    goto LABEL_29;
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableHeating])
  {
    if ([equalCopy hasEnableHeating])
    {
      enableHeating = self->_enableHeating;
      if (enableHeating != [equalCopy enableHeating])
      {
        goto LABEL_29;
      }
    }
  }

  hasEnableMassage = [(_INPBSetSeatSettingsInCarIntent *)self hasEnableMassage];
  if (hasEnableMassage != [equalCopy hasEnableMassage])
  {
    goto LABEL_29;
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableMassage])
  {
    if ([equalCopy hasEnableMassage])
    {
      enableMassage = self->_enableMassage;
      if (enableMassage != [equalCopy enableMassage])
      {
        goto LABEL_29;
      }
    }
  }

  carName = [(_INPBSetSeatSettingsInCarIntent *)self intentMetadata];
  carName2 = [equalCopy intentMetadata];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_28;
  }

  intentMetadata = [(_INPBSetSeatSettingsInCarIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v19 = intentMetadata;
    intentMetadata2 = [(_INPBSetSeatSettingsInCarIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v22 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v22)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  carName = [(_INPBSetSeatSettingsInCarIntent *)self level];
  carName2 = [equalCopy level];
  if ((carName != 0) == (carName2 == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  level = [(_INPBSetSeatSettingsInCarIntent *)self level];
  if (level)
  {
    v24 = level;
    level2 = [(_INPBSetSeatSettingsInCarIntent *)self level];
    level3 = [equalCopy level];
    v27 = [level2 isEqual:level3];

    if (!v27)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  hasRelativeLevelSetting = [(_INPBSetSeatSettingsInCarIntent *)self hasRelativeLevelSetting];
  if (hasRelativeLevelSetting == [equalCopy hasRelativeLevelSetting])
  {
    if (!-[_INPBSetSeatSettingsInCarIntent hasRelativeLevelSetting](self, "hasRelativeLevelSetting") || ![equalCopy hasRelativeLevelSetting] || (relativeLevelSetting = self->_relativeLevelSetting, relativeLevelSetting == objc_msgSend(equalCopy, "relativeLevelSetting")))
    {
      hasSeat = [(_INPBSetSeatSettingsInCarIntent *)self hasSeat];
      if (hasSeat == [equalCopy hasSeat])
      {
        if (!-[_INPBSetSeatSettingsInCarIntent hasSeat](self, "hasSeat") || ![equalCopy hasSeat] || (seat = self->_seat, seat == objc_msgSend(equalCopy, "seat")))
        {
          v28 = 1;
          goto LABEL_30;
        }
      }
    }
  }

LABEL_29:
  v28 = 0;
LABEL_30:

  return v28;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetSeatSettingsInCarIntent allocWithZone:](_INPBSetSeatSettingsInCarIntent init];
  v6 = [(_INPBDataString *)self->_carName copyWithZone:zone];
  [(_INPBSetSeatSettingsInCarIntent *)v5 setCarName:v6];

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableCooling])
  {
    [(_INPBSetSeatSettingsInCarIntent *)v5 setEnableCooling:[(_INPBSetSeatSettingsInCarIntent *)self enableCooling]];
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableHeating])
  {
    [(_INPBSetSeatSettingsInCarIntent *)v5 setEnableHeating:[(_INPBSetSeatSettingsInCarIntent *)self enableHeating]];
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableMassage])
  {
    [(_INPBSetSeatSettingsInCarIntent *)v5 setEnableMassage:[(_INPBSetSeatSettingsInCarIntent *)self enableMassage]];
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetSeatSettingsInCarIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBInteger *)self->_level copyWithZone:zone];
  [(_INPBSetSeatSettingsInCarIntent *)v5 setLevel:v8];

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasRelativeLevelSetting])
  {
    [(_INPBSetSeatSettingsInCarIntent *)v5 setRelativeLevelSetting:[(_INPBSetSeatSettingsInCarIntent *)self relativeLevelSetting]];
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasSeat])
  {
    [(_INPBSetSeatSettingsInCarIntent *)v5 setSeat:[(_INPBSetSeatSettingsInCarIntent *)self seat]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetSeatSettingsInCarIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetSeatSettingsInCarIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetSeatSettingsInCarIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  carName = [(_INPBSetSeatSettingsInCarIntent *)self carName];

  if (carName)
  {
    carName2 = [(_INPBSetSeatSettingsInCarIntent *)self carName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableCooling])
  {
    enableCooling = self->_enableCooling;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableHeating])
  {
    enableHeating = self->_enableHeating;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableMassage])
  {
    enableMassage = self->_enableMassage;
    PBDataWriterWriteBOOLField();
  }

  intentMetadata = [(_INPBSetSeatSettingsInCarIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetSeatSettingsInCarIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  level = [(_INPBSetSeatSettingsInCarIntent *)self level];

  if (level)
  {
    level2 = [(_INPBSetSeatSettingsInCarIntent *)self level];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasRelativeLevelSetting])
  {
    relativeLevelSetting = self->_relativeLevelSetting;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasSeat])
  {
    seat = self->_seat;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsSeat:(id)seat
{
  seatCopy = seat;
  if ([seatCopy isEqualToString:@"DRIVER"])
  {
    v4 = 1;
  }

  else if ([seatCopy isEqualToString:@"PASSENGER"])
  {
    v4 = 2;
  }

  else if ([seatCopy isEqualToString:@"FRONT_LEFT"])
  {
    v4 = 8;
  }

  else if ([seatCopy isEqualToString:@"FRONT_RIGHT"])
  {
    v4 = 9;
  }

  else if ([seatCopy isEqualToString:@"FRONT"])
  {
    v4 = 10;
  }

  else if ([seatCopy isEqualToString:@"REAR_LEFT"])
  {
    v4 = 16;
  }

  else if ([seatCopy isEqualToString:@"REAR_RIGHT"])
  {
    v4 = 17;
  }

  else if ([seatCopy isEqualToString:@"REAR"])
  {
    v4 = 18;
  }

  else if ([seatCopy isEqualToString:@"THIRD_ROW_LEFT"])
  {
    v4 = 19;
  }

  else if ([seatCopy isEqualToString:@"THIRD_ROW_RIGHT"])
  {
    v4 = 20;
  }

  else if ([seatCopy isEqualToString:@"THIRD_ROW"])
  {
    v4 = 21;
  }

  else if ([seatCopy isEqualToString:@"ALL"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSeat:(BOOL)seat
{
  if (seat)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setSeat:(int)seat
{
  has = self->_has;
  if (seat == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_seat = seat;
  }
}

- (int)StringAsRelativeLevelSetting:(id)setting
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

- (void)setHasRelativeLevelSetting:(BOOL)setting
{
  if (setting)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setRelativeLevelSetting:(int)setting
{
  has = self->_has;
  if (setting == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_relativeLevelSetting = setting;
  }
}

- (void)setHasEnableMassage:(BOOL)massage
{
  if (massage)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEnableHeating:(BOOL)heating
{
  if (heating)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end
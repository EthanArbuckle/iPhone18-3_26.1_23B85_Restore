@interface _INPBSetSeatSettingsInCarIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetSeatSettingsInCarIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsRelativeLevelSetting:(id)a3;
- (int)StringAsSeat:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasEnableHeating:(BOOL)a3;
- (void)setHasEnableMassage:(BOOL)a3;
- (void)setHasRelativeLevelSetting:(BOOL)a3;
- (void)setHasSeat:(BOOL)a3;
- (void)setRelativeLevelSetting:(int)a3;
- (void)setSeat:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetSeatSettingsInCarIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSetSeatSettingsInCarIntent *)self carName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"carName"];

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableCooling])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetSeatSettingsInCarIntent enableCooling](self, "enableCooling")}];
    [v3 setObject:v6 forKeyedSubscript:@"enableCooling"];
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableHeating])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetSeatSettingsInCarIntent enableHeating](self, "enableHeating")}];
    [v3 setObject:v7 forKeyedSubscript:@"enableHeating"];
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableMassage])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetSeatSettingsInCarIntent enableMassage](self, "enableMassage")}];
    [v3 setObject:v8 forKeyedSubscript:@"enableMassage"];
  }

  v9 = [(_INPBSetSeatSettingsInCarIntent *)self intentMetadata];
  v10 = [v9 dictionaryRepresentation];
  [v3 setObject:v10 forKeyedSubscript:@"intentMetadata"];

  v11 = [(_INPBSetSeatSettingsInCarIntent *)self level];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"level"];

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasRelativeLevelSetting])
  {
    v13 = [(_INPBSetSeatSettingsInCarIntent *)self relativeLevelSetting];
    if ((v13 - 1) >= 4)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v13];
    }

    else
    {
      v14 = off_1E7285BC8[(v13 - 1)];
    }

    [v3 setObject:v14 forKeyedSubscript:@"relativeLevelSetting"];
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasSeat])
  {
    v15 = [(_INPBSetSeatSettingsInCarIntent *)self seat];
    v16 = v15 - 1;
    if (v15 - 1) < 0x16 && ((0x3F8383u >> v16))
    {
      v17 = off_1E7285BE8[v16];
    }

    else
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v15];
    }

    [v3 setObject:v17 forKeyedSubscript:@"seat"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = [(_INPBSetSeatSettingsInCarIntent *)self carName];
  v6 = [v4 carName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v7 = [(_INPBSetSeatSettingsInCarIntent *)self carName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSetSeatSettingsInCarIntent *)self carName];
    v10 = [v4 carName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v12 = [(_INPBSetSeatSettingsInCarIntent *)self hasEnableCooling];
  if (v12 != [v4 hasEnableCooling])
  {
    goto LABEL_29;
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableCooling])
  {
    if ([v4 hasEnableCooling])
    {
      enableCooling = self->_enableCooling;
      if (enableCooling != [v4 enableCooling])
      {
        goto LABEL_29;
      }
    }
  }

  v14 = [(_INPBSetSeatSettingsInCarIntent *)self hasEnableHeating];
  if (v14 != [v4 hasEnableHeating])
  {
    goto LABEL_29;
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableHeating])
  {
    if ([v4 hasEnableHeating])
    {
      enableHeating = self->_enableHeating;
      if (enableHeating != [v4 enableHeating])
      {
        goto LABEL_29;
      }
    }
  }

  v16 = [(_INPBSetSeatSettingsInCarIntent *)self hasEnableMassage];
  if (v16 != [v4 hasEnableMassage])
  {
    goto LABEL_29;
  }

  if ([(_INPBSetSeatSettingsInCarIntent *)self hasEnableMassage])
  {
    if ([v4 hasEnableMassage])
    {
      enableMassage = self->_enableMassage;
      if (enableMassage != [v4 enableMassage])
      {
        goto LABEL_29;
      }
    }
  }

  v5 = [(_INPBSetSeatSettingsInCarIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v18 = [(_INPBSetSeatSettingsInCarIntent *)self intentMetadata];
  if (v18)
  {
    v19 = v18;
    v20 = [(_INPBSetSeatSettingsInCarIntent *)self intentMetadata];
    v21 = [v4 intentMetadata];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetSeatSettingsInCarIntent *)self level];
  v6 = [v4 level];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  v23 = [(_INPBSetSeatSettingsInCarIntent *)self level];
  if (v23)
  {
    v24 = v23;
    v25 = [(_INPBSetSeatSettingsInCarIntent *)self level];
    v26 = [v4 level];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v30 = [(_INPBSetSeatSettingsInCarIntent *)self hasRelativeLevelSetting];
  if (v30 == [v4 hasRelativeLevelSetting])
  {
    if (!-[_INPBSetSeatSettingsInCarIntent hasRelativeLevelSetting](self, "hasRelativeLevelSetting") || ![v4 hasRelativeLevelSetting] || (relativeLevelSetting = self->_relativeLevelSetting, relativeLevelSetting == objc_msgSend(v4, "relativeLevelSetting")))
    {
      v32 = [(_INPBSetSeatSettingsInCarIntent *)self hasSeat];
      if (v32 == [v4 hasSeat])
      {
        if (!-[_INPBSetSeatSettingsInCarIntent hasSeat](self, "hasSeat") || ![v4 hasSeat] || (seat = self->_seat, seat == objc_msgSend(v4, "seat")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetSeatSettingsInCarIntent allocWithZone:](_INPBSetSeatSettingsInCarIntent init];
  v6 = [(_INPBDataString *)self->_carName copyWithZone:a3];
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

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetSeatSettingsInCarIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBInteger *)self->_level copyWithZone:a3];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetSeatSettingsInCarIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetSeatSettingsInCarIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetSeatSettingsInCarIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(_INPBSetSeatSettingsInCarIntent *)self carName];

  if (v4)
  {
    v5 = [(_INPBSetSeatSettingsInCarIntent *)self carName];
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

  v9 = [(_INPBSetSeatSettingsInCarIntent *)self intentMetadata];

  if (v9)
  {
    v10 = [(_INPBSetSeatSettingsInCarIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_INPBSetSeatSettingsInCarIntent *)self level];

  if (v11)
  {
    v12 = [(_INPBSetSeatSettingsInCarIntent *)self level];
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

- (int)StringAsSeat:(id)a3
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

- (void)setHasSeat:(BOOL)a3
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

- (void)setSeat:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_seat = a3;
  }
}

- (int)StringAsRelativeLevelSetting:(id)a3
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

- (void)setHasRelativeLevelSetting:(BOOL)a3
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

- (void)setRelativeLevelSetting:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_relativeLevelSetting = a3;
  }
}

- (void)setHasEnableMassage:(BOOL)a3
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

- (void)setHasEnableHeating:(BOOL)a3
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

@end
@interface _INPBSetNumericSettingIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetNumericSettingIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)a3;
- (int)StringAsBoundedValue:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAction:(int)a3;
- (void)setBoundedValue:(int)a3;
- (void)setHasBoundedValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetNumericSettingIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSetNumericSettingIntent *)self hasAction])
  {
    v4 = [(_INPBSetNumericSettingIntent *)self action];
    if ((v4 - 1) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = *(&off_1E7287D88 + (v4 - 1));
    }

    [v3 setObject:v5 forKeyedSubscript:@"action"];
  }

  if ([(_INPBSetNumericSettingIntent *)self hasBoundedValue])
  {
    v6 = [(_INPBSetNumericSettingIntent *)self boundedValue];
    if ((v6 - 1) >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = *(&off_1E7287DA0 + (v6 - 1));
    }

    [v3 setObject:v7 forKeyedSubscript:@"boundedValue"];
  }

  v8 = [(_INPBSetNumericSettingIntent *)self intentMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"intentMetadata"];

  v10 = [(_INPBSetNumericSettingIntent *)self numericValue];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"numericValue"];

  v12 = [(_INPBSetNumericSettingIntent *)self settingMetadata];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"settingMetadata"];

  v14 = [(_INPBSetNumericSettingIntent *)self temporalEventTrigger];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"temporalEventTrigger"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBSetNumericSettingIntent *)self hasAction])
  {
    v3 = 2654435761 * self->_action;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBSetNumericSettingIntent *)self hasBoundedValue])
  {
    v4 = 2654435761 * self->_boundedValue;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v6 = [(_INPBNumericSettingValue *)self->_numericValue hash];
  v7 = v5 ^ v6 ^ [(_INPBSettingMetadata *)self->_settingMetadata hash];
  return v7 ^ [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = [(_INPBSetNumericSettingIntent *)self hasAction];
  if (v5 != [v4 hasAction])
  {
    goto LABEL_30;
  }

  if ([(_INPBSetNumericSettingIntent *)self hasAction])
  {
    if ([v4 hasAction])
    {
      action = self->_action;
      if (action != [v4 action])
      {
        goto LABEL_30;
      }
    }
  }

  v7 = [(_INPBSetNumericSettingIntent *)self hasBoundedValue];
  if (v7 != [v4 hasBoundedValue])
  {
    goto LABEL_30;
  }

  if ([(_INPBSetNumericSettingIntent *)self hasBoundedValue])
  {
    if ([v4 hasBoundedValue])
    {
      boundedValue = self->_boundedValue;
      if (boundedValue != [v4 boundedValue])
      {
        goto LABEL_30;
      }
    }
  }

  v9 = [(_INPBSetNumericSettingIntent *)self intentMetadata];
  v10 = [v4 intentMetadata];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_29;
  }

  v11 = [(_INPBSetNumericSettingIntent *)self intentMetadata];
  if (v11)
  {
    v12 = v11;
    v13 = [(_INPBSetNumericSettingIntent *)self intentMetadata];
    v14 = [v4 intentMetadata];
    v15 = [v13 isEqual:v14];

    if (!v15)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v9 = [(_INPBSetNumericSettingIntent *)self numericValue];
  v10 = [v4 numericValue];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_29;
  }

  v16 = [(_INPBSetNumericSettingIntent *)self numericValue];
  if (v16)
  {
    v17 = v16;
    v18 = [(_INPBSetNumericSettingIntent *)self numericValue];
    v19 = [v4 numericValue];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v9 = [(_INPBSetNumericSettingIntent *)self settingMetadata];
  v10 = [v4 settingMetadata];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_29;
  }

  v21 = [(_INPBSetNumericSettingIntent *)self settingMetadata];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBSetNumericSettingIntent *)self settingMetadata];
    v24 = [v4 settingMetadata];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v9 = [(_INPBSetNumericSettingIntent *)self temporalEventTrigger];
  v10 = [v4 temporalEventTrigger];
  if ((v9 != 0) != (v10 == 0))
  {
    v26 = [(_INPBSetNumericSettingIntent *)self temporalEventTrigger];
    if (!v26)
    {

LABEL_33:
      v31 = 1;
      goto LABEL_31;
    }

    v27 = v26;
    v28 = [(_INPBSetNumericSettingIntent *)self temporalEventTrigger];
    v29 = [v4 temporalEventTrigger];
    v30 = [v28 isEqual:v29];

    if (v30)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_29:
  }

LABEL_30:
  v31 = 0;
LABEL_31:

  return v31;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetNumericSettingIntent allocWithZone:](_INPBSetNumericSettingIntent init];
  if ([(_INPBSetNumericSettingIntent *)self hasAction])
  {
    [(_INPBSetNumericSettingIntent *)v5 setAction:[(_INPBSetNumericSettingIntent *)self action]];
  }

  if ([(_INPBSetNumericSettingIntent *)self hasBoundedValue])
  {
    [(_INPBSetNumericSettingIntent *)v5 setBoundedValue:[(_INPBSetNumericSettingIntent *)self boundedValue]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetNumericSettingIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBNumericSettingValue *)self->_numericValue copyWithZone:a3];
  [(_INPBSetNumericSettingIntent *)v5 setNumericValue:v7];

  v8 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:a3];
  [(_INPBSetNumericSettingIntent *)v5 setSettingMetadata:v8];

  v9 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:a3];
  [(_INPBSetNumericSettingIntent *)v5 setTemporalEventTrigger:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetNumericSettingIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetNumericSettingIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetNumericSettingIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  if ([(_INPBSetNumericSettingIntent *)self hasAction])
  {
    action = self->_action;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBSetNumericSettingIntent *)self hasBoundedValue])
  {
    boundedValue = self->_boundedValue;
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_INPBSetNumericSettingIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBSetNumericSettingIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBSetNumericSettingIntent *)self numericValue];

  if (v8)
  {
    v9 = [(_INPBSetNumericSettingIntent *)self numericValue];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBSetNumericSettingIntent *)self settingMetadata];

  if (v10)
  {
    v11 = [(_INPBSetNumericSettingIntent *)self settingMetadata];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBSetNumericSettingIntent *)self temporalEventTrigger];

  v13 = v15;
  if (v12)
  {
    v14 = [(_INPBSetNumericSettingIntent *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (int)StringAsBoundedValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MIN"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MEDIAN"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MAX"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasBoundedValue:(BOOL)a3
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

- (void)setBoundedValue:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_boundedValue = a3;
  }
}

- (int)StringAsAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SET"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"INCREASE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DECREASE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setAction:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_action = a3;
  }
}

@end
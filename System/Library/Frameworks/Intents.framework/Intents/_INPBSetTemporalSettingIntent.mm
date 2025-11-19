@interface _INPBSetTemporalSettingIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetTemporalSettingIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAction:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetTemporalSettingIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSetTemporalSettingIntent *)self hasAction])
  {
    v4 = [(_INPBSetTemporalSettingIntent *)self action];
    if ((v4 - 1) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = *(&off_1E7287D58 + (v4 - 1));
    }

    [v3 setObject:v5 forKeyedSubscript:@"action"];
  }

  v6 = [(_INPBSetTemporalSettingIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  v8 = [(_INPBSetTemporalSettingIntent *)self settingMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"settingMetadata"];

  v10 = [(_INPBSetTemporalSettingIntent *)self temporalEventTrigger];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"temporalEventTrigger"];

  v12 = [(_INPBSetTemporalSettingIntent *)self timeValue];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"timeValue"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBSetTemporalSettingIntent *)self hasAction])
  {
    v3 = 2654435761 * self->_action;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(_INPBSettingMetadata *)self->_settingMetadata hash];
  v6 = v4 ^ v5 ^ [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger hash];
  return v6 ^ [(_INPBDateTimeRangeValue *)self->_timeValue hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = [(_INPBSetTemporalSettingIntent *)self hasAction];
  if (v5 != [v4 hasAction])
  {
    goto LABEL_26;
  }

  if ([(_INPBSetTemporalSettingIntent *)self hasAction])
  {
    if ([v4 hasAction])
    {
      action = self->_action;
      if (action != [v4 action])
      {
        goto LABEL_26;
      }
    }
  }

  v7 = [(_INPBSetTemporalSettingIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v9 = [(_INPBSetTemporalSettingIntent *)self intentMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBSetTemporalSettingIntent *)self intentMetadata];
    v12 = [v4 intentMetadata];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(_INPBSetTemporalSettingIntent *)self settingMetadata];
  v8 = [v4 settingMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v14 = [(_INPBSetTemporalSettingIntent *)self settingMetadata];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBSetTemporalSettingIntent *)self settingMetadata];
    v17 = [v4 settingMetadata];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(_INPBSetTemporalSettingIntent *)self temporalEventTrigger];
  v8 = [v4 temporalEventTrigger];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v19 = [(_INPBSetTemporalSettingIntent *)self temporalEventTrigger];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBSetTemporalSettingIntent *)self temporalEventTrigger];
    v22 = [v4 temporalEventTrigger];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(_INPBSetTemporalSettingIntent *)self timeValue];
  v8 = [v4 timeValue];
  if ((v7 != 0) != (v8 == 0))
  {
    v24 = [(_INPBSetTemporalSettingIntent *)self timeValue];
    if (!v24)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = v24;
    v26 = [(_INPBSetTemporalSettingIntent *)self timeValue];
    v27 = [v4 timeValue];
    v28 = [v26 isEqual:v27];

    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetTemporalSettingIntent allocWithZone:](_INPBSetTemporalSettingIntent init];
  if ([(_INPBSetTemporalSettingIntent *)self hasAction])
  {
    [(_INPBSetTemporalSettingIntent *)v5 setAction:[(_INPBSetTemporalSettingIntent *)self action]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetTemporalSettingIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:a3];
  [(_INPBSetTemporalSettingIntent *)v5 setSettingMetadata:v7];

  v8 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:a3];
  [(_INPBSetTemporalSettingIntent *)v5 setTemporalEventTrigger:v8];

  v9 = [(_INPBDateTimeRangeValue *)self->_timeValue copyWithZone:a3];
  [(_INPBSetTemporalSettingIntent *)v5 setTimeValue:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetTemporalSettingIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetTemporalSettingIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetTemporalSettingIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  if ([(_INPBSetTemporalSettingIntent *)self hasAction])
  {
    action = self->_action;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBSetTemporalSettingIntent *)self intentMetadata];

  if (v5)
  {
    v6 = [(_INPBSetTemporalSettingIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBSetTemporalSettingIntent *)self settingMetadata];

  if (v7)
  {
    v8 = [(_INPBSetTemporalSettingIntent *)self settingMetadata];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBSetTemporalSettingIntent *)self temporalEventTrigger];

  if (v9)
  {
    v10 = [(_INPBSetTemporalSettingIntent *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_INPBSetTemporalSettingIntent *)self timeValue];

  v12 = v14;
  if (v11)
  {
    v13 = [(_INPBSetTemporalSettingIntent *)self timeValue];
    PBDataWriterWriteSubmessage();

    v12 = v14;
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
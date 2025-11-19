@interface _INPBSetBinarySettingIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetBinarySettingIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsBinaryValue:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setBinaryValue:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetBinarySettingIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSetBinarySettingIntent *)self hasBinaryValue])
  {
    v4 = [(_INPBSetBinarySettingIntent *)self binaryValue];
    if ((v4 - 1) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7287DF0[(v4 - 1)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"binaryValue"];
  }

  v6 = [(_INPBSetBinarySettingIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  v8 = [(_INPBSetBinarySettingIntent *)self settingMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"settingMetadata"];

  v10 = [(_INPBSetBinarySettingIntent *)self temporalEventTrigger];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"temporalEventTrigger"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBSetBinarySettingIntent *)self hasBinaryValue])
  {
    v3 = 2654435761 * self->_binaryValue;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(_INPBSettingMetadata *)self->_settingMetadata hash];
  return v4 ^ v5 ^ [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBSetBinarySettingIntent *)self hasBinaryValue];
  if (v5 != [v4 hasBinaryValue])
  {
    goto LABEL_21;
  }

  if ([(_INPBSetBinarySettingIntent *)self hasBinaryValue])
  {
    if ([v4 hasBinaryValue])
    {
      binaryValue = self->_binaryValue;
      if (binaryValue != [v4 binaryValue])
      {
        goto LABEL_21;
      }
    }
  }

  v7 = [(_INPBSetBinarySettingIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v9 = [(_INPBSetBinarySettingIntent *)self intentMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBSetBinarySettingIntent *)self intentMetadata];
    v12 = [v4 intentMetadata];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBSetBinarySettingIntent *)self settingMetadata];
  v8 = [v4 settingMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(_INPBSetBinarySettingIntent *)self settingMetadata];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBSetBinarySettingIntent *)self settingMetadata];
    v17 = [v4 settingMetadata];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBSetBinarySettingIntent *)self temporalEventTrigger];
  v8 = [v4 temporalEventTrigger];
  if ((v7 != 0) != (v8 == 0))
  {
    v19 = [(_INPBSetBinarySettingIntent *)self temporalEventTrigger];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBSetBinarySettingIntent *)self temporalEventTrigger];
    v22 = [v4 temporalEventTrigger];
    v23 = [v21 isEqual:v22];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetBinarySettingIntent allocWithZone:](_INPBSetBinarySettingIntent init];
  if ([(_INPBSetBinarySettingIntent *)self hasBinaryValue])
  {
    [(_INPBSetBinarySettingIntent *)v5 setBinaryValue:[(_INPBSetBinarySettingIntent *)self binaryValue]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetBinarySettingIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:a3];
  [(_INPBSetBinarySettingIntent *)v5 setSettingMetadata:v7];

  v8 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:a3];
  [(_INPBSetBinarySettingIntent *)v5 setTemporalEventTrigger:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetBinarySettingIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetBinarySettingIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetBinarySettingIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  if ([(_INPBSetBinarySettingIntent *)self hasBinaryValue])
  {
    binaryValue = self->_binaryValue;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBSetBinarySettingIntent *)self intentMetadata];

  if (v5)
  {
    v6 = [(_INPBSetBinarySettingIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBSetBinarySettingIntent *)self settingMetadata];

  if (v7)
  {
    v8 = [(_INPBSetBinarySettingIntent *)self settingMetadata];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBSetBinarySettingIntent *)self temporalEventTrigger];

  v10 = v12;
  if (v9)
  {
    v11 = [(_INPBSetBinarySettingIntent *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();

    v10 = v12;
  }
}

- (int)StringAsBinaryValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ON"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OFF"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TOGGLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setBinaryValue:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_binaryValue = a3;
  }
}

@end
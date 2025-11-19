@interface _INPBGetSettingIntent
- (BOOL)isEqual:(id)a3;
- (_INPBGetSettingIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsConfirmationValue:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setConfirmationValue:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBGetSettingIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBGetSettingIntent *)self hasConfirmationValue])
  {
    v4 = [(_INPBGetSettingIntent *)self confirmationValue];
    if ((v4 - 1) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = *(&off_1E7287D70 + (v4 - 1));
    }

    [v3 setObject:v5 forKeyedSubscript:@"confirmationValue"];
  }

  v6 = [(_INPBGetSettingIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  v8 = [(_INPBGetSettingIntent *)self settingMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"settingMetadata"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBGetSettingIntent *)self hasConfirmationValue])
  {
    v3 = 2654435761 * self->_confirmationValue;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(_INPBSettingMetadata *)self->_settingMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBGetSettingIntent *)self hasConfirmationValue];
  if (v5 != [v4 hasConfirmationValue])
  {
    goto LABEL_16;
  }

  if ([(_INPBGetSettingIntent *)self hasConfirmationValue])
  {
    if ([v4 hasConfirmationValue])
    {
      confirmationValue = self->_confirmationValue;
      if (confirmationValue != [v4 confirmationValue])
      {
        goto LABEL_16;
      }
    }
  }

  v7 = [(_INPBGetSettingIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_15;
  }

  v9 = [(_INPBGetSettingIntent *)self intentMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBGetSettingIntent *)self intentMetadata];
    v12 = [v4 intentMetadata];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetSettingIntent *)self settingMetadata];
  v8 = [v4 settingMetadata];
  if ((v7 != 0) != (v8 == 0))
  {
    v14 = [(_INPBGetSettingIntent *)self settingMetadata];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBGetSettingIntent *)self settingMetadata];
    v17 = [v4 settingMetadata];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBGetSettingIntent allocWithZone:](_INPBGetSettingIntent init];
  if ([(_INPBGetSettingIntent *)self hasConfirmationValue])
  {
    [(_INPBGetSettingIntent *)v5 setConfirmationValue:[(_INPBGetSettingIntent *)self confirmationValue]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBGetSettingIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:a3];
  [(_INPBGetSettingIntent *)v5 setSettingMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBGetSettingIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBGetSettingIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBGetSettingIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if ([(_INPBGetSettingIntent *)self hasConfirmationValue])
  {
    confirmationValue = self->_confirmationValue;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBGetSettingIntent *)self intentMetadata];

  if (v5)
  {
    v6 = [(_INPBGetSettingIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBGetSettingIntent *)self settingMetadata];

  v8 = v10;
  if (v7)
  {
    v9 = [(_INPBGetSettingIntent *)self settingMetadata];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (int)StringAsConfirmationValue:(id)a3
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

- (void)setConfirmationValue:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_confirmationValue = a3;
  }
}

@end
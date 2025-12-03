@interface _INPBGetSettingIntent
- (BOOL)isEqual:(id)equal;
- (_INPBGetSettingIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsConfirmationValue:(id)value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setConfirmationValue:(int)value;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetSettingIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBGetSettingIntent *)self hasConfirmationValue])
  {
    confirmationValue = [(_INPBGetSettingIntent *)self confirmationValue];
    if ((confirmationValue - 1) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", confirmationValue];
    }

    else
    {
      v5 = *(&off_1E7287D70 + (confirmationValue - 1));
    }

    [dictionary setObject:v5 forKeyedSubscript:@"confirmationValue"];
  }

  intentMetadata = [(_INPBGetSettingIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  settingMetadata = [(_INPBGetSettingIntent *)self settingMetadata];
  dictionaryRepresentation2 = [settingMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"settingMetadata"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasConfirmationValue = [(_INPBGetSettingIntent *)self hasConfirmationValue];
  if (hasConfirmationValue != [equalCopy hasConfirmationValue])
  {
    goto LABEL_16;
  }

  if ([(_INPBGetSettingIntent *)self hasConfirmationValue])
  {
    if ([equalCopy hasConfirmationValue])
    {
      confirmationValue = self->_confirmationValue;
      if (confirmationValue != [equalCopy confirmationValue])
      {
        goto LABEL_16;
      }
    }
  }

  intentMetadata = [(_INPBGetSettingIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_15;
  }

  intentMetadata3 = [(_INPBGetSettingIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v10 = intentMetadata3;
    intentMetadata4 = [(_INPBGetSettingIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v13 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBGetSettingIntent *)self settingMetadata];
  intentMetadata2 = [equalCopy settingMetadata];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    settingMetadata = [(_INPBGetSettingIntent *)self settingMetadata];
    if (!settingMetadata)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = settingMetadata;
    settingMetadata2 = [(_INPBGetSettingIntent *)self settingMetadata];
    settingMetadata3 = [equalCopy settingMetadata];
    v18 = [settingMetadata2 isEqual:settingMetadata3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBGetSettingIntent allocWithZone:](_INPBGetSettingIntent init];
  if ([(_INPBGetSettingIntent *)self hasConfirmationValue])
  {
    [(_INPBGetSettingIntent *)v5 setConfirmationValue:[(_INPBGetSettingIntent *)self confirmationValue]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBGetSettingIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:zone];
  [(_INPBGetSettingIntent *)v5 setSettingMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetSettingIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetSettingIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetSettingIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBGetSettingIntent *)self hasConfirmationValue])
  {
    confirmationValue = self->_confirmationValue;
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBGetSettingIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBGetSettingIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  settingMetadata = [(_INPBGetSettingIntent *)self settingMetadata];

  v8 = toCopy;
  if (settingMetadata)
  {
    settingMetadata2 = [(_INPBGetSettingIntent *)self settingMetadata];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (int)StringAsConfirmationValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"ON"])
  {
    v4 = 1;
  }

  else if ([valueCopy isEqualToString:@"OFF"])
  {
    v4 = 2;
  }

  else if ([valueCopy isEqualToString:@"TOGGLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setConfirmationValue:(int)value
{
  has = self->_has;
  if (value == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_confirmationValue = value;
  }
}

@end
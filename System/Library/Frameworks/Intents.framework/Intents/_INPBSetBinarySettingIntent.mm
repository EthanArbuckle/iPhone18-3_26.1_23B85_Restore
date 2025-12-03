@interface _INPBSetBinarySettingIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetBinarySettingIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsBinaryValue:(id)value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setBinaryValue:(int)value;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetBinarySettingIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSetBinarySettingIntent *)self hasBinaryValue])
  {
    binaryValue = [(_INPBSetBinarySettingIntent *)self binaryValue];
    if ((binaryValue - 1) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", binaryValue];
    }

    else
    {
      v5 = off_1E7287DF0[(binaryValue - 1)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"binaryValue"];
  }

  intentMetadata = [(_INPBSetBinarySettingIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  settingMetadata = [(_INPBSetBinarySettingIntent *)self settingMetadata];
  dictionaryRepresentation2 = [settingMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"settingMetadata"];

  temporalEventTrigger = [(_INPBSetBinarySettingIntent *)self temporalEventTrigger];
  dictionaryRepresentation3 = [temporalEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"temporalEventTrigger"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  hasBinaryValue = [(_INPBSetBinarySettingIntent *)self hasBinaryValue];
  if (hasBinaryValue != [equalCopy hasBinaryValue])
  {
    goto LABEL_21;
  }

  if ([(_INPBSetBinarySettingIntent *)self hasBinaryValue])
  {
    if ([equalCopy hasBinaryValue])
    {
      binaryValue = self->_binaryValue;
      if (binaryValue != [equalCopy binaryValue])
      {
        goto LABEL_21;
      }
    }
  }

  intentMetadata = [(_INPBSetBinarySettingIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_20;
  }

  intentMetadata3 = [(_INPBSetBinarySettingIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v10 = intentMetadata3;
    intentMetadata4 = [(_INPBSetBinarySettingIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v13 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetBinarySettingIntent *)self settingMetadata];
  intentMetadata2 = [equalCopy settingMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_20;
  }

  settingMetadata = [(_INPBSetBinarySettingIntent *)self settingMetadata];
  if (settingMetadata)
  {
    v15 = settingMetadata;
    settingMetadata2 = [(_INPBSetBinarySettingIntent *)self settingMetadata];
    settingMetadata3 = [equalCopy settingMetadata];
    v18 = [settingMetadata2 isEqual:settingMetadata3];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetBinarySettingIntent *)self temporalEventTrigger];
  intentMetadata2 = [equalCopy temporalEventTrigger];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    temporalEventTrigger = [(_INPBSetBinarySettingIntent *)self temporalEventTrigger];
    if (!temporalEventTrigger)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = temporalEventTrigger;
    temporalEventTrigger2 = [(_INPBSetBinarySettingIntent *)self temporalEventTrigger];
    temporalEventTrigger3 = [equalCopy temporalEventTrigger];
    v23 = [temporalEventTrigger2 isEqual:temporalEventTrigger3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetBinarySettingIntent allocWithZone:](_INPBSetBinarySettingIntent init];
  if ([(_INPBSetBinarySettingIntent *)self hasBinaryValue])
  {
    [(_INPBSetBinarySettingIntent *)v5 setBinaryValue:[(_INPBSetBinarySettingIntent *)self binaryValue]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetBinarySettingIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:zone];
  [(_INPBSetBinarySettingIntent *)v5 setSettingMetadata:v7];

  v8 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:zone];
  [(_INPBSetBinarySettingIntent *)v5 setTemporalEventTrigger:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetBinarySettingIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetBinarySettingIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetBinarySettingIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBSetBinarySettingIntent *)self hasBinaryValue])
  {
    binaryValue = self->_binaryValue;
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBSetBinarySettingIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetBinarySettingIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  settingMetadata = [(_INPBSetBinarySettingIntent *)self settingMetadata];

  if (settingMetadata)
  {
    settingMetadata2 = [(_INPBSetBinarySettingIntent *)self settingMetadata];
    PBDataWriterWriteSubmessage();
  }

  temporalEventTrigger = [(_INPBSetBinarySettingIntent *)self temporalEventTrigger];

  v10 = toCopy;
  if (temporalEventTrigger)
  {
    temporalEventTrigger2 = [(_INPBSetBinarySettingIntent *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();

    v10 = toCopy;
  }
}

- (int)StringAsBinaryValue:(id)value
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

- (void)setBinaryValue:(int)value
{
  has = self->_has;
  if (value == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_binaryValue = value;
  }
}

@end
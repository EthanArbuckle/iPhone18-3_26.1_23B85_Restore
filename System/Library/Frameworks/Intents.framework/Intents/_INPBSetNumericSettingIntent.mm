@interface _INPBSetNumericSettingIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetNumericSettingIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)action;
- (int)StringAsBoundedValue:(id)value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAction:(int)action;
- (void)setBoundedValue:(int)value;
- (void)setHasBoundedValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetNumericSettingIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSetNumericSettingIntent *)self hasAction])
  {
    action = [(_INPBSetNumericSettingIntent *)self action];
    if ((action - 1) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
    }

    else
    {
      v5 = *(&off_1E7287D88 + (action - 1));
    }

    [dictionary setObject:v5 forKeyedSubscript:@"action"];
  }

  if ([(_INPBSetNumericSettingIntent *)self hasBoundedValue])
  {
    boundedValue = [(_INPBSetNumericSettingIntent *)self boundedValue];
    if ((boundedValue - 1) >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", boundedValue];
    }

    else
    {
      v7 = *(&off_1E7287DA0 + (boundedValue - 1));
    }

    [dictionary setObject:v7 forKeyedSubscript:@"boundedValue"];
  }

  intentMetadata = [(_INPBSetNumericSettingIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  numericValue = [(_INPBSetNumericSettingIntent *)self numericValue];
  dictionaryRepresentation2 = [numericValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"numericValue"];

  settingMetadata = [(_INPBSetNumericSettingIntent *)self settingMetadata];
  dictionaryRepresentation3 = [settingMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"settingMetadata"];

  temporalEventTrigger = [(_INPBSetNumericSettingIntent *)self temporalEventTrigger];
  dictionaryRepresentation4 = [temporalEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"temporalEventTrigger"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  hasAction = [(_INPBSetNumericSettingIntent *)self hasAction];
  if (hasAction != [equalCopy hasAction])
  {
    goto LABEL_30;
  }

  if ([(_INPBSetNumericSettingIntent *)self hasAction])
  {
    if ([equalCopy hasAction])
    {
      action = self->_action;
      if (action != [equalCopy action])
      {
        goto LABEL_30;
      }
    }
  }

  hasBoundedValue = [(_INPBSetNumericSettingIntent *)self hasBoundedValue];
  if (hasBoundedValue != [equalCopy hasBoundedValue])
  {
    goto LABEL_30;
  }

  if ([(_INPBSetNumericSettingIntent *)self hasBoundedValue])
  {
    if ([equalCopy hasBoundedValue])
    {
      boundedValue = self->_boundedValue;
      if (boundedValue != [equalCopy boundedValue])
      {
        goto LABEL_30;
      }
    }
  }

  intentMetadata = [(_INPBSetNumericSettingIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_29;
  }

  intentMetadata3 = [(_INPBSetNumericSettingIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v12 = intentMetadata3;
    intentMetadata4 = [(_INPBSetNumericSettingIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v15 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v15)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetNumericSettingIntent *)self numericValue];
  intentMetadata2 = [equalCopy numericValue];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_29;
  }

  numericValue = [(_INPBSetNumericSettingIntent *)self numericValue];
  if (numericValue)
  {
    v17 = numericValue;
    numericValue2 = [(_INPBSetNumericSettingIntent *)self numericValue];
    numericValue3 = [equalCopy numericValue];
    v20 = [numericValue2 isEqual:numericValue3];

    if (!v20)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetNumericSettingIntent *)self settingMetadata];
  intentMetadata2 = [equalCopy settingMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_29;
  }

  settingMetadata = [(_INPBSetNumericSettingIntent *)self settingMetadata];
  if (settingMetadata)
  {
    v22 = settingMetadata;
    settingMetadata2 = [(_INPBSetNumericSettingIntent *)self settingMetadata];
    settingMetadata3 = [equalCopy settingMetadata];
    v25 = [settingMetadata2 isEqual:settingMetadata3];

    if (!v25)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetNumericSettingIntent *)self temporalEventTrigger];
  intentMetadata2 = [equalCopy temporalEventTrigger];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    temporalEventTrigger = [(_INPBSetNumericSettingIntent *)self temporalEventTrigger];
    if (!temporalEventTrigger)
    {

LABEL_33:
      v31 = 1;
      goto LABEL_31;
    }

    v27 = temporalEventTrigger;
    temporalEventTrigger2 = [(_INPBSetNumericSettingIntent *)self temporalEventTrigger];
    temporalEventTrigger3 = [equalCopy temporalEventTrigger];
    v30 = [temporalEventTrigger2 isEqual:temporalEventTrigger3];

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

- (id)copyWithZone:(_NSZone *)zone
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

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetNumericSettingIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBNumericSettingValue *)self->_numericValue copyWithZone:zone];
  [(_INPBSetNumericSettingIntent *)v5 setNumericValue:v7];

  v8 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:zone];
  [(_INPBSetNumericSettingIntent *)v5 setSettingMetadata:v8];

  v9 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:zone];
  [(_INPBSetNumericSettingIntent *)v5 setTemporalEventTrigger:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetNumericSettingIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetNumericSettingIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetNumericSettingIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  intentMetadata = [(_INPBSetNumericSettingIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetNumericSettingIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  numericValue = [(_INPBSetNumericSettingIntent *)self numericValue];

  if (numericValue)
  {
    numericValue2 = [(_INPBSetNumericSettingIntent *)self numericValue];
    PBDataWriterWriteSubmessage();
  }

  settingMetadata = [(_INPBSetNumericSettingIntent *)self settingMetadata];

  if (settingMetadata)
  {
    settingMetadata2 = [(_INPBSetNumericSettingIntent *)self settingMetadata];
    PBDataWriterWriteSubmessage();
  }

  temporalEventTrigger = [(_INPBSetNumericSettingIntent *)self temporalEventTrigger];

  v13 = toCopy;
  if (temporalEventTrigger)
  {
    temporalEventTrigger2 = [(_INPBSetNumericSettingIntent *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (int)StringAsBoundedValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"MIN"])
  {
    v4 = 1;
  }

  else if ([valueCopy isEqualToString:@"MEDIAN"])
  {
    v4 = 2;
  }

  else if ([valueCopy isEqualToString:@"MAX"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasBoundedValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setBoundedValue:(int)value
{
  has = self->_has;
  if (value == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_boundedValue = value;
  }
}

- (int)StringAsAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"SET"])
  {
    v4 = 1;
  }

  else if ([actionCopy isEqualToString:@"INCREASE"])
  {
    v4 = 2;
  }

  else if ([actionCopy isEqualToString:@"DECREASE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setAction:(int)action
{
  has = self->_has;
  if (action == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_action = action;
  }
}

@end
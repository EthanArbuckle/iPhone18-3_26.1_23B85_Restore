@interface _INPBSetTemporalSettingIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetTemporalSettingIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)action;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAction:(int)action;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetTemporalSettingIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSetTemporalSettingIntent *)self hasAction])
  {
    action = [(_INPBSetTemporalSettingIntent *)self action];
    if ((action - 1) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
    }

    else
    {
      v5 = *(&off_1E7287D58 + (action - 1));
    }

    [dictionary setObject:v5 forKeyedSubscript:@"action"];
  }

  intentMetadata = [(_INPBSetTemporalSettingIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  settingMetadata = [(_INPBSetTemporalSettingIntent *)self settingMetadata];
  dictionaryRepresentation2 = [settingMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"settingMetadata"];

  temporalEventTrigger = [(_INPBSetTemporalSettingIntent *)self temporalEventTrigger];
  dictionaryRepresentation3 = [temporalEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"temporalEventTrigger"];

  timeValue = [(_INPBSetTemporalSettingIntent *)self timeValue];
  dictionaryRepresentation4 = [timeValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"timeValue"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  hasAction = [(_INPBSetTemporalSettingIntent *)self hasAction];
  if (hasAction != [equalCopy hasAction])
  {
    goto LABEL_26;
  }

  if ([(_INPBSetTemporalSettingIntent *)self hasAction])
  {
    if ([equalCopy hasAction])
    {
      action = self->_action;
      if (action != [equalCopy action])
      {
        goto LABEL_26;
      }
    }
  }

  intentMetadata = [(_INPBSetTemporalSettingIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_25;
  }

  intentMetadata3 = [(_INPBSetTemporalSettingIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v10 = intentMetadata3;
    intentMetadata4 = [(_INPBSetTemporalSettingIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v13 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetTemporalSettingIntent *)self settingMetadata];
  intentMetadata2 = [equalCopy settingMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_25;
  }

  settingMetadata = [(_INPBSetTemporalSettingIntent *)self settingMetadata];
  if (settingMetadata)
  {
    v15 = settingMetadata;
    settingMetadata2 = [(_INPBSetTemporalSettingIntent *)self settingMetadata];
    settingMetadata3 = [equalCopy settingMetadata];
    v18 = [settingMetadata2 isEqual:settingMetadata3];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetTemporalSettingIntent *)self temporalEventTrigger];
  intentMetadata2 = [equalCopy temporalEventTrigger];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_25;
  }

  temporalEventTrigger = [(_INPBSetTemporalSettingIntent *)self temporalEventTrigger];
  if (temporalEventTrigger)
  {
    v20 = temporalEventTrigger;
    temporalEventTrigger2 = [(_INPBSetTemporalSettingIntent *)self temporalEventTrigger];
    temporalEventTrigger3 = [equalCopy temporalEventTrigger];
    v23 = [temporalEventTrigger2 isEqual:temporalEventTrigger3];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetTemporalSettingIntent *)self timeValue];
  intentMetadata2 = [equalCopy timeValue];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    timeValue = [(_INPBSetTemporalSettingIntent *)self timeValue];
    if (!timeValue)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = timeValue;
    timeValue2 = [(_INPBSetTemporalSettingIntent *)self timeValue];
    timeValue3 = [equalCopy timeValue];
    v28 = [timeValue2 isEqual:timeValue3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetTemporalSettingIntent allocWithZone:](_INPBSetTemporalSettingIntent init];
  if ([(_INPBSetTemporalSettingIntent *)self hasAction])
  {
    [(_INPBSetTemporalSettingIntent *)v5 setAction:[(_INPBSetTemporalSettingIntent *)self action]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetTemporalSettingIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:zone];
  [(_INPBSetTemporalSettingIntent *)v5 setSettingMetadata:v7];

  v8 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:zone];
  [(_INPBSetTemporalSettingIntent *)v5 setTemporalEventTrigger:v8];

  v9 = [(_INPBDateTimeRangeValue *)self->_timeValue copyWithZone:zone];
  [(_INPBSetTemporalSettingIntent *)v5 setTimeValue:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetTemporalSettingIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetTemporalSettingIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetTemporalSettingIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBSetTemporalSettingIntent *)self hasAction])
  {
    action = self->_action;
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBSetTemporalSettingIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetTemporalSettingIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  settingMetadata = [(_INPBSetTemporalSettingIntent *)self settingMetadata];

  if (settingMetadata)
  {
    settingMetadata2 = [(_INPBSetTemporalSettingIntent *)self settingMetadata];
    PBDataWriterWriteSubmessage();
  }

  temporalEventTrigger = [(_INPBSetTemporalSettingIntent *)self temporalEventTrigger];

  if (temporalEventTrigger)
  {
    temporalEventTrigger2 = [(_INPBSetTemporalSettingIntent *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  timeValue = [(_INPBSetTemporalSettingIntent *)self timeValue];

  v12 = toCopy;
  if (timeValue)
  {
    timeValue2 = [(_INPBSetTemporalSettingIntent *)self timeValue];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
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
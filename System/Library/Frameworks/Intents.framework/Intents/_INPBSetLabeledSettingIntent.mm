@interface _INPBSetLabeledSettingIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetLabeledSettingIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setLabeledValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetLabeledSettingIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBSetLabeledSettingIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if (self->_labeledValue)
  {
    labeledValue = [(_INPBSetLabeledSettingIntent *)self labeledValue];
    v7 = [labeledValue copy];
    [dictionary setObject:v7 forKeyedSubscript:@"labeledValue"];
  }

  settingMetadata = [(_INPBSetLabeledSettingIntent *)self settingMetadata];
  dictionaryRepresentation2 = [settingMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"settingMetadata"];

  temporalEventTrigger = [(_INPBSetLabeledSettingIntent *)self temporalEventTrigger];
  dictionaryRepresentation3 = [temporalEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"temporalEventTrigger"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(NSString *)self->_labeledValue hash]^ v3;
  v5 = [(_INPBSettingMetadata *)self->_settingMetadata hash];
  return v4 ^ v5 ^ [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  intentMetadata = [(_INPBSetLabeledSettingIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_21;
  }

  intentMetadata3 = [(_INPBSetLabeledSettingIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBSetLabeledSettingIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetLabeledSettingIntent *)self labeledValue];
  intentMetadata2 = [equalCopy labeledValue];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_21;
  }

  labeledValue = [(_INPBSetLabeledSettingIntent *)self labeledValue];
  if (labeledValue)
  {
    v13 = labeledValue;
    labeledValue2 = [(_INPBSetLabeledSettingIntent *)self labeledValue];
    labeledValue3 = [equalCopy labeledValue];
    v16 = [labeledValue2 isEqual:labeledValue3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetLabeledSettingIntent *)self settingMetadata];
  intentMetadata2 = [equalCopy settingMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_21;
  }

  settingMetadata = [(_INPBSetLabeledSettingIntent *)self settingMetadata];
  if (settingMetadata)
  {
    v18 = settingMetadata;
    settingMetadata2 = [(_INPBSetLabeledSettingIntent *)self settingMetadata];
    settingMetadata3 = [equalCopy settingMetadata];
    v21 = [settingMetadata2 isEqual:settingMetadata3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetLabeledSettingIntent *)self temporalEventTrigger];
  intentMetadata2 = [equalCopy temporalEventTrigger];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    temporalEventTrigger = [(_INPBSetLabeledSettingIntent *)self temporalEventTrigger];
    if (!temporalEventTrigger)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = temporalEventTrigger;
    temporalEventTrigger2 = [(_INPBSetLabeledSettingIntent *)self temporalEventTrigger];
    temporalEventTrigger3 = [equalCopy temporalEventTrigger];
    v26 = [temporalEventTrigger2 isEqual:temporalEventTrigger3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetLabeledSettingIntent allocWithZone:](_INPBSetLabeledSettingIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetLabeledSettingIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSString *)self->_labeledValue copyWithZone:zone];
  [(_INPBSetLabeledSettingIntent *)v5 setLabeledValue:v7];

  v8 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:zone];
  [(_INPBSetLabeledSettingIntent *)v5 setSettingMetadata:v8];

  v9 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:zone];
  [(_INPBSetLabeledSettingIntent *)v5 setTemporalEventTrigger:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetLabeledSettingIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetLabeledSettingIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetLabeledSettingIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBSetLabeledSettingIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetLabeledSettingIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  labeledValue = [(_INPBSetLabeledSettingIntent *)self labeledValue];

  if (labeledValue)
  {
    labeledValue = self->_labeledValue;
    PBDataWriterWriteStringField();
  }

  settingMetadata = [(_INPBSetLabeledSettingIntent *)self settingMetadata];

  if (settingMetadata)
  {
    settingMetadata2 = [(_INPBSetLabeledSettingIntent *)self settingMetadata];
    PBDataWriterWriteSubmessage();
  }

  temporalEventTrigger = [(_INPBSetLabeledSettingIntent *)self temporalEventTrigger];

  v11 = toCopy;
  if (temporalEventTrigger)
  {
    temporalEventTrigger2 = [(_INPBSetLabeledSettingIntent *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)setLabeledValue:(id)value
{
  v4 = [value copy];
  labeledValue = self->_labeledValue;
  self->_labeledValue = v4;

  MEMORY[0x1EEE66BB8](v4, labeledValue);
}

@end
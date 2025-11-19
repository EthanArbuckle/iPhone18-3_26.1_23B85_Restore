@interface _INPBSetLabeledSettingIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetLabeledSettingIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setLabeledValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetLabeledSettingIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSetLabeledSettingIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  if (self->_labeledValue)
  {
    v6 = [(_INPBSetLabeledSettingIntent *)self labeledValue];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"labeledValue"];
  }

  v8 = [(_INPBSetLabeledSettingIntent *)self settingMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"settingMetadata"];

  v10 = [(_INPBSetLabeledSettingIntent *)self temporalEventTrigger];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"temporalEventTrigger"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(NSString *)self->_labeledValue hash]^ v3;
  v5 = [(_INPBSettingMetadata *)self->_settingMetadata hash];
  return v4 ^ v5 ^ [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBSetLabeledSettingIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBSetLabeledSettingIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSetLabeledSettingIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetLabeledSettingIntent *)self labeledValue];
  v6 = [v4 labeledValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBSetLabeledSettingIntent *)self labeledValue];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSetLabeledSettingIntent *)self labeledValue];
    v15 = [v4 labeledValue];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetLabeledSettingIntent *)self settingMetadata];
  v6 = [v4 settingMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBSetLabeledSettingIntent *)self settingMetadata];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBSetLabeledSettingIntent *)self settingMetadata];
    v20 = [v4 settingMetadata];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetLabeledSettingIntent *)self temporalEventTrigger];
  v6 = [v4 temporalEventTrigger];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBSetLabeledSettingIntent *)self temporalEventTrigger];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBSetLabeledSettingIntent *)self temporalEventTrigger];
    v25 = [v4 temporalEventTrigger];
    v26 = [v24 isEqual:v25];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetLabeledSettingIntent allocWithZone:](_INPBSetLabeledSettingIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetLabeledSettingIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSString *)self->_labeledValue copyWithZone:a3];
  [(_INPBSetLabeledSettingIntent *)v5 setLabeledValue:v7];

  v8 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:a3];
  [(_INPBSetLabeledSettingIntent *)v5 setSettingMetadata:v8];

  v9 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:a3];
  [(_INPBSetLabeledSettingIntent *)v5 setTemporalEventTrigger:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetLabeledSettingIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetLabeledSettingIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetLabeledSettingIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_INPBSetLabeledSettingIntent *)self intentMetadata];

  if (v4)
  {
    v5 = [(_INPBSetLabeledSettingIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBSetLabeledSettingIntent *)self labeledValue];

  if (v6)
  {
    labeledValue = self->_labeledValue;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBSetLabeledSettingIntent *)self settingMetadata];

  if (v8)
  {
    v9 = [(_INPBSetLabeledSettingIntent *)self settingMetadata];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBSetLabeledSettingIntent *)self temporalEventTrigger];

  v11 = v13;
  if (v10)
  {
    v12 = [(_INPBSetLabeledSettingIntent *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)setLabeledValue:(id)a3
{
  v4 = [a3 copy];
  labeledValue = self->_labeledValue;
  self->_labeledValue = v4;

  MEMORY[0x1EEE66BB8](v4, labeledValue);
}

@end
@interface _INPBRunVoiceCommandIntent
- (BOOL)isEqual:(id)a3;
- (_INPBRunVoiceCommandIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setPreviousIntentIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRunVoiceCommandIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBRunVoiceCommandIntent *)self executionResult];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"executionResult"];

  v6 = [(_INPBRunVoiceCommandIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  v8 = [(_INPBRunVoiceCommandIntent *)self originDevice];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"originDevice"];

  if (self->_previousIntentIdentifier)
  {
    v10 = [(_INPBRunVoiceCommandIntent *)self previousIntentIdentifier];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"previousIntentIdentifier"];
  }

  v12 = [(_INPBRunVoiceCommandIntent *)self voiceCommand];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"voiceCommand"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentExecutionResult *)self->_executionResult hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(_INPBVoiceCommandDeviceInformation *)self->_originDevice hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_previousIntentIdentifier hash];
  return v6 ^ [(_INPBDataString *)self->_voiceCommand hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_INPBRunVoiceCommandIntent *)self executionResult];
  v6 = [v4 executionResult];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_INPBRunVoiceCommandIntent *)self executionResult];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRunVoiceCommandIntent *)self executionResult];
    v10 = [v4 executionResult];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRunVoiceCommandIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_INPBRunVoiceCommandIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBRunVoiceCommandIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRunVoiceCommandIntent *)self originDevice];
  v6 = [v4 originDevice];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_INPBRunVoiceCommandIntent *)self originDevice];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBRunVoiceCommandIntent *)self originDevice];
    v20 = [v4 originDevice];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRunVoiceCommandIntent *)self previousIntentIdentifier];
  v6 = [v4 previousIntentIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_INPBRunVoiceCommandIntent *)self previousIntentIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBRunVoiceCommandIntent *)self previousIntentIdentifier];
    v25 = [v4 previousIntentIdentifier];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRunVoiceCommandIntent *)self voiceCommand];
  v6 = [v4 voiceCommand];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBRunVoiceCommandIntent *)self voiceCommand];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_INPBRunVoiceCommandIntent *)self voiceCommand];
    v30 = [v4 voiceCommand];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBRunVoiceCommandIntent allocWithZone:](_INPBRunVoiceCommandIntent init];
  v6 = [(_INPBIntentExecutionResult *)self->_executionResult copyWithZone:a3];
  [(_INPBRunVoiceCommandIntent *)v5 setExecutionResult:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBRunVoiceCommandIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBVoiceCommandDeviceInformation *)self->_originDevice copyWithZone:a3];
  [(_INPBRunVoiceCommandIntent *)v5 setOriginDevice:v8];

  v9 = [(NSString *)self->_previousIntentIdentifier copyWithZone:a3];
  [(_INPBRunVoiceCommandIntent *)v5 setPreviousIntentIdentifier:v9];

  v10 = [(_INPBDataString *)self->_voiceCommand copyWithZone:a3];
  [(_INPBRunVoiceCommandIntent *)v5 setVoiceCommand:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRunVoiceCommandIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRunVoiceCommandIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRunVoiceCommandIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(_INPBRunVoiceCommandIntent *)self executionResult];

  if (v4)
  {
    v5 = [(_INPBRunVoiceCommandIntent *)self executionResult];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBRunVoiceCommandIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBRunVoiceCommandIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBRunVoiceCommandIntent *)self originDevice];

  if (v8)
  {
    v9 = [(_INPBRunVoiceCommandIntent *)self originDevice];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBRunVoiceCommandIntent *)self previousIntentIdentifier];

  if (v10)
  {
    previousIntentIdentifier = self->_previousIntentIdentifier;
    PBDataWriterWriteStringField();
  }

  v12 = [(_INPBRunVoiceCommandIntent *)self voiceCommand];

  v13 = v15;
  if (v12)
  {
    v14 = [(_INPBRunVoiceCommandIntent *)self voiceCommand];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)setPreviousIntentIdentifier:(id)a3
{
  v4 = [a3 copy];
  previousIntentIdentifier = self->_previousIntentIdentifier;
  self->_previousIntentIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, previousIntentIdentifier);
}

@end
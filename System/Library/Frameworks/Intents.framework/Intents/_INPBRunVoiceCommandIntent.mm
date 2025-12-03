@interface _INPBRunVoiceCommandIntent
- (BOOL)isEqual:(id)equal;
- (_INPBRunVoiceCommandIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setPreviousIntentIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBRunVoiceCommandIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  executionResult = [(_INPBRunVoiceCommandIntent *)self executionResult];
  dictionaryRepresentation = [executionResult dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"executionResult"];

  intentMetadata = [(_INPBRunVoiceCommandIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  originDevice = [(_INPBRunVoiceCommandIntent *)self originDevice];
  dictionaryRepresentation3 = [originDevice dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"originDevice"];

  if (self->_previousIntentIdentifier)
  {
    previousIntentIdentifier = [(_INPBRunVoiceCommandIntent *)self previousIntentIdentifier];
    v11 = [previousIntentIdentifier copy];
    [dictionary setObject:v11 forKeyedSubscript:@"previousIntentIdentifier"];
  }

  voiceCommand = [(_INPBRunVoiceCommandIntent *)self voiceCommand];
  dictionaryRepresentation4 = [voiceCommand dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"voiceCommand"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentExecutionResult *)self->_executionResult hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(_INPBVoiceCommandDeviceInformation *)self->_originDevice hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_previousIntentIdentifier hash];
  return v6 ^ [(_INPBDataString *)self->_voiceCommand hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  executionResult = [(_INPBRunVoiceCommandIntent *)self executionResult];
  executionResult2 = [equalCopy executionResult];
  if ((executionResult != 0) == (executionResult2 == 0))
  {
    goto LABEL_26;
  }

  executionResult3 = [(_INPBRunVoiceCommandIntent *)self executionResult];
  if (executionResult3)
  {
    v8 = executionResult3;
    executionResult4 = [(_INPBRunVoiceCommandIntent *)self executionResult];
    executionResult5 = [equalCopy executionResult];
    v11 = [executionResult4 isEqual:executionResult5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  executionResult = [(_INPBRunVoiceCommandIntent *)self intentMetadata];
  executionResult2 = [equalCopy intentMetadata];
  if ((executionResult != 0) == (executionResult2 == 0))
  {
    goto LABEL_26;
  }

  intentMetadata = [(_INPBRunVoiceCommandIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBRunVoiceCommandIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  executionResult = [(_INPBRunVoiceCommandIntent *)self originDevice];
  executionResult2 = [equalCopy originDevice];
  if ((executionResult != 0) == (executionResult2 == 0))
  {
    goto LABEL_26;
  }

  originDevice = [(_INPBRunVoiceCommandIntent *)self originDevice];
  if (originDevice)
  {
    v18 = originDevice;
    originDevice2 = [(_INPBRunVoiceCommandIntent *)self originDevice];
    originDevice3 = [equalCopy originDevice];
    v21 = [originDevice2 isEqual:originDevice3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  executionResult = [(_INPBRunVoiceCommandIntent *)self previousIntentIdentifier];
  executionResult2 = [equalCopy previousIntentIdentifier];
  if ((executionResult != 0) == (executionResult2 == 0))
  {
    goto LABEL_26;
  }

  previousIntentIdentifier = [(_INPBRunVoiceCommandIntent *)self previousIntentIdentifier];
  if (previousIntentIdentifier)
  {
    v23 = previousIntentIdentifier;
    previousIntentIdentifier2 = [(_INPBRunVoiceCommandIntent *)self previousIntentIdentifier];
    previousIntentIdentifier3 = [equalCopy previousIntentIdentifier];
    v26 = [previousIntentIdentifier2 isEqual:previousIntentIdentifier3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  executionResult = [(_INPBRunVoiceCommandIntent *)self voiceCommand];
  executionResult2 = [equalCopy voiceCommand];
  if ((executionResult != 0) != (executionResult2 == 0))
  {
    voiceCommand = [(_INPBRunVoiceCommandIntent *)self voiceCommand];
    if (!voiceCommand)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = voiceCommand;
    voiceCommand2 = [(_INPBRunVoiceCommandIntent *)self voiceCommand];
    voiceCommand3 = [equalCopy voiceCommand];
    v31 = [voiceCommand2 isEqual:voiceCommand3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRunVoiceCommandIntent allocWithZone:](_INPBRunVoiceCommandIntent init];
  v6 = [(_INPBIntentExecutionResult *)self->_executionResult copyWithZone:zone];
  [(_INPBRunVoiceCommandIntent *)v5 setExecutionResult:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBRunVoiceCommandIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBVoiceCommandDeviceInformation *)self->_originDevice copyWithZone:zone];
  [(_INPBRunVoiceCommandIntent *)v5 setOriginDevice:v8];

  v9 = [(NSString *)self->_previousIntentIdentifier copyWithZone:zone];
  [(_INPBRunVoiceCommandIntent *)v5 setPreviousIntentIdentifier:v9];

  v10 = [(_INPBDataString *)self->_voiceCommand copyWithZone:zone];
  [(_INPBRunVoiceCommandIntent *)v5 setVoiceCommand:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRunVoiceCommandIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRunVoiceCommandIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRunVoiceCommandIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  executionResult = [(_INPBRunVoiceCommandIntent *)self executionResult];

  if (executionResult)
  {
    executionResult2 = [(_INPBRunVoiceCommandIntent *)self executionResult];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBRunVoiceCommandIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBRunVoiceCommandIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  originDevice = [(_INPBRunVoiceCommandIntent *)self originDevice];

  if (originDevice)
  {
    originDevice2 = [(_INPBRunVoiceCommandIntent *)self originDevice];
    PBDataWriterWriteSubmessage();
  }

  previousIntentIdentifier = [(_INPBRunVoiceCommandIntent *)self previousIntentIdentifier];

  if (previousIntentIdentifier)
  {
    previousIntentIdentifier = self->_previousIntentIdentifier;
    PBDataWriterWriteStringField();
  }

  voiceCommand = [(_INPBRunVoiceCommandIntent *)self voiceCommand];

  v13 = toCopy;
  if (voiceCommand)
  {
    voiceCommand2 = [(_INPBRunVoiceCommandIntent *)self voiceCommand];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)setPreviousIntentIdentifier:(id)identifier
{
  v4 = [identifier copy];
  previousIntentIdentifier = self->_previousIntentIdentifier;
  self->_previousIntentIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, previousIntentIdentifier);
}

@end
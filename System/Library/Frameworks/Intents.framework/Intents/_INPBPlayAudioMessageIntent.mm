@interface _INPBPlayAudioMessageIntent
- (BOOL)isEqual:(id)equal;
- (_INPBPlayAudioMessageIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setMessageIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBPlayAudioMessageIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBPlayAudioMessageIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if (self->_messageIdentifier)
  {
    messageIdentifier = [(_INPBPlayAudioMessageIntent *)self messageIdentifier];
    v7 = [messageIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"messageIdentifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  intentMetadata = [(_INPBPlayAudioMessageIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_11;
  }

  intentMetadata3 = [(_INPBPlayAudioMessageIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBPlayAudioMessageIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBPlayAudioMessageIntent *)self messageIdentifier];
  intentMetadata2 = [equalCopy messageIdentifier];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    messageIdentifier = [(_INPBPlayAudioMessageIntent *)self messageIdentifier];
    if (!messageIdentifier)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = messageIdentifier;
    messageIdentifier2 = [(_INPBPlayAudioMessageIntent *)self messageIdentifier];
    messageIdentifier3 = [equalCopy messageIdentifier];
    v16 = [messageIdentifier2 isEqual:messageIdentifier3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPlayAudioMessageIntent allocWithZone:](_INPBPlayAudioMessageIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBPlayAudioMessageIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSString *)self->_messageIdentifier copyWithZone:zone];
  [(_INPBPlayAudioMessageIntent *)v5 setMessageIdentifier:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPlayAudioMessageIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPlayAudioMessageIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPlayAudioMessageIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBPlayAudioMessageIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBPlayAudioMessageIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  messageIdentifier = [(_INPBPlayAudioMessageIntent *)self messageIdentifier];

  if (messageIdentifier)
  {
    messageIdentifier = self->_messageIdentifier;
    PBDataWriterWriteStringField();
  }
}

- (void)setMessageIdentifier:(id)identifier
{
  v4 = [identifier copy];
  messageIdentifier = self->_messageIdentifier;
  self->_messageIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, messageIdentifier);
}

@end
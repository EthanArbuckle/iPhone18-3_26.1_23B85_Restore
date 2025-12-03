@interface _INPBPlayMessageSoundIntent
- (BOOL)isEqual:(id)equal;
- (_INPBPlayMessageSoundIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setMessageIdentifier:(id)identifier;
- (void)setSoundType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBPlayMessageSoundIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBPlayMessageSoundIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if (self->_messageIdentifier)
  {
    messageIdentifier = [(_INPBPlayMessageSoundIntent *)self messageIdentifier];
    v7 = [messageIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"messageIdentifier"];
  }

  if ([(_INPBPlayMessageSoundIntent *)self hasSoundType])
  {
    soundType = [(_INPBPlayMessageSoundIntent *)self soundType];
    if (soundType == 1)
    {
      v9 = @"OUTGOING_MESSAGE";
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", soundType];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"soundType"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(NSString *)self->_messageIdentifier hash];
  if ([(_INPBPlayMessageSoundIntent *)self hasSoundType])
  {
    v5 = 2654435761 * self->_soundType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  intentMetadata = [(_INPBPlayMessageSoundIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_11;
  }

  intentMetadata3 = [(_INPBPlayMessageSoundIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBPlayMessageSoundIntent *)self intentMetadata];
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

  intentMetadata = [(_INPBPlayMessageSoundIntent *)self messageIdentifier];
  intentMetadata2 = [equalCopy messageIdentifier];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  messageIdentifier = [(_INPBPlayMessageSoundIntent *)self messageIdentifier];
  if (messageIdentifier)
  {
    v13 = messageIdentifier;
    messageIdentifier2 = [(_INPBPlayMessageSoundIntent *)self messageIdentifier];
    messageIdentifier3 = [equalCopy messageIdentifier];
    v16 = [messageIdentifier2 isEqual:messageIdentifier3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  hasSoundType = [(_INPBPlayMessageSoundIntent *)self hasSoundType];
  if (hasSoundType == [equalCopy hasSoundType])
  {
    if (!-[_INPBPlayMessageSoundIntent hasSoundType](self, "hasSoundType") || ![equalCopy hasSoundType] || (soundType = self->_soundType, soundType == objc_msgSend(equalCopy, "soundType")))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPlayMessageSoundIntent allocWithZone:](_INPBPlayMessageSoundIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBPlayMessageSoundIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSString *)self->_messageIdentifier copyWithZone:zone];
  [(_INPBPlayMessageSoundIntent *)v5 setMessageIdentifier:v7];

  if ([(_INPBPlayMessageSoundIntent *)self hasSoundType])
  {
    [(_INPBPlayMessageSoundIntent *)v5 setSoundType:[(_INPBPlayMessageSoundIntent *)self soundType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPlayMessageSoundIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPlayMessageSoundIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPlayMessageSoundIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBPlayMessageSoundIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBPlayMessageSoundIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  messageIdentifier = [(_INPBPlayMessageSoundIntent *)self messageIdentifier];

  if (messageIdentifier)
  {
    messageIdentifier = self->_messageIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBPlayMessageSoundIntent *)self hasSoundType])
  {
    soundType = self->_soundType;
    PBDataWriterWriteInt32Field();
  }
}

- (void)setSoundType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_soundType = type;
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
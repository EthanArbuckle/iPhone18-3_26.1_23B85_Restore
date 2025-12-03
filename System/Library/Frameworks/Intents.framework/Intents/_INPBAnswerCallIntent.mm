@interface _INPBAnswerCallIntent
- (BOOL)isEqual:(id)equal;
- (_INPBAnswerCallIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAudioRoute:(id)route;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioRoute:(int)route;
- (void)setCallIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBAnswerCallIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBAnswerCallIntent *)self hasAudioRoute])
  {
    audioRoute = [(_INPBAnswerCallIntent *)self audioRoute];
    if ((audioRoute - 2) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", audioRoute];
    }

    else
    {
      v5 = off_1E7286DF8[(audioRoute - 2)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"audioRoute"];
  }

  if (self->_callIdentifier)
  {
    callIdentifier = [(_INPBAnswerCallIntent *)self callIdentifier];
    v7 = [callIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"callIdentifier"];
  }

  intentMetadata = [(_INPBAnswerCallIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBAnswerCallIntent *)self hasAudioRoute])
  {
    v3 = 2654435761 * self->_audioRoute;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_callIdentifier hash]^ v3;
  return v4 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasAudioRoute = [(_INPBAnswerCallIntent *)self hasAudioRoute];
  if (hasAudioRoute != [equalCopy hasAudioRoute])
  {
    goto LABEL_16;
  }

  if ([(_INPBAnswerCallIntent *)self hasAudioRoute])
  {
    if ([equalCopy hasAudioRoute])
    {
      audioRoute = self->_audioRoute;
      if (audioRoute != [equalCopy audioRoute])
      {
        goto LABEL_16;
      }
    }
  }

  callIdentifier = [(_INPBAnswerCallIntent *)self callIdentifier];
  callIdentifier2 = [equalCopy callIdentifier];
  if ((callIdentifier != 0) == (callIdentifier2 == 0))
  {
    goto LABEL_15;
  }

  callIdentifier3 = [(_INPBAnswerCallIntent *)self callIdentifier];
  if (callIdentifier3)
  {
    v10 = callIdentifier3;
    callIdentifier4 = [(_INPBAnswerCallIntent *)self callIdentifier];
    callIdentifier5 = [equalCopy callIdentifier];
    v13 = [callIdentifier4 isEqual:callIdentifier5];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  callIdentifier = [(_INPBAnswerCallIntent *)self intentMetadata];
  callIdentifier2 = [equalCopy intentMetadata];
  if ((callIdentifier != 0) != (callIdentifier2 == 0))
  {
    intentMetadata = [(_INPBAnswerCallIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = intentMetadata;
    intentMetadata2 = [(_INPBAnswerCallIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v18 = [intentMetadata2 isEqual:intentMetadata3];

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
  v5 = [+[_INPBAnswerCallIntent allocWithZone:](_INPBAnswerCallIntent init];
  if ([(_INPBAnswerCallIntent *)self hasAudioRoute])
  {
    [(_INPBAnswerCallIntent *)v5 setAudioRoute:[(_INPBAnswerCallIntent *)self audioRoute]];
  }

  v6 = [(NSString *)self->_callIdentifier copyWithZone:zone];
  [(_INPBAnswerCallIntent *)v5 setCallIdentifier:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBAnswerCallIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAnswerCallIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAnswerCallIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAnswerCallIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBAnswerCallIntent *)self hasAudioRoute])
  {
    audioRoute = self->_audioRoute;
    PBDataWriterWriteInt32Field();
  }

  callIdentifier = [(_INPBAnswerCallIntent *)self callIdentifier];

  if (callIdentifier)
  {
    callIdentifier = self->_callIdentifier;
    PBDataWriterWriteStringField();
  }

  intentMetadata = [(_INPBAnswerCallIntent *)self intentMetadata];

  v8 = toCopy;
  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBAnswerCallIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (void)setCallIdentifier:(id)identifier
{
  v4 = [identifier copy];
  callIdentifier = self->_callIdentifier;
  self->_callIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, callIdentifier);
}

- (int)StringAsAudioRoute:(id)route
{
  routeCopy = route;
  if ([routeCopy isEqualToString:@"SPEAKERPHONE_AUDIO_ROUTE"])
  {
    v4 = 2;
  }

  else if ([routeCopy isEqualToString:@"BLUETOOTH_AUDIO_ROUTE"])
  {
    v4 = 3;
  }

  else if ([routeCopy isEqualToString:@"HEY_SIRI_AUDIO_ROUTE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setAudioRoute:(int)route
{
  has = self->_has;
  if (route == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_audioRoute = route;
  }
}

@end
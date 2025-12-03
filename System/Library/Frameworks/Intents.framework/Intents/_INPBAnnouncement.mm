@interface _INPBAnnouncement
- (BOOL)isEqual:(id)equal;
- (_INPBAnnouncement)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasStartTime:(BOOL)time;
- (void)setIdentifier:(id)identifier;
- (void)setSpeechDataTranscription:(id)transcription;
- (void)writeTo:(id)to;
@end

@implementation _INPBAnnouncement

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBAnnouncement *)self hasEndTime])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBAnnouncement endTime](self, "endTime")}];
    [dictionary setObject:v4 forKeyedSubscript:@"endTime"];
  }

  if (self->_identifier)
  {
    identifier = [(_INPBAnnouncement *)self identifier];
    v6 = [identifier copy];
    [dictionary setObject:v6 forKeyedSubscript:@"identifier"];
  }

  if (self->_speechDataTranscription)
  {
    speechDataTranscription = [(_INPBAnnouncement *)self speechDataTranscription];
    v8 = [speechDataTranscription copy];
    [dictionary setObject:v8 forKeyedSubscript:@"speechDataTranscription"];
  }

  speechDataURL = [(_INPBAnnouncement *)self speechDataURL];
  dictionaryRepresentation = [speechDataURL dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"speechDataURL"];

  if ([(_INPBAnnouncement *)self hasStartTime])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBAnnouncement startTime](self, "startTime")}];
    [dictionary setObject:v11 forKeyedSubscript:@"startTime"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBAnnouncement *)self hasEndTime])
  {
    v3 = 2654435761u * self->_endTime;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_identifier hash];
  v5 = [(NSString *)self->_speechDataTranscription hash];
  v6 = [(_INPBURLValue *)self->_speechDataURL hash];
  if ([(_INPBAnnouncement *)self hasStartTime])
  {
    v7 = 2654435761u * self->_startTime;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  hasEndTime = [(_INPBAnnouncement *)self hasEndTime];
  if (hasEndTime != [equalCopy hasEndTime])
  {
    goto LABEL_21;
  }

  if ([(_INPBAnnouncement *)self hasEndTime])
  {
    if ([equalCopy hasEndTime])
    {
      endTime = self->_endTime;
      if (endTime != [equalCopy endTime])
      {
        goto LABEL_21;
      }
    }
  }

  identifier = [(_INPBAnnouncement *)self identifier];
  identifier2 = [equalCopy identifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_20;
  }

  identifier3 = [(_INPBAnnouncement *)self identifier];
  if (identifier3)
  {
    v10 = identifier3;
    identifier4 = [(_INPBAnnouncement *)self identifier];
    identifier5 = [equalCopy identifier];
    v13 = [identifier4 isEqual:identifier5];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  identifier = [(_INPBAnnouncement *)self speechDataTranscription];
  identifier2 = [equalCopy speechDataTranscription];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_20;
  }

  speechDataTranscription = [(_INPBAnnouncement *)self speechDataTranscription];
  if (speechDataTranscription)
  {
    v15 = speechDataTranscription;
    speechDataTranscription2 = [(_INPBAnnouncement *)self speechDataTranscription];
    speechDataTranscription3 = [equalCopy speechDataTranscription];
    v18 = [speechDataTranscription2 isEqual:speechDataTranscription3];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  identifier = [(_INPBAnnouncement *)self speechDataURL];
  identifier2 = [equalCopy speechDataURL];
  if ((identifier != 0) == (identifier2 == 0))
  {
LABEL_20:

    goto LABEL_21;
  }

  speechDataURL = [(_INPBAnnouncement *)self speechDataURL];
  if (speechDataURL)
  {
    v20 = speechDataURL;
    speechDataURL2 = [(_INPBAnnouncement *)self speechDataURL];
    speechDataURL3 = [equalCopy speechDataURL];
    v23 = [speechDataURL2 isEqual:speechDataURL3];

    if (!v23)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  hasStartTime = [(_INPBAnnouncement *)self hasStartTime];
  if (hasStartTime == [equalCopy hasStartTime])
  {
    if (!-[_INPBAnnouncement hasStartTime](self, "hasStartTime") || ![equalCopy hasStartTime] || (startTime = self->_startTime, startTime == objc_msgSend(equalCopy, "startTime")))
    {
      v24 = 1;
      goto LABEL_22;
    }
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAnnouncement allocWithZone:](_INPBAnnouncement init];
  if ([(_INPBAnnouncement *)self hasEndTime])
  {
    [(_INPBAnnouncement *)v5 setEndTime:[(_INPBAnnouncement *)self endTime]];
  }

  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBAnnouncement *)v5 setIdentifier:v6];

  v7 = [(NSString *)self->_speechDataTranscription copyWithZone:zone];
  [(_INPBAnnouncement *)v5 setSpeechDataTranscription:v7];

  v8 = [(_INPBURLValue *)self->_speechDataURL copyWithZone:zone];
  [(_INPBAnnouncement *)v5 setSpeechDataURL:v8];

  if ([(_INPBAnnouncement *)self hasStartTime])
  {
    [(_INPBAnnouncement *)v5 setStartTime:[(_INPBAnnouncement *)self startTime]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAnnouncement *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAnnouncement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAnnouncement *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBAnnouncement *)self hasEndTime])
  {
    endTime = self->_endTime;
    PBDataWriterWriteUint64Field();
  }

  identifier = [(_INPBAnnouncement *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  speechDataTranscription = [(_INPBAnnouncement *)self speechDataTranscription];

  if (speechDataTranscription)
  {
    speechDataTranscription = self->_speechDataTranscription;
    PBDataWriterWriteStringField();
  }

  speechDataURL = [(_INPBAnnouncement *)self speechDataURL];

  if (speechDataURL)
  {
    speechDataURL2 = [(_INPBAnnouncement *)self speechDataURL];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBAnnouncement *)self hasStartTime])
  {
    startTime = self->_startTime;
    PBDataWriterWriteUint64Field();
  }
}

- (void)setHasStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setSpeechDataTranscription:(id)transcription
{
  v4 = [transcription copy];
  speechDataTranscription = self->_speechDataTranscription;
  self->_speechDataTranscription = v4;

  MEMORY[0x1EEE66BB8](v4, speechDataTranscription);
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

@end
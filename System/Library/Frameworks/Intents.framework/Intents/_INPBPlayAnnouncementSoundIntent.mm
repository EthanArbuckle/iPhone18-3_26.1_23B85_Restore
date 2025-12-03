@interface _INPBPlayAnnouncementSoundIntent
- (BOOL)isEqual:(id)equal;
- (_INPBPlayAnnouncementSoundIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setSoundType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBPlayAnnouncementSoundIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBPlayAnnouncementSoundIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBPlayAnnouncementSoundIntent *)self hasSoundType])
  {
    soundType = [(_INPBPlayAnnouncementSoundIntent *)self soundType];
    if (soundType == 1)
    {
      v7 = @"ANNOUNCEMENT_SENT";
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", soundType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"soundType"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBPlayAnnouncementSoundIntent *)self hasSoundType])
  {
    v4 = 2654435761 * self->_soundType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  intentMetadata = [(_INPBPlayAnnouncementSoundIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  v7 = intentMetadata2;
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    intentMetadata3 = [(_INPBPlayAnnouncementSoundIntent *)self intentMetadata];
    if (intentMetadata3)
    {
      v9 = intentMetadata3;
      intentMetadata4 = [(_INPBPlayAnnouncementSoundIntent *)self intentMetadata];
      intentMetadata5 = [equalCopy intentMetadata];
      v12 = [intentMetadata4 isEqual:intentMetadata5];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    hasSoundType = [(_INPBPlayAnnouncementSoundIntent *)self hasSoundType];
    if (hasSoundType == [equalCopy hasSoundType])
    {
      if (!-[_INPBPlayAnnouncementSoundIntent hasSoundType](self, "hasSoundType") || ![equalCopy hasSoundType] || (soundType = self->_soundType, soundType == objc_msgSend(equalCopy, "soundType")))
      {
        v14 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPlayAnnouncementSoundIntent allocWithZone:](_INPBPlayAnnouncementSoundIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBPlayAnnouncementSoundIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBPlayAnnouncementSoundIntent *)self hasSoundType])
  {
    [(_INPBPlayAnnouncementSoundIntent *)v5 setSoundType:[(_INPBPlayAnnouncementSoundIntent *)self soundType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPlayAnnouncementSoundIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPlayAnnouncementSoundIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPlayAnnouncementSoundIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBPlayAnnouncementSoundIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBPlayAnnouncementSoundIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPlayAnnouncementSoundIntent *)self hasSoundType])
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

@end
@interface _INPBMediaDestination
- (BOOL)isEqual:(id)equal;
- (_INPBMediaDestination)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsMediaDestinationType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setMediaDestinationType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBMediaDestination

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBMediaDestination *)self hasMediaDestinationType])
  {
    mediaDestinationType = [(_INPBMediaDestination *)self mediaDestinationType];
    if (mediaDestinationType >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", mediaDestinationType];
    }

    else
    {
      v5 = off_1E72868C8[mediaDestinationType];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"mediaDestinationType"];
  }

  playlistName = [(_INPBMediaDestination *)self playlistName];
  dictionaryRepresentation = [playlistName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"playlistName"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBMediaDestination *)self hasMediaDestinationType])
  {
    v3 = 2654435761 * self->_mediaDestinationType;
  }

  else
  {
    v3 = 0;
  }

  return [(_INPBString *)self->_playlistName hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasMediaDestinationType = [(_INPBMediaDestination *)self hasMediaDestinationType];
    if (hasMediaDestinationType == [equalCopy hasMediaDestinationType])
    {
      if (!-[_INPBMediaDestination hasMediaDestinationType](self, "hasMediaDestinationType") || ![equalCopy hasMediaDestinationType] || (mediaDestinationType = self->_mediaDestinationType, mediaDestinationType == objc_msgSend(equalCopy, "mediaDestinationType")))
      {
        playlistName = [(_INPBMediaDestination *)self playlistName];
        playlistName2 = [equalCopy playlistName];
        v9 = playlistName2;
        if ((playlistName != 0) != (playlistName2 == 0))
        {
          playlistName3 = [(_INPBMediaDestination *)self playlistName];
          if (!playlistName3)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = playlistName3;
          playlistName4 = [(_INPBMediaDestination *)self playlistName];
          playlistName5 = [equalCopy playlistName];
          v14 = [playlistName4 isEqual:playlistName5];

          if (v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBMediaDestination allocWithZone:](_INPBMediaDestination init];
  if ([(_INPBMediaDestination *)self hasMediaDestinationType])
  {
    [(_INPBMediaDestination *)v5 setMediaDestinationType:[(_INPBMediaDestination *)self mediaDestinationType]];
  }

  v6 = [(_INPBString *)self->_playlistName copyWithZone:zone];
  [(_INPBMediaDestination *)v5 setPlaylistName:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBMediaDestination *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBMediaDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBMediaDestination *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBMediaDestination *)self hasMediaDestinationType])
  {
    mediaDestinationType = self->_mediaDestinationType;
    PBDataWriterWriteInt32Field();
  }

  playlistName = [(_INPBMediaDestination *)self playlistName];

  v6 = toCopy;
  if (playlistName)
  {
    playlistName2 = [(_INPBMediaDestination *)self playlistName];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (int)StringAsMediaDestinationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_DESTINATION"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"LIBRARY"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PLAYLIST"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMediaDestinationType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_mediaDestinationType = type;
  }
}

@end
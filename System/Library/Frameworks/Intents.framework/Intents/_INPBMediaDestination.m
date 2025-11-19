@interface _INPBMediaDestination
- (BOOL)isEqual:(id)a3;
- (_INPBMediaDestination)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsMediaDestinationType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setMediaDestinationType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBMediaDestination

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBMediaDestination *)self hasMediaDestinationType])
  {
    v4 = [(_INPBMediaDestination *)self mediaDestinationType];
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E72868C8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"mediaDestinationType"];
  }

  v6 = [(_INPBMediaDestination *)self playlistName];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"playlistName"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBMediaDestination *)self hasMediaDestinationType];
    if (v5 == [v4 hasMediaDestinationType])
    {
      if (!-[_INPBMediaDestination hasMediaDestinationType](self, "hasMediaDestinationType") || ![v4 hasMediaDestinationType] || (mediaDestinationType = self->_mediaDestinationType, mediaDestinationType == objc_msgSend(v4, "mediaDestinationType")))
      {
        v7 = [(_INPBMediaDestination *)self playlistName];
        v8 = [v4 playlistName];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_INPBMediaDestination *)self playlistName];
          if (!v10)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = v10;
          v12 = [(_INPBMediaDestination *)self playlistName];
          v13 = [v4 playlistName];
          v14 = [v12 isEqual:v13];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBMediaDestination allocWithZone:](_INPBMediaDestination init];
  if ([(_INPBMediaDestination *)self hasMediaDestinationType])
  {
    [(_INPBMediaDestination *)v5 setMediaDestinationType:[(_INPBMediaDestination *)self mediaDestinationType]];
  }

  v6 = [(_INPBString *)self->_playlistName copyWithZone:a3];
  [(_INPBMediaDestination *)v5 setPlaylistName:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBMediaDestination *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBMediaDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBMediaDestination *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBMediaDestination *)self hasMediaDestinationType])
  {
    mediaDestinationType = self->_mediaDestinationType;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBMediaDestination *)self playlistName];

  v6 = v8;
  if (v5)
  {
    v7 = [(_INPBMediaDestination *)self playlistName];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (int)StringAsMediaDestinationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_DESTINATION"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LIBRARY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PLAYLIST"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMediaDestinationType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_mediaDestinationType = a3;
  }
}

@end
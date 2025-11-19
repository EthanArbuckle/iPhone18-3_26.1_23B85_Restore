@interface _INPBConnectedCall
- (BOOL)isEqual:(id)a3;
- (_INPBConnectedCall)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAudioRoute:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioRoute:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBConnectedCall

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBConnectedCall *)self hasAudioRoute])
  {
    v4 = [(_INPBConnectedCall *)self audioRoute];
    if ((v4 - 2) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7287FE0[(v4 - 2)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"audioRoute"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBConnectedCall *)self hasAudioRoute])
  {
    return 2654435761 * self->_audioRoute;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBConnectedCall *)self hasAudioRoute];
    if (v5 == [v4 hasAudioRoute])
    {
      if (!-[_INPBConnectedCall hasAudioRoute](self, "hasAudioRoute") || ![v4 hasAudioRoute] || (audioRoute = self->_audioRoute, audioRoute == objc_msgSend(v4, "audioRoute")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBConnectedCall allocWithZone:?]];
  if ([(_INPBConnectedCall *)self hasAudioRoute])
  {
    [(_INPBConnectedCall *)v4 setAudioRoute:[(_INPBConnectedCall *)self audioRoute]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBConnectedCall *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBConnectedCall)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBConnectedCall *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_INPBConnectedCall *)self hasAudioRoute])
  {
    audioRoute = self->_audioRoute;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsAudioRoute:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SPEAKERPHONE_AUDIO_ROUTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BLUETOOTH_AUDIO_ROUTE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HEY_SIRI_AUDIO_ROUTE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setAudioRoute:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_audioRoute = a3;
  }
}

@end
@interface _INPBVoiceCommandDeviceInformation
- (BOOL)isEqual:(id)a3;
- (_INPBVoiceCommandDeviceInformation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceIdiom:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDeviceIdiom:(int)a3;
- (void)setHasIsHomePodInUltimateMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBVoiceCommandDeviceInformation

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBVoiceCommandDeviceInformation *)self hasDeviceIdiom])
  {
    v4 = [(_INPBVoiceCommandDeviceInformation *)self deviceIdiom];
    if ((v4 - 1) >= 7)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E727DF48[(v4 - 1)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"deviceIdiom"];
  }

  if ([(_INPBVoiceCommandDeviceInformation *)self hasIsHomePodInUltimateMode])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBVoiceCommandDeviceInformation isHomePodInUltimateMode](self, "isHomePodInUltimateMode")}];
    [v3 setObject:v6 forKeyedSubscript:@"isHomePodInUltimateMode"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBVoiceCommandDeviceInformation *)self hasDeviceIdiom])
  {
    v3 = 2654435761 * self->_deviceIdiom;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBVoiceCommandDeviceInformation *)self hasIsHomePodInUltimateMode])
  {
    v4 = 2654435761 * self->_isHomePodInUltimateMode;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBVoiceCommandDeviceInformation *)self hasDeviceIdiom];
    if (v5 == [v4 hasDeviceIdiom])
    {
      if (!-[_INPBVoiceCommandDeviceInformation hasDeviceIdiom](self, "hasDeviceIdiom") || ![v4 hasDeviceIdiom] || (deviceIdiom = self->_deviceIdiom, deviceIdiom == objc_msgSend(v4, "deviceIdiom")))
      {
        v7 = [(_INPBVoiceCommandDeviceInformation *)self hasIsHomePodInUltimateMode];
        if (v7 == [v4 hasIsHomePodInUltimateMode])
        {
          if (!-[_INPBVoiceCommandDeviceInformation hasIsHomePodInUltimateMode](self, "hasIsHomePodInUltimateMode") || ![v4 hasIsHomePodInUltimateMode] || (isHomePodInUltimateMode = self->_isHomePodInUltimateMode, isHomePodInUltimateMode == objc_msgSend(v4, "isHomePodInUltimateMode")))
          {
            v8 = 1;
          }
        }
      }
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBVoiceCommandDeviceInformation allocWithZone:?]];
  if ([(_INPBVoiceCommandDeviceInformation *)self hasDeviceIdiom])
  {
    [(_INPBVoiceCommandDeviceInformation *)v4 setDeviceIdiom:[(_INPBVoiceCommandDeviceInformation *)self deviceIdiom]];
  }

  if ([(_INPBVoiceCommandDeviceInformation *)self hasIsHomePodInUltimateMode])
  {
    [(_INPBVoiceCommandDeviceInformation *)v4 setIsHomePodInUltimateMode:[(_INPBVoiceCommandDeviceInformation *)self isHomePodInUltimateMode]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBVoiceCommandDeviceInformation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBVoiceCommandDeviceInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBVoiceCommandDeviceInformation *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_INPBVoiceCommandDeviceInformation *)self hasDeviceIdiom])
  {
    deviceIdiom = self->_deviceIdiom;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBVoiceCommandDeviceInformation *)self hasIsHomePodInUltimateMode])
  {
    isHomePodInUltimateMode = self->_isHomePodInUltimateMode;
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsHomePodInUltimateMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsDeviceIdiom:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PHONE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PAD"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WATCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HOME_POD"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CARPLAY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"APPLE_TV"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"MAC"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setDeviceIdiom:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_deviceIdiom = a3;
  }
}

@end
@interface _INPBVoiceCommandDeviceInformation
- (BOOL)isEqual:(id)equal;
- (_INPBVoiceCommandDeviceInformation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceIdiom:(id)idiom;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDeviceIdiom:(int)idiom;
- (void)setHasIsHomePodInUltimateMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation _INPBVoiceCommandDeviceInformation

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBVoiceCommandDeviceInformation *)self hasDeviceIdiom])
  {
    deviceIdiom = [(_INPBVoiceCommandDeviceInformation *)self deviceIdiom];
    if ((deviceIdiom - 1) >= 7)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", deviceIdiom];
    }

    else
    {
      v5 = off_1E727DF48[(deviceIdiom - 1)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"deviceIdiom"];
  }

  if ([(_INPBVoiceCommandDeviceInformation *)self hasIsHomePodInUltimateMode])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBVoiceCommandDeviceInformation isHomePodInUltimateMode](self, "isHomePodInUltimateMode")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isHomePodInUltimateMode"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasDeviceIdiom = [(_INPBVoiceCommandDeviceInformation *)self hasDeviceIdiom];
    if (hasDeviceIdiom == [equalCopy hasDeviceIdiom])
    {
      if (!-[_INPBVoiceCommandDeviceInformation hasDeviceIdiom](self, "hasDeviceIdiom") || ![equalCopy hasDeviceIdiom] || (deviceIdiom = self->_deviceIdiom, deviceIdiom == objc_msgSend(equalCopy, "deviceIdiom")))
      {
        hasIsHomePodInUltimateMode = [(_INPBVoiceCommandDeviceInformation *)self hasIsHomePodInUltimateMode];
        if (hasIsHomePodInUltimateMode == [equalCopy hasIsHomePodInUltimateMode])
        {
          if (!-[_INPBVoiceCommandDeviceInformation hasIsHomePodInUltimateMode](self, "hasIsHomePodInUltimateMode") || ![equalCopy hasIsHomePodInUltimateMode] || (isHomePodInUltimateMode = self->_isHomePodInUltimateMode, isHomePodInUltimateMode == objc_msgSend(equalCopy, "isHomePodInUltimateMode")))
          {
            v8 = 1;
          }
        }
      }
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBVoiceCommandDeviceInformation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBVoiceCommandDeviceInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBVoiceCommandDeviceInformation *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)setHasIsHomePodInUltimateMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsDeviceIdiom:(id)idiom
{
  idiomCopy = idiom;
  if ([idiomCopy isEqualToString:@"PHONE"])
  {
    v4 = 1;
  }

  else if ([idiomCopy isEqualToString:@"PAD"])
  {
    v4 = 2;
  }

  else if ([idiomCopy isEqualToString:@"WATCH"])
  {
    v4 = 3;
  }

  else if ([idiomCopy isEqualToString:@"HOME_POD"])
  {
    v4 = 4;
  }

  else if ([idiomCopy isEqualToString:@"CARPLAY"])
  {
    v4 = 5;
  }

  else if ([idiomCopy isEqualToString:@"APPLE_TV"])
  {
    v4 = 6;
  }

  else if ([idiomCopy isEqualToString:@"MAC"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setDeviceIdiom:(int)idiom
{
  has = self->_has;
  if (idiom == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_deviceIdiom = idiom;
  }
}

@end
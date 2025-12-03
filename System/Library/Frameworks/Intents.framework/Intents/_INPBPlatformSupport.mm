@interface _INPBPlatformSupport
- (BOOL)isEqual:(id)equal;
- (_INPBPlatformSupport)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsSupportedPlatform:(id)platform;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setMinimumOsVersion:(id)version;
- (void)setSupportedPlatform:(int)platform;
- (void)writeTo:(id)to;
@end

@implementation _INPBPlatformSupport

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_minimumOsVersion)
  {
    minimumOsVersion = [(_INPBPlatformSupport *)self minimumOsVersion];
    v5 = [minimumOsVersion copy];
    [dictionary setObject:v5 forKeyedSubscript:@"minimum_os_version"];
  }

  if ([(_INPBPlatformSupport *)self hasSupportedPlatform])
  {
    supportedPlatform = [(_INPBPlatformSupport *)self supportedPlatform];
    if ((supportedPlatform - 1) >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", supportedPlatform];
    }

    else
    {
      v7 = off_1E7285960[(supportedPlatform - 1)];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"supported_platform"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_minimumOsVersion hash];
  if ([(_INPBPlatformSupport *)self hasSupportedPlatform])
  {
    v4 = 2654435761 * self->_supportedPlatform;
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

  minimumOsVersion = [(_INPBPlatformSupport *)self minimumOsVersion];
  minimumOsVersion2 = [equalCopy minimumOsVersion];
  v7 = minimumOsVersion2;
  if ((minimumOsVersion != 0) != (minimumOsVersion2 == 0))
  {
    minimumOsVersion3 = [(_INPBPlatformSupport *)self minimumOsVersion];
    if (minimumOsVersion3)
    {
      v9 = minimumOsVersion3;
      minimumOsVersion4 = [(_INPBPlatformSupport *)self minimumOsVersion];
      minimumOsVersion5 = [equalCopy minimumOsVersion];
      v12 = [minimumOsVersion4 isEqual:minimumOsVersion5];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    hasSupportedPlatform = [(_INPBPlatformSupport *)self hasSupportedPlatform];
    if (hasSupportedPlatform == [equalCopy hasSupportedPlatform])
    {
      if (!-[_INPBPlatformSupport hasSupportedPlatform](self, "hasSupportedPlatform") || ![equalCopy hasSupportedPlatform] || (supportedPlatform = self->_supportedPlatform, supportedPlatform == objc_msgSend(equalCopy, "supportedPlatform")))
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
  v5 = [+[_INPBPlatformSupport allocWithZone:](_INPBPlatformSupport init];
  v6 = [(NSString *)self->_minimumOsVersion copyWithZone:zone];
  [(_INPBPlatformSupport *)v5 setMinimumOsVersion:v6];

  if ([(_INPBPlatformSupport *)self hasSupportedPlatform])
  {
    [(_INPBPlatformSupport *)v5 setSupportedPlatform:[(_INPBPlatformSupport *)self supportedPlatform]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPlatformSupport *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPlatformSupport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPlatformSupport *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  minimumOsVersion = [(_INPBPlatformSupport *)self minimumOsVersion];

  if (minimumOsVersion)
  {
    minimumOsVersion = self->_minimumOsVersion;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBPlatformSupport *)self hasSupportedPlatform])
  {
    supportedPlatform = self->_supportedPlatform;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsSupportedPlatform:(id)platform
{
  platformCopy = platform;
  if ([platformCopy isEqualToString:@"IOS"])
  {
    v4 = 1;
  }

  else if ([platformCopy isEqualToString:@"TVOS"])
  {
    v4 = 2;
  }

  else if ([platformCopy isEqualToString:@"WATCHOS"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setSupportedPlatform:(int)platform
{
  has = self->_has;
  if (platform == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_supportedPlatform = platform;
  }
}

- (void)setMinimumOsVersion:(id)version
{
  v4 = [version copy];
  minimumOsVersion = self->_minimumOsVersion;
  self->_minimumOsVersion = v4;

  MEMORY[0x1EEE66BB8](v4, minimumOsVersion);
}

@end
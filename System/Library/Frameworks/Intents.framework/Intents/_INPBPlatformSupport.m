@interface _INPBPlatformSupport
- (BOOL)isEqual:(id)a3;
- (_INPBPlatformSupport)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsSupportedPlatform:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setMinimumOsVersion:(id)a3;
- (void)setSupportedPlatform:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPlatformSupport

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_minimumOsVersion)
  {
    v4 = [(_INPBPlatformSupport *)self minimumOsVersion];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"minimum_os_version"];
  }

  if ([(_INPBPlatformSupport *)self hasSupportedPlatform])
  {
    v6 = [(_INPBPlatformSupport *)self supportedPlatform];
    if ((v6 - 1) >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7285960[(v6 - 1)];
    }

    [v3 setObject:v7 forKeyedSubscript:@"supported_platform"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = [(_INPBPlatformSupport *)self minimumOsVersion];
  v6 = [v4 minimumOsVersion];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(_INPBPlatformSupport *)self minimumOsVersion];
    if (v8)
    {
      v9 = v8;
      v10 = [(_INPBPlatformSupport *)self minimumOsVersion];
      v11 = [v4 minimumOsVersion];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = [(_INPBPlatformSupport *)self hasSupportedPlatform];
    if (v13 == [v4 hasSupportedPlatform])
    {
      if (!-[_INPBPlatformSupport hasSupportedPlatform](self, "hasSupportedPlatform") || ![v4 hasSupportedPlatform] || (supportedPlatform = self->_supportedPlatform, supportedPlatform == objc_msgSend(v4, "supportedPlatform")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPlatformSupport allocWithZone:](_INPBPlatformSupport init];
  v6 = [(NSString *)self->_minimumOsVersion copyWithZone:a3];
  [(_INPBPlatformSupport *)v5 setMinimumOsVersion:v6];

  if ([(_INPBPlatformSupport *)self hasSupportedPlatform])
  {
    [(_INPBPlatformSupport *)v5 setSupportedPlatform:[(_INPBPlatformSupport *)self supportedPlatform]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPlatformSupport *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPlatformSupport)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPlatformSupport *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_INPBPlatformSupport *)self minimumOsVersion];

  if (v4)
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

- (int)StringAsSupportedPlatform:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IOS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TVOS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WATCHOS"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setSupportedPlatform:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_supportedPlatform = a3;
  }
}

- (void)setMinimumOsVersion:(id)a3
{
  v4 = [a3 copy];
  minimumOsVersion = self->_minimumOsVersion;
  self->_minimumOsVersion = v4;

  MEMORY[0x1EEE66BB8](v4, minimumOsVersion);
}

@end
@interface _INPBStartCallRequestMetadata
- (BOOL)isEqual:(id)a3;
- (_INPBStartCallRequestMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBStartCallRequestMetadata

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBStartCallRequestMetadata *)self hasAppInferred])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBStartCallRequestMetadata appInferred](self, "appInferred")}];
    [v3 setObject:v4 forKeyedSubscript:@"appInferred"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBStartCallRequestMetadata *)self hasAppInferred])
  {
    return 2654435761 * self->_appInferred;
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
    v5 = [(_INPBStartCallRequestMetadata *)self hasAppInferred];
    if (v5 == [v4 hasAppInferred])
    {
      if (!-[_INPBStartCallRequestMetadata hasAppInferred](self, "hasAppInferred") || ![v4 hasAppInferred] || (appInferred = self->_appInferred, appInferred == objc_msgSend(v4, "appInferred")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBStartCallRequestMetadata allocWithZone:?]];
  if ([(_INPBStartCallRequestMetadata *)self hasAppInferred])
  {
    [(_INPBStartCallRequestMetadata *)v4 setAppInferred:[(_INPBStartCallRequestMetadata *)self appInferred]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBStartCallRequestMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBStartCallRequestMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBStartCallRequestMetadata *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_INPBStartCallRequestMetadata *)self hasAppInferred])
  {
    appInferred = self->_appInferred;
    PBDataWriterWriteBOOLField();
  }
}

@end
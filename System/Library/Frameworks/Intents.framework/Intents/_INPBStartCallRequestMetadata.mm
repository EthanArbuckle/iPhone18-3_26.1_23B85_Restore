@interface _INPBStartCallRequestMetadata
- (BOOL)isEqual:(id)equal;
- (_INPBStartCallRequestMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBStartCallRequestMetadata

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBStartCallRequestMetadata *)self hasAppInferred])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBStartCallRequestMetadata appInferred](self, "appInferred")}];
    [dictionary setObject:v4 forKeyedSubscript:@"appInferred"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasAppInferred = [(_INPBStartCallRequestMetadata *)self hasAppInferred];
    if (hasAppInferred == [equalCopy hasAppInferred])
    {
      if (!-[_INPBStartCallRequestMetadata hasAppInferred](self, "hasAppInferred") || ![equalCopy hasAppInferred] || (appInferred = self->_appInferred, appInferred == objc_msgSend(equalCopy, "appInferred")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_INPBStartCallRequestMetadata allocWithZone:?]];
  if ([(_INPBStartCallRequestMetadata *)self hasAppInferred])
  {
    [(_INPBStartCallRequestMetadata *)v4 setAppInferred:[(_INPBStartCallRequestMetadata *)self appInferred]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBStartCallRequestMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBStartCallRequestMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBStartCallRequestMetadata *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBStartCallRequestMetadata *)self hasAppInferred])
  {
    appInferred = self->_appInferred;
    PBDataWriterWriteBOOLField();
  }
}

@end
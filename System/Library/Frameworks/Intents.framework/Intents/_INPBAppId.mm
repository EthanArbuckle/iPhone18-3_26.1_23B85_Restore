@interface _INPBAppId
- (BOOL)isEqual:(id)equal;
- (_INPBAppId)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setBundleId:(id)id;
- (void)writeTo:(id)to;
@end

@implementation _INPBAppId

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bundleId)
  {
    bundleId = [(_INPBAppId *)self bundleId];
    v5 = [bundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundle_id"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    bundleId = [(_INPBAppId *)self bundleId];
    bundleId2 = [equalCopy bundleId];
    v7 = bundleId2;
    if ((bundleId != 0) != (bundleId2 == 0))
    {
      bundleId3 = [(_INPBAppId *)self bundleId];
      if (!bundleId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = bundleId3;
      bundleId4 = [(_INPBAppId *)self bundleId];
      bundleId5 = [equalCopy bundleId];
      v12 = [bundleId4 isEqual:bundleId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAppId allocWithZone:](_INPBAppId init];
  v6 = [(NSString *)self->_bundleId copyWithZone:zone];
  [(_INPBAppId *)v5 setBundleId:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAppId *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAppId)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAppId *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  bundleId = [(_INPBAppId *)self bundleId];

  if (bundleId)
  {
    bundleId = self->_bundleId;
    PBDataWriterWriteStringField();
  }
}

- (void)setBundleId:(id)id
{
  v4 = [id copy];
  bundleId = self->_bundleId;
  self->_bundleId = v4;

  MEMORY[0x1EEE66BB8](v4, bundleId);
}

@end
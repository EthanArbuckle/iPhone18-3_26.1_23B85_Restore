@interface _INPBMediaSubItem
- (BOOL)isEqual:(id)equal;
- (_INPBMediaSubItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setAssetInfo:(id)info;
- (void)setIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBMediaSubItem

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_assetInfo)
  {
    assetInfo = [(_INPBMediaSubItem *)self assetInfo];
    v5 = [assetInfo copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assetInfo"];
  }

  if (self->_identifier)
  {
    identifier = [(_INPBMediaSubItem *)self identifier];
    v7 = [identifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"identifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  assetInfo = [(_INPBMediaSubItem *)self assetInfo];
  assetInfo2 = [equalCopy assetInfo];
  if ((assetInfo != 0) == (assetInfo2 == 0))
  {
    goto LABEL_11;
  }

  assetInfo3 = [(_INPBMediaSubItem *)self assetInfo];
  if (assetInfo3)
  {
    v8 = assetInfo3;
    assetInfo4 = [(_INPBMediaSubItem *)self assetInfo];
    assetInfo5 = [equalCopy assetInfo];
    v11 = [assetInfo4 isEqual:assetInfo5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  assetInfo = [(_INPBMediaSubItem *)self identifier];
  assetInfo2 = [equalCopy identifier];
  if ((assetInfo != 0) != (assetInfo2 == 0))
  {
    identifier = [(_INPBMediaSubItem *)self identifier];
    if (!identifier)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = identifier;
    identifier2 = [(_INPBMediaSubItem *)self identifier];
    identifier3 = [equalCopy identifier];
    v16 = [identifier2 isEqual:identifier3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBMediaSubItem allocWithZone:](_INPBMediaSubItem init];
  v6 = [(NSString *)self->_assetInfo copyWithZone:zone];
  [(_INPBMediaSubItem *)v5 setAssetInfo:v6];

  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBMediaSubItem *)v5 setIdentifier:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBMediaSubItem *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBMediaSubItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBMediaSubItem *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  assetInfo = [(_INPBMediaSubItem *)self assetInfo];

  if (assetInfo)
  {
    assetInfo = self->_assetInfo;
    PBDataWriterWriteStringField();
  }

  identifier = [(_INPBMediaSubItem *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (void)setAssetInfo:(id)info
{
  v4 = [info copy];
  assetInfo = self->_assetInfo;
  self->_assetInfo = v4;

  MEMORY[0x1EEE66BB8](v4, assetInfo);
}

@end
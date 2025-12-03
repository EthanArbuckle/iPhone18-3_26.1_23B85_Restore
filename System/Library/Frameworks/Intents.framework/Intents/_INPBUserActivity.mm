@interface _INPBUserActivity
- (BOOL)isEqual:(id)equal;
- (_INPBUserActivity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setData:(id)data;
- (void)setTitle:(id)title;
- (void)setUri:(id)uri;
- (void)writeTo:(id)to;
@end

@implementation _INPBUserActivity

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_data)
  {
    data = [(_INPBUserActivity *)self data];
    v5 = [data copy];
    [dictionary setObject:v5 forKeyedSubscript:@"data"];
  }

  if (self->_title)
  {
    title = [(_INPBUserActivity *)self title];
    v7 = [title copy];
    [dictionary setObject:v7 forKeyedSubscript:@"title"];
  }

  if (self->_uri)
  {
    v8 = [(_INPBUserActivity *)self uri];
    v9 = [v8 copy];
    [dictionary setObject:v9 forKeyedSubscript:@"uri"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_data hash];
  v4 = [(NSString *)self->_title hash]^ v3;
  return v4 ^ [(NSString *)self->_uri hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  data = [(_INPBUserActivity *)self data];
  data2 = [equalCopy data];
  if ((data != 0) == (data2 == 0))
  {
    goto LABEL_16;
  }

  data3 = [(_INPBUserActivity *)self data];
  if (data3)
  {
    v8 = data3;
    data4 = [(_INPBUserActivity *)self data];
    data5 = [equalCopy data];
    v11 = [data4 isEqual:data5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  data = [(_INPBUserActivity *)self title];
  data2 = [equalCopy title];
  if ((data != 0) == (data2 == 0))
  {
    goto LABEL_16;
  }

  title = [(_INPBUserActivity *)self title];
  if (title)
  {
    v13 = title;
    title2 = [(_INPBUserActivity *)self title];
    title3 = [equalCopy title];
    v16 = [title2 isEqual:title3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  data = [(_INPBUserActivity *)self uri];
  data2 = [equalCopy uri];
  if ((data != 0) != (data2 == 0))
  {
    v17 = [(_INPBUserActivity *)self uri];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBUserActivity *)self uri];
    v20 = [equalCopy uri];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBUserActivity allocWithZone:](_INPBUserActivity init];
  v6 = [(NSData *)self->_data copyWithZone:zone];
  [(_INPBUserActivity *)v5 setData:v6];

  v7 = [(NSString *)self->_title copyWithZone:zone];
  [(_INPBUserActivity *)v5 setTitle:v7];

  v8 = [(NSString *)self->_uri copyWithZone:zone];
  [(_INPBUserActivity *)v5 setUri:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBUserActivity *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBUserActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBUserActivity *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  data = [(_INPBUserActivity *)self data];

  if (data)
  {
    data = self->_data;
    PBDataWriterWriteDataField();
  }

  title = [(_INPBUserActivity *)self title];

  if (title)
  {
    title = self->_title;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBUserActivity *)self uri];

  v9 = toCopy;
  if (v8)
  {
    uri = self->_uri;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (void)setUri:(id)uri
{
  v4 = [uri copy];
  uri = self->_uri;
  self->_uri = v4;

  MEMORY[0x1EEE66BB8](v4, uri);
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (void)setData:(id)data
{
  v4 = [data copy];
  data = self->_data;
  self->_data = v4;

  MEMORY[0x1EEE66BB8](v4, data);
}

@end
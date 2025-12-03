@interface _INPBFileDataAttachment
- (BOOL)isEqual:(id)equal;
- (_INPBFileDataAttachment)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setData:(id)data;
- (void)setFileName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBFileDataAttachment

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_data)
  {
    data = [(_INPBFileDataAttachment *)self data];
    v5 = [data copy];
    [dictionary setObject:v5 forKeyedSubscript:@"data"];
  }

  if (self->_fileName)
  {
    fileName = [(_INPBFileDataAttachment *)self fileName];
    v7 = [fileName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"fileName"];
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

  data = [(_INPBFileDataAttachment *)self data];
  data2 = [equalCopy data];
  if ((data != 0) == (data2 == 0))
  {
    goto LABEL_11;
  }

  data3 = [(_INPBFileDataAttachment *)self data];
  if (data3)
  {
    v8 = data3;
    data4 = [(_INPBFileDataAttachment *)self data];
    data5 = [equalCopy data];
    v11 = [data4 isEqual:data5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  data = [(_INPBFileDataAttachment *)self fileName];
  data2 = [equalCopy fileName];
  if ((data != 0) != (data2 == 0))
  {
    fileName = [(_INPBFileDataAttachment *)self fileName];
    if (!fileName)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = fileName;
    fileName2 = [(_INPBFileDataAttachment *)self fileName];
    fileName3 = [equalCopy fileName];
    v16 = [fileName2 isEqual:fileName3];

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
  v5 = [+[_INPBFileDataAttachment allocWithZone:](_INPBFileDataAttachment init];
  v6 = [(NSData *)self->_data copyWithZone:zone];
  [(_INPBFileDataAttachment *)v5 setData:v6];

  v7 = [(NSString *)self->_fileName copyWithZone:zone];
  [(_INPBFileDataAttachment *)v5 setFileName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBFileDataAttachment *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBFileDataAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBFileDataAttachment *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  data = [(_INPBFileDataAttachment *)self data];

  if (data)
  {
    data = self->_data;
    PBDataWriterWriteDataField();
  }

  fileName = [(_INPBFileDataAttachment *)self fileName];

  if (fileName)
  {
    fileName = self->_fileName;
    PBDataWriterWriteStringField();
  }
}

- (void)setFileName:(id)name
{
  v4 = [name copy];
  fileName = self->_fileName;
  self->_fileName = v4;

  MEMORY[0x1EEE66BB8](v4, fileName);
}

- (void)setData:(id)data
{
  v4 = [data copy];
  data = self->_data;
  self->_data = v4;

  MEMORY[0x1EEE66BB8](v4, data);
}

@end
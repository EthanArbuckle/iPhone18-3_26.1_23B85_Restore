@interface _INPBArchivedObject
- (BOOL)isEqual:(id)equal;
- (_INPBArchivedObject)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setMessageData:(id)data;
- (void)setTypeName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBArchivedObject

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_messageData)
  {
    messageData = [(_INPBArchivedObject *)self messageData];
    v5 = [messageData copy];
    [dictionary setObject:v5 forKeyedSubscript:@"messageData"];
  }

  if (self->_typeName)
  {
    typeName = [(_INPBArchivedObject *)self typeName];
    v7 = [typeName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"typeName"];
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

  messageData = [(_INPBArchivedObject *)self messageData];
  messageData2 = [equalCopy messageData];
  if ((messageData != 0) == (messageData2 == 0))
  {
    goto LABEL_11;
  }

  messageData3 = [(_INPBArchivedObject *)self messageData];
  if (messageData3)
  {
    v8 = messageData3;
    messageData4 = [(_INPBArchivedObject *)self messageData];
    messageData5 = [equalCopy messageData];
    v11 = [messageData4 isEqual:messageData5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  messageData = [(_INPBArchivedObject *)self typeName];
  messageData2 = [equalCopy typeName];
  if ((messageData != 0) != (messageData2 == 0))
  {
    typeName = [(_INPBArchivedObject *)self typeName];
    if (!typeName)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = typeName;
    typeName2 = [(_INPBArchivedObject *)self typeName];
    typeName3 = [equalCopy typeName];
    v16 = [typeName2 isEqual:typeName3];

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
  v5 = [+[_INPBArchivedObject allocWithZone:](_INPBArchivedObject init];
  v6 = [(NSData *)self->_messageData copyWithZone:zone];
  [(_INPBArchivedObject *)v5 setMessageData:v6];

  v7 = [(NSString *)self->_typeName copyWithZone:zone];
  [(_INPBArchivedObject *)v5 setTypeName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBArchivedObject *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBArchivedObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBArchivedObject *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  messageData = [(_INPBArchivedObject *)self messageData];

  if (messageData)
  {
    messageData = self->_messageData;
    PBDataWriterWriteDataField();
  }

  typeName = [(_INPBArchivedObject *)self typeName];

  if (typeName)
  {
    typeName = self->_typeName;
    PBDataWriterWriteStringField();
  }
}

- (void)setTypeName:(id)name
{
  v4 = [name copy];
  typeName = self->_typeName;
  self->_typeName = v4;

  MEMORY[0x1EEE66BB8](v4, typeName);
}

- (void)setMessageData:(id)data
{
  v4 = [data copy];
  messageData = self->_messageData;
  self->_messageData = v4;

  MEMORY[0x1EEE66BB8](v4, messageData);
}

@end
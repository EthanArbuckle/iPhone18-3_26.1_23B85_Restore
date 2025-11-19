@interface _INPBArchivedObject
- (BOOL)isEqual:(id)a3;
- (_INPBArchivedObject)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setMessageData:(id)a3;
- (void)setTypeName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBArchivedObject

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_messageData)
  {
    v4 = [(_INPBArchivedObject *)self messageData];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"messageData"];
  }

  if (self->_typeName)
  {
    v6 = [(_INPBArchivedObject *)self typeName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"typeName"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBArchivedObject *)self messageData];
  v6 = [v4 messageData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBArchivedObject *)self messageData];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBArchivedObject *)self messageData];
    v10 = [v4 messageData];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBArchivedObject *)self typeName];
  v6 = [v4 typeName];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBArchivedObject *)self typeName];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBArchivedObject *)self typeName];
    v15 = [v4 typeName];
    v16 = [v14 isEqual:v15];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBArchivedObject allocWithZone:](_INPBArchivedObject init];
  v6 = [(NSData *)self->_messageData copyWithZone:a3];
  [(_INPBArchivedObject *)v5 setMessageData:v6];

  v7 = [(NSString *)self->_typeName copyWithZone:a3];
  [(_INPBArchivedObject *)v5 setTypeName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBArchivedObject *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBArchivedObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBArchivedObject *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBArchivedObject *)self messageData];

  if (v4)
  {
    messageData = self->_messageData;
    PBDataWriterWriteDataField();
  }

  v6 = [(_INPBArchivedObject *)self typeName];

  if (v6)
  {
    typeName = self->_typeName;
    PBDataWriterWriteStringField();
  }
}

- (void)setTypeName:(id)a3
{
  v4 = [a3 copy];
  typeName = self->_typeName;
  self->_typeName = v4;

  MEMORY[0x1EEE66BB8](v4, typeName);
}

- (void)setMessageData:(id)a3
{
  v4 = [a3 copy];
  messageData = self->_messageData;
  self->_messageData = v4;

  MEMORY[0x1EEE66BB8](v4, messageData);
}

@end
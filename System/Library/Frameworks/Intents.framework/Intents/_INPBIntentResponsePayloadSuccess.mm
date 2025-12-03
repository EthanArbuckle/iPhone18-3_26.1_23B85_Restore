@interface _INPBIntentResponsePayloadSuccess
- (BOOL)isEqual:(id)equal;
- (_INPBIntentResponsePayloadSuccess)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setResponseMessageData:(id)data;
- (void)setResponseTypeName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentResponsePayloadSuccess

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_responseMessageData)
  {
    responseMessageData = [(_INPBIntentResponsePayloadSuccess *)self responseMessageData];
    v5 = [responseMessageData copy];
    [dictionary setObject:v5 forKeyedSubscript:@"response_message_data"];
  }

  if (self->_responseTypeName)
  {
    responseTypeName = [(_INPBIntentResponsePayloadSuccess *)self responseTypeName];
    v7 = [responseTypeName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"response_type_name"];
  }

  if ([(_INPBIntentResponsePayloadSuccess *)self hasShouldOpenContainingApplication])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentResponsePayloadSuccess shouldOpenContainingApplication](self, "shouldOpenContainingApplication")}];
    [dictionary setObject:v8 forKeyedSubscript:@"shouldOpenContainingApplication"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_responseMessageData hash];
  v4 = [(NSString *)self->_responseTypeName hash];
  if ([(_INPBIntentResponsePayloadSuccess *)self hasShouldOpenContainingApplication])
  {
    v5 = 2654435761 * self->_shouldOpenContainingApplication;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  responseMessageData = [(_INPBIntentResponsePayloadSuccess *)self responseMessageData];
  responseMessageData2 = [equalCopy responseMessageData];
  if ((responseMessageData != 0) == (responseMessageData2 == 0))
  {
    goto LABEL_11;
  }

  responseMessageData3 = [(_INPBIntentResponsePayloadSuccess *)self responseMessageData];
  if (responseMessageData3)
  {
    v8 = responseMessageData3;
    responseMessageData4 = [(_INPBIntentResponsePayloadSuccess *)self responseMessageData];
    responseMessageData5 = [equalCopy responseMessageData];
    v11 = [responseMessageData4 isEqual:responseMessageData5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  responseMessageData = [(_INPBIntentResponsePayloadSuccess *)self responseTypeName];
  responseMessageData2 = [equalCopy responseTypeName];
  if ((responseMessageData != 0) == (responseMessageData2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  responseTypeName = [(_INPBIntentResponsePayloadSuccess *)self responseTypeName];
  if (responseTypeName)
  {
    v13 = responseTypeName;
    responseTypeName2 = [(_INPBIntentResponsePayloadSuccess *)self responseTypeName];
    responseTypeName3 = [equalCopy responseTypeName];
    v16 = [responseTypeName2 isEqual:responseTypeName3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  hasShouldOpenContainingApplication = [(_INPBIntentResponsePayloadSuccess *)self hasShouldOpenContainingApplication];
  if (hasShouldOpenContainingApplication == [equalCopy hasShouldOpenContainingApplication])
  {
    if (!-[_INPBIntentResponsePayloadSuccess hasShouldOpenContainingApplication](self, "hasShouldOpenContainingApplication") || ![equalCopy hasShouldOpenContainingApplication] || (shouldOpenContainingApplication = self->_shouldOpenContainingApplication, shouldOpenContainingApplication == objc_msgSend(equalCopy, "shouldOpenContainingApplication")))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentResponsePayloadSuccess allocWithZone:](_INPBIntentResponsePayloadSuccess init];
  v6 = [(NSData *)self->_responseMessageData copyWithZone:zone];
  [(_INPBIntentResponsePayloadSuccess *)v5 setResponseMessageData:v6];

  v7 = [(NSString *)self->_responseTypeName copyWithZone:zone];
  [(_INPBIntentResponsePayloadSuccess *)v5 setResponseTypeName:v7];

  if ([(_INPBIntentResponsePayloadSuccess *)self hasShouldOpenContainingApplication])
  {
    [(_INPBIntentResponsePayloadSuccess *)v5 setShouldOpenContainingApplication:[(_INPBIntentResponsePayloadSuccess *)self shouldOpenContainingApplication]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentResponsePayloadSuccess *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentResponsePayloadSuccess)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentResponsePayloadSuccess *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  responseMessageData = [(_INPBIntentResponsePayloadSuccess *)self responseMessageData];

  if (responseMessageData)
  {
    responseMessageData = self->_responseMessageData;
    PBDataWriterWriteDataField();
  }

  responseTypeName = [(_INPBIntentResponsePayloadSuccess *)self responseTypeName];

  if (responseTypeName)
  {
    responseTypeName = self->_responseTypeName;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBIntentResponsePayloadSuccess *)self hasShouldOpenContainingApplication])
  {
    shouldOpenContainingApplication = self->_shouldOpenContainingApplication;
    PBDataWriterWriteBOOLField();
  }
}

- (void)setResponseTypeName:(id)name
{
  v4 = [name copy];
  responseTypeName = self->_responseTypeName;
  self->_responseTypeName = v4;

  MEMORY[0x1EEE66BB8](v4, responseTypeName);
}

- (void)setResponseMessageData:(id)data
{
  v4 = [data copy];
  responseMessageData = self->_responseMessageData;
  self->_responseMessageData = v4;

  MEMORY[0x1EEE66BB8](v4, responseMessageData);
}

@end
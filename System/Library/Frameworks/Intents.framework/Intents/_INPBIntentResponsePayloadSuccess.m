@interface _INPBIntentResponsePayloadSuccess
- (BOOL)isEqual:(id)a3;
- (_INPBIntentResponsePayloadSuccess)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setResponseMessageData:(id)a3;
- (void)setResponseTypeName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBIntentResponsePayloadSuccess

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_responseMessageData)
  {
    v4 = [(_INPBIntentResponsePayloadSuccess *)self responseMessageData];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"response_message_data"];
  }

  if (self->_responseTypeName)
  {
    v6 = [(_INPBIntentResponsePayloadSuccess *)self responseTypeName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"response_type_name"];
  }

  if ([(_INPBIntentResponsePayloadSuccess *)self hasShouldOpenContainingApplication])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentResponsePayloadSuccess shouldOpenContainingApplication](self, "shouldOpenContainingApplication")}];
    [v3 setObject:v8 forKeyedSubscript:@"shouldOpenContainingApplication"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBIntentResponsePayloadSuccess *)self responseMessageData];
  v6 = [v4 responseMessageData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBIntentResponsePayloadSuccess *)self responseMessageData];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBIntentResponsePayloadSuccess *)self responseMessageData];
    v10 = [v4 responseMessageData];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentResponsePayloadSuccess *)self responseTypeName];
  v6 = [v4 responseTypeName];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_INPBIntentResponsePayloadSuccess *)self responseTypeName];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBIntentResponsePayloadSuccess *)self responseTypeName];
    v15 = [v4 responseTypeName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [(_INPBIntentResponsePayloadSuccess *)self hasShouldOpenContainingApplication];
  if (v19 == [v4 hasShouldOpenContainingApplication])
  {
    if (!-[_INPBIntentResponsePayloadSuccess hasShouldOpenContainingApplication](self, "hasShouldOpenContainingApplication") || ![v4 hasShouldOpenContainingApplication] || (shouldOpenContainingApplication = self->_shouldOpenContainingApplication, shouldOpenContainingApplication == objc_msgSend(v4, "shouldOpenContainingApplication")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBIntentResponsePayloadSuccess allocWithZone:](_INPBIntentResponsePayloadSuccess init];
  v6 = [(NSData *)self->_responseMessageData copyWithZone:a3];
  [(_INPBIntentResponsePayloadSuccess *)v5 setResponseMessageData:v6];

  v7 = [(NSString *)self->_responseTypeName copyWithZone:a3];
  [(_INPBIntentResponsePayloadSuccess *)v5 setResponseTypeName:v7];

  if ([(_INPBIntentResponsePayloadSuccess *)self hasShouldOpenContainingApplication])
  {
    [(_INPBIntentResponsePayloadSuccess *)v5 setShouldOpenContainingApplication:[(_INPBIntentResponsePayloadSuccess *)self shouldOpenContainingApplication]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIntentResponsePayloadSuccess *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIntentResponsePayloadSuccess)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIntentResponsePayloadSuccess *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_INPBIntentResponsePayloadSuccess *)self responseMessageData];

  if (v4)
  {
    responseMessageData = self->_responseMessageData;
    PBDataWriterWriteDataField();
  }

  v6 = [(_INPBIntentResponsePayloadSuccess *)self responseTypeName];

  if (v6)
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

- (void)setResponseTypeName:(id)a3
{
  v4 = [a3 copy];
  responseTypeName = self->_responseTypeName;
  self->_responseTypeName = v4;

  MEMORY[0x1EEE66BB8](v4, responseTypeName);
}

- (void)setResponseMessageData:(id)a3
{
  v4 = [a3 copy];
  responseMessageData = self->_responseMessageData;
  self->_responseMessageData = v4;

  MEMORY[0x1EEE66BB8](v4, responseMessageData);
}

@end
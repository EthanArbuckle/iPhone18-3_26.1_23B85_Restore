@interface _INPBIntentExecutionResult
- (BOOL)isEqual:(id)equal;
- (_INPBIntentExecutionResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsEncodingFormat:(id)format;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setEncodedIntent:(id)intent;
- (void)setEncodedIntentResponse:(id)response;
- (void)setEncodingFormat:(int)format;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentExecutionResult

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_encodedIntent)
  {
    encodedIntent = [(_INPBIntentExecutionResult *)self encodedIntent];
    v5 = [encodedIntent copy];
    [dictionary setObject:v5 forKeyedSubscript:@"encodedIntent"];
  }

  if (self->_encodedIntentResponse)
  {
    encodedIntentResponse = [(_INPBIntentExecutionResult *)self encodedIntentResponse];
    v7 = [encodedIntentResponse copy];
    [dictionary setObject:v7 forKeyedSubscript:@"encodedIntentResponse"];
  }

  if ([(_INPBIntentExecutionResult *)self hasEncodingFormat])
  {
    encodingFormat = [(_INPBIntentExecutionResult *)self encodingFormat];
    if (encodingFormat == 1)
    {
      v9 = @"JSON_STRING";
    }

    else if (encodingFormat == 2)
    {
      v9 = @"PROTOBUF_STRING";
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", encodingFormat];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"encodingFormat"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_encodedIntent hash];
  v4 = [(NSString *)self->_encodedIntentResponse hash];
  if ([(_INPBIntentExecutionResult *)self hasEncodingFormat])
  {
    v5 = 2654435761 * self->_encodingFormat;
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

  encodedIntent = [(_INPBIntentExecutionResult *)self encodedIntent];
  encodedIntent2 = [equalCopy encodedIntent];
  if ((encodedIntent != 0) == (encodedIntent2 == 0))
  {
    goto LABEL_11;
  }

  encodedIntent3 = [(_INPBIntentExecutionResult *)self encodedIntent];
  if (encodedIntent3)
  {
    v8 = encodedIntent3;
    encodedIntent4 = [(_INPBIntentExecutionResult *)self encodedIntent];
    encodedIntent5 = [equalCopy encodedIntent];
    v11 = [encodedIntent4 isEqual:encodedIntent5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  encodedIntent = [(_INPBIntentExecutionResult *)self encodedIntentResponse];
  encodedIntent2 = [equalCopy encodedIntentResponse];
  if ((encodedIntent != 0) == (encodedIntent2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  encodedIntentResponse = [(_INPBIntentExecutionResult *)self encodedIntentResponse];
  if (encodedIntentResponse)
  {
    v13 = encodedIntentResponse;
    encodedIntentResponse2 = [(_INPBIntentExecutionResult *)self encodedIntentResponse];
    encodedIntentResponse3 = [equalCopy encodedIntentResponse];
    v16 = [encodedIntentResponse2 isEqual:encodedIntentResponse3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  hasEncodingFormat = [(_INPBIntentExecutionResult *)self hasEncodingFormat];
  if (hasEncodingFormat == [equalCopy hasEncodingFormat])
  {
    if (!-[_INPBIntentExecutionResult hasEncodingFormat](self, "hasEncodingFormat") || ![equalCopy hasEncodingFormat] || (encodingFormat = self->_encodingFormat, encodingFormat == objc_msgSend(equalCopy, "encodingFormat")))
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
  v5 = [+[_INPBIntentExecutionResult allocWithZone:](_INPBIntentExecutionResult init];
  v6 = [(NSString *)self->_encodedIntent copyWithZone:zone];
  [(_INPBIntentExecutionResult *)v5 setEncodedIntent:v6];

  v7 = [(NSString *)self->_encodedIntentResponse copyWithZone:zone];
  [(_INPBIntentExecutionResult *)v5 setEncodedIntentResponse:v7];

  if ([(_INPBIntentExecutionResult *)self hasEncodingFormat])
  {
    [(_INPBIntentExecutionResult *)v5 setEncodingFormat:[(_INPBIntentExecutionResult *)self encodingFormat]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentExecutionResult *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentExecutionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentExecutionResult *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  encodedIntent = [(_INPBIntentExecutionResult *)self encodedIntent];

  if (encodedIntent)
  {
    encodedIntent = self->_encodedIntent;
    PBDataWriterWriteStringField();
  }

  encodedIntentResponse = [(_INPBIntentExecutionResult *)self encodedIntentResponse];

  if (encodedIntentResponse)
  {
    encodedIntentResponse = self->_encodedIntentResponse;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBIntentExecutionResult *)self hasEncodingFormat])
  {
    encodingFormat = self->_encodingFormat;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsEncodingFormat:(id)format
{
  formatCopy = format;
  v4 = 1;
  if (([formatCopy isEqualToString:@"JSON_STRING"] & 1) == 0)
  {
    if ([formatCopy isEqualToString:@"PROTOBUF_STRING"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setEncodingFormat:(int)format
{
  has = self->_has;
  if (format == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_encodingFormat = format;
  }
}

- (void)setEncodedIntentResponse:(id)response
{
  v4 = [response copy];
  encodedIntentResponse = self->_encodedIntentResponse;
  self->_encodedIntentResponse = v4;

  MEMORY[0x1EEE66BB8](v4, encodedIntentResponse);
}

- (void)setEncodedIntent:(id)intent
{
  v4 = [intent copy];
  encodedIntent = self->_encodedIntent;
  self->_encodedIntent = v4;

  MEMORY[0x1EEE66BB8](v4, encodedIntent);
}

@end
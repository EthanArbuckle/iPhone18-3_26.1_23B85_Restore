@interface _INPBIntentExecutionRequest
- (BOOL)isEqual:(id)equal;
- (_INPBIntentExecutionRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsEncodingFormat:(id)format;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setEncodedIntent:(id)intent;
- (void)setEncodedIntentDefinition:(id)definition;
- (void)setEncodingFormat:(int)format;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentExecutionRequest

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  appIdentifier = [(_INPBIntentExecutionRequest *)self appIdentifier];
  dictionaryRepresentation = [appIdentifier dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appIdentifier"];

  if (self->_encodedIntent)
  {
    encodedIntent = [(_INPBIntentExecutionRequest *)self encodedIntent];
    v7 = [encodedIntent copy];
    [dictionary setObject:v7 forKeyedSubscript:@"encodedIntent"];
  }

  if (self->_encodedIntentDefinition)
  {
    encodedIntentDefinition = [(_INPBIntentExecutionRequest *)self encodedIntentDefinition];
    v9 = [encodedIntentDefinition copy];
    [dictionary setObject:v9 forKeyedSubscript:@"encodedIntentDefinition"];
  }

  if ([(_INPBIntentExecutionRequest *)self hasEncodingFormat])
  {
    encodingFormat = [(_INPBIntentExecutionRequest *)self encodingFormat];
    if (encodingFormat == 1)
    {
      v11 = @"JSON_STRING";
    }

    else if (encodingFormat == 2)
    {
      v11 = @"PROTOBUF_STRING";
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", encodingFormat];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"encodingFormat"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBAppIdentifier *)self->_appIdentifier hash];
  v4 = [(NSString *)self->_encodedIntent hash];
  v5 = [(NSString *)self->_encodedIntentDefinition hash];
  if ([(_INPBIntentExecutionRequest *)self hasEncodingFormat])
  {
    v6 = 2654435761 * self->_encodingFormat;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  appIdentifier = [(_INPBIntentExecutionRequest *)self appIdentifier];
  appIdentifier2 = [equalCopy appIdentifier];
  if ((appIdentifier != 0) == (appIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  appIdentifier3 = [(_INPBIntentExecutionRequest *)self appIdentifier];
  if (appIdentifier3)
  {
    v8 = appIdentifier3;
    appIdentifier4 = [(_INPBIntentExecutionRequest *)self appIdentifier];
    appIdentifier5 = [equalCopy appIdentifier];
    v11 = [appIdentifier4 isEqual:appIdentifier5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  appIdentifier = [(_INPBIntentExecutionRequest *)self encodedIntent];
  appIdentifier2 = [equalCopy encodedIntent];
  if ((appIdentifier != 0) == (appIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  encodedIntent = [(_INPBIntentExecutionRequest *)self encodedIntent];
  if (encodedIntent)
  {
    v13 = encodedIntent;
    encodedIntent2 = [(_INPBIntentExecutionRequest *)self encodedIntent];
    encodedIntent3 = [equalCopy encodedIntent];
    v16 = [encodedIntent2 isEqual:encodedIntent3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  appIdentifier = [(_INPBIntentExecutionRequest *)self encodedIntentDefinition];
  appIdentifier2 = [equalCopy encodedIntentDefinition];
  if ((appIdentifier != 0) == (appIdentifier2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  encodedIntentDefinition = [(_INPBIntentExecutionRequest *)self encodedIntentDefinition];
  if (encodedIntentDefinition)
  {
    v18 = encodedIntentDefinition;
    encodedIntentDefinition2 = [(_INPBIntentExecutionRequest *)self encodedIntentDefinition];
    encodedIntentDefinition3 = [equalCopy encodedIntentDefinition];
    v21 = [encodedIntentDefinition2 isEqual:encodedIntentDefinition3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  hasEncodingFormat = [(_INPBIntentExecutionRequest *)self hasEncodingFormat];
  if (hasEncodingFormat == [equalCopy hasEncodingFormat])
  {
    if (!-[_INPBIntentExecutionRequest hasEncodingFormat](self, "hasEncodingFormat") || ![equalCopy hasEncodingFormat] || (encodingFormat = self->_encodingFormat, encodingFormat == objc_msgSend(equalCopy, "encodingFormat")))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentExecutionRequest allocWithZone:](_INPBIntentExecutionRequest init];
  v6 = [(_INPBAppIdentifier *)self->_appIdentifier copyWithZone:zone];
  [(_INPBIntentExecutionRequest *)v5 setAppIdentifier:v6];

  v7 = [(NSString *)self->_encodedIntent copyWithZone:zone];
  [(_INPBIntentExecutionRequest *)v5 setEncodedIntent:v7];

  v8 = [(NSString *)self->_encodedIntentDefinition copyWithZone:zone];
  [(_INPBIntentExecutionRequest *)v5 setEncodedIntentDefinition:v8];

  if ([(_INPBIntentExecutionRequest *)self hasEncodingFormat])
  {
    [(_INPBIntentExecutionRequest *)v5 setEncodingFormat:[(_INPBIntentExecutionRequest *)self encodingFormat]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentExecutionRequest *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentExecutionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentExecutionRequest *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appIdentifier = [(_INPBIntentExecutionRequest *)self appIdentifier];

  if (appIdentifier)
  {
    appIdentifier2 = [(_INPBIntentExecutionRequest *)self appIdentifier];
    PBDataWriterWriteSubmessage();
  }

  encodedIntent = [(_INPBIntentExecutionRequest *)self encodedIntent];

  if (encodedIntent)
  {
    encodedIntent = self->_encodedIntent;
    PBDataWriterWriteStringField();
  }

  encodedIntentDefinition = [(_INPBIntentExecutionRequest *)self encodedIntentDefinition];

  if (encodedIntentDefinition)
  {
    encodedIntentDefinition = self->_encodedIntentDefinition;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBIntentExecutionRequest *)self hasEncodingFormat])
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

- (void)setEncodedIntentDefinition:(id)definition
{
  v4 = [definition copy];
  encodedIntentDefinition = self->_encodedIntentDefinition;
  self->_encodedIntentDefinition = v4;

  MEMORY[0x1EEE66BB8](v4, encodedIntentDefinition);
}

- (void)setEncodedIntent:(id)intent
{
  v4 = [intent copy];
  encodedIntent = self->_encodedIntent;
  self->_encodedIntent = v4;

  MEMORY[0x1EEE66BB8](v4, encodedIntent);
}

@end
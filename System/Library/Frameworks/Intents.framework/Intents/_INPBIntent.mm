@interface _INPBIntent
- (BOOL)isEqual:(id)equal;
- (_INPBIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsEncodingFormat:(id)format;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setEncodedIntent:(id)intent;
- (void)setEncodedIntentDefinition:(id)definition;
- (void)setEncodingFormat:(int)format;
- (void)setIntentTypeName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  appIdentifier = [(_INPBIntent *)self appIdentifier];
  dictionaryRepresentation = [appIdentifier dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appIdentifier"];

  if (self->_encodedIntent)
  {
    encodedIntent = [(_INPBIntent *)self encodedIntent];
    v7 = [encodedIntent copy];
    [dictionary setObject:v7 forKeyedSubscript:@"encodedIntent"];
  }

  if (self->_encodedIntentDefinition)
  {
    encodedIntentDefinition = [(_INPBIntent *)self encodedIntentDefinition];
    v9 = [encodedIntentDefinition copy];
    [dictionary setObject:v9 forKeyedSubscript:@"encodedIntentDefinition"];
  }

  if ([(_INPBIntent *)self hasEncodingFormat])
  {
    encodingFormat = [(_INPBIntent *)self encodingFormat];
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

  if (self->_intentTypeName)
  {
    intentTypeName = [(_INPBIntent *)self intentTypeName];
    v13 = [intentTypeName copy];
    [dictionary setObject:v13 forKeyedSubscript:@"intentTypeName"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBAppIdentifier *)self->_appIdentifier hash];
  v4 = [(NSString *)self->_encodedIntent hash];
  v5 = [(NSString *)self->_encodedIntentDefinition hash];
  if ([(_INPBIntent *)self hasEncodingFormat])
  {
    v6 = 2654435761 * self->_encodingFormat;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_intentTypeName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  appIdentifier = [(_INPBIntent *)self appIdentifier];
  appIdentifier2 = [equalCopy appIdentifier];
  if ((appIdentifier != 0) == (appIdentifier2 == 0))
  {
    goto LABEL_25;
  }

  appIdentifier3 = [(_INPBIntent *)self appIdentifier];
  if (appIdentifier3)
  {
    v8 = appIdentifier3;
    appIdentifier4 = [(_INPBIntent *)self appIdentifier];
    appIdentifier5 = [equalCopy appIdentifier];
    v11 = [appIdentifier4 isEqual:appIdentifier5];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  appIdentifier = [(_INPBIntent *)self encodedIntent];
  appIdentifier2 = [equalCopy encodedIntent];
  if ((appIdentifier != 0) == (appIdentifier2 == 0))
  {
    goto LABEL_25;
  }

  encodedIntent = [(_INPBIntent *)self encodedIntent];
  if (encodedIntent)
  {
    v13 = encodedIntent;
    encodedIntent2 = [(_INPBIntent *)self encodedIntent];
    encodedIntent3 = [equalCopy encodedIntent];
    v16 = [encodedIntent2 isEqual:encodedIntent3];

    if (!v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  appIdentifier = [(_INPBIntent *)self encodedIntentDefinition];
  appIdentifier2 = [equalCopy encodedIntentDefinition];
  if ((appIdentifier != 0) == (appIdentifier2 == 0))
  {
    goto LABEL_25;
  }

  encodedIntentDefinition = [(_INPBIntent *)self encodedIntentDefinition];
  if (encodedIntentDefinition)
  {
    v18 = encodedIntentDefinition;
    encodedIntentDefinition2 = [(_INPBIntent *)self encodedIntentDefinition];
    encodedIntentDefinition3 = [equalCopy encodedIntentDefinition];
    v21 = [encodedIntentDefinition2 isEqual:encodedIntentDefinition3];

    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  hasEncodingFormat = [(_INPBIntent *)self hasEncodingFormat];
  if (hasEncodingFormat != [equalCopy hasEncodingFormat])
  {
    goto LABEL_26;
  }

  if ([(_INPBIntent *)self hasEncodingFormat])
  {
    if ([equalCopy hasEncodingFormat])
    {
      encodingFormat = self->_encodingFormat;
      if (encodingFormat != [equalCopy encodingFormat])
      {
        goto LABEL_26;
      }
    }
  }

  appIdentifier = [(_INPBIntent *)self intentTypeName];
  appIdentifier2 = [equalCopy intentTypeName];
  if ((appIdentifier != 0) != (appIdentifier2 == 0))
  {
    intentTypeName = [(_INPBIntent *)self intentTypeName];
    if (!intentTypeName)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = intentTypeName;
    intentTypeName2 = [(_INPBIntent *)self intentTypeName];
    intentTypeName3 = [equalCopy intentTypeName];
    v28 = [intentTypeName2 isEqual:intentTypeName3];

    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntent allocWithZone:](_INPBIntent init];
  v6 = [(_INPBAppIdentifier *)self->_appIdentifier copyWithZone:zone];
  [(_INPBIntent *)v5 setAppIdentifier:v6];

  v7 = [(NSString *)self->_encodedIntent copyWithZone:zone];
  [(_INPBIntent *)v5 setEncodedIntent:v7];

  v8 = [(NSString *)self->_encodedIntentDefinition copyWithZone:zone];
  [(_INPBIntent *)v5 setEncodedIntentDefinition:v8];

  if ([(_INPBIntent *)self hasEncodingFormat])
  {
    [(_INPBIntent *)v5 setEncodingFormat:[(_INPBIntent *)self encodingFormat]];
  }

  v9 = [(NSString *)self->_intentTypeName copyWithZone:zone];
  [(_INPBIntent *)v5 setIntentTypeName:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appIdentifier = [(_INPBIntent *)self appIdentifier];

  if (appIdentifier)
  {
    appIdentifier2 = [(_INPBIntent *)self appIdentifier];
    PBDataWriterWriteSubmessage();
  }

  encodedIntent = [(_INPBIntent *)self encodedIntent];

  if (encodedIntent)
  {
    encodedIntent = self->_encodedIntent;
    PBDataWriterWriteStringField();
  }

  encodedIntentDefinition = [(_INPBIntent *)self encodedIntentDefinition];

  if (encodedIntentDefinition)
  {
    encodedIntentDefinition = self->_encodedIntentDefinition;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBIntent *)self hasEncodingFormat])
  {
    encodingFormat = self->_encodingFormat;
    PBDataWriterWriteInt32Field();
  }

  intentTypeName = [(_INPBIntent *)self intentTypeName];

  v12 = toCopy;
  if (intentTypeName)
  {
    intentTypeName = self->_intentTypeName;
    PBDataWriterWriteStringField();
    v12 = toCopy;
  }
}

- (void)setIntentTypeName:(id)name
{
  v4 = [name copy];
  intentTypeName = self->_intentTypeName;
  self->_intentTypeName = v4;

  MEMORY[0x1EEE66BB8](v4, intentTypeName);
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
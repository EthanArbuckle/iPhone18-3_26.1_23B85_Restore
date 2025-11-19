@interface _INPBIntentExecutionRequest
- (BOOL)isEqual:(id)a3;
- (_INPBIntentExecutionRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsEncodingFormat:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setEncodedIntent:(id)a3;
- (void)setEncodedIntentDefinition:(id)a3;
- (void)setEncodingFormat:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBIntentExecutionRequest

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBIntentExecutionRequest *)self appIdentifier];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"appIdentifier"];

  if (self->_encodedIntent)
  {
    v6 = [(_INPBIntentExecutionRequest *)self encodedIntent];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"encodedIntent"];
  }

  if (self->_encodedIntentDefinition)
  {
    v8 = [(_INPBIntentExecutionRequest *)self encodedIntentDefinition];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"encodedIntentDefinition"];
  }

  if ([(_INPBIntentExecutionRequest *)self hasEncodingFormat])
  {
    v10 = [(_INPBIntentExecutionRequest *)self encodingFormat];
    if (v10 == 1)
    {
      v11 = @"JSON_STRING";
    }

    else if (v10 == 2)
    {
      v11 = @"PROTOBUF_STRING";
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"encodingFormat"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBIntentExecutionRequest *)self appIdentifier];
  v6 = [v4 appIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBIntentExecutionRequest *)self appIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBIntentExecutionRequest *)self appIdentifier];
    v10 = [v4 appIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentExecutionRequest *)self encodedIntent];
  v6 = [v4 encodedIntent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBIntentExecutionRequest *)self encodedIntent];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBIntentExecutionRequest *)self encodedIntent];
    v15 = [v4 encodedIntent];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentExecutionRequest *)self encodedIntentDefinition];
  v6 = [v4 encodedIntentDefinition];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(_INPBIntentExecutionRequest *)self encodedIntentDefinition];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBIntentExecutionRequest *)self encodedIntentDefinition];
    v20 = [v4 encodedIntentDefinition];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v24 = [(_INPBIntentExecutionRequest *)self hasEncodingFormat];
  if (v24 == [v4 hasEncodingFormat])
  {
    if (!-[_INPBIntentExecutionRequest hasEncodingFormat](self, "hasEncodingFormat") || ![v4 hasEncodingFormat] || (encodingFormat = self->_encodingFormat, encodingFormat == objc_msgSend(v4, "encodingFormat")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBIntentExecutionRequest allocWithZone:](_INPBIntentExecutionRequest init];
  v6 = [(_INPBAppIdentifier *)self->_appIdentifier copyWithZone:a3];
  [(_INPBIntentExecutionRequest *)v5 setAppIdentifier:v6];

  v7 = [(NSString *)self->_encodedIntent copyWithZone:a3];
  [(_INPBIntentExecutionRequest *)v5 setEncodedIntent:v7];

  v8 = [(NSString *)self->_encodedIntentDefinition copyWithZone:a3];
  [(_INPBIntentExecutionRequest *)v5 setEncodedIntentDefinition:v8];

  if ([(_INPBIntentExecutionRequest *)self hasEncodingFormat])
  {
    [(_INPBIntentExecutionRequest *)v5 setEncodingFormat:[(_INPBIntentExecutionRequest *)self encodingFormat]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIntentExecutionRequest *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIntentExecutionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIntentExecutionRequest *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBIntentExecutionRequest *)self appIdentifier];

  if (v4)
  {
    v5 = [(_INPBIntentExecutionRequest *)self appIdentifier];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBIntentExecutionRequest *)self encodedIntent];

  if (v6)
  {
    encodedIntent = self->_encodedIntent;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBIntentExecutionRequest *)self encodedIntentDefinition];

  if (v8)
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

- (int)StringAsEncodingFormat:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"JSON_STRING"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"PROTOBUF_STRING"])
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

- (void)setEncodingFormat:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_encodingFormat = a3;
  }
}

- (void)setEncodedIntentDefinition:(id)a3
{
  v4 = [a3 copy];
  encodedIntentDefinition = self->_encodedIntentDefinition;
  self->_encodedIntentDefinition = v4;

  MEMORY[0x1EEE66BB8](v4, encodedIntentDefinition);
}

- (void)setEncodedIntent:(id)a3
{
  v4 = [a3 copy];
  encodedIntent = self->_encodedIntent;
  self->_encodedIntent = v4;

  MEMORY[0x1EEE66BB8](v4, encodedIntent);
}

@end
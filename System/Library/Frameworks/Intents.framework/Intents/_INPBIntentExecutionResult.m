@interface _INPBIntentExecutionResult
- (BOOL)isEqual:(id)a3;
- (_INPBIntentExecutionResult)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsEncodingFormat:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setEncodedIntent:(id)a3;
- (void)setEncodedIntentResponse:(id)a3;
- (void)setEncodingFormat:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBIntentExecutionResult

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_encodedIntent)
  {
    v4 = [(_INPBIntentExecutionResult *)self encodedIntent];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"encodedIntent"];
  }

  if (self->_encodedIntentResponse)
  {
    v6 = [(_INPBIntentExecutionResult *)self encodedIntentResponse];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"encodedIntentResponse"];
  }

  if ([(_INPBIntentExecutionResult *)self hasEncodingFormat])
  {
    v8 = [(_INPBIntentExecutionResult *)self encodingFormat];
    if (v8 == 1)
    {
      v9 = @"JSON_STRING";
    }

    else if (v8 == 2)
    {
      v9 = @"PROTOBUF_STRING";
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"encodingFormat"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBIntentExecutionResult *)self encodedIntent];
  v6 = [v4 encodedIntent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBIntentExecutionResult *)self encodedIntent];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBIntentExecutionResult *)self encodedIntent];
    v10 = [v4 encodedIntent];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentExecutionResult *)self encodedIntentResponse];
  v6 = [v4 encodedIntentResponse];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_INPBIntentExecutionResult *)self encodedIntentResponse];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBIntentExecutionResult *)self encodedIntentResponse];
    v15 = [v4 encodedIntentResponse];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [(_INPBIntentExecutionResult *)self hasEncodingFormat];
  if (v19 == [v4 hasEncodingFormat])
  {
    if (!-[_INPBIntentExecutionResult hasEncodingFormat](self, "hasEncodingFormat") || ![v4 hasEncodingFormat] || (encodingFormat = self->_encodingFormat, encodingFormat == objc_msgSend(v4, "encodingFormat")))
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
  v5 = [+[_INPBIntentExecutionResult allocWithZone:](_INPBIntentExecutionResult init];
  v6 = [(NSString *)self->_encodedIntent copyWithZone:a3];
  [(_INPBIntentExecutionResult *)v5 setEncodedIntent:v6];

  v7 = [(NSString *)self->_encodedIntentResponse copyWithZone:a3];
  [(_INPBIntentExecutionResult *)v5 setEncodedIntentResponse:v7];

  if ([(_INPBIntentExecutionResult *)self hasEncodingFormat])
  {
    [(_INPBIntentExecutionResult *)v5 setEncodingFormat:[(_INPBIntentExecutionResult *)self encodingFormat]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIntentExecutionResult *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIntentExecutionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIntentExecutionResult *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_INPBIntentExecutionResult *)self encodedIntent];

  if (v4)
  {
    encodedIntent = self->_encodedIntent;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBIntentExecutionResult *)self encodedIntentResponse];

  if (v6)
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

- (void)setEncodedIntentResponse:(id)a3
{
  v4 = [a3 copy];
  encodedIntentResponse = self->_encodedIntentResponse;
  self->_encodedIntentResponse = v4;

  MEMORY[0x1EEE66BB8](v4, encodedIntentResponse);
}

- (void)setEncodedIntent:(id)a3
{
  v4 = [a3 copy];
  encodedIntent = self->_encodedIntent;
  self->_encodedIntent = v4;

  MEMORY[0x1EEE66BB8](v4, encodedIntent);
}

@end
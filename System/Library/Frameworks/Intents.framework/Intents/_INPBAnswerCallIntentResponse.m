@interface _INPBAnswerCallIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBAnswerCallIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsStatusCode:(id)a3;
- (unint64_t)hash;
- (void)addCallRecords:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCallRecords:(id)a3;
- (void)setStatusCode:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAnswerCallIntentResponse

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBAnswerCallIntentResponse *)self answeredCall];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"answeredCall"];

  if ([(NSArray *)self->_callRecords count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_callRecords;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"callRecords"];
  }

  if ([(_INPBAnswerCallIntentResponse *)self hasStatusCode])
  {
    v13 = [(_INPBAnswerCallIntentResponse *)self statusCode];
    if (v13 == 1)
    {
      v14 = @"NO_INCOMING_CALL";
    }

    else if (v13 == 2)
    {
      v14 = @"INCOMING_CALL";
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v13];
    }

    [v3 setObject:v14 forKeyedSubscript:@"statusCode"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBConnectedCall *)self->_answeredCall hash];
  v4 = [(NSArray *)self->_callRecords hash];
  if ([(_INPBAnswerCallIntentResponse *)self hasStatusCode])
  {
    v5 = 2654435761 * self->_statusCode;
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

  v5 = [(_INPBAnswerCallIntentResponse *)self answeredCall];
  v6 = [v4 answeredCall];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBAnswerCallIntentResponse *)self answeredCall];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBAnswerCallIntentResponse *)self answeredCall];
    v10 = [v4 answeredCall];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBAnswerCallIntentResponse *)self callRecords];
  v6 = [v4 callRecords];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_INPBAnswerCallIntentResponse *)self callRecords];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBAnswerCallIntentResponse *)self callRecords];
    v15 = [v4 callRecords];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [(_INPBAnswerCallIntentResponse *)self hasStatusCode];
  if (v19 == [v4 hasStatusCode])
  {
    if (!-[_INPBAnswerCallIntentResponse hasStatusCode](self, "hasStatusCode") || ![v4 hasStatusCode] || (statusCode = self->_statusCode, statusCode == objc_msgSend(v4, "statusCode")))
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
  v5 = [+[_INPBAnswerCallIntentResponse allocWithZone:](_INPBAnswerCallIntentResponse init];
  v6 = [(_INPBConnectedCall *)self->_answeredCall copyWithZone:a3];
  [(_INPBAnswerCallIntentResponse *)v5 setAnsweredCall:v6];

  v7 = [(NSArray *)self->_callRecords copyWithZone:a3];
  [(_INPBAnswerCallIntentResponse *)v5 setCallRecords:v7];

  if ([(_INPBAnswerCallIntentResponse *)self hasStatusCode])
  {
    [(_INPBAnswerCallIntentResponse *)v5 setStatusCode:[(_INPBAnswerCallIntentResponse *)self statusCode]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAnswerCallIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAnswerCallIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAnswerCallIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBAnswerCallIntentResponse *)self answeredCall];

  if (v5)
  {
    v6 = [(_INPBAnswerCallIntentResponse *)self answeredCall];
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_callRecords;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ([(_INPBAnswerCallIntentResponse *)self hasStatusCode])
  {
    statusCode = self->_statusCode;
    PBDataWriterWriteInt32Field();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (int)StringAsStatusCode:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"NO_INCOMING_CALL"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"INCOMING_CALL"])
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

- (void)setStatusCode:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_statusCode = a3;
  }
}

- (void)addCallRecords:(id)a3
{
  v4 = a3;
  callRecords = self->_callRecords;
  v8 = v4;
  if (!callRecords)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_callRecords;
    self->_callRecords = v6;

    v4 = v8;
    callRecords = self->_callRecords;
  }

  [(NSArray *)callRecords addObject:v4];
}

- (void)setCallRecords:(id)a3
{
  v4 = [a3 mutableCopy];
  callRecords = self->_callRecords;
  self->_callRecords = v4;

  MEMORY[0x1EEE66BB8](v4, callRecords);
}

@end
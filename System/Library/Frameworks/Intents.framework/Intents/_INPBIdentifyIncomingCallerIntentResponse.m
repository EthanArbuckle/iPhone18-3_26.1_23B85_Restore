@interface _INPBIdentifyIncomingCallerIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBIdentifyIncomingCallerIntentResponse)initWithCoder:(id)a3;
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

@implementation _INPBIdentifyIncomingCallerIntentResponse

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_callRecords count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_callRecords;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"callRecords"];
  }

  if ([(_INPBIdentifyIncomingCallerIntentResponse *)self hasStatusCode])
  {
    v11 = [(_INPBIdentifyIncomingCallerIntentResponse *)self statusCode];
    if (v11 == 1)
    {
      v12 = @"NO_INCOMING_CALL";
    }

    else if (v11 == 2)
    {
      v12 = @"INCOMING_CALL";
    }

    else
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"statusCode"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_callRecords hash];
  if ([(_INPBIdentifyIncomingCallerIntentResponse *)self hasStatusCode])
  {
    v4 = 2654435761 * self->_statusCode;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = [(_INPBIdentifyIncomingCallerIntentResponse *)self callRecords];
  v6 = [v4 callRecords];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(_INPBIdentifyIncomingCallerIntentResponse *)self callRecords];
    if (v8)
    {
      v9 = v8;
      v10 = [(_INPBIdentifyIncomingCallerIntentResponse *)self callRecords];
      v11 = [v4 callRecords];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = [(_INPBIdentifyIncomingCallerIntentResponse *)self hasStatusCode];
    if (v13 == [v4 hasStatusCode])
    {
      if (!-[_INPBIdentifyIncomingCallerIntentResponse hasStatusCode](self, "hasStatusCode") || ![v4 hasStatusCode] || (statusCode = self->_statusCode, statusCode == objc_msgSend(v4, "statusCode")))
      {
        v14 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBIdentifyIncomingCallerIntentResponse allocWithZone:](_INPBIdentifyIncomingCallerIntentResponse init];
  v6 = [(NSArray *)self->_callRecords copyWithZone:a3];
  [(_INPBIdentifyIncomingCallerIntentResponse *)v5 setCallRecords:v6];

  if ([(_INPBIdentifyIncomingCallerIntentResponse *)self hasStatusCode])
  {
    [(_INPBIdentifyIncomingCallerIntentResponse *)v5 setStatusCode:[(_INPBIdentifyIncomingCallerIntentResponse *)self statusCode]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIdentifyIncomingCallerIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIdentifyIncomingCallerIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIdentifyIncomingCallerIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_callRecords;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([(_INPBIdentifyIncomingCallerIntentResponse *)self hasStatusCode])
  {
    statusCode = self->_statusCode;
    PBDataWriterWriteInt32Field();
  }

  v12 = *MEMORY[0x1E69E9840];
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
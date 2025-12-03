@interface _INPBAnswerCallIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBAnswerCallIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsStatusCode:(id)code;
- (unint64_t)hash;
- (void)addCallRecords:(id)records;
- (void)encodeWithCoder:(id)coder;
- (void)setCallRecords:(id)records;
- (void)setStatusCode:(int)code;
- (void)writeTo:(id)to;
@end

@implementation _INPBAnswerCallIntentResponse

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  answeredCall = [(_INPBAnswerCallIntentResponse *)self answeredCall];
  dictionaryRepresentation = [answeredCall dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"answeredCall"];

  if ([(NSArray *)self->_callRecords count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"callRecords"];
  }

  if ([(_INPBAnswerCallIntentResponse *)self hasStatusCode])
  {
    statusCode = [(_INPBAnswerCallIntentResponse *)self statusCode];
    if (statusCode == 1)
    {
      v14 = @"NO_INCOMING_CALL";
    }

    else if (statusCode == 2)
    {
      v14 = @"INCOMING_CALL";
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", statusCode];
    }

    [dictionary setObject:v14 forKeyedSubscript:@"statusCode"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  answeredCall = [(_INPBAnswerCallIntentResponse *)self answeredCall];
  answeredCall2 = [equalCopy answeredCall];
  if ((answeredCall != 0) == (answeredCall2 == 0))
  {
    goto LABEL_11;
  }

  answeredCall3 = [(_INPBAnswerCallIntentResponse *)self answeredCall];
  if (answeredCall3)
  {
    v8 = answeredCall3;
    answeredCall4 = [(_INPBAnswerCallIntentResponse *)self answeredCall];
    answeredCall5 = [equalCopy answeredCall];
    v11 = [answeredCall4 isEqual:answeredCall5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  answeredCall = [(_INPBAnswerCallIntentResponse *)self callRecords];
  answeredCall2 = [equalCopy callRecords];
  if ((answeredCall != 0) == (answeredCall2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  callRecords = [(_INPBAnswerCallIntentResponse *)self callRecords];
  if (callRecords)
  {
    v13 = callRecords;
    callRecords2 = [(_INPBAnswerCallIntentResponse *)self callRecords];
    callRecords3 = [equalCopy callRecords];
    v16 = [callRecords2 isEqual:callRecords3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  hasStatusCode = [(_INPBAnswerCallIntentResponse *)self hasStatusCode];
  if (hasStatusCode == [equalCopy hasStatusCode])
  {
    if (!-[_INPBAnswerCallIntentResponse hasStatusCode](self, "hasStatusCode") || ![equalCopy hasStatusCode] || (statusCode = self->_statusCode, statusCode == objc_msgSend(equalCopy, "statusCode")))
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
  v5 = [+[_INPBAnswerCallIntentResponse allocWithZone:](_INPBAnswerCallIntentResponse init];
  v6 = [(_INPBConnectedCall *)self->_answeredCall copyWithZone:zone];
  [(_INPBAnswerCallIntentResponse *)v5 setAnsweredCall:v6];

  v7 = [(NSArray *)self->_callRecords copyWithZone:zone];
  [(_INPBAnswerCallIntentResponse *)v5 setCallRecords:v7];

  if ([(_INPBAnswerCallIntentResponse *)self hasStatusCode])
  {
    [(_INPBAnswerCallIntentResponse *)v5 setStatusCode:[(_INPBAnswerCallIntentResponse *)self statusCode]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAnswerCallIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAnswerCallIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAnswerCallIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  answeredCall = [(_INPBAnswerCallIntentResponse *)self answeredCall];

  if (answeredCall)
  {
    answeredCall2 = [(_INPBAnswerCallIntentResponse *)self answeredCall];
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

- (int)StringAsStatusCode:(id)code
{
  codeCopy = code;
  v4 = 1;
  if (([codeCopy isEqualToString:@"NO_INCOMING_CALL"] & 1) == 0)
  {
    if ([codeCopy isEqualToString:@"INCOMING_CALL"])
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

- (void)setStatusCode:(int)code
{
  has = self->_has;
  if (code == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_statusCode = code;
  }
}

- (void)addCallRecords:(id)records
{
  recordsCopy = records;
  callRecords = self->_callRecords;
  v8 = recordsCopy;
  if (!callRecords)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_callRecords;
    self->_callRecords = array;

    recordsCopy = v8;
    callRecords = self->_callRecords;
  }

  [(NSArray *)callRecords addObject:recordsCopy];
}

- (void)setCallRecords:(id)records
{
  v4 = [records mutableCopy];
  callRecords = self->_callRecords;
  self->_callRecords = v4;

  MEMORY[0x1EEE66BB8](v4, callRecords);
}

@end
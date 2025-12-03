@interface _INPBIdentifyIncomingCallerIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBIdentifyIncomingCallerIntentResponse)initWithCoder:(id)coder;
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

@implementation _INPBIdentifyIncomingCallerIntentResponse

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_callRecords count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"callRecords"];
  }

  if ([(_INPBIdentifyIncomingCallerIntentResponse *)self hasStatusCode])
  {
    statusCode = [(_INPBIdentifyIncomingCallerIntentResponse *)self statusCode];
    if (statusCode == 1)
    {
      v12 = @"NO_INCOMING_CALL";
    }

    else if (statusCode == 2)
    {
      v12 = @"INCOMING_CALL";
    }

    else
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", statusCode];
    }

    [dictionary setObject:v12 forKeyedSubscript:@"statusCode"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  callRecords = [(_INPBIdentifyIncomingCallerIntentResponse *)self callRecords];
  callRecords2 = [equalCopy callRecords];
  v7 = callRecords2;
  if ((callRecords != 0) != (callRecords2 == 0))
  {
    callRecords3 = [(_INPBIdentifyIncomingCallerIntentResponse *)self callRecords];
    if (callRecords3)
    {
      v9 = callRecords3;
      callRecords4 = [(_INPBIdentifyIncomingCallerIntentResponse *)self callRecords];
      callRecords5 = [equalCopy callRecords];
      v12 = [callRecords4 isEqual:callRecords5];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    hasStatusCode = [(_INPBIdentifyIncomingCallerIntentResponse *)self hasStatusCode];
    if (hasStatusCode == [equalCopy hasStatusCode])
    {
      if (!-[_INPBIdentifyIncomingCallerIntentResponse hasStatusCode](self, "hasStatusCode") || ![equalCopy hasStatusCode] || (statusCode = self->_statusCode, statusCode == objc_msgSend(equalCopy, "statusCode")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIdentifyIncomingCallerIntentResponse allocWithZone:](_INPBIdentifyIncomingCallerIntentResponse init];
  v6 = [(NSArray *)self->_callRecords copyWithZone:zone];
  [(_INPBIdentifyIncomingCallerIntentResponse *)v5 setCallRecords:v6];

  if ([(_INPBIdentifyIncomingCallerIntentResponse *)self hasStatusCode])
  {
    [(_INPBIdentifyIncomingCallerIntentResponse *)v5 setStatusCode:[(_INPBIdentifyIncomingCallerIntentResponse *)self statusCode]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIdentifyIncomingCallerIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIdentifyIncomingCallerIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIdentifyIncomingCallerIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
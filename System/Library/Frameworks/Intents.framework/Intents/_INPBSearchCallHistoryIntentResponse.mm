@interface _INPBSearchCallHistoryIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSearchCallHistoryIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCallRecords:(id)records;
- (void)encodeWithCoder:(id)coder;
- (void)setCallRecords:(id)records;
- (void)setDateCreated:(id)created;
- (void)setStatus:(id)status;
- (void)setTargetContact:(id)contact;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchCallHistoryIntentResponse

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_callRecords count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_callRecords;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"callRecords"];
  }

  if (self->_dateCreated)
  {
    dateCreated = [(_INPBSearchCallHistoryIntentResponse *)self dateCreated];
    v12 = [dateCreated copy];
    [dictionary setObject:v12 forKeyedSubscript:@"dateCreated"];
  }

  if (self->_status)
  {
    status = [(_INPBSearchCallHistoryIntentResponse *)self status];
    v14 = [status copy];
    [dictionary setObject:v14 forKeyedSubscript:@"status"];
  }

  if (self->_targetContact)
  {
    targetContact = [(_INPBSearchCallHistoryIntentResponse *)self targetContact];
    v16 = [targetContact copy];
    [dictionary setObject:v16 forKeyedSubscript:@"targetContact"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_callRecords hash];
  v4 = [(NSString *)self->_dateCreated hash]^ v3;
  v5 = [(NSString *)self->_status hash];
  return v4 ^ v5 ^ [(NSString *)self->_targetContact hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  callRecords = [(_INPBSearchCallHistoryIntentResponse *)self callRecords];
  callRecords2 = [equalCopy callRecords];
  if ((callRecords != 0) == (callRecords2 == 0))
  {
    goto LABEL_21;
  }

  callRecords3 = [(_INPBSearchCallHistoryIntentResponse *)self callRecords];
  if (callRecords3)
  {
    v8 = callRecords3;
    callRecords4 = [(_INPBSearchCallHistoryIntentResponse *)self callRecords];
    callRecords5 = [equalCopy callRecords];
    v11 = [callRecords4 isEqual:callRecords5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  callRecords = [(_INPBSearchCallHistoryIntentResponse *)self dateCreated];
  callRecords2 = [equalCopy dateCreated];
  if ((callRecords != 0) == (callRecords2 == 0))
  {
    goto LABEL_21;
  }

  dateCreated = [(_INPBSearchCallHistoryIntentResponse *)self dateCreated];
  if (dateCreated)
  {
    v13 = dateCreated;
    dateCreated2 = [(_INPBSearchCallHistoryIntentResponse *)self dateCreated];
    dateCreated3 = [equalCopy dateCreated];
    v16 = [dateCreated2 isEqual:dateCreated3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  callRecords = [(_INPBSearchCallHistoryIntentResponse *)self status];
  callRecords2 = [equalCopy status];
  if ((callRecords != 0) == (callRecords2 == 0))
  {
    goto LABEL_21;
  }

  status = [(_INPBSearchCallHistoryIntentResponse *)self status];
  if (status)
  {
    v18 = status;
    status2 = [(_INPBSearchCallHistoryIntentResponse *)self status];
    status3 = [equalCopy status];
    v21 = [status2 isEqual:status3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  callRecords = [(_INPBSearchCallHistoryIntentResponse *)self targetContact];
  callRecords2 = [equalCopy targetContact];
  if ((callRecords != 0) != (callRecords2 == 0))
  {
    targetContact = [(_INPBSearchCallHistoryIntentResponse *)self targetContact];
    if (!targetContact)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = targetContact;
    targetContact2 = [(_INPBSearchCallHistoryIntentResponse *)self targetContact];
    targetContact3 = [equalCopy targetContact];
    v26 = [targetContact2 isEqual:targetContact3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchCallHistoryIntentResponse allocWithZone:](_INPBSearchCallHistoryIntentResponse init];
  v6 = [(NSArray *)self->_callRecords copyWithZone:zone];
  [(_INPBSearchCallHistoryIntentResponse *)v5 setCallRecords:v6];

  v7 = [(NSString *)self->_dateCreated copyWithZone:zone];
  [(_INPBSearchCallHistoryIntentResponse *)v5 setDateCreated:v7];

  v8 = [(NSString *)self->_status copyWithZone:zone];
  [(_INPBSearchCallHistoryIntentResponse *)v5 setStatus:v8];

  v9 = [(NSString *)self->_targetContact copyWithZone:zone];
  [(_INPBSearchCallHistoryIntentResponse *)v5 setTargetContact:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchCallHistoryIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchCallHistoryIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchCallHistoryIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_callRecords;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  dateCreated = [(_INPBSearchCallHistoryIntentResponse *)self dateCreated];

  if (dateCreated)
  {
    dateCreated = self->_dateCreated;
    PBDataWriterWriteStringField();
  }

  status = [(_INPBSearchCallHistoryIntentResponse *)self status];

  if (status)
  {
    status = self->_status;
    PBDataWriterWriteStringField();
  }

  targetContact = [(_INPBSearchCallHistoryIntentResponse *)self targetContact];

  if (targetContact)
  {
    targetContact = self->_targetContact;
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setTargetContact:(id)contact
{
  v4 = [contact copy];
  targetContact = self->_targetContact;
  self->_targetContact = v4;

  MEMORY[0x1EEE66BB8](v4, targetContact);
}

- (void)setStatus:(id)status
{
  v4 = [status copy];
  status = self->_status;
  self->_status = v4;

  MEMORY[0x1EEE66BB8](v4, status);
}

- (void)setDateCreated:(id)created
{
  v4 = [created copy];
  dateCreated = self->_dateCreated;
  self->_dateCreated = v4;

  MEMORY[0x1EEE66BB8](v4, dateCreated);
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
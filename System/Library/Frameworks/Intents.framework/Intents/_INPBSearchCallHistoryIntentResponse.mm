@interface _INPBSearchCallHistoryIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBSearchCallHistoryIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCallRecords:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCallRecords:(id)a3;
- (void)setDateCreated:(id)a3;
- (void)setStatus:(id)a3;
- (void)setTargetContact:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSearchCallHistoryIntentResponse

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_callRecords count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"callRecords"];
  }

  if (self->_dateCreated)
  {
    v11 = [(_INPBSearchCallHistoryIntentResponse *)self dateCreated];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"dateCreated"];
  }

  if (self->_status)
  {
    v13 = [(_INPBSearchCallHistoryIntentResponse *)self status];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"status"];
  }

  if (self->_targetContact)
  {
    v15 = [(_INPBSearchCallHistoryIntentResponse *)self targetContact];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"targetContact"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_callRecords hash];
  v4 = [(NSString *)self->_dateCreated hash]^ v3;
  v5 = [(NSString *)self->_status hash];
  return v4 ^ v5 ^ [(NSString *)self->_targetContact hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBSearchCallHistoryIntentResponse *)self callRecords];
  v6 = [v4 callRecords];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBSearchCallHistoryIntentResponse *)self callRecords];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSearchCallHistoryIntentResponse *)self callRecords];
    v10 = [v4 callRecords];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchCallHistoryIntentResponse *)self dateCreated];
  v6 = [v4 dateCreated];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBSearchCallHistoryIntentResponse *)self dateCreated];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSearchCallHistoryIntentResponse *)self dateCreated];
    v15 = [v4 dateCreated];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchCallHistoryIntentResponse *)self status];
  v6 = [v4 status];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBSearchCallHistoryIntentResponse *)self status];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBSearchCallHistoryIntentResponse *)self status];
    v20 = [v4 status];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchCallHistoryIntentResponse *)self targetContact];
  v6 = [v4 targetContact];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBSearchCallHistoryIntentResponse *)self targetContact];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBSearchCallHistoryIntentResponse *)self targetContact];
    v25 = [v4 targetContact];
    v26 = [v24 isEqual:v25];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSearchCallHistoryIntentResponse allocWithZone:](_INPBSearchCallHistoryIntentResponse init];
  v6 = [(NSArray *)self->_callRecords copyWithZone:a3];
  [(_INPBSearchCallHistoryIntentResponse *)v5 setCallRecords:v6];

  v7 = [(NSString *)self->_dateCreated copyWithZone:a3];
  [(_INPBSearchCallHistoryIntentResponse *)v5 setDateCreated:v7];

  v8 = [(NSString *)self->_status copyWithZone:a3];
  [(_INPBSearchCallHistoryIntentResponse *)v5 setStatus:v8];

  v9 = [(NSString *)self->_targetContact copyWithZone:a3];
  [(_INPBSearchCallHistoryIntentResponse *)v5 setTargetContact:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchCallHistoryIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchCallHistoryIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchCallHistoryIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(_INPBSearchCallHistoryIntentResponse *)self dateCreated];

  if (v11)
  {
    dateCreated = self->_dateCreated;
    PBDataWriterWriteStringField();
  }

  v13 = [(_INPBSearchCallHistoryIntentResponse *)self status];

  if (v13)
  {
    status = self->_status;
    PBDataWriterWriteStringField();
  }

  v15 = [(_INPBSearchCallHistoryIntentResponse *)self targetContact];

  if (v15)
  {
    targetContact = self->_targetContact;
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setTargetContact:(id)a3
{
  v4 = [a3 copy];
  targetContact = self->_targetContact;
  self->_targetContact = v4;

  MEMORY[0x1EEE66BB8](v4, targetContact);
}

- (void)setStatus:(id)a3
{
  v4 = [a3 copy];
  status = self->_status;
  self->_status = v4;

  MEMORY[0x1EEE66BB8](v4, status);
}

- (void)setDateCreated:(id)a3
{
  v4 = [a3 copy];
  dateCreated = self->_dateCreated;
  self->_dateCreated = v4;

  MEMORY[0x1EEE66BB8](v4, dateCreated);
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
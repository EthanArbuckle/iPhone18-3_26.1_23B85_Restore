@interface _INPBOpenFileIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBOpenFileIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEntities:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setEntities:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBOpenFileIntentResponse

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_entities count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_entities;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"entities"];
  }

  v11 = [(_INPBOpenFileIntentResponse *)self numResults];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"numResults"];

  v13 = [(_INPBOpenFileIntentResponse *)self query];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"query"];

  if ([(_INPBOpenFileIntentResponse *)self hasSuccess])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBOpenFileIntentResponse success](self, "success")}];
    [v3 setObject:v15 forKeyedSubscript:@"success"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_entities hash];
  v4 = [(_INPBInteger *)self->_numResults hash];
  v5 = [(_INPBString *)self->_query hash];
  if ([(_INPBOpenFileIntentResponse *)self hasSuccess])
  {
    v6 = 2654435761 * self->_success;
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

  v5 = [(_INPBOpenFileIntentResponse *)self entities];
  v6 = [v4 entities];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBOpenFileIntentResponse *)self entities];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBOpenFileIntentResponse *)self entities];
    v10 = [v4 entities];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBOpenFileIntentResponse *)self numResults];
  v6 = [v4 numResults];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBOpenFileIntentResponse *)self numResults];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBOpenFileIntentResponse *)self numResults];
    v15 = [v4 numResults];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBOpenFileIntentResponse *)self query];
  v6 = [v4 query];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(_INPBOpenFileIntentResponse *)self query];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBOpenFileIntentResponse *)self query];
    v20 = [v4 query];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v24 = [(_INPBOpenFileIntentResponse *)self hasSuccess];
  if (v24 == [v4 hasSuccess])
  {
    if (!-[_INPBOpenFileIntentResponse hasSuccess](self, "hasSuccess") || ![v4 hasSuccess] || (success = self->_success, success == objc_msgSend(v4, "success")))
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
  v5 = [+[_INPBOpenFileIntentResponse allocWithZone:](_INPBOpenFileIntentResponse init];
  v6 = [(NSArray *)self->_entities copyWithZone:a3];
  [(_INPBOpenFileIntentResponse *)v5 setEntities:v6];

  v7 = [(_INPBInteger *)self->_numResults copyWithZone:a3];
  [(_INPBOpenFileIntentResponse *)v5 setNumResults:v7];

  v8 = [(_INPBString *)self->_query copyWithZone:a3];
  [(_INPBOpenFileIntentResponse *)v5 setQuery:v8];

  if ([(_INPBOpenFileIntentResponse *)self hasSuccess])
  {
    [(_INPBOpenFileIntentResponse *)v5 setSuccess:[(_INPBOpenFileIntentResponse *)self success]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBOpenFileIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBOpenFileIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBOpenFileIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_entities;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = [(_INPBOpenFileIntentResponse *)self numResults];

  if (v11)
  {
    v12 = [(_INPBOpenFileIntentResponse *)self numResults];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBOpenFileIntentResponse *)self query];

  if (v13)
  {
    v14 = [(_INPBOpenFileIntentResponse *)self query];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBOpenFileIntentResponse *)self hasSuccess])
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addEntities:(id)a3
{
  v4 = a3;
  entities = self->_entities;
  v8 = v4;
  if (!entities)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_entities;
    self->_entities = v6;

    v4 = v8;
    entities = self->_entities;
  }

  [(NSArray *)entities addObject:v4];
}

- (void)setEntities:(id)a3
{
  v4 = [a3 mutableCopy];
  entities = self->_entities;
  self->_entities = v4;

  MEMORY[0x1EEE66BB8](v4, entities);
}

@end
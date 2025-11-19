@interface _INPBGenericIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBGenericIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)addProperties:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setProperties:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBGenericIntentResponse

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBGenericIntentResponse *)self metadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"metadata"];

  if ([(NSArray *)self->_properties count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_properties;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"properties"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBGenericIntentResponse *)self metadata];
  v6 = [v4 metadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBGenericIntentResponse *)self metadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBGenericIntentResponse *)self metadata];
    v10 = [v4 metadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBGenericIntentResponse *)self properties];
  v6 = [v4 properties];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBGenericIntentResponse *)self properties];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBGenericIntentResponse *)self properties];
    v15 = [v4 properties];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBGenericIntentResponse allocWithZone:](_INPBGenericIntentResponse init];
  v6 = [(_INPBIntentMetadata *)self->_metadata copyWithZone:a3];
  [(_INPBGenericIntentResponse *)v5 setMetadata:v6];

  v7 = [(NSArray *)self->_properties copyWithZone:a3];
  [(_INPBGenericIntentResponse *)v5 setProperties:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBGenericIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBGenericIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBGenericIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBGenericIntentResponse *)self metadata];

  if (v5)
  {
    v6 = [(_INPBGenericIntentResponse *)self metadata];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_properties;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addProperties:(id)a3
{
  v4 = a3;
  properties = self->_properties;
  v8 = v4;
  if (!properties)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_properties;
    self->_properties = v6;

    v4 = v8;
    properties = self->_properties;
  }

  [(NSArray *)properties addObject:v4];
}

- (void)setProperties:(id)a3
{
  v4 = [a3 mutableCopy];
  properties = self->_properties;
  self->_properties = v4;

  MEMORY[0x1EEE66BB8](v4, properties);
}

@end
@interface _INPBGenericIntent
- (BOOL)isEqual:(id)a3;
- (_INPBGenericIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParameters:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDomain:(id)a3;
- (void)setParameters:(id)a3;
- (void)setVerb:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBGenericIntent

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_domain)
  {
    v4 = [(_INPBGenericIntent *)self domain];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"domain"];
  }

  v6 = [(_INPBGenericIntent *)self metadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"metadata"];

  if ([(NSArray *)self->_parameters count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_parameters;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"parameters"];
  }

  if (self->_verb)
  {
    v15 = [(_INPBGenericIntent *)self verb];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"verb"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(_INPBIntentMetadata *)self->_metadata hash]^ v3;
  v5 = [(NSArray *)self->_parameters hash];
  return v4 ^ v5 ^ [(NSString *)self->_verb hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBGenericIntent *)self domain];
  v6 = [v4 domain];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBGenericIntent *)self domain];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBGenericIntent *)self domain];
    v10 = [v4 domain];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBGenericIntent *)self metadata];
  v6 = [v4 metadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBGenericIntent *)self metadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBGenericIntent *)self metadata];
    v15 = [v4 metadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBGenericIntent *)self parameters];
  v6 = [v4 parameters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBGenericIntent *)self parameters];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBGenericIntent *)self parameters];
    v20 = [v4 parameters];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBGenericIntent *)self verb];
  v6 = [v4 verb];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBGenericIntent *)self verb];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBGenericIntent *)self verb];
    v25 = [v4 verb];
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
  v5 = [+[_INPBGenericIntent allocWithZone:](_INPBGenericIntent init];
  v6 = [(NSString *)self->_domain copyWithZone:a3];
  [(_INPBGenericIntent *)v5 setDomain:v6];

  v7 = [(_INPBIntentMetadata *)self->_metadata copyWithZone:a3];
  [(_INPBGenericIntent *)v5 setMetadata:v7];

  v8 = [(NSArray *)self->_parameters copyWithZone:a3];
  [(_INPBGenericIntent *)v5 setParameters:v8];

  v9 = [(NSString *)self->_verb copyWithZone:a3];
  [(_INPBGenericIntent *)v5 setVerb:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBGenericIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBGenericIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBGenericIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBGenericIntent *)self domain];

  if (v5)
  {
    domain = self->_domain;
    PBDataWriterWriteStringField();
  }

  v7 = [(_INPBGenericIntent *)self metadata];

  if (v7)
  {
    v8 = [(_INPBGenericIntent *)self metadata];
    PBDataWriterWriteSubmessage();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_parameters;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [(_INPBGenericIntent *)self verb];

  if (v15)
  {
    verb = self->_verb;
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setVerb:(id)a3
{
  v4 = [a3 copy];
  verb = self->_verb;
  self->_verb = v4;

  MEMORY[0x1EEE66BB8](v4, verb);
}

- (void)addParameters:(id)a3
{
  v4 = a3;
  parameters = self->_parameters;
  v8 = v4;
  if (!parameters)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameters;
    self->_parameters = v6;

    v4 = v8;
    parameters = self->_parameters;
  }

  [(NSArray *)parameters addObject:v4];
}

- (void)setParameters:(id)a3
{
  v4 = [a3 mutableCopy];
  parameters = self->_parameters;
  self->_parameters = v4;

  MEMORY[0x1EEE66BB8](v4, parameters);
}

- (void)setDomain:(id)a3
{
  v4 = [a3 copy];
  domain = self->_domain;
  self->_domain = v4;

  MEMORY[0x1EEE66BB8](v4, domain);
}

@end
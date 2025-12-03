@interface _INPBGenericIntent
- (BOOL)isEqual:(id)equal;
- (_INPBGenericIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParameters:(id)parameters;
- (void)encodeWithCoder:(id)coder;
- (void)setDomain:(id)domain;
- (void)setParameters:(id)parameters;
- (void)setVerb:(id)verb;
- (void)writeTo:(id)to;
@end

@implementation _INPBGenericIntent

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_domain)
  {
    domain = [(_INPBGenericIntent *)self domain];
    v5 = [domain copy];
    [dictionary setObject:v5 forKeyedSubscript:@"domain"];
  }

  metadata = [(_INPBGenericIntent *)self metadata];
  dictionaryRepresentation = [metadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"metadata"];

  if ([(NSArray *)self->_parameters count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"parameters"];
  }

  if (self->_verb)
  {
    verb = [(_INPBGenericIntent *)self verb];
    v16 = [verb copy];
    [dictionary setObject:v16 forKeyedSubscript:@"verb"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(_INPBIntentMetadata *)self->_metadata hash]^ v3;
  v5 = [(NSArray *)self->_parameters hash];
  return v4 ^ v5 ^ [(NSString *)self->_verb hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  domain = [(_INPBGenericIntent *)self domain];
  domain2 = [equalCopy domain];
  if ((domain != 0) == (domain2 == 0))
  {
    goto LABEL_21;
  }

  domain3 = [(_INPBGenericIntent *)self domain];
  if (domain3)
  {
    v8 = domain3;
    domain4 = [(_INPBGenericIntent *)self domain];
    domain5 = [equalCopy domain];
    v11 = [domain4 isEqual:domain5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  domain = [(_INPBGenericIntent *)self metadata];
  domain2 = [equalCopy metadata];
  if ((domain != 0) == (domain2 == 0))
  {
    goto LABEL_21;
  }

  metadata = [(_INPBGenericIntent *)self metadata];
  if (metadata)
  {
    v13 = metadata;
    metadata2 = [(_INPBGenericIntent *)self metadata];
    metadata3 = [equalCopy metadata];
    v16 = [metadata2 isEqual:metadata3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  domain = [(_INPBGenericIntent *)self parameters];
  domain2 = [equalCopy parameters];
  if ((domain != 0) == (domain2 == 0))
  {
    goto LABEL_21;
  }

  parameters = [(_INPBGenericIntent *)self parameters];
  if (parameters)
  {
    v18 = parameters;
    parameters2 = [(_INPBGenericIntent *)self parameters];
    parameters3 = [equalCopy parameters];
    v21 = [parameters2 isEqual:parameters3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  domain = [(_INPBGenericIntent *)self verb];
  domain2 = [equalCopy verb];
  if ((domain != 0) != (domain2 == 0))
  {
    verb = [(_INPBGenericIntent *)self verb];
    if (!verb)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = verb;
    verb2 = [(_INPBGenericIntent *)self verb];
    verb3 = [equalCopy verb];
    v26 = [verb2 isEqual:verb3];

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
  v5 = [+[_INPBGenericIntent allocWithZone:](_INPBGenericIntent init];
  v6 = [(NSString *)self->_domain copyWithZone:zone];
  [(_INPBGenericIntent *)v5 setDomain:v6];

  v7 = [(_INPBIntentMetadata *)self->_metadata copyWithZone:zone];
  [(_INPBGenericIntent *)v5 setMetadata:v7];

  v8 = [(NSArray *)self->_parameters copyWithZone:zone];
  [(_INPBGenericIntent *)v5 setParameters:v8];

  v9 = [(NSString *)self->_verb copyWithZone:zone];
  [(_INPBGenericIntent *)v5 setVerb:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGenericIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGenericIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGenericIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  domain = [(_INPBGenericIntent *)self domain];

  if (domain)
  {
    domain = self->_domain;
    PBDataWriterWriteStringField();
  }

  metadata = [(_INPBGenericIntent *)self metadata];

  if (metadata)
  {
    metadata2 = [(_INPBGenericIntent *)self metadata];
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

  verb = [(_INPBGenericIntent *)self verb];

  if (verb)
  {
    verb = self->_verb;
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setVerb:(id)verb
{
  v4 = [verb copy];
  verb = self->_verb;
  self->_verb = v4;

  MEMORY[0x1EEE66BB8](v4, verb);
}

- (void)addParameters:(id)parameters
{
  parametersCopy = parameters;
  parameters = self->_parameters;
  v8 = parametersCopy;
  if (!parameters)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameters;
    self->_parameters = array;

    parametersCopy = v8;
    parameters = self->_parameters;
  }

  [(NSArray *)parameters addObject:parametersCopy];
}

- (void)setParameters:(id)parameters
{
  v4 = [parameters mutableCopy];
  parameters = self->_parameters;
  self->_parameters = v4;

  MEMORY[0x1EEE66BB8](v4, parameters);
}

- (void)setDomain:(id)domain
{
  v4 = [domain copy];
  domain = self->_domain;
  self->_domain = v4;

  MEMORY[0x1EEE66BB8](v4, domain);
}

@end
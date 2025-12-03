@interface _INPBControlHomeIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBControlHomeIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addEntityResponses:(id)responses;
- (void)encodeWithCoder:(id)coder;
- (void)setEntityResponses:(id)responses;
- (void)writeTo:(id)to;
@end

@implementation _INPBControlHomeIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_entityResponses count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_entityResponses;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"entityResponses"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    entityResponses = [(_INPBControlHomeIntentResponse *)self entityResponses];
    entityResponses2 = [equalCopy entityResponses];
    v7 = entityResponses2;
    if ((entityResponses != 0) != (entityResponses2 == 0))
    {
      entityResponses3 = [(_INPBControlHomeIntentResponse *)self entityResponses];
      if (!entityResponses3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = entityResponses3;
      entityResponses4 = [(_INPBControlHomeIntentResponse *)self entityResponses];
      entityResponses5 = [equalCopy entityResponses];
      v12 = [entityResponses4 isEqual:entityResponses5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBControlHomeIntentResponse allocWithZone:](_INPBControlHomeIntentResponse init];
  v6 = [(NSArray *)self->_entityResponses copyWithZone:zone];
  [(_INPBControlHomeIntentResponse *)v5 setEntityResponses:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBControlHomeIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBControlHomeIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBControlHomeIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_entityResponses;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addEntityResponses:(id)responses
{
  responsesCopy = responses;
  entityResponses = self->_entityResponses;
  v8 = responsesCopy;
  if (!entityResponses)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityResponses;
    self->_entityResponses = array;

    responsesCopy = v8;
    entityResponses = self->_entityResponses;
  }

  [(NSArray *)entityResponses addObject:responsesCopy];
}

- (void)setEntityResponses:(id)responses
{
  v4 = [responses mutableCopy];
  entityResponses = self->_entityResponses;
  self->_entityResponses = v4;

  MEMORY[0x1EEE66BB8](v4, entityResponses);
}

@end
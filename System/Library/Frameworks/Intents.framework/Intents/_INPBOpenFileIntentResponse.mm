@interface _INPBOpenFileIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBOpenFileIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEntities:(id)entities;
- (void)encodeWithCoder:(id)coder;
- (void)setEntities:(id)entities;
- (void)writeTo:(id)to;
@end

@implementation _INPBOpenFileIntentResponse

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_entities count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"entities"];
  }

  numResults = [(_INPBOpenFileIntentResponse *)self numResults];
  dictionaryRepresentation2 = [numResults dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"numResults"];

  query = [(_INPBOpenFileIntentResponse *)self query];
  dictionaryRepresentation3 = [query dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"query"];

  if ([(_INPBOpenFileIntentResponse *)self hasSuccess])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBOpenFileIntentResponse success](self, "success")}];
    [dictionary setObject:v15 forKeyedSubscript:@"success"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  entities = [(_INPBOpenFileIntentResponse *)self entities];
  entities2 = [equalCopy entities];
  if ((entities != 0) == (entities2 == 0))
  {
    goto LABEL_16;
  }

  entities3 = [(_INPBOpenFileIntentResponse *)self entities];
  if (entities3)
  {
    v8 = entities3;
    entities4 = [(_INPBOpenFileIntentResponse *)self entities];
    entities5 = [equalCopy entities];
    v11 = [entities4 isEqual:entities5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  entities = [(_INPBOpenFileIntentResponse *)self numResults];
  entities2 = [equalCopy numResults];
  if ((entities != 0) == (entities2 == 0))
  {
    goto LABEL_16;
  }

  numResults = [(_INPBOpenFileIntentResponse *)self numResults];
  if (numResults)
  {
    v13 = numResults;
    numResults2 = [(_INPBOpenFileIntentResponse *)self numResults];
    numResults3 = [equalCopy numResults];
    v16 = [numResults2 isEqual:numResults3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  entities = [(_INPBOpenFileIntentResponse *)self query];
  entities2 = [equalCopy query];
  if ((entities != 0) == (entities2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  query = [(_INPBOpenFileIntentResponse *)self query];
  if (query)
  {
    v18 = query;
    query2 = [(_INPBOpenFileIntentResponse *)self query];
    query3 = [equalCopy query];
    v21 = [query2 isEqual:query3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  hasSuccess = [(_INPBOpenFileIntentResponse *)self hasSuccess];
  if (hasSuccess == [equalCopy hasSuccess])
  {
    if (!-[_INPBOpenFileIntentResponse hasSuccess](self, "hasSuccess") || ![equalCopy hasSuccess] || (success = self->_success, success == objc_msgSend(equalCopy, "success")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBOpenFileIntentResponse allocWithZone:](_INPBOpenFileIntentResponse init];
  v6 = [(NSArray *)self->_entities copyWithZone:zone];
  [(_INPBOpenFileIntentResponse *)v5 setEntities:v6];

  v7 = [(_INPBInteger *)self->_numResults copyWithZone:zone];
  [(_INPBOpenFileIntentResponse *)v5 setNumResults:v7];

  v8 = [(_INPBString *)self->_query copyWithZone:zone];
  [(_INPBOpenFileIntentResponse *)v5 setQuery:v8];

  if ([(_INPBOpenFileIntentResponse *)self hasSuccess])
  {
    [(_INPBOpenFileIntentResponse *)v5 setSuccess:[(_INPBOpenFileIntentResponse *)self success]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBOpenFileIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBOpenFileIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBOpenFileIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  numResults = [(_INPBOpenFileIntentResponse *)self numResults];

  if (numResults)
  {
    numResults2 = [(_INPBOpenFileIntentResponse *)self numResults];
    PBDataWriterWriteSubmessage();
  }

  query = [(_INPBOpenFileIntentResponse *)self query];

  if (query)
  {
    query2 = [(_INPBOpenFileIntentResponse *)self query];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBOpenFileIntentResponse *)self hasSuccess])
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addEntities:(id)entities
{
  entitiesCopy = entities;
  entities = self->_entities;
  v8 = entitiesCopy;
  if (!entities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_entities;
    self->_entities = array;

    entitiesCopy = v8;
    entities = self->_entities;
  }

  [(NSArray *)entities addObject:entitiesCopy];
}

- (void)setEntities:(id)entities
{
  v4 = [entities mutableCopy];
  entities = self->_entities;
  self->_entities = v4;

  MEMORY[0x1EEE66BB8](v4, entities);
}

@end
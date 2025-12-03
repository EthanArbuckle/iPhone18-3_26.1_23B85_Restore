@interface _INPBConfigureHomeIntent
- (BOOL)isEqual:(id)equal;
- (_INPBConfigureHomeIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addEntities:(id)entities;
- (void)encodeWithCoder:(id)coder;
- (void)setEntities:(id)entities;
- (void)writeTo:(id)to;
@end

@implementation _INPBConfigureHomeIntent

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_entities count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_entities;
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

    [dictionary setObject:array forKeyedSubscript:@"entities"];
  }

  intentMetadata = [(_INPBConfigureHomeIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  entities = [(_INPBConfigureHomeIntent *)self entities];
  entities2 = [equalCopy entities];
  if ((entities != 0) == (entities2 == 0))
  {
    goto LABEL_11;
  }

  entities3 = [(_INPBConfigureHomeIntent *)self entities];
  if (entities3)
  {
    v8 = entities3;
    entities4 = [(_INPBConfigureHomeIntent *)self entities];
    entities5 = [equalCopy entities];
    v11 = [entities4 isEqual:entities5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  entities = [(_INPBConfigureHomeIntent *)self intentMetadata];
  entities2 = [equalCopy intentMetadata];
  if ((entities != 0) != (entities2 == 0))
  {
    intentMetadata = [(_INPBConfigureHomeIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = intentMetadata;
    intentMetadata2 = [(_INPBConfigureHomeIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBConfigureHomeIntent allocWithZone:](_INPBConfigureHomeIntent init];
  v6 = [(NSArray *)self->_entities copyWithZone:zone];
  [(_INPBConfigureHomeIntent *)v5 setEntities:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBConfigureHomeIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBConfigureHomeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBConfigureHomeIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBConfigureHomeIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_entities;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  intentMetadata = [(_INPBConfigureHomeIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBConfigureHomeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x1E69E9840];
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
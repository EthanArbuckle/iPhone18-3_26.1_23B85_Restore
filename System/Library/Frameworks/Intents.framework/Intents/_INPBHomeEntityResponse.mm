@interface _INPBHomeEntityResponse
- (BOOL)isEqual:(id)equal;
- (_INPBHomeEntityResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addTaskResponses:(id)responses;
- (void)encodeWithCoder:(id)coder;
- (void)setTaskResponses:(id)responses;
- (void)writeTo:(id)to;
@end

@implementation _INPBHomeEntityResponse

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  entity = [(_INPBHomeEntityResponse *)self entity];
  dictionaryRepresentation = [entity dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entity"];

  if ([(NSArray *)self->_taskResponses count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_taskResponses;
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

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"taskResponses"];
  }

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

  entity = [(_INPBHomeEntityResponse *)self entity];
  entity2 = [equalCopy entity];
  if ((entity != 0) == (entity2 == 0))
  {
    goto LABEL_11;
  }

  entity3 = [(_INPBHomeEntityResponse *)self entity];
  if (entity3)
  {
    v8 = entity3;
    entity4 = [(_INPBHomeEntityResponse *)self entity];
    entity5 = [equalCopy entity];
    v11 = [entity4 isEqual:entity5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  entity = [(_INPBHomeEntityResponse *)self taskResponses];
  entity2 = [equalCopy taskResponses];
  if ((entity != 0) != (entity2 == 0))
  {
    taskResponses = [(_INPBHomeEntityResponse *)self taskResponses];
    if (!taskResponses)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = taskResponses;
    taskResponses2 = [(_INPBHomeEntityResponse *)self taskResponses];
    taskResponses3 = [equalCopy taskResponses];
    v16 = [taskResponses2 isEqual:taskResponses3];

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
  v5 = [+[_INPBHomeEntityResponse allocWithZone:](_INPBHomeEntityResponse init];
  v6 = [(_INPBHomeEntity *)self->_entity copyWithZone:zone];
  [(_INPBHomeEntityResponse *)v5 setEntity:v6];

  v7 = [(NSArray *)self->_taskResponses copyWithZone:zone];
  [(_INPBHomeEntityResponse *)v5 setTaskResponses:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHomeEntityResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHomeEntityResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHomeEntityResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  entity = [(_INPBHomeEntityResponse *)self entity];

  if (entity)
  {
    entity2 = [(_INPBHomeEntityResponse *)self entity];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_taskResponses;
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

- (void)addTaskResponses:(id)responses
{
  responsesCopy = responses;
  taskResponses = self->_taskResponses;
  v8 = responsesCopy;
  if (!taskResponses)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_taskResponses;
    self->_taskResponses = array;

    responsesCopy = v8;
    taskResponses = self->_taskResponses;
  }

  [(NSArray *)taskResponses addObject:responsesCopy];
}

- (void)setTaskResponses:(id)responses
{
  v4 = [responses mutableCopy];
  taskResponses = self->_taskResponses;
  self->_taskResponses = v4;

  MEMORY[0x1EEE66BB8](v4, taskResponses);
}

@end
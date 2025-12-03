@interface _INPBPayloadNeedsValue
- (BOOL)isEqual:(id)equal;
- (_INPBPayloadNeedsValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addPromptItems:(id)items;
- (void)encodeWithCoder:(id)coder;
- (void)setPromptItems:(id)items;
- (void)writeTo:(id)to;
@end

@implementation _INPBPayloadNeedsValue

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_promptItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_promptItems;
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

    [dictionary setObject:array forKeyedSubscript:@"promptItems"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    promptItems = [(_INPBPayloadNeedsValue *)self promptItems];
    promptItems2 = [equalCopy promptItems];
    v7 = promptItems2;
    if ((promptItems != 0) != (promptItems2 == 0))
    {
      promptItems3 = [(_INPBPayloadNeedsValue *)self promptItems];
      if (!promptItems3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = promptItems3;
      promptItems4 = [(_INPBPayloadNeedsValue *)self promptItems];
      promptItems5 = [equalCopy promptItems];
      v12 = [promptItems4 isEqual:promptItems5];

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
  v5 = [+[_INPBPayloadNeedsValue allocWithZone:](_INPBPayloadNeedsValue init];
  v6 = [(NSArray *)self->_promptItems copyWithZone:zone];
  [(_INPBPayloadNeedsValue *)v5 setPromptItems:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPayloadNeedsValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPayloadNeedsValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPayloadNeedsValue *)self initWithData:selfCopy];

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
  v5 = self->_promptItems;
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

- (void)addPromptItems:(id)items
{
  itemsCopy = items;
  promptItems = self->_promptItems;
  v8 = itemsCopy;
  if (!promptItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_promptItems;
    self->_promptItems = array;

    itemsCopy = v8;
    promptItems = self->_promptItems;
  }

  [(NSArray *)promptItems addObject:itemsCopy];
}

- (void)setPromptItems:(id)items
{
  v4 = [items mutableCopy];
  promptItems = self->_promptItems;
  self->_promptItems = v4;

  MEMORY[0x1EEE66BB8](v4, promptItems);
}

@end
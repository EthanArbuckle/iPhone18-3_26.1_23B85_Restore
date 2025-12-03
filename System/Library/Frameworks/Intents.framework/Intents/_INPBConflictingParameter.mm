@interface _INPBConflictingParameter
- (BOOL)isEqual:(id)equal;
- (_INPBConflictingParameter)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addAlternateItems:(id)items;
- (void)encodeWithCoder:(id)coder;
- (void)setAlternateItems:(id)items;
- (void)setKeyPath:(id)path;
- (void)writeTo:(id)to;
@end

@implementation _INPBConflictingParameter

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alternateItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_alternateItems;
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

    [dictionary setObject:array forKeyedSubscript:@"alternateItems"];
  }

  if (self->_keyPath)
  {
    keyPath = [(_INPBConflictingParameter *)self keyPath];
    v12 = [keyPath copy];
    [dictionary setObject:v12 forKeyedSubscript:@"keyPath"];
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

  alternateItems = [(_INPBConflictingParameter *)self alternateItems];
  alternateItems2 = [equalCopy alternateItems];
  if ((alternateItems != 0) == (alternateItems2 == 0))
  {
    goto LABEL_11;
  }

  alternateItems3 = [(_INPBConflictingParameter *)self alternateItems];
  if (alternateItems3)
  {
    v8 = alternateItems3;
    alternateItems4 = [(_INPBConflictingParameter *)self alternateItems];
    alternateItems5 = [equalCopy alternateItems];
    v11 = [alternateItems4 isEqual:alternateItems5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  alternateItems = [(_INPBConflictingParameter *)self keyPath];
  alternateItems2 = [equalCopy keyPath];
  if ((alternateItems != 0) != (alternateItems2 == 0))
  {
    keyPath = [(_INPBConflictingParameter *)self keyPath];
    if (!keyPath)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = keyPath;
    keyPath2 = [(_INPBConflictingParameter *)self keyPath];
    keyPath3 = [equalCopy keyPath];
    v16 = [keyPath2 isEqual:keyPath3];

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
  v5 = [+[_INPBConflictingParameter allocWithZone:](_INPBConflictingParameter init];
  v6 = [(NSArray *)self->_alternateItems copyWithZone:zone];
  [(_INPBConflictingParameter *)v5 setAlternateItems:v6];

  v7 = [(NSString *)self->_keyPath copyWithZone:zone];
  [(_INPBConflictingParameter *)v5 setKeyPath:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBConflictingParameter *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBConflictingParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBConflictingParameter *)self initWithData:selfCopy];

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
  v5 = self->_alternateItems;
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

  keyPath = [(_INPBConflictingParameter *)self keyPath];

  if (keyPath)
  {
    keyPath = self->_keyPath;
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setKeyPath:(id)path
{
  v4 = [path copy];
  keyPath = self->_keyPath;
  self->_keyPath = v4;

  MEMORY[0x1EEE66BB8](v4, keyPath);
}

- (void)addAlternateItems:(id)items
{
  itemsCopy = items;
  alternateItems = self->_alternateItems;
  v8 = itemsCopy;
  if (!alternateItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_alternateItems;
    self->_alternateItems = array;

    itemsCopy = v8;
    alternateItems = self->_alternateItems;
  }

  [(NSArray *)alternateItems addObject:itemsCopy];
}

- (void)setAlternateItems:(id)items
{
  v4 = [items mutableCopy];
  alternateItems = self->_alternateItems;
  self->_alternateItems = v4;

  MEMORY[0x1EEE66BB8](v4, alternateItems);
}

@end
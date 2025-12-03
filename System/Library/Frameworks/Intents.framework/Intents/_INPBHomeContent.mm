@interface _INPBHomeContent
- (BOOL)isEqual:(id)equal;
- (_INPBHomeContent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addActions:(id)actions;
- (void)encodeWithCoder:(id)coder;
- (void)setActions:(id)actions;
- (void)writeTo:(id)to;
@end

@implementation _INPBHomeContent

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_actions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_actions;
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

    [dictionary setObject:array forKeyedSubscript:@"actions"];
  }

  filter = [(_INPBHomeContent *)self filter];
  dictionaryRepresentation2 = [filter dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"filter"];

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

  actions = [(_INPBHomeContent *)self actions];
  actions2 = [equalCopy actions];
  if ((actions != 0) == (actions2 == 0))
  {
    goto LABEL_11;
  }

  actions3 = [(_INPBHomeContent *)self actions];
  if (actions3)
  {
    v8 = actions3;
    actions4 = [(_INPBHomeContent *)self actions];
    actions5 = [equalCopy actions];
    v11 = [actions4 isEqual:actions5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  actions = [(_INPBHomeContent *)self filter];
  actions2 = [equalCopy filter];
  if ((actions != 0) != (actions2 == 0))
  {
    filter = [(_INPBHomeContent *)self filter];
    if (!filter)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = filter;
    filter2 = [(_INPBHomeContent *)self filter];
    filter3 = [equalCopy filter];
    v16 = [filter2 isEqual:filter3];

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
  v5 = [+[_INPBHomeContent allocWithZone:](_INPBHomeContent init];
  v6 = [(NSArray *)self->_actions copyWithZone:zone];
  [(_INPBHomeContent *)v5 setActions:v6];

  v7 = [(_INPBHomeFilter *)self->_filter copyWithZone:zone];
  [(_INPBHomeContent *)v5 setFilter:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHomeContent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHomeContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHomeContent *)self initWithData:selfCopy];

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
  v5 = self->_actions;
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

  filter = [(_INPBHomeContent *)self filter];

  if (filter)
  {
    filter2 = [(_INPBHomeContent *)self filter];
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addActions:(id)actions
{
  actionsCopy = actions;
  actions = self->_actions;
  v8 = actionsCopy;
  if (!actions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_actions;
    self->_actions = array;

    actionsCopy = v8;
    actions = self->_actions;
  }

  [(NSArray *)actions addObject:actionsCopy];
}

- (void)setActions:(id)actions
{
  v4 = [actions mutableCopy];
  actions = self->_actions;
  self->_actions = v4;

  MEMORY[0x1EEE66BB8](v4, actions);
}

@end
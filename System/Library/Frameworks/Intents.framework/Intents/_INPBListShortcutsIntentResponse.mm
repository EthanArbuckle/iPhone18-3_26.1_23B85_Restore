@interface _INPBListShortcutsIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBListShortcutsIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addShortcuts:(id)shortcuts;
- (void)encodeWithCoder:(id)coder;
- (void)setShortcuts:(id)shortcuts;
- (void)writeTo:(id)to;
@end

@implementation _INPBListShortcutsIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_shortcuts count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_shortcuts;
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

    [dictionary setObject:array forKeyedSubscript:@"shortcuts"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    shortcuts = [(_INPBListShortcutsIntentResponse *)self shortcuts];
    shortcuts2 = [equalCopy shortcuts];
    v7 = shortcuts2;
    if ((shortcuts != 0) != (shortcuts2 == 0))
    {
      shortcuts3 = [(_INPBListShortcutsIntentResponse *)self shortcuts];
      if (!shortcuts3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = shortcuts3;
      shortcuts4 = [(_INPBListShortcutsIntentResponse *)self shortcuts];
      shortcuts5 = [equalCopy shortcuts];
      v12 = [shortcuts4 isEqual:shortcuts5];

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
  v5 = [+[_INPBListShortcutsIntentResponse allocWithZone:](_INPBListShortcutsIntentResponse init];
  v6 = [(NSArray *)self->_shortcuts copyWithZone:zone];
  [(_INPBListShortcutsIntentResponse *)v5 setShortcuts:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBListShortcutsIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBListShortcutsIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBListShortcutsIntentResponse *)self initWithData:selfCopy];

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
  v5 = self->_shortcuts;
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

- (void)addShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  shortcuts = self->_shortcuts;
  v8 = shortcutsCopy;
  if (!shortcuts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_shortcuts;
    self->_shortcuts = array;

    shortcutsCopy = v8;
    shortcuts = self->_shortcuts;
  }

  [(NSArray *)shortcuts addObject:shortcutsCopy];
}

- (void)setShortcuts:(id)shortcuts
{
  v4 = [shortcuts mutableCopy];
  shortcuts = self->_shortcuts;
  self->_shortcuts = v4;

  MEMORY[0x1EEE66BB8](v4, shortcuts);
}

@end
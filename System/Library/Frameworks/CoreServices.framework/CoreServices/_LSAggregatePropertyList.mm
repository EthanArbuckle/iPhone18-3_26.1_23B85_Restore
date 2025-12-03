@interface _LSAggregatePropertyList
- (BOOL)_getPropertyList:(id *)list;
- (BOOL)_getValue:(id *)value forPropertyListKey:(id)key;
- (_LSAggregatePropertyList)initWithCoder:(id)coder;
- (_LSAggregatePropertyList)initWithLazyPropertyLists:(id)lists;
- (void)encodeWithCoder:(id)coder;
- (void)prewarm;
@end

@implementation _LSAggregatePropertyList

- (_LSAggregatePropertyList)initWithLazyPropertyLists:(id)lists
{
  listsCopy = lists;
  v9.receiver = self;
  v9.super_class = _LSAggregatePropertyList;
  v5 = [(_LSLazyPropertyList *)&v9 init];
  if (v5)
  {
    v6 = [listsCopy copy];
    plists = v5->_plists;
    v5->_plists = v6;
  }

  return v5;
}

- (BOOL)_getPropertyList:(id *)list
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_plists;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        propertyList = [(_LSLazyPropertyList *)*(*(&v15 + 1) + 8 * v9) propertyList];
        if (propertyList)
        {
          [v5 addEntriesFromDictionary:{propertyList, v15}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v5 copy];
  v12 = v11;
  *list = v11;

  v13 = *MEMORY[0x1E69E9840];
  return v11 != 0;
}

- (BOOL)_getValue:(id *)value forPropertyListKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_plists;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) objectForKey:keyCopy ofClass:{0, v15}];
        if (v11)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = v11;
  *value = v11;

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)prewarm
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_plists;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v5++) prewarm];
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _LSAggregatePropertyList;
  [(_LSLazyPropertyList *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_plists forKey:@"plists"];
}

- (_LSAggregatePropertyList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _LSAggregatePropertyList;
  v5 = [(_LSLazyPropertyList *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeArrayWithValuesOfClass:objc_opt_class() forKey:@"plists"];
    plists = v5->_plists;
    v5->_plists = v6;
  }

  return v5;
}

@end
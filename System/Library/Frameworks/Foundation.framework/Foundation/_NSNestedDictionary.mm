@interface _NSNestedDictionary
- (id)keyEnumerator;
- (id)objectEnumerator;
- (id)objectForKey:(id)key;
- (uint64_t)_recursiveAllKeys;
- (uint64_t)_recursiveAllValues;
- (unint64_t)count;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation _NSNestedDictionary

- (uint64_t)_recursiveAllKeys
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  Class = object_getClass(*(self + 16));
  v3 = *(self + 16);
  if (Class == _NSNestedDictionary)
  {
    _recursiveAllKeys = [(_NSNestedDictionary *)v3 _recursiveAllKeys];
  }

  else
  {
    _recursiveAllKeys = [v3 allKeys];
  }

  allObjects = _recursiveAllKeys;
  if (*(self + 8))
  {
    if (_recursiveAllKeys)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:_recursiveAllKeys];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v7 = v6;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = *(self + 8);
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 addObject:*(*(&v15 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v10);
    }

    allObjects = [v7 allObjects];
  }

  if (!allObjects)
  {
    return [MEMORY[0x1E695DEC8] array];
  }

  return allObjects;
}

- (uint64_t)_recursiveAllValues
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  Class = object_getClass(*(self + 16));
  v3 = *(self + 16);
  if (Class == _NSNestedDictionary)
  {
    _recursiveAllValues = [(_NSNestedDictionary *)v3 _recursiveAllValues];
  }

  else
  {
    _recursiveAllValues = [v3 allValues];
  }

  allObjects = _recursiveAllValues;
  if (*(self + 8))
  {
    if (_recursiveAllValues)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:_recursiveAllValues];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v7 = v6;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = *(self + 8);
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 addObject:{objc_msgSend(*(self + 8), "objectForKey:", *(*(&v15 + 1) + 8 * i))}];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v10);
    }

    allObjects = [v7 allObjects];
  }

  if (!allObjects)
  {
    return [MEMORY[0x1E695DEC8] array];
  }

  return allObjects;
}

- (unint64_t)count
{
  bindings = self->_bindings;
  if (bindings && self->_locals)
  {
    _recursiveAllKeys = [(_NSNestedDictionary *)self _recursiveAllKeys];

    return [_recursiveAllKeys count];
  }

  else
  {
    v6 = [bindings count];
    return [self->_locals count] + v6;
  }
}

- (id)objectForKey:(id)key
{
  result = [self->_locals objectForKey:?];
  if (!result)
  {
    bindings = self->_bindings;

    return [bindings objectForKey:key];
  }

  return result;
}

- (id)keyEnumerator
{
  _recursiveAllKeys = [(_NSNestedDictionary *)self _recursiveAllKeys];

  return [_recursiveAllKeys objectEnumerator];
}

- (id)objectEnumerator
{
  _recursiveAllValues = [(_NSNestedDictionary *)self _recursiveAllValues];

  return [_recursiveAllValues objectEnumerator];
}

- (void)setObject:(id)object forKey:(id)key
{
  locals = self->_locals;
  if (!locals)
  {
    locals = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_locals = locals;
  }

  [locals setObject:object forKey:key];
}

@end
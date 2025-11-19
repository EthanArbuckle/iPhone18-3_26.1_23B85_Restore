@interface _NSNestedDictionary
- (id)keyEnumerator;
- (id)objectEnumerator;
- (id)objectForKey:(id)a3;
- (uint64_t)_recursiveAllKeys;
- (uint64_t)_recursiveAllValues;
- (unint64_t)count;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation _NSNestedDictionary

- (uint64_t)_recursiveAllKeys
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Class = object_getClass(*(a1 + 16));
  v3 = *(a1 + 16);
  if (Class == _NSNestedDictionary)
  {
    v4 = [(_NSNestedDictionary *)v3 _recursiveAllKeys];
  }

  else
  {
    v4 = [v3 allKeys];
  }

  v5 = v4;
  if (*(a1 + 8))
  {
    if (v4)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v4];
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
    v8 = *(a1 + 8);
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

    v5 = [v7 allObjects];
  }

  if (!v5)
  {
    return [MEMORY[0x1E695DEC8] array];
  }

  return v5;
}

- (uint64_t)_recursiveAllValues
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Class = object_getClass(*(a1 + 16));
  v3 = *(a1 + 16);
  if (Class == _NSNestedDictionary)
  {
    v4 = [(_NSNestedDictionary *)v3 _recursiveAllValues];
  }

  else
  {
    v4 = [v3 allValues];
  }

  v5 = v4;
  if (*(a1 + 8))
  {
    if (v4)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v4];
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
    v8 = *(a1 + 8);
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

          [v7 addObject:{objc_msgSend(*(a1 + 8), "objectForKey:", *(*(&v15 + 1) + 8 * i))}];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v10);
    }

    v5 = [v7 allObjects];
  }

  if (!v5)
  {
    return [MEMORY[0x1E695DEC8] array];
  }

  return v5;
}

- (unint64_t)count
{
  bindings = self->_bindings;
  if (bindings && self->_locals)
  {
    v4 = [(_NSNestedDictionary *)self _recursiveAllKeys];

    return [v4 count];
  }

  else
  {
    v6 = [bindings count];
    return [self->_locals count] + v6;
  }
}

- (id)objectForKey:(id)a3
{
  result = [self->_locals objectForKey:?];
  if (!result)
  {
    bindings = self->_bindings;

    return [bindings objectForKey:a3];
  }

  return result;
}

- (id)keyEnumerator
{
  v2 = [(_NSNestedDictionary *)self _recursiveAllKeys];

  return [v2 objectEnumerator];
}

- (id)objectEnumerator
{
  v2 = [(_NSNestedDictionary *)self _recursiveAllValues];

  return [v2 objectEnumerator];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  locals = self->_locals;
  if (!locals)
  {
    locals = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_locals = locals;
  }

  [locals setObject:a3 forKey:a4];
}

@end
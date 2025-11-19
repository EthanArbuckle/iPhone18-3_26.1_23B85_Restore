@interface LSBundleInfoCachedValues
- (BOOL)BOOLForKey:(id)a3;
- (LSBundleInfoCachedValues)init;
- (id)URLForKey:(id)a3;
- (id)_expensiveDictionaryRepresentation;
- (id)_initWithKeys:(id)a3 forDictionary:(id)a4;
- (id)arrayForKey:(id)a3 withValuesOfClass:(Class)a4;
- (id)dictionaryForKey:(id)a3 valuesOfClass:(Class)a4;
- (id)numberForKey:(id)a3;
- (id)objectForKey:(id)a3 checkingKeyClass:(Class)a4 checkingValueClass:(Class)a5;
- (id)objectForKey:(id)a3 ofType:(Class)a4;
- (id)objectsForKeys:(id)a3;
- (id)stringForKey:(id)a3;
@end

@implementation LSBundleInfoCachedValues

- (LSBundleInfoCachedValues)init
{
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = [(LSBundleInfoCachedValues *)self _initWithKeys:v3 forDictionary:MEMORY[0x1E695E0F8]];

  return v4;
}

- (id)_initWithKeys:(id)a3 forDictionary:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [LSBundleInfoCachedValues _initWithKeys:a2 forDictionary:self];
  }

  v15.receiver = self;
  v15.super_class = LSBundleInfoCachedValues;
  v9 = [(LSPropertyList *)&v15 _init];
  if (v9)
  {
    v10 = [v7 copy];
    v11 = v9[1];
    v9[1] = v10;

    v12 = [v8 copy];
    v13 = v9[2];
    v9[2] = v12;
  }

  return v9;
}

- (id)objectForKey:(id)a3 ofType:(Class)a4
{
  v6 = a3;
  if (![(NSSet *)self->_keys containsObject:v6])
  {
    [LSBundleInfoCachedValues objectForKey:ofType:];
  }

  v7 = [(NSDictionary *)self->_values objectForKey:v6];
  v8 = v7;
  if (a4 && v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  if (![(NSSet *)self->_keys containsObject:v4])
  {
    [LSBundleInfoCachedValues BOOLForKey:];
  }

  v5 = [(NSDictionary *)self->_values _LS_BoolForKey:v4];

  return v5;
}

- (id)numberForKey:(id)a3
{
  v4 = a3;
  if (![(NSSet *)self->_keys containsObject:v4])
  {
    [LSBundleInfoCachedValues numberForKey:];
  }

  values = self->_values;
  v6 = objc_opt_class();
  v7 = [(NSDictionary *)values objectForKey:v4];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  if (![(NSSet *)self->_keys containsObject:v4])
  {
    [LSBundleInfoCachedValues URLForKey:];
  }

  values = self->_values;
  v6 = objc_opt_class();
  v7 = [(NSDictionary *)values objectForKey:v4];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  if (![(NSSet *)self->_keys containsObject:v4])
  {
    [LSBundleInfoCachedValues stringForKey:];
  }

  values = self->_values;
  v6 = objc_opt_class();
  v7 = [(NSDictionary *)values objectForKey:v4];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

- (id)arrayForKey:(id)a3 withValuesOfClass:(Class)a4
{
  v6 = a3;
  v16 = a4;
  if (![(NSSet *)self->_keys containsObject:v6])
  {
    [LSBundleInfoCachedValues arrayForKey:withValuesOfClass:];
  }

  values = self->_values;
  v8 = objc_opt_class();
  v9 = [(NSDictionary *)values objectForKey:v6];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v10 = 0;
  }

  if (v10)
  {
    v12 = a4 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v16 count:1];
    v14 = _LSIsArrayWithValuesOfClasses(v10, v13);

    if ((v14 & 1) == 0)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)dictionaryForKey:(id)a3 valuesOfClass:(Class)a4
{
  v6 = a3;
  if (![(NSSet *)self->_keys containsObject:v6])
  {
    [LSBundleInfoCachedValues dictionaryForKey:valuesOfClass:];
  }

  values = self->_values;
  v8 = objc_opt_class();
  v9 = [(NSDictionary *)values objectForKey:v6];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v10 = 0;
  }

  if (a4 && v10 && (_LSIsDictionaryWithKeysAndValuesOfClass(v10, 0, a4) & 1) == 0)
  {

    v10 = 0;
  }

  return v10;
}

- (id)objectsForKeys:(id)a3
{
  v4 = a3;
  v5 = [[LSBundleInfoCachedValues alloc] _initWithKeys:v4 forDictionary:self->_values];

  return v5;
}

- (id)objectForKey:(id)a3 checkingKeyClass:(Class)a4 checkingValueClass:(Class)a5
{
  v8 = a3;
  if (objc_opt_class() == a4)
  {
    v9 = [(LSBundleInfoCachedValues *)self arrayForKey:v8 withValuesOfClass:a5];
  }

  else
  {
    if (objc_opt_class() == a4)
    {
      [(LSBundleInfoCachedValues *)self dictionaryForKey:v8 valuesOfClass:a5];
    }

    else
    {
      [(LSBundleInfoCachedValues *)self objectForKey:v8 ofType:a4];
    }
    v9 = ;
  }

  v10 = v9;

  return v10;
}

- (id)_expensiveDictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_keys;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_values objectForKeyedSubscript:v9, v13];
        if (v10)
        {
          [v3 setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_initWithKeys:(uint64_t)a1 forDictionary:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"LSBundleInfoCachedValues.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"keys"}];
}

- (void)objectForKey:ofType:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)BOOLForKey:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)numberForKey:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)URLForKey:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)stringForKey:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)arrayForKey:withValuesOfClass:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)dictionaryForKey:valuesOfClass:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end
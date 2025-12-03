@interface LSBundleInfoCachedValues
- (BOOL)BOOLForKey:(id)key;
- (LSBundleInfoCachedValues)init;
- (id)URLForKey:(id)key;
- (id)_expensiveDictionaryRepresentation;
- (id)_initWithKeys:(id)keys forDictionary:(id)dictionary;
- (id)arrayForKey:(id)key withValuesOfClass:(Class)class;
- (id)dictionaryForKey:(id)key valuesOfClass:(Class)class;
- (id)numberForKey:(id)key;
- (id)objectForKey:(id)key checkingKeyClass:(Class)class checkingValueClass:(Class)valueClass;
- (id)objectForKey:(id)key ofType:(Class)type;
- (id)objectsForKeys:(id)keys;
- (id)stringForKey:(id)key;
@end

@implementation LSBundleInfoCachedValues

- (LSBundleInfoCachedValues)init
{
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = [(LSBundleInfoCachedValues *)self _initWithKeys:v3 forDictionary:MEMORY[0x1E695E0F8]];

  return v4;
}

- (id)_initWithKeys:(id)keys forDictionary:(id)dictionary
{
  keysCopy = keys;
  dictionaryCopy = dictionary;
  if (!keysCopy)
  {
    [LSBundleInfoCachedValues _initWithKeys:a2 forDictionary:self];
  }

  v15.receiver = self;
  v15.super_class = LSBundleInfoCachedValues;
  _init = [(LSPropertyList *)&v15 _init];
  if (_init)
  {
    v10 = [keysCopy copy];
    v11 = _init[1];
    _init[1] = v10;

    v12 = [dictionaryCopy copy];
    v13 = _init[2];
    _init[2] = v12;
  }

  return _init;
}

- (id)objectForKey:(id)key ofType:(Class)type
{
  keyCopy = key;
  if (![(NSSet *)self->_keys containsObject:keyCopy])
  {
    [LSBundleInfoCachedValues objectForKey:ofType:];
  }

  v7 = [(NSDictionary *)self->_values objectForKey:keyCopy];
  v8 = v7;
  if (type && v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  if (![(NSSet *)self->_keys containsObject:keyCopy])
  {
    [LSBundleInfoCachedValues BOOLForKey:];
  }

  v5 = [(NSDictionary *)self->_values _LS_BoolForKey:keyCopy];

  return v5;
}

- (id)numberForKey:(id)key
{
  keyCopy = key;
  if (![(NSSet *)self->_keys containsObject:keyCopy])
  {
    [LSBundleInfoCachedValues numberForKey:];
  }

  values = self->_values;
  v6 = objc_opt_class();
  v7 = [(NSDictionary *)values objectForKey:keyCopy];
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

- (id)URLForKey:(id)key
{
  keyCopy = key;
  if (![(NSSet *)self->_keys containsObject:keyCopy])
  {
    [LSBundleInfoCachedValues URLForKey:];
  }

  values = self->_values;
  v6 = objc_opt_class();
  v7 = [(NSDictionary *)values objectForKey:keyCopy];
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

- (id)stringForKey:(id)key
{
  keyCopy = key;
  if (![(NSSet *)self->_keys containsObject:keyCopy])
  {
    [LSBundleInfoCachedValues stringForKey:];
  }

  values = self->_values;
  v6 = objc_opt_class();
  v7 = [(NSDictionary *)values objectForKey:keyCopy];
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

- (id)arrayForKey:(id)key withValuesOfClass:(Class)class
{
  keyCopy = key;
  classCopy = class;
  if (![(NSSet *)self->_keys containsObject:keyCopy])
  {
    [LSBundleInfoCachedValues arrayForKey:withValuesOfClass:];
  }

  values = self->_values;
  v8 = objc_opt_class();
  v9 = [(NSDictionary *)values objectForKey:keyCopy];
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
    v12 = class == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&classCopy count:1];
    v14 = _LSIsArrayWithValuesOfClasses(v10, v13);

    if ((v14 & 1) == 0)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)dictionaryForKey:(id)key valuesOfClass:(Class)class
{
  keyCopy = key;
  if (![(NSSet *)self->_keys containsObject:keyCopy])
  {
    [LSBundleInfoCachedValues dictionaryForKey:valuesOfClass:];
  }

  values = self->_values;
  v8 = objc_opt_class();
  v9 = [(NSDictionary *)values objectForKey:keyCopy];
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

  if (class && v10 && (_LSIsDictionaryWithKeysAndValuesOfClass(v10, 0, class) & 1) == 0)
  {

    v10 = 0;
  }

  return v10;
}

- (id)objectsForKeys:(id)keys
{
  keysCopy = keys;
  v5 = [[LSBundleInfoCachedValues alloc] _initWithKeys:keysCopy forDictionary:self->_values];

  return v5;
}

- (id)objectForKey:(id)key checkingKeyClass:(Class)class checkingValueClass:(Class)valueClass
{
  keyCopy = key;
  if (objc_opt_class() == class)
  {
    v9 = [(LSBundleInfoCachedValues *)self arrayForKey:keyCopy withValuesOfClass:valueClass];
  }

  else
  {
    if (objc_opt_class() == class)
    {
      [(LSBundleInfoCachedValues *)self dictionaryForKey:keyCopy valuesOfClass:valueClass];
    }

    else
    {
      [(LSBundleInfoCachedValues *)self objectForKey:keyCopy ofType:class];
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
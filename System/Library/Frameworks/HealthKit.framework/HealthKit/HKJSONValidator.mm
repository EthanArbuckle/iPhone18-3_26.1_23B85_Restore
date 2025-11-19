@interface HKJSONValidator
+ (BOOL)validateJSONObject:(id)a3 withSchemaNamed:(id)a4 bundle:(id)a5 error:(id *)a6;
+ (NSArray)searchPaths;
+ (void)registerSearchPath:(id)a3;
- (BOOL)_validateArray:(id)a3 schema:(id)a4 keyStack:(id)a5;
- (BOOL)_validateBoolean:(id)a3;
- (BOOL)_validateDictionary:(id)a3 schema:(id)a4 keyStack:(id)a5;
- (BOOL)_validateFingerprintSHA256:(id)a3;
- (BOOL)_validateJSONObject:(id)a3 keyStack:(id)a4;
- (BOOL)_validatePrimitive:(id)a3 schema:(id)a4 keyStack:(id)a5;
- (BOOL)_validateTimezone:(id)a3;
- (BOOL)_validateURL:(id)a3;
- (BOOL)_validateValue:(id)a3 schema:(id)a4 keyStack:(id)a5 root:(BOOL)a6;
- (BOOL)_validateValue:(id)a3 subschemaNamed:(id)a4 keyStack:(id)a5;
- (BOOL)validateJSONObject:(id)a3 error:(id *)a4;
- (HKJSONValidator)init;
- (HKJSONValidator)initWithSchema:(id)a3;
- (HKJSONValidator)initWithSchema:(id)a3 subschemaCache:(id)a4;
- (HKJSONValidator)initWithSchemaNamed:(id)a3 bundle:(id)a4;
- (id)_loadSubschemaNamed:(id)a3;
- (id)_mismatchErrorFromKeyStack:(id)a3;
@end

@implementation HKJSONValidator

+ (void)registerSearchPath:(id)a3
{
  v11 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = v11;
  v6 = _searchPaths;
  if (!_searchPaths)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v8 = _searchPaths;
    _searchPaths = v7;

    v6 = _searchPaths;
    v5 = v11;
  }

  if (([v6 containsObject:v5] & 1) == 0)
  {
    v9 = [_searchPaths arrayByAddingObject:v11];
    v10 = _searchPaths;
    _searchPaths = v9;
  }

  objc_sync_exit(v4);
}

+ (NSArray)searchPaths
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = _searchPaths;
  objc_sync_exit(v2);

  return v3;
}

- (HKJSONValidator)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKJSONValidator)initWithSchema:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKJSONValidator;
  v5 = [(HKJSONValidator *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_ivarLock._os_unfair_lock_opaque = 0;
    v7 = [v4 copyWithZone:0];
    schema = v6->_schema;
    v6->_schema = v7;
  }

  return v6;
}

- (HKJSONValidator)initWithSchema:(id)a3 subschemaCache:(id)a4
{
  v6 = a4;
  v7 = [(HKJSONValidator *)self initWithSchema:a3];
  if (v7)
  {
    v8 = [v6 mutableCopy];
    subschemaCache = v7->_subschemaCache;
    v7->_subschemaCache = v8;
  }

  return v7;
}

- (HKJSONValidator)initWithSchemaNamed:(id)a3 bundle:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 URLForResource:v6 withExtension:@"json"];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:v8];
    v10 = v9;
    if (v9)
    {
      [v9 open];
      v17 = 0;
      v11 = [MEMORY[0x1E696ACB0] JSONObjectWithStream:v10 options:0 error:&v17];
      v12 = v17;
      [v10 close];
      if (v11)
      {
        self = [(HKJSONValidator *)self initWithSchema:v11];
        v13 = self;
      }

      else
      {
        _HKInitializeLogging();
        v14 = HKLogDefault;
        if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v19 = v6;
          v20 = 2114;
          v21 = v7;
          v22 = 2114;
          v23 = v12;
          _os_log_error_impl(&dword_19197B000, v14, OS_LOG_TYPE_ERROR, "Failed to deserialize schema %{public}@ in bundle %{public}@: %{public}@", buf, 0x20u);
        }

        v13 = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        [HKJSONValidator initWithSchemaNamed:bundle:];
      }

      v13 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [HKJSONValidator initWithSchemaNamed:bundle:];
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)validateJSONObject:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(HKJSONValidator *)self _validateJSONObject:v7 keyStack:v8];

  if (!v9)
  {
    v10 = [(HKJSONValidator *)self _mismatchErrorFromKeyStack:v8];
    v11 = v10;
    if (v10)
    {
      if (a4)
      {
        v12 = v10;
        *a4 = v11;
      }

      else
      {
        _HKLogDroppedError(v10);
      }
    }
  }

  return v9;
}

- (BOOL)_validateJSONObject:(id)a3 keyStack:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKJSONValidator *)self schema];
  LOBYTE(self) = [(HKJSONValidator *)self _validateValue:v7 schema:v8 keyStack:v6 root:1];

  return self;
}

+ (BOOL)validateJSONObject:(id)a3 withSchemaNamed:(id)a4 bundle:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [[HKJSONValidator alloc] initWithSchemaNamed:v10 bundle:v11];
  v13 = v12;
  if (v12)
  {
    v14 = [(HKJSONValidator *)v12 validateJSONObject:v9 error:a6];
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a6 code:100 format:{@"Unable to create JSON validator with schema %@ in bundle %@", v10, v11}];
    v14 = 0;
  }

  return v14;
}

- (BOOL)_validateValue:(id)a3 schema:(id)a4 keyStack:(id)a5 root:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(HKJSONValidator *)self _validateArray:v10 schema:v11 keyStack:v12];
      goto LABEL_6;
    }

    if (!a6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [(HKJSONValidator *)self _validatePrimitive:v10 schema:v11 keyStack:v12];
        goto LABEL_6;
      }
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v13 = [(HKJSONValidator *)self _validateDictionary:v10 schema:v11 keyStack:v12];
LABEL_6:
  v14 = v13;
LABEL_11:

  return v14;
}

- (BOOL)_validateDictionary:(id)a3 schema:(id)a4 keyStack:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = 0;
    goto LABEL_24;
  }

  if (![v8 count])
  {
    v19 = 1;
    goto LABEL_24;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v11)
  {
    v19 = 1;
    goto LABEL_23;
  }

  v12 = v11;
  v13 = *v25;
  v22 = v8;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v24 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      v16 = [v10 objectForKeyedSubscript:v15];
      if ([v15 hasSuffix:@"?"])
      {
        v17 = [v15 substringToIndex:{objc_msgSend(v15, "length") - objc_msgSend(@"?", "length")}];
        v18 = [v7 objectForKeyedSubscript:v17];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v18 = [v7 objectForKeyedSubscript:v15];
      }

      [v9 addObject:{v15, v22}];
      if (![(HKJSONValidator *)self _validateValue:v18 schema:v16 keyStack:v9 root:0])
      {

LABEL_22:
        v19 = 0;
        v8 = v22;
        goto LABEL_23;
      }

      [v9 removeLastObject];

LABEL_15:
    }

    v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    v19 = 1;
    v8 = v22;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_23:

LABEL_24:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)_validateArray:(id)a3 schema:(id)a4 keyStack:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v9 count])
    {
      v11 = [v9 lastObject];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if (![(HKJSONValidator *)self _validateValue:*(*(&v20 + 1) + 8 * i) schema:v11 keyStack:v10 root:0, v20])
            {
              v17 = 0;
              goto LABEL_14;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v17 = 1;
LABEL_14:
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_validatePrimitive:(id)a3 schema:(id)a4 keyStack:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v10 addObject:v9];
  if (![v9 isEqualToString:@"BOOLean"])
  {
    if ([v9 isEqualToString:@"number"] || objc_msgSend(v9, "isEqualToString:", @"string"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_7;
      }
    }

    else
    {
      if ([v9 isEqualToString:@"fingerprint:sha256"])
      {
        if (![(HKJSONValidator *)self _validateFingerprintSHA256:v8])
        {
          goto LABEL_20;
        }

        goto LABEL_7;
      }

      if ([v9 isEqualToString:@"timezone"])
      {
        if (![(HKJSONValidator *)self _validateTimezone:v8])
        {
          goto LABEL_20;
        }

        goto LABEL_7;
      }

      if ([v9 isEqualToString:@"url"])
      {
        if (![(HKJSONValidator *)self _validateURL:v8])
        {
          goto LABEL_20;
        }

        goto LABEL_7;
      }

      if ([v9 hasPrefix:@"schema:"])
      {
        v12 = [v9 substringFromIndex:{objc_msgSend(@"schema:", "length")}];
        v11 = [(HKJSONValidator *)self _validateValue:v8 subschemaNamed:v12 keyStack:v10];

        if (!v11)
        {
          goto LABEL_21;
        }

        goto LABEL_7;
      }
    }

LABEL_20:
    LOBYTE(v11) = 0;
    goto LABEL_21;
  }

  if (![(HKJSONValidator *)self _validateBoolean:v8])
  {
    goto LABEL_20;
  }

LABEL_7:
  [v10 removeLastObject];
  LOBYTE(v11) = 1;
LABEL_21:

  return v11;
}

- (BOOL)_validateBoolean:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = CFGetTypeID(v3);
    v5 = v4 == CFBooleanGetTypeID();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_validateFingerprintSHA256:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E695DEF0] hk_dataWithSHA256Fingerprint:v3 error:0];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_validateTimezone:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_validateURL:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 scheme];
      if (v6)
      {
        v7 = [v5 host];
        v8 = v7 != 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_validateValue:(id)a3 subschemaNamed:(id)a4 keyStack:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HKJSONValidator *)self _loadSubschemaNamed:a4];
  if (v10)
  {
    os_unfair_lock_lock(&self->_ivarLock);
    v11 = [objc_alloc(objc_opt_class()) initWithSchema:v10 subschemaCache:self->_subschemaCache];
    os_unfair_lock_unlock(&self->_ivarLock);
    v12 = [v11 _validateJSONObject:v8 keyStack:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_loadSubschemaNamed:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  subschemaCache = self->_subschemaCache;
  if (!subschemaCache)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_subschemaCache;
    self->_subschemaCache = v6;

    subschemaCache = self->_subschemaCache;
  }

  v8 = [(NSMutableDictionary *)subschemaCache objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_ivarLock);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [v4 stringByAppendingPathExtension:@"json"];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = [objc_opt_class() searchPaths];
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v26 + 1) + 8 * i) URLByAppendingPathComponent:v10];
          v17 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:v16];
          if (v17)
          {
            v19 = v17;
            [v17 open];
            v25 = 0;
            v20 = [MEMORY[0x1E696ACB0] JSONObjectWithStream:v19 options:0 error:&v25];
            v21 = v25;
            [v19 close];
            if (!v20)
            {
              _HKInitializeLogging();
              v22 = HKLogDefault;
              if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
              {
                [(HKJSONValidator *)v22 _loadSubschemaNamed:v16, v21];
              }
            }

            os_unfair_lock_lock(&self->_ivarLock);
            [(NSMutableDictionary *)self->_subschemaCache setObject:v20 forKeyedSubscript:v4];
            os_unfair_lock_unlock(&self->_ivarLock);
            v9 = v20;

            goto LABEL_20;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    _HKInitializeLogging();
    v18 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(HKJSONValidator *)v4 _loadSubschemaNamed:v18];
    }

    v9 = 0;
LABEL_20:
  }

  v23 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_mismatchErrorFromKeyStack:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [a3 componentsJoinedByString:@"."];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Schema mismatch at %@", v3];
  v5 = *MEMORY[0x1E696A578];
  v10[0] = @"HKJSONErrorKeyPathKey";
  v10[1] = v5;
  v11[0] = v3;
  v11[1] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.healthkit.private.json" code:1 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)initWithSchemaNamed:bundle:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "Failed to open schema %{public}@ in bundle %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithSchemaNamed:bundle:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "Schema %{public}@ not found in bundle %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_loadSubschemaNamed:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 absoluteString];
  OUTLINED_FUNCTION_2_4();
  v9 = a3;
  _os_log_error_impl(&dword_19197B000, v5, OS_LOG_TYPE_ERROR, "Unable to load subschema at %{public}@: %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_loadSubschemaNamed:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Subschema not found: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
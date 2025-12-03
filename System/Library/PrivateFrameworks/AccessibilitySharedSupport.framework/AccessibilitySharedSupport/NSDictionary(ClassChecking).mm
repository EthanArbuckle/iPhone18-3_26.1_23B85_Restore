@interface NSDictionary(ClassChecking)
- (id)axssDecodeArrayOfClass:()ClassChecking forKey:;
- (id)axssDecodeObjectOfClass:()ClassChecking forKey:;
- (uint64_t)axssDecodeBoolForKey:()ClassChecking;
@end

@implementation NSDictionary(ClassChecking)

- (id)axssDecodeObjectOfClass:()ClassChecking forKey:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [self objectForKeyedSubscript:v6];
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = a3;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = objc_opt_class();
      v12 = v18;
      _os_log_error_impl(&dword_1C0E8A000, v9, OS_LOG_TYPE_ERROR, "Tried to decode object of class %@ for key %@, but was class %@ instead", &v13, 0x20u);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (uint64_t)axssDecodeBoolForKey:()ClassChecking
{
  v4 = a3;
  v5 = [self objectForKeyedSubscript:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ClassChecking) axssDecodeBoolForKey:];
    }

    bOOLValue = 0;
  }

  else
  {
    bOOLValue = [v5 BOOLValue];
  }

  return bOOLValue;
}

- (id)axssDecodeArrayOfClass:()ClassChecking forKey:
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [self objectForKeyedSubscript:v6];
  if (!v7)
  {
LABEL_12:
    v14 = v7;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = AXSSLogForCategory(1);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v19 = objc_opt_class();
              *buf = 138412802;
              v26 = a3;
              v27 = 2112;
              v28 = v6;
              v29 = 2112;
              v30 = v19;
              v20 = v19;
              _os_log_error_impl(&dword_1C0E8A000, v16, OS_LOG_TYPE_ERROR, "Tried to decode array of class %@ for key %@, but objects were of class %@ instead", buf, 0x20u);
            }

            goto LABEL_19;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_12;
  }

  v15 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [NSDictionary(ClassChecking) axssDecodeArrayOfClass:forKey:];
  }

LABEL_19:
  v14 = 0;
LABEL_20:

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)axssDecodeBoolForKey:()ClassChecking .cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  OUTLINED_FUNCTION_3_0(&dword_1C0E8A000, v2, v3, "Tried to decode NSNumber for key %@, but was class %@ instead", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)axssDecodeArrayOfClass:()ClassChecking forKey:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  OUTLINED_FUNCTION_3_0(&dword_1C0E8A000, v2, v3, "Tried to decode array for key %@, but was class %@ instead", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end
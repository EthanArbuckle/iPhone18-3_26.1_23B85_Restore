@interface FPStringFormat
+ (id)formatForPlistObject:(id)a3 localizationLookup:(id)a4;
+ (id)formatForStringFormatDict:(id)a3 localizationLookup:(id)a4;
- (NSArray)keyPaths;
- (id)evaluateWithValuesByName:(id)a3 error:(id *)a4;
@end

@implementation FPStringFormat

- (NSArray)keyPaths
{
  v2 = [(NSArray *)self->_keyPaths copy];

  return v2;
}

+ (id)formatForPlistObject:(id)a3 localizationLookup:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_opt_new();
    v9 = [v7 localizedStringForKey:v6];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    [v8 setFormat:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [a1 formatForStringFormatDict:v6 localizationLookup:v7];
    }

    else
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[FPStringFormat formatForPlistObject:localizationLookup:];
      }

      v8 = 0;
    }
  }

  return v8;
}

+ (id)formatForStringFormatDict:(id)a3 localizationLookup:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"NSStringFormat"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 localizedStringForKey:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;

      v7 = v10;
    }

    v11 = [v5 objectForKey:@"NSStringFormatValues"];
    v12 = v11;
    v13 = MEMORY[0x1E695E0F0];
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v14 count] < 0xB)
      {
        v26 = v6;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v17 = v14;
        v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v28;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v28 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v27 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v23 = fp_current_or_default_log();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  +[FPStringFormat formatForStringFormatDict:localizationLookup:];
                }

                v16 = 0;
                goto LABEL_28;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v16 = objc_opt_new();
        [v16 setFormat:v7];
        [v16 setKeyPaths:v17];
LABEL_28:
        v6 = v26;
        goto LABEL_29;
      }

      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [FPStringFormat formatForStringFormatDict:v14 localizationLookup:?];
      }
    }

    else
    {
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[FPStringFormat formatForStringFormatDict:localizationLookup:];
      }
    }

    v16 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[FPStringFormat formatForStringFormatDict:localizationLookup:];
  }

  v16 = 0;
LABEL_30:

  v24 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)evaluateWithValuesByName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(FPStringFormat *)self format];
  v8 = [(FPStringFormat *)self keyPaths];
  v9 = [v7 fp_localizedFormatWithKeys:v8 fromDictionary:v6 error:a4];

  return v9;
}

+ (void)formatForPlistObject:localizationLookup:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)formatForStringFormatDict:localizationLookup:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1_14(v1);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)formatForStringFormatDict:localizationLookup:.cold.2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1_14(v1);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)formatForStringFormatDict:localizationLookup:.cold.3()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1_14(v1);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)formatForStringFormatDict:(void *)a1 localizationLookup:.cold.4(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

@end
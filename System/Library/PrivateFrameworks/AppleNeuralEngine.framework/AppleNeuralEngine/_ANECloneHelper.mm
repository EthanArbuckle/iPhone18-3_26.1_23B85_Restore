@interface _ANECloneHelper
+ (BOOL)shouldSkipCloneFor:(id)a3 isEncryptedModel:(BOOL)a4;
@end

@implementation _ANECloneHelper

+ (BOOL)shouldSkipCloneFor:(id)a3 isEncryptedModel:(BOOL)a4
{
  v4 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 modelURL];
  v28 = 0;
  v8 = *MEMORY[0x1E695DDC0];
  v27 = 0;
  v9 = [v7 getResourceValue:&v28 forKey:v8 error:&v27];
  v10 = v28;
  v11 = v27;

  if (v9 && [v10 BOOLValue])
  {
    v12 = +[_ANELog common];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[_ANECloneHelper shouldSkipCloneFor:isEncryptedModel:];
    }

    LOBYTE(v13) = 1;
    v14 = 1;
    v15 = v11;
  }

  else
  {
    v16 = [v6 modelURL];
    v26 = 0;
    v17 = *MEMORY[0x1E695DDB0];
    v25 = 0;
    v13 = [v16 getResourceValue:&v26 forKey:v17 error:&v25];
    v12 = v26;
    v15 = v25;

    if (v13 && [v12 BOOLValue])
    {
      v18 = +[_ANELog common];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        +[_ANECloneHelper shouldSkipCloneFor:isEncryptedModel:];
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v4)
  {
    v19 = +[_ANELog common];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[_ANECloneHelper shouldSkipCloneFor:isEncryptedModel:];
    }

    v14 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v20 = +[_ANELog common];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = [v6 modelURL];
      *buf = 138412802;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      v33 = 2112;
      v34 = v15;
      _os_log_error_impl(&dword_1AD246000, v20, OS_LOG_TYPE_ERROR, "%@: modelURL=%@ getResourceValue:forKey:error: FAILED. err=%@", buf, 0x20u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (void)shouldSkipCloneFor:isEncryptedModel:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4_0() modelURL];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_10(&dword_1AD246000, v3, v4, "%@: modelURL=%@ is on read-only filesystem. Skipping clone", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)shouldSkipCloneFor:isEncryptedModel:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4_0() modelURL];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_10(&dword_1AD246000, v3, v4, "%@: modelURL=%@ is on root filesystem. Skipping clone", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)shouldSkipCloneFor:isEncryptedModel:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4_0() modelURL];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_10(&dword_1AD246000, v3, v4, "%@: modelURL=%@ is encrypted. Skipping clone", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)cloneIfWritable:isEncryptedModel:cloneDirectory:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4_0() modelURL];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_10(&dword_1AD246000, v3, v4, "%@: modelURL=%@ is writable. Attempting copyfile()", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)cloneIfWritable:isEncryptedModel:cloneDirectory:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v6 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4_0() modelURL];
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(&dword_1AD246000, v0, OS_LOG_TYPE_ERROR, "%@: modelURL=%@ does not exist", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

@end
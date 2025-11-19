@interface EXSinkLoadOperator
@end

@implementation EXSinkLoadOperator

void __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_126(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v5;
        v9 = [v8 resourceURL];
        v10 = v9;
        v5 = v8;
        if (v9)
        {
          objc_setAssociatedObject(v9, v8, v8, 0x301);
          v5 = v10;
        }
      }
    }

    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_126_cold_1(v5, a1);
    }
  }

  else
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_126_cold_2(a1);
    }

    v5 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void __88___EXSinkLoadOperator_loadPreviewImageWithCompletionHandler_expectedValueClass_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1847D1000, v0, OS_LOG_TYPE_ERROR, "Connection error: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_126_cold_1(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  OUTLINED_FUNCTION_6();
  v9 = 2114;
  v10 = v4;
  v11 = 2114;
  v12 = v5;
  v7 = *MEMORY[0x1E69E9840];
}

void __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_126_cold_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = 138543874;
  OUTLINED_FUNCTION_0_6();
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v7 = *MEMORY[0x1E69E9840];
}

@end
@interface EXSourceLoadOperator
@end

@implementation EXSourceLoadOperator

void __71___EXSourceLoadOperator_resolveWithIdentifier_className_options_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71___EXSourceLoadOperator_resolveWithIdentifier_className_options_reply___block_invoke_2;
  v7[3] = &unk_1E6E4E670;
  v8 = v3;
  v6 = *(a1 + 96);
  v11 = *(a1 + 80);
  v12 = v6;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  [v4 _loadItemOfClass:v2 forTypeIdentifier:v8 options:v5 coerceForCoding:1 completionHandler:v7];
}

void __71___EXSourceLoadOperator_resolveWithIdentifier_className_options_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (UTTypeConformsTo(v7, *MEMORY[0x1E69638B8]))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [MEMORY[0x1E695DFF8] objectWithItemProviderData:v5 typeIdentifier:*(a1 + 32) error:0];
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v8 isFileURL])
            {
              v9 = [_EXItemProviderSandboxedResource alloc];
              v26 = 0;
              v10 = *(a1 + 72);
              *buf = *(a1 + 56);
              *&buf[16] = v10;
              v11 = [(_EXItemProviderSandboxedResource *)v9 initWithContentsOfURL:v8 auditToken:buf error:&v26];
              v12 = v26;
              if (v11)
              {
                v13 = v5;
                v5 = v11;
              }

              else
              {
                v13 = _EXDefaultLog();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
                {
                  __71___EXSourceLoadOperator_resolveWithIdentifier_className_options_reply___block_invoke_2_cold_1();
                }
              }
            }
          }
        }
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 isFileURL])
  {
    v14 = [_EXItemProviderSandboxedResource alloc];
    v25 = v6;
    v15 = *(a1 + 72);
    *buf = *(a1 + 56);
    *&buf[16] = v15;
    v16 = [(_EXItemProviderSandboxedResource *)v14 initWithContentsOfURL:v5 auditToken:buf error:&v25];
    v17 = v25;

    v6 = v17;
    v5 = v16;
  }

  v18 = _EXDefaultLog();
  v19 = v18;
  if (v5)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138412802;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      *&buf[22] = 2112;
      *&buf[24] = v21;
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 32);
    v23 = *(a1 + 40);
    *buf = 138412802;
    *&buf[4] = v23;
    *&buf[12] = 2112;
    *&buf[14] = v24;
    *&buf[22] = 2112;
    *&buf[24] = v6;
  }

  (*(*(a1 + 48) + 16))();
  v22 = *MEMORY[0x1E69E9840];
}

void __65___EXSourceLoadOperator_previewImageWithClassName_options_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65___EXSourceLoadOperator_previewImageWithClassName_options_reply___block_invoke_2;
  v4[3] = &unk_1E6E4DD90;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v1 _loadPreviewImageOfClass:v3 options:v2 coerceForCoding:1 completionHandler:v4];
}

void __71___EXSourceLoadOperator_resolveWithIdentifier_className_options_reply___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(&dword_1847D1000, v0, OS_LOG_TYPE_DEBUG, "Unable to create sandbox resource with error: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end
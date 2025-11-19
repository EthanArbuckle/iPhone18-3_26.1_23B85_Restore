@interface ATXDocumentPredictionClient
+ (BOOL)_isDemoModeEnabled;
+ (id)_getDocumentsForDemoMode;
+ (void)categoriesForRequest:(id)a3 withReply:(id)a4;
- (id)zkwPredictionsForRequest:(id)a3 error:(id *)a4;
@end

@implementation ATXDocumentPredictionClient

+ (void)categoriesForRequest:(id)a3 withReply:(id)a4
{
  if (a4)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = a4;
    v6 = [v4 errorWithDomain:@"com.apple.ATXPredictionErrorDomain" code:4 userInfo:0];
    v5[2](v5, 0, v6);
  }
}

- (id)zkwPredictionsForRequest:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ATXPredictionErrorDomain" code:4 userInfo:0];
  }

  return 0;
}

+ (BOOL)_isDemoModeEnabled
{
  v2 = [MEMORY[0x1E69C5CF8] isInternalBuild];
  if (v2)
  {
    keyExistsAndHasValidFormat = 0;
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"SpotlightPlusDocumentsDemoModeEnabled", *MEMORY[0x1E698B030], &keyExistsAndHasValidFormat) != 0;
  }

  return v2;
}

+ (id)_getDocumentsForDemoMode
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [a1 _demoDocumentsPath];
  v19 = 0;
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v2 options:0 error:&v19];
  v4 = v19;
  if (v3)
  {
    v18 = v4;
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v18];
    v6 = v18;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 objectForKeyedSubscript:@"Recents"];
      v8 = [v5 objectForKeyedSubscript:@"Suggestions"];
      v9 = __atxlog_handle_document_predictor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v21 = v7;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "[Demo] Recents: %@, Suggestions: %@", buf, 0x16u);
      }

      v10 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_107];
      v11 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_30_0];
      v12 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:v11 second:v10];
    }

    else
    {
      v15 = __atxlog_handle_document_predictor();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[(ATXDocumentPredictionClient(Demo) *)v5];
      }

      v16 = objc_alloc(MEMORY[0x1E69C5D98]);
      v12 = [v16 initWithFirst:MEMORY[0x1E695E0F0] second:MEMORY[0x1E695E0F0]];
    }

    v4 = v6;
  }

  else
  {
    v13 = __atxlog_handle_document_predictor();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[(ATXDocumentPredictionClient(Demo) *)v4];
    }

    v14 = objc_alloc(MEMORY[0x1E69C5D98]);
    v12 = [v14 initWithFirst:MEMORY[0x1E695E0F0] second:MEMORY[0x1E695E0F0]];
  }

  return v12;
}

@end
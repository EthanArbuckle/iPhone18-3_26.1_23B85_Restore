@interface ATXDocumentPredictionClient
+ (BOOL)_isDemoModeEnabled;
+ (id)_getDocumentsForDemoMode;
+ (void)categoriesForRequest:(id)request withReply:(id)reply;
- (id)zkwPredictionsForRequest:(id)request error:(id *)error;
@end

@implementation ATXDocumentPredictionClient

+ (void)categoriesForRequest:(id)request withReply:(id)reply
{
  if (reply)
  {
    v4 = MEMORY[0x1E696ABC0];
    replyCopy = reply;
    v6 = [v4 errorWithDomain:@"com.apple.ATXPredictionErrorDomain" code:4 userInfo:0];
    replyCopy[2](replyCopy, 0, v6);
  }
}

- (id)zkwPredictionsForRequest:(id)request error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ATXPredictionErrorDomain" code:4 userInfo:0];
  }

  return 0;
}

+ (BOOL)_isDemoModeEnabled
{
  isInternalBuild = [MEMORY[0x1E69C5CF8] isInternalBuild];
  if (isInternalBuild)
  {
    keyExistsAndHasValidFormat = 0;
    LOBYTE(isInternalBuild) = CFPreferencesGetAppBooleanValue(@"SpotlightPlusDocumentsDemoModeEnabled", *MEMORY[0x1E698B030], &keyExistsAndHasValidFormat) != 0;
  }

  return isInternalBuild;
}

+ (id)_getDocumentsForDemoMode
{
  v24 = *MEMORY[0x1E69E9840];
  _demoDocumentsPath = [self _demoDocumentsPath];
  v19 = 0;
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:_demoDocumentsPath options:0 error:&v19];
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
@interface FPFetchAppLibraryIconsOperation
- (FPFetchAppLibraryIconsOperation)initWithAppLibraryItems:(id)a3 desiredSize:(CGSize)a4 screenScale:(double)a5;
- (FPOperationProgressDelegate)delegate;
- (void)main;
- (void)operationDidProgressWithInfo:(id)a3 error:(id)a4 completionHandler:(id)a5;
@end

@implementation FPFetchAppLibraryIconsOperation

- (FPFetchAppLibraryIconsOperation)initWithAppLibraryItems:(id)a3 desiredSize:(CGSize)a4 screenScale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = [v10 valueForKey:@"fp_appContainerBundleIdentifier"];
  v12 = [v10 valueForKey:@"itemIdentifier"];
  if ([v11 count] && (v13 = objc_msgSend(v11, "count"), v13 == objc_msgSend(v12, "count")))
  {
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11];
    if (v14 && width >= 1.0 && width == height && a5 >= 1.0)
    {
      v22.receiver = self;
      v22.super_class = FPFetchAppLibraryIconsOperation;
      v15 = [(FPOperation *)&v22 init];
      v16 = v15;
      if (v15)
      {
        objc_storeStrong(&v15->_itemIdentifierByAppBundleID, v14);
        v16[39] = width;
        v16[40] = height;
        v16[41] = a5;
      }

      self = v16;
      v17 = self;
    }

    else
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = objc_opt_class();
      v23.width = width;
      v23.height = height;
      v20 = NSStringFromSize(v23);
      [v18 handleFailureInMethod:a2 object:self file:@"FPFetchThumbnailsOperation.m" lineNumber:112 description:{@"invalid parameter to initialize %@ (appLibraryItems:%@, desiredSize:%@, screenScale:%f)", v19, v10, v20, *&a5}];

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)main
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescriptionExpandingAtMost:4];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)operationDidProgressWithInfo:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:@"appBundleID"];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [(NSDictionary *)self->_itemIdentifierByAppBundleID objectForKeyedSubscript:v11];
    if (v12)
    {
      v13 = [v8 mutableCopy];
      [v13 setObject:v12 forKeyedSubscript:@"identifier"];
      v14 = [(FPFetchAppLibraryIconsOperation *)self delegate];
      [v14 operation:self didReceiveProgressInfo:v13 error:v9];

      v10[2](v10);
    }

    else
    {
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [FPFetchAppLibraryIconsOperation operationDidProgressWithInfo:error:completionHandler:];
      }
    }
  }

  else
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPFetchAppLibraryIconsOperation operationDidProgressWithInfo:v12 error:? completionHandler:?];
    }
  }
}

- (FPOperationProgressDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)operationDidProgressWithInfo:error:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] can't map appBundleID '%@' to item identifier", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end
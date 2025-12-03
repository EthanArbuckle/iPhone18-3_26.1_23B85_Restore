@interface ATXDefaultHomeScreenItemManagerTransfer
- (ATXDefaultHomeScreenItemManagerTransfer)init;
- (ATXDefaultHomeScreenItemManagerTransfer)initWithPath:(id)path;
- (BOOL)_writeSmartStacks:(id)stacks toPath:(id)path;
- (id)_readSmartStacksWithPath:(id)path error:(id *)error;
- (id)stringForSmartStackVariant:(unint64_t)variant;
- (void)fetchImportedWidgetSmartStackWithRequest:(id)request completionHandler:(id)handler;
- (void)importWidgetSmartStackWithRequest:(id)request response:(id)response completionHandler:(id)handler;
@end

@implementation ATXDefaultHomeScreenItemManagerTransfer

- (ATXDefaultHomeScreenItemManagerTransfer)init
{
  appPredictionCacheDirectory = [MEMORY[0x1E698B010] appPredictionCacheDirectory];
  v4 = [appPredictionCacheDirectory stringByAppendingPathComponent:@"ATXDefaultHomeScreenItemManagerTransfer"];

  v5 = [(ATXDefaultHomeScreenItemManagerTransfer *)self initWithPath:v4];
  return v5;
}

- (ATXDefaultHomeScreenItemManagerTransfer)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = ATXDefaultHomeScreenItemManagerTransfer;
  v5 = [(ATXDefaultHomeScreenItemManagerTransfer *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    path = v5->_path;
    v5->_path = v6;
  }

  return v5;
}

- (void)fetchImportedWidgetSmartStackWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = -[ATXDefaultHomeScreenItemManagerTransfer stringForSmartStackVariant:](self, "stringForSmartStackVariant:", [requestCopy smartStackVariant]);
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", self->_path, v8];
  v16 = 0;
  v10 = [(ATXDefaultHomeScreenItemManagerTransfer *)self _readSmartStacksWithPath:v9 error:&v16];
  v11 = v10;
  if (!v16 && v10 && ([v10 stacks], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13))
  {
    handlerCopy[2](handlerCopy, v11, 0);
  }

  else
  {
    v14 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXDefaultHomeScreenItemManagerTransfer fetchImportedWidgetSmartStackWithRequest:v14 completionHandler:?];
    }

    v15 = +[ATXDefaultHomeScreenItemManager sharedInstance];
    [v15 fetchWidgetSmartStackWithRequest:requestCopy completionHandler:handlerCopy];
  }
}

- (void)importWidgetSmartStackWithRequest:(id)request response:(id)response completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  responseCopy = response;
  v10 = -[ATXDefaultHomeScreenItemManagerTransfer stringForSmartStackVariant:](self, "stringForSmartStackVariant:", [request smartStackVariant]);
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", self->_path, v10];
  LODWORD(self) = [(ATXDefaultHomeScreenItemManagerTransfer *)self _writeSmartStacks:responseCopy toPath:v11];

  if (self)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"Failed to import widget smart stack";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v14 = [v12 errorWithDomain:@"ATXDefaultHomeScreenItemManagerTransfer" code:0 userInfo:v13];

    (handlerCopy)[2](handlerCopy, v14);
  }
}

- (BOOL)_writeSmartStacks:(id)stacks toPath:(id)path
{
  v5 = MEMORY[0x1E698AFF0];
  pathCopy = path;
  stacksCopy = stacks;
  v8 = [v5 alloc];
  v9 = __atxlog_handle_home_screen();
  v10 = [v8 initWithCacheFilePath:pathCopy loggingHandle:v9 debugName:@"ATXDefaultHomeScreenItemManagerTransfer"];

  v15 = 0;
  v11 = [v10 storeSecureCodedObject:stacksCopy error:&v15];

  v12 = v15;
  if (v12)
  {
    v13 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXDefaultHomeScreenItemManagerTransfer _writeSmartStacks:v12 toPath:v13];
    }
  }

  return v11;
}

- (id)_readSmartStacksWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = objc_alloc(MEMORY[0x1E698AFF0]);
  v7 = __atxlog_handle_home_screen();
  v8 = [v6 initWithCacheFilePath:pathCopy loggingHandle:v7 debugName:@"ATXDefaultHomeScreenItemManagerTransfer"];

  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v11 = [v8 readSecureCodedObjectWithMaxValidAge:v10 allowableClasses:error error:-1.0];

  return v11;
}

- (id)stringForSmartStackVariant:(unint64_t)variant
{
  if (variant - 1 > 5)
  {
    return @"AppList";
  }

  else
  {
    return off_1E80C2EF0[variant - 1];
  }
}

- (void)fetchImportedWidgetSmartStackWithRequest:(os_log_t)log completionHandler:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXDefaultHomeScreenItemManagerTransfer fetchImportedWidgetSmartStackWithRequest:completionHandler:]";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: Couldn't fetch imported smart stacks. Attempting to fetch from local device", &v1, 0xCu);
}

- (void)_writeSmartStacks:(uint64_t)a1 toPath:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[ATXDefaultHomeScreenItemManagerTransfer _writeSmartStacks:toPath:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "%s: Error writing smart stack: %@", &v2, 0x16u);
}

@end
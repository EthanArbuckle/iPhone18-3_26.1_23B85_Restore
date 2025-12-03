@interface _EXExtensionContext
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (_EXExtensionContext)init;
- (id)makeXPCConnectionWithError:(id *)error;
- (void)completeRequestReturningItems:(id)items completionHandler:(id)handler;
- (void)completeRequestWithHandler:(id)handler;
- (void)invalidate;
@end

@implementation _EXExtensionContext

- (_EXExtensionContext)init
{
  v3.receiver = self;
  v3.super_class = _EXExtensionContext;
  return [(_EXExtensionContext *)&v3 init];
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 136315906;
    v9 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/EXExtensionContext.m";
    v10 = 1024;
    v11 = 24;
    v12 = 2080;
    v13 = "[_EXExtensionContext shouldAcceptXPCConnection:]";
    v14 = 2112;
    v15 = v6;
  }

  __break(1u);
  return result;
}

- (id)makeXPCConnectionWithError:(id *)error
{
  internalImplementation = [(_EXExtensionContext *)self internalImplementation];
  v5 = [internalImplementation makeXPCConnectionWithError:error];

  return v5;
}

- (void)invalidate
{
  internalImplementation = [(_EXExtensionContext *)self internalImplementation];
  [internalImplementation invalidate];
}

- (void)completeRequestWithHandler:(id)handler
{
  handlerCopy = handler;
  [(_EXExtensionContext *)self invalidate];
  handlerCopy[2](handlerCopy, 1);
}

- (void)completeRequestReturningItems:(id)items completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([items count])
  {
    v7 = _EXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [_EXExtensionContext completeRequestReturningItems:v7 completionHandler:?];
    }

    [(_EXExtensionContext *)self invalidate];
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    [(_EXExtensionContext *)self invalidate];
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)completeRequestReturningItems:(os_log_t)log completionHandler:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  v3 = "[_EXExtensionContext completeRequestReturningItems:completionHandler:]";
  _os_log_fault_impl(&dword_1847D1000, log, OS_LOG_TYPE_FAULT, "'%{public}s' called with items. This is not supported!", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end
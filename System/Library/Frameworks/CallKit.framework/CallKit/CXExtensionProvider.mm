@interface CXExtensionProvider
- (void)beginRequestWithExtensionContext:(id)context;
- (void)invalidate;
@end

@implementation CXExtensionProvider

- (void)invalidate
{
  abstractProvider = [(CXProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CXExtensionProvider_invalidate__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __33__CXExtensionProvider_invalidate__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "self: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) extensionContext];
  [v4 completeRequestReturningItems:0 completionHandler:0];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  abstractProvider = [(CXProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CXExtensionProvider_beginRequestWithExtensionContext___block_invoke;
  v8[3] = &unk_1E7C06BE0;
  v9 = contextCopy;
  selfCopy = self;
  v7 = contextCopy;
  dispatch_sync(queue, v8);
}

void __56__CXExtensionProvider_beginRequestWithExtensionContext___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Beginning request with extension context %@ for extension provider %@", buf, 0x16u);
  }

  [*(a1 + 40) setExtensionContext:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = [v5 extensionContext];
  [v6 setDelegate:v5];

  objc_initWeak(buf, *(a1 + 40));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__CXExtensionProvider_beginRequestWithExtensionContext___block_invoke_1;
  v10[3] = &unk_1E7C06E50;
  objc_copyWeak(&v11, buf);
  v7 = [*(a1 + 40) extensionContext];
  [v7 _setRequestCleanUpBlock:v10];

  [*(a1 + 40) registerCurrentConfiguration];
  v8 = [*(a1 + 40) abstractProvider];
  [v8 sendDidBeginForProvider:*(a1 + 40)];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v9 = *MEMORY[0x1E69E9840];
}

void __56__CXExtensionProvider_beginRequestWithExtensionContext___block_invoke_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained abstractProvider];
  [v1 handleConnectionInterruptionForProvider:WeakRetained];
}

@end
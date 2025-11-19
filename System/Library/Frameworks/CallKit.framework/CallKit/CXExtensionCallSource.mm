@interface CXExtensionCallSource
- (CXExtensionCallSource)initWithExtension:(id)a3;
- (CXExtensionCallSource)initWithExtensionIdentifier:(id)a3;
- (id)bundle;
- (int)processIdentifier;
- (void)beginWithCompletionHandler:(id)a3;
@end

@implementation CXExtensionCallSource

- (CXExtensionCallSource)initWithExtension:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v26.receiver = self;
  v26.super_class = CXExtensionCallSource;
  v7 = [(CXCallSource *)&v26 initWithIdentifier:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_extension, a3);
    objc_initWeak(&location, v7);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __43__CXExtensionCallSource_initWithExtension___block_invoke;
    v22[3] = &unk_1E7C06E78;
    v23 = v7;
    objc_copyWeak(&v24, &location);
    v8 = MEMORY[0x1B8C78C60](v22);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __43__CXExtensionCallSource_initWithExtension___block_invoke_3;
    v19[3] = &unk_1E7C06EA0;
    objc_copyWeak(&v21, &location);
    v9 = v8;
    v20 = v9;
    [(NSExtension *)v7->_extension setRequestCompletionBlock:v19];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __43__CXExtensionCallSource_initWithExtension___block_invoke_2;
    v16[3] = &unk_1E7C06EC8;
    objc_copyWeak(&v18, &location);
    v10 = v9;
    v17 = v10;
    [(NSExtension *)v7->_extension setRequestCancellationBlock:v16];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__CXExtensionCallSource_initWithExtension___block_invoke_4;
    v13[3] = &unk_1E7C06EF0;
    objc_copyWeak(&v15, &location);
    v11 = v10;
    v14 = v11;
    [(NSExtension *)v7->_extension setRequestInterruptionBlock:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&location);
  }

  return v7;
}

void __43__CXExtensionCallSource_initWithExtension___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CXExtensionCallSource_initWithExtension___block_invoke_2;
  block[3] = &unk_1E7C06E50;
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __43__CXExtensionCallSource_initWithExtension___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExtensionContext:0];
  [WeakRetained setConnected:0];
}

uint64_t __43__CXExtensionCallSource_initWithExtension___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Request completed for extension call source %@", &v6, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __43__CXExtensionCallSource_initWithExtension___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = 138412546;
    v9 = WeakRetained;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Request canceled for extension call source %@: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __43__CXExtensionCallSource_initWithExtension___block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "[WARN] Request interrupted for extension call source %@", &v6, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (CXExtensionCallSource)initWithExtensionIdentifier:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v4 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [(CXExtensionCallSource *)self initWithExtension:v5];
  }

  else
  {
    v8 = CXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CXExtensionCallSource *)v4 initWithExtensionIdentifier:v6, v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)bundle
{
  v2 = [(CXExtensionCallSource *)self extension];
  v3 = [v2 _extensionBundle];

  return v3;
}

- (int)processIdentifier
{
  v3 = [(CXExtensionCallSource *)self extensionContext];
  v4 = [v3 _auxiliaryConnection];
  if (v4)
  {
    v5 = [(CXExtensionCallSource *)self extensionContext];
    v6 = [v5 _auxiliaryConnection];
    v7 = [v6 processIdentifier];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CXExtensionCallSource;
    v7 = [(CXCallSource *)&v9 processIdentifier];
  }

  return v7;
}

- (void)beginWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CXCallSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Asked to begin extension call source %@", buf, 0xCu);
  }

  if ([*(a1 + 32) isConnected])
  {
    v4 = CXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Extension call source is already connected", buf, 2u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  else
  {
    v6 = [*(a1 + 32) extension];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke_8;
    v9[3] = &unk_1E7C06F18;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v7;
    [v6 beginExtensionRequestWithInputItems:0 completion:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E7C06DE0;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setRequestIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) extension];
  v3 = [v2 _extensionContextForUUID:*(a1 + 40)];
  [*(a1 + 32) setExtensionContext:v3];

  v4 = *(a1 + 32);
  v5 = [v4 extensionContext];
  [v5 setDelegate:v4];

  v6 = [*(a1 + 32) extensionContext];
  v7 = [v6 _auxiliaryConnection];
  v8 = [v7 exportedInterface];
  [v8 cx_setAllowedClassesForProviderHostProtocol];

  v9 = *(a1 + 48);
  v10 = CXDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke_2_cold_1((a1 + 48), v11);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Extension call source began successfully with request identifier %@", &v15, 0xCu);
    }

    [*(a1 + 32) setConnected:1];
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 48));
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)initWithExtensionIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B47F3000, log, OS_LOG_TYPE_ERROR, "Could not create extension with identifier %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Extension call source failed to begin: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end
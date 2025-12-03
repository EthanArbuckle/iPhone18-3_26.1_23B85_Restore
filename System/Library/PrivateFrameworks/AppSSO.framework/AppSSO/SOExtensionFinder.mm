@interface SOExtensionFinder
- (SOExtensionFinder)init;
- (id)_soExtensionsForExtensions:(id)extensions;
- (void)beginMatchingExtensionsWithCompletion:(id)completion;
- (void)endMatchingExtensions;
- (void)findExtensionWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)findExtensionsWithCompletion:(id)completion;
@end

@implementation SOExtensionFinder

- (SOExtensionFinder)init
{
  v6.receiver = self;
  v6.super_class = SOExtensionFinder;
  v2 = [(SOExtensionFinder *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AppSSO.extension-finder-queue", 0);
    extensionFinderQueue = v2->_extensionFinderQueue;
    v2->_extensionFinderQueue = v3;
  }

  return v2;
}

- (void)findExtensionsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtensionFinder();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtensionFinder findExtensionsWithCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  extensionFinderQueue = self->_extensionFinderQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__SOExtensionFinder_findExtensionsWithCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_sync(extensionFinderQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __50__SOExtensionFinder_findExtensionsWithCompletion___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABD0];
  v16 = *MEMORY[0x1E696A2F8];
  v17[0] = @"com.apple.AppSSO.idp-extension";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = 0;
  v4 = [v2 extensionsWithMatchingAttributes:v3 error:&v11];
  v5 = v11;

  v6 = SO_LOG_SOExtensionFinder();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __50__SOExtensionFinder_findExtensionsWithCompletion___block_invoke_cold_1();
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) _soExtensionsForExtensions:v4];
  }

  v8 = SO_LOG_SOExtensionFinder();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "findExtensionsWithCompletion: %{public}@, error: %{public}@", buf, 0x16u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)findExtensionWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SO_LOG_SOExtensionFinder();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[SOExtensionFinder findExtensionWithBundleIdentifier:completion:]";
    v19 = 2114;
    v20 = identifierCopy;
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
  }

  extensionFinderQueue = self->_extensionFinderQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SOExtensionFinder_findExtensionWithBundleIdentifier_completion___block_invoke;
  block[3] = &unk_1E813E478;
  v14 = identifierCopy;
  selfCopy2 = self;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_sync(extensionFinderQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __66__SOExtensionFinder_findExtensionWithBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABD0];
  v3 = *MEMORY[0x1E696A2E0];
  v24[0] = *MEMORY[0x1E696A2F8];
  v24[1] = v3;
  v4 = *(a1 + 32);
  v25[0] = @"com.apple.AppSSO.idp-extension";
  v25[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v19 = 0;
  v6 = [v2 extensionsWithMatchingAttributes:v5 error:&v19];
  v7 = v19;

  v8 = SO_LOG_SOExtensionFinder();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __50__SOExtensionFinder_findExtensionsWithCompletion___block_invoke_cold_1();
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) _soExtensionsForExtensions:v6];
  }

  if ([v9 count] == 1)
  {
    v10 = [v9 objectAtIndexedSubscript:0];
  }

  else
  {
    v11 = [v9 count];
    SOErrorHelperClass_5 = getSOErrorHelperClass_5();
    v13 = *(a1 + 32);
    if (v11)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"More than one IdP extension with bundle ID: %@", *(a1 + 32)];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"No valid IdP extension with bundle ID: %@", *(a1 + 32)];
    }
    v14 = ;
    v15 = [SOErrorHelperClass_5 internalErrorWithMessage:v14];

    v10 = 0;
    v7 = v15;
  }

  v16 = SO_LOG_SOExtensionFinder();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = v10;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_1C1317000, v16, OS_LOG_TYPE_DEFAULT, "findExtensionWithBundleIdentifier: %{public}@, error: %{public}@", buf, 0x16u);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, v10, v7);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)beginMatchingExtensionsWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtensionFinder();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[SOExtensionFinder beginMatchingExtensionsWithCompletion:]";
    v27 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (self->_matchingContext)
  {
    v6 = SO_LOG_SOExtensionFinder();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SOExtensionFinder *)v6 beginMatchingExtensionsWithCompletion:v7, v8, v9, v10, v11, v12, v13];
    }

    if (completionCopy)
    {
      v14 = [getSOErrorHelperClass_5() silentInternalErrorWithMessage:{@"Extension matching is already in progress, ignoring request"}];
      completionCopy[2](completionCopy, 0, v14);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v15 = MEMORY[0x1E696ABD0];
    v23 = *MEMORY[0x1E696A2F8];
    v24 = @"com.apple.AppSSO.idp-extension";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke;
    v20[3] = &unk_1E813EEB8;
    objc_copyWeak(&v22, buf);
    v21 = completionCopy;
    v17 = [v15 beginMatchingExtensionsWithAttributes:v16 completion:v20];
    matchingContext = self->_matchingContext;
    self->_matchingContext = v17;

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOExtensionFinder();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke_17;
    v21[3] = &unk_1E813E518;
    v22 = v6;
    v23 = v9;
    v24 = v5;
    v25 = *(a1 + 32);
    dispatch_async(v10, v21);

    v11 = v22;
LABEL_9:

    goto LABEL_10;
  }

  v12 = SO_LOG_SOExtensionFinder();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    v11 = [getSOErrorHelperClass_5() silentInternalErrorWithMessage:{@"Extension matching deallocated, request failed"}];
    (*(v20 + 16))(v20, 0, v11);
    goto LABEL_9;
  }

LABEL_10:
}

void __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke_17(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) _soExtensionsForExtensions:*(a1 + 48)];
  }

  v3 = SO_LOG_SOExtensionFinder();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 138543618;
    v8 = v2;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "beginMatchingExtensionsWithCompletion: %{public}@, error: %{public}@", &v7, 0x16u);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v2, *(a1 + 32));
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)endMatchingExtensions
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionFinder();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SOExtensionFinder endMatchingExtensions]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v13, 0x16u);
  }

  if (self->_matchingContext)
  {
    [MEMORY[0x1E696ABD0] endMatchingExtensions:?];
    matchingContext = self->_matchingContext;
    self->_matchingContext = 0;
  }

  else
  {
    matchingContext = SO_LOG_SOExtensionFinder();
    if (os_log_type_enabled(matchingContext, OS_LOG_TYPE_ERROR))
    {
      [(SOExtensionFinder *)matchingContext endMatchingExtensions:v5];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_soExtensionsForExtensions:(id)extensions
{
  v20 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = extensionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [SOExtension alloc];
        v12 = [(SOExtension *)v11 initWithExtension:v10, v15];
        [array addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return array;
}

void __50__SOExtensionFinder_findExtensionsWithCompletion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_10(&dword_1C1317000, v0, v1, "extensionsWithMatchingAttributes: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_10(&dword_1C1317000, v0, v1, "beginMatchingExtensionsWithAttributes: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end
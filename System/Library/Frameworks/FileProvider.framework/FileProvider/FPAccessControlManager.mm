@interface FPAccessControlManager
- (void)_killBundle:(id)bundle completionHandler:(id)handler;
- (void)bundleIdentifiersWithAccessToAnyItemCompletionHandler:(id)handler;
- (void)collectionForItemsAccessibleByBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)revokeAccessToAllBundlesCompletionHandler:(id)handler;
- (void)revokeAccessToAllItemsForBundle:(id)bundle completionHandler:(id)handler;
@end

@implementation FPAccessControlManager

- (void)collectionForItemsAccessibleByBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)bundleIdentifiersWithAccessToAnyItemCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[FPDaemonConnection sharedConnectionProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__FPAccessControlManager_bundleIdentifiersWithAccessToAnyItemCompletionHandler___block_invoke;
  v6[3] = &unk_1E793D118;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [v4 fetchAccessServicer:v6];
}

void __80__FPAccessControlManager_bundleIdentifiersWithAccessToAnyItemCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 32) + 16);

    v7();
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__FPAccessControlManager_bundleIdentifiersWithAccessToAnyItemCompletionHandler___block_invoke_2;
    v8[3] = &unk_1E7939100;
    v9 = *(a1 + 32);
    v5 = [a2 remoteObjectProxyWithErrorHandler:v8];
    [v5 bundleIdentifiersWithAccessToAnyItemCompletionHandler:*(a1 + 32)];
  }
}

- (void)_killBundle:(id)bundle completionHandler:(id)handler
{
  bundleCopy = bundle;
  handlerCopy = handler;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v9 = getFBSSystemServiceClass_softClass;
  v22 = getFBSSystemServiceClass_softClass;
  if (!getFBSSystemServiceClass_softClass)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getFBSSystemServiceClass_block_invoke;
    v18[3] = &unk_1E793A2E8;
    v18[4] = &v19;
    __getFBSSystemServiceClass_block_invoke(v18);
    v9 = v20[3];
  }

  v10 = v9;
  _Block_object_dispose(&v19, 8);
  sharedService = [v9 sharedService];
  if (!sharedService)
  {
    [FPAccessControlManager _killBundle:a2 completionHandler:self];
  }

  bundleCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Terminating %@ to revoke access to files.", bundleCopy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__FPAccessControlManager__killBundle_completionHandler___block_invoke;
  v15[3] = &unk_1E7939328;
  v16 = bundleCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = bundleCopy;
  [sharedService terminateApplication:v14 forReason:3 andReport:0 withDescription:bundleCopy completion:v15];
}

void __56__FPAccessControlManager__killBundle_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__FPAccessControlManager__killBundle_completionHandler___block_invoke_cold_1(v4, a1, v5);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

- (void)revokeAccessToAllItemsForBundle:(id)bundle completionHandler:(id)handler
{
  bundleCopy = bundle;
  handlerCopy = handler;
  v8 = +[FPDaemonConnection sharedConnectionProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__FPAccessControlManager_revokeAccessToAllItemsForBundle_completionHandler___block_invoke;
  v11[3] = &unk_1E793D168;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = bundleCopy;
  v9 = bundleCopy;
  v10 = handlerCopy;
  [v8 fetchAccessServicer:v11];
}

void __76__FPAccessControlManager_revokeAccessToAllItemsForBundle_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v8 = *(a1 + 48);
    v9 = *(*(a1 + 48) + 16);

    v9();
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__FPAccessControlManager_revokeAccessToAllItemsForBundle_completionHandler___block_invoke_2;
    v14[3] = &unk_1E7939100;
    v15 = *(a1 + 48);
    v5 = [a2 remoteObjectProxyWithErrorHandler:v14];
    v6 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__FPAccessControlManager_revokeAccessToAllItemsForBundle_completionHandler___block_invoke_3;
    v11[3] = &unk_1E793D140;
    v13 = *(a1 + 48);
    v10 = *(a1 + 32);
    v7 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    [v5 revokeAccessToAllItemsForBundle:v6 completionHandler:v11];
  }
}

uint64_t __76__FPAccessControlManager_revokeAccessToAllItemsForBundle_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) _killBundle:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

- (void)revokeAccessToAllBundlesCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v5);
}

- (void)_killBundle:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPAccessControlManager.m" lineNumber:50 description:@"-[FBSSystemService sharedService] returned nil"];
}

void __56__FPAccessControlManager__killBundle_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] Encountered an error [%{public}@] while terminating application with bundle ID [%{public}@] using FrontBoardServices", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end
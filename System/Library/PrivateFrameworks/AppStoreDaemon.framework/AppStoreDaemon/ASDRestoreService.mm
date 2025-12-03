@interface ASDRestoreService
+ (ASDRestoreService)sharedInstance;
- (ASDRestoreService)init;
- (void)clearFollowupsForAccountID:(id)d withCompletionHandler:(id)handler;
- (void)estimateTotalDownloadSizeWithCompletionHandler:(id)handler;
- (void)prioritizeBundleIDs:(id)ds userInitiated:(BOOL)initiated withCompletionHandler:(id)handler;
@end

@implementation ASDRestoreService

+ (ASDRestoreService)sharedInstance
{
  if (_MergedGlobals_56 != -1)
  {
    dispatch_once(&_MergedGlobals_56, &__block_literal_global_31);
  }

  v3 = qword_1ED90D680;

  return v3;
}

uint64_t __35__ASDRestoreService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ASDRestoreService);
  v1 = qword_1ED90D680;
  qword_1ED90D680 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (ASDRestoreService)init
{
  v6.receiver = self;
  v6.super_class = ASDRestoreService;
  v2 = [(ASDRestoreService *)&v6 init];
  if (v2)
  {
    v3 = +[ASDServiceBroker defaultBroker];
    serviceBroker = v2->_serviceBroker;
    v2->_serviceBroker = v3;
  }

  return v2;
}

- (void)clearFollowupsForAccountID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  serviceBroker = self->_serviceBroker;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__ASDRestoreService_clearFollowupsForAccountID_withCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CDDCD0;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = dCopy;
  v10 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getRestoreServiceWithCompletionHandler:v11];
}

void __70__ASDRestoreService_clearFollowupsForAccountID_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__ASDRestoreService_clearFollowupsForAccountID_withCompletionHandler___block_invoke_2;
    v12[3] = &unk_1E7CDB730;
    v13 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__ASDRestoreService_clearFollowupsForAccountID_withCompletionHandler___block_invoke_4;
    v10[3] = &unk_1E7CDB758;
    v7 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v6 clearFollowupsForAccountID:v7 replyHandler:v10];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[RestoreService] Prioritize failed, service unavailable: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __70__ASDRestoreService_clearFollowupsForAccountID_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[RestoreService] Clear followups failed, request failed: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __70__ASDRestoreService_clearFollowupsForAccountID_withCompletionHandler___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = ASDLogHandleForCategory(13);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[RestoreService] Clear followups, error: %{public}@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 67109120;
    LODWORD(v10) = a2;
    _os_log_impl(&dword_1B8220000, v7, OS_LOG_TYPE_INFO, "[RestoreService] Clear followups returned: %d", &v9, 8u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)estimateTotalDownloadSizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceBroker = self->_serviceBroker;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__ASDRestoreService_estimateTotalDownloadSizeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDDD20;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getRestoreServiceWithCompletionHandler:v7];
}

void __68__ASDRestoreService_estimateTotalDownloadSizeWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__ASDRestoreService_estimateTotalDownloadSizeWithCompletionHandler___block_invoke_7;
    v11[3] = &unk_1E7CDB730;
    v12 = *(a1 + 32);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__ASDRestoreService_estimateTotalDownloadSizeWithCompletionHandler___block_invoke_8;
    v9[3] = &unk_1E7CDDCF8;
    v10 = *(a1 + 32);
    [v6 estimateTotalDownloadSizeWithReplyHandler:v9];
  }

  else
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[RestoreService] Download size estimate failed, service unavailable: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __68__ASDRestoreService_estimateTotalDownloadSizeWithCompletionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[RestoreService] Download size estimate failed, request failed: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __68__ASDRestoreService_estimateTotalDownloadSizeWithCompletionHandler___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = ASDLogHandleForCategory(13);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[RestoreService] Download size estimate failed, error: %{public}@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = a2;
    _os_log_impl(&dword_1B8220000, v7, OS_LOG_TYPE_INFO, "[RestoreService] Download size estimate returned: %{iec-bytes}lu", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)prioritizeBundleIDs:(id)ds userInitiated:(BOOL)initiated withCompletionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  serviceBroker = self->_serviceBroker;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__ASDRestoreService_prioritizeBundleIDs_userInitiated_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E7CDDD48;
  v14 = dsCopy;
  v15 = handlerCopy;
  initiatedCopy = initiated;
  v11 = dsCopy;
  v12 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getRestoreServiceWithCompletionHandler:v13];
}

void __77__ASDRestoreService_prioritizeBundleIDs_userInitiated_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__ASDRestoreService_prioritizeBundleIDs_userInitiated_withCompletionHandler___block_invoke_10;
    v13[3] = &unk_1E7CDB730;
    v14 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v13];
    v7 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__ASDRestoreService_prioritizeBundleIDs_userInitiated_withCompletionHandler___block_invoke_11;
    v11[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v6 prioritizeBundleIDs:v8 userInitiated:v7 replyHandler:v11];
  }

  else
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v5;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[RestoreService] Prioritize failed, service unavailable: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __77__ASDRestoreService_prioritizeBundleIDs_userInitiated_withCompletionHandler___block_invoke_10(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[RestoreService] Prioritize failed, request failed: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __77__ASDRestoreService_prioritizeBundleIDs_userInitiated_withCompletionHandler___block_invoke_11(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = ASDLogHandleForCategory(13);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[RestoreService] Prioritize, error: %{public}@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 67109120;
    LODWORD(v10) = a2;
    _os_log_impl(&dword_1B8220000, v7, OS_LOG_TYPE_INFO, "[RestoreService] Prioritize returned: %d", &v9, 8u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

@end
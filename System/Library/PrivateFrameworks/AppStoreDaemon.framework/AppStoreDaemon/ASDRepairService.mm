@interface ASDRepairService
+ (id)defaultService;
- (BOOL)isCoastGuardUnrepairableAppWithItemID:(unint64_t)d externalVersionID:(unint64_t)iD;
- (id)_asynchronousRemoteObjectProxyWithErrorHandler:(uint64_t)handler;
- (void)refreshKeybagWithReplyHandler:(id)handler;
- (void)repairAppWithOptions:(id)options replyHandler:(id)handler;
@end

@implementation ASDRepairService

+ (id)defaultService
{
  if (qword_1ED90D660 != -1)
  {
    dispatch_once(&qword_1ED90D660, &__block_literal_global_29);
  }

  v3 = _MergedGlobals_54;

  return v3;
}

void __34__ASDRepairService_defaultService__block_invoke()
{
  v0 = [ASDRepairService alloc];
  v1 = +[ASDServiceBroker defaultBroker];
  v4 = v1;
  if (v0)
  {
    v5.receiver = v0;
    v5.super_class = ASDRepairService;
    v2 = objc_msgSendSuper2(&v5, sel_init);
    v0 = v2;
    if (v2)
    {
      objc_storeStrong(&v2->_serviceBroker, v1);
    }
  }

  v3 = _MergedGlobals_54;
  _MergedGlobals_54 = v0;
}

- (void)refreshKeybagWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16;
  v13 = __Block_byref_object_dispose__16;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__ASDRepairService_refreshKeybagWithReplyHandler___block_invoke;
  v8[3] = &unk_1E7CDBB80;
  v8[4] = &v9;
  v5 = [(ASDRepairService *)self _asynchronousRemoteObjectProxyWithErrorHandler:v8];
  if (v10[5])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__ASDRepairService_refreshKeybagWithReplyHandler___block_invoke_2;
    v6[3] = &unk_1E7CDB758;
    v7 = handlerCopy;
    [v5 refreshKeybagWithReplyHandler:v6];
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __50__ASDRepairService_refreshKeybagWithReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (v7)
  {
    v9 = v4;
    objc_storeStrong(v6, a2);
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v6, v4);
}

- (id)_asynchronousRemoteObjectProxyWithErrorHandler:(uint64_t)handler
{
  v3 = a2;
  if (handler)
  {
    v4 = *(handler + 8);
    v9 = 0;
    v5 = [v4 getRepairServiceWithError:&v9];
    v6 = v9;
    if (v5)
    {
      v7 = [v5 remoteObjectProxyWithErrorHandler:v3];
    }

    else
    {
      v3[2](v3, v6);
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __50__ASDRepairService_refreshKeybagWithReplyHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)repairAppWithOptions:(id)options replyHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (self)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__ASDRepairService__callRepairServiceWithOptions_replyHandler___block_invoke;
    v14[3] = &unk_1E7CDB730;
    v9 = handlerCopy;
    v15 = v9;
    v10 = [(ASDRepairService *)self _asynchronousRemoteObjectProxyWithErrorHandler:v14];
    if (v10)
    {
      v11 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        copyUserInfoDictionary = [(ASDRepairOptions *)optionsCopy copyUserInfoDictionary];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = copyUserInfoDictionary;
        _os_log_impl(&dword_1B8220000, v11, OS_LOG_TYPE_DEFAULT, "(RepairService) Calling repair service with options: %@", &buf, 0xCu);
      }

      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v17 = __63__ASDRepairService__callRepairServiceWithOptions_replyHandler___block_invoke_12;
      v18 = &unk_1E7CDDC10;
      v19 = v9;
      [v10 repairAppWithOptions:optionsCopy replyHandler:&buf];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)isCoastGuardUnrepairableAppWithItemID:(unint64_t)d externalVersionID:(unint64_t)iD
{
  v6 = objc_alloc_init(ASDCoastGuard);
  LOBYTE(iD) = [(ASDCoastGuard *)v6 isUnrepairableAppWithItemID:d externalVersionID:iD];

  return iD;
}

void __63__ASDRepairService__callRepairServiceWithOptions_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "(RepairService) Repair service call failed with error: %{public}@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __63__ASDRepairService__callRepairServiceWithOptions_replyHandler___block_invoke_12(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = ASDLogHandleForCategory(13);
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1B8220000, v10, OS_LOG_TYPE_DEFAULT, "(RepairService) Repair service call completed sucessfully", &v13, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13 = 138543362;
    v14 = v8;
    _os_log_error_impl(&dword_1B8220000, v10, OS_LOG_TYPE_ERROR, "(RepairService) Repair service call returned error: %{public}@", &v13, 0xCu);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v7, v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end
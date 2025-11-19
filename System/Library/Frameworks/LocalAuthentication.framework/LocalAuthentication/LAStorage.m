@interface LAStorage
+ (id)secureDomainStorage;
- (BOOL)BOOLForKey:(int64_t)a3 error:(id *)a4;
- (BOOL)setData:(id)a3 forKey:(int64_t)a4 error:(id *)a5;
- (BOOL)setDictionary:(id)a3 forKey:(int64_t)a4 error:(id *)a5;
- (BOOL)setObject:(id)a3 forKey:(int64_t)a4 withOptions:(id)a5 error:(id *)a6;
- (LAStorage)initWithDomain:(int64_t)a3 authenticationContext:(id)a4;
- (__SecAccessControl)accessControlForKey:(int64_t)a3 error:(id *)a4;
- (id)dataForKey:(int64_t)a3 error:(id *)a4;
- (id)description;
- (id)dictionaryForKey:(int64_t)a3 error:(id *)a4;
- (id)exchangeData:(id)a3 forKey:(int64_t)a4 error:(id *)a5;
- (id)numberForKey:(int64_t)a3 error:(id *)a4;
- (void)BOOLForKey:(int64_t)a3 completionHandler:(id)a4;
- (void)_bootstrapServiceType:(id)a3 completionHandler:(id)a4;
- (void)_bootstrapServiceWithAuthenticationPolicy:(int64_t)a3 proxyBlock:(id)a4 completionHandler:(id)a5;
- (void)_callProxyBlock:(id)a3 authenticationPolicy:(int64_t)a4 completionHandler:(id)a5;
- (void)_class:(Class)a3 forKey:(int64_t)a4 completionHandler:(id)a5;
- (void)_connectToEndpoint:(id)a3;
- (void)_resetConnection;
- (void)dataForKey:(int64_t)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)dictionaryForKey:(int64_t)a3 completionHandler:(id)a4;
- (void)exchangeData:(id)a3 forKey:(int64_t)a4 completionHandler:(id)a5;
- (void)numberForKey:(int64_t)a3 completionHandler:(id)a4;
- (void)objectForKey:(int64_t)a3 completionHandler:(id)a4;
- (void)processError:(id)a3 completionHandler:(id)a4;
- (void)removeObjectForKey:(int64_t)a3 completionHandler:(id)a4;
- (void)setObject:(id)a3 forKey:(int64_t)a4 withOptions:(id)a5 completionHandler:(id)a6;
@end

@implementation LAStorage

+ (id)secureDomainStorage
{
  v2 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];

  return v2;
}

- (LAStorage)initWithDomain:(int64_t)a3 authenticationContext:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = LAStorage;
  v8 = [(LAStorage *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_domain = a3;
    objc_storeStrong(&v8->_authenticationContext, a4);
    v9->_instanceId = +[LAStorage newInstanceId];
    v10 = LA_LOG_3();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A784E000, v10, OS_LOG_TYPE_DEFAULT, "Created LAStorage", v12, 2u);
    }
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(LAStorage *)self connection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = LAStorage;
  [(LAStorage *)&v4 dealloc];
}

- (id)description
{
  v3 = [(LAStorage *)self authenticationContext];

  v4 = MEMORY[0x1E696AEC0];
  v5 = [(LAStorage *)self instanceId];
  v6 = v5;
  if (v3)
  {
    v7 = [(LAStorage *)self authenticationContext];
    v8 = [v4 stringWithFormat:@"LAStorage[%u] bound with %@", v6, v7];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"LAStorage[%u]", v5];
  }

  return v8;
}

- (void)setObject:(id)a3 forKey:(int64_t)a4 withOptions:(id)a5 completionHandler:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = LA_LOG_3();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v37 = a4;
    _os_log_impl(&dword_1A784E000, v13, OS_LOG_TYPE_INFO, "setObject forKey:%d", buf, 8u);
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __60__LAStorage_setObject_forKey_withOptions_completionHandler___block_invoke;
  v33[3] = &unk_1E77CC100;
  v35 = a4;
  v14 = v12;
  v34 = v14;
  v15 = MEMORY[0x1AC55C260](v33);
  v16 = [MEMORY[0x1E69AD2B0] classForKey:a4];
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v10;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        buf[0] = [v10 BOOLValue];
        v17 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:1];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v20 = [MEMORY[0x1E696EE88] storageErrorWithCode:1 message:@"Expected NSData or NSNumber."];
          (v15)[2](v15, 0, v20);
          goto LABEL_12;
        }

        v17 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
      }
    }

    v23 = v17;
    v24 = MEMORY[0x1E696EE88];
    v25 = [MEMORY[0x1E69AD298] checkStorageOptions:v11];
    [v24 raiseExceptionOnError:v25];

    v26 = [MEMORY[0x1E69AD2B0] policyForKey:a4 operation:2 value:v10];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __60__LAStorage_setObject_forKey_withOptions_completionHandler___block_invoke_21;
    v28[3] = &unk_1E77CC128;
    v29 = v23;
    v30 = self;
    v32 = a4;
    v31 = v11;
    v20 = v23;
    [(LAStorage *)self _bootstrapServiceWithAuthenticationPolicy:v26 proxyBlock:v28 completionHandler:v15];
  }

  else
  {
    v18 = MEMORY[0x1E696EE88];
    v19 = MEMORY[0x1E696AEC0];
    v20 = NSStringFromClass(v16);
    v21 = [v19 stringWithFormat:@"%@ value expected", v20];
    v22 = [v18 storageErrorWithCode:1 message:v21];
    (v15)[2](v15, 0, v22);
  }

LABEL_12:

  v27 = *MEMORY[0x1E69E9840];
}

void __60__LAStorage_setObject_forKey_withOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LA_LOG_3();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v10[0] = 67109120;
      v10[1] = v8;
      _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_DEFAULT, "setObject forKey:%d returned success", v10, 8u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __60__LAStorage_setObject_forKey_withOptions_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

void __60__LAStorage_setObject_forKey_withOptions_completionHandler___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = [v6 accessControl];
  if (v9)
  {
    [*(a1 + 40) accessControl];
    v14 = SecAccessControlCopyData();
  }

  else
  {
    v14 = 0;
  }

  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = [*(a1 + 40) authenticationContext];
  v13 = [v12 uuid];
  [v8 setObject:v5 acl:v14 forKey:v10 options:v11 contextUUID:v13 connection:0 completionHandler:v7];

  if (v9)
  {
  }
}

- (void)objectForKey:(int64_t)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = LA_LOG_3();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v17 = a3;
    _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_INFO, "objectForKey:%d", buf, 8u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__LAStorage_objectForKey_completionHandler___block_invoke;
  v13[3] = &unk_1E77CC100;
  v14 = v6;
  v15 = a3;
  v8 = v6;
  v9 = MEMORY[0x1AC55C260](v13);
  v10 = [MEMORY[0x1E69AD2B0] policyForKey:a3 operation:1 value:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__LAStorage_objectForKey_completionHandler___block_invoke_23;
  v12[3] = &unk_1E77CC150;
  v12[4] = self;
  v12[5] = a3;
  [(LAStorage *)self _bootstrapServiceWithAuthenticationPolicy:v10 proxyBlock:v12 completionHandler:v9];

  v11 = *MEMORY[0x1E69E9840];
}

void __44__LAStorage_objectForKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LA_LOG_3();
  v8 = v7;
  if (a2 || !v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v11[0] = 67109120;
      v11[1] = v9;
      _os_log_impl(&dword_1A784E000, v8, OS_LOG_TYPE_DEFAULT, "objectForKey:%d returned success", v11, 8u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __44__LAStorage_objectForKey_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 32) + 16))();
  v10 = *MEMORY[0x1E69E9840];
}

void __44__LAStorage_objectForKey_completionHandler___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v9 = [v5 authenticationContext];
  v8 = [v9 uuid];
  [v7 objectForKey:v4 contextUUID:v8 connection:0 completionHandler:v6];
}

- (void)removeObjectForKey:(int64_t)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = LA_LOG_3();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v17 = a3;
    _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_INFO, "removeObjectForKey:%d", buf, 8u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__LAStorage_removeObjectForKey_completionHandler___block_invoke;
  v13[3] = &unk_1E77CC100;
  v14 = v6;
  v15 = a3;
  v8 = v6;
  v9 = MEMORY[0x1AC55C260](v13);
  v10 = [MEMORY[0x1E69AD2B0] policyForKey:a3 operation:3 value:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__LAStorage_removeObjectForKey_completionHandler___block_invoke_24;
  v12[3] = &unk_1E77CC150;
  v12[4] = self;
  v12[5] = a3;
  [(LAStorage *)self _bootstrapServiceWithAuthenticationPolicy:v10 proxyBlock:v12 completionHandler:v9];

  v11 = *MEMORY[0x1E69E9840];
}

void __50__LAStorage_removeObjectForKey_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LA_LOG_3();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v10[0] = 67109120;
      v10[1] = v8;
      _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_DEFAULT, "removeObjectForKey:%d returned success", v10, 8u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __50__LAStorage_removeObjectForKey_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

void __50__LAStorage_removeObjectForKey_completionHandler___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v9 = [v5 authenticationContext];
  v8 = [v9 uuid];
  [v7 removeObjectForKey:v4 contextUUID:v8 connection:0 completionHandler:v6];
}

- (void)exchangeData:(id)a3 forKey:(int64_t)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = LA_LOG_3();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = a4;
    _os_log_impl(&dword_1A784E000, v10, OS_LOG_TYPE_INFO, "exchangeData forKey:%d", &buf, 8u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__LAStorage_exchangeData_forKey_completionHandler___block_invoke;
  v19[3] = &unk_1E77CC100;
  v21 = a4;
  v11 = v9;
  v20 = v11;
  v12 = MEMORY[0x1AC55C260](v19);
  if ([MEMORY[0x1E69AD2B0] isKeyAvailable:a4 operation:*MEMORY[0x1E69AD200]])
  {
    v13 = [MEMORY[0x1E69AD2B0] policyForKey:a4 operation:4 value:v8];
    objc_initWeak(&buf, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__LAStorage_exchangeData_forKey_completionHandler___block_invoke_28;
    v16[3] = &unk_1E77CC178;
    objc_copyWeak(v18, &buf);
    v17 = v8;
    v18[1] = a4;
    [(LAStorage *)self _bootstrapServiceWithAuthenticationPolicy:v13 proxyBlock:v16 completionHandler:v12];

    objc_destroyWeak(v18);
    objc_destroyWeak(&buf);
  }

  else
  {
    v14 = [MEMORY[0x1E696EE88] storageErrorWithCode:4 message:@"key does not support data exchange"];
    (v12)[2](v12, 0, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __51__LAStorage_exchangeData_forKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LA_LOG_3();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v11[0] = 67109120;
      v11[1] = v9;
      _os_log_impl(&dword_1A784E000, v8, OS_LOG_TYPE_DEFAULT, "exchangeData forKey:%d returned success", v11, 8u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __51__LAStorage_exchangeData_forKey_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 32) + 16))();
  v10 = *MEMORY[0x1E69E9840];
}

void __51__LAStorage_exchangeData_forKey_completionHandler___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(a1 + 32);
    v9 = [WeakRetained accessControl];
    if (v9)
    {
      [v7 accessControl];
      v10 = SecAccessControlCopyData();
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 48);
    v12 = [v7 authenticationContext];
    v13 = [v12 uuid];
    [v14 setObject:v8 acl:v10 forKey:v11 options:0 contextUUID:v13 connection:0 completionHandler:v5];

    if (v9)
    {
    }
  }
}

- (__SecAccessControl)accessControlForKey:(int64_t)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__LAStorage_accessControlForKey_error___block_invoke;
  v10[3] = &unk_1E77CC150;
  v10[4] = self;
  v10[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__LAStorage_accessControlForKey_error___block_invoke_2;
  v9[3] = &unk_1E77CBF38;
  v9[4] = &v17;
  v9[5] = &v11;
  [(LAStorage *)self _bootstrapServiceWithAuthenticationPolicy:0 proxyBlock:v10 completionHandler:v9];
  if (!v18[5])
  {
    v6 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = SecAccessControlCreateFromData();
  if (v6)
  {
    v7 = v12[5];
    v12[5] = 0;
  }

  if (a4)
  {
LABEL_5:
    *a4 = v12[5];
  }

LABEL_6:
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v6;
}

void __39__LAStorage_accessControlForKey_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v9 = [v5 authenticationContext];
  v8 = [v9 uuid];
  [v7 aclForKey:v4 contextUUID:v8 connection:0 completionHandler:v6];
}

void __39__LAStorage_accessControlForKey_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)processError:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = LA_LOG_3();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A784E000, v8, OS_LOG_TYPE_INFO, "Rebooting for error", buf, 2u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__LAStorage_processError_completionHandler___block_invoke;
  v16[3] = &unk_1E77CBFB0;
  v17 = v7;
  v9 = v7;
  v13 = MEMORY[0x1AC55C260](v16);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__LAStorage_processError_completionHandler___block_invoke_30;
  v14[3] = &unk_1E77CC1A0;
  v15 = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__LAStorage_processError_completionHandler___block_invoke_3;
  v12[3] = &unk_1E77CBCE0;
  v10 = v13;
  v11 = v6;
  [(LAStorage *)self _bootstrapServiceWithAuthenticationPolicy:0 proxyBlock:v14 completionHandler:v12];
}

void __44__LAStorage_processError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LA_LOG_3();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__LAStorage_processError_completionHandler___block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A784E000, v5, OS_LOG_TYPE_DEFAULT, "Did reboot successfully", v7, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __44__LAStorage_processError_completionHandler___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__LAStorage_processError_completionHandler___block_invoke_2;
  v8[3] = &unk_1E77CBFB0;
  v9 = v5;
  v7 = v5;
  [a2 processError:v6 completionHandler:v8];
}

uint64_t __44__LAStorage_processError_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E695E118];
  }

  return (*(v3 + 16))(v3, v4, a2);
}

- (void)BOOLForKey:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__LAStorage_BOOLForKey_completionHandler___block_invoke;
  v9[3] = &unk_1E77CC1C8;
  v10 = v6;
  v8 = v6;
  [(LAStorage *)self _class:v7 forKey:a3 completionHandler:v9];
}

void __42__LAStorage_BOOLForKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

- (void)dataForKey:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  [(LAStorage *)self _class:objc_opt_class() forKey:a3 completionHandler:v6];
}

- (void)dictionaryForKey:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  [(LAStorage *)self _class:objc_opt_class() forKey:a3 completionHandler:v6];
}

- (void)_class:(Class)a3 forKey:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__LAStorage__class_forKey_completionHandler___block_invoke;
  v10[3] = &unk_1E77CC1F0;
  v11 = v8;
  v12 = a3;
  v9 = v8;
  [(LAStorage *)self objectForKey:a4 completionHandler:v10];
}

void __45__LAStorage__class_forKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = *(a1 + 40);
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = *(a1 + 32);
    if (isKindOfClass)
    {
      (*(v8 + 16))(v8, v10, 0);
    }

    else
    {
      v9 = [MEMORY[0x1E696EE88] storageErrorWithCode:2 message:@"Internal error - unexpected data type" suberror:0];
      (*(v8 + 16))(v8, 0, v9);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)setObject:(id)a3 forKey:(int64_t)a4 withOptions:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__LAStorage_setObject_forKey_withOptions_error___block_invoke;
  v14[3] = &unk_1E77CC218;
  v14[4] = &v15;
  [(LAStorage *)self setObject:v10 forKey:a4 withOptions:v11 completionHandler:v14];
  if (a6)
  {
    *a6 = v16[5];
  }

  v12 = v16[5] == 0;
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (BOOL)setData:(id)a3 forKey:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__LAStorage_setData_forKey_error___block_invoke;
  v11[3] = &unk_1E77CC218;
  v11[4] = &v12;
  [(LAStorage *)self setData:v8 forKey:a4 completionHandler:v11];
  if (a5)
  {
    *a5 = v13[5];
  }

  v9 = v13[5] == 0;
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (BOOL)setDictionary:(id)a3 forKey:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__LAStorage_setDictionary_forKey_error___block_invoke;
  v11[3] = &unk_1E77CC218;
  v11[4] = &v12;
  [(LAStorage *)self setDictionary:v8 forKey:a4 completionHandler:v11];
  if (a5)
  {
    *a5 = v13[5];
  }

  v9 = v13[5] == 0;
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (BOOL)BOOLForKey:(int64_t)a3 error:(id *)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__LAStorage_BOOLForKey_error___block_invoke;
  v7[3] = &unk_1E77CBF60;
  v7[4] = &v14;
  v7[5] = &v8;
  [(LAStorage *)self BOOLForKey:a3 completionHandler:v7];
  if (a4)
  {
    *a4 = v9[5];
  }

  v5 = *(v15 + 24);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

- (id)dataForKey:(int64_t)a3 error:(id *)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__LAStorage_dataForKey_error___block_invoke;
  v7[3] = &unk_1E77CBF88;
  v7[4] = &v14;
  v7[5] = &v8;
  [(LAStorage *)self dataForKey:a3 completionHandler:v7];
  if (a4)
  {
    *a4 = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __30__LAStorage_dataForKey_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)numberForKey:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  [(LAStorage *)self _class:objc_opt_class() forKey:a3 completionHandler:v6];
}

- (id)numberForKey:(int64_t)a3 error:(id *)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__LAStorage_numberForKey_error___block_invoke;
  v7[3] = &unk_1E77CC240;
  v7[4] = &v14;
  v7[5] = &v8;
  [(LAStorage *)self numberForKey:a3 completionHandler:v7];
  if (a4)
  {
    *a4 = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __32__LAStorage_numberForKey_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)dictionaryForKey:(int64_t)a3 error:(id *)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__LAStorage_dictionaryForKey_error___block_invoke;
  v7[3] = &unk_1E77CC268;
  v7[4] = &v14;
  v7[5] = &v8;
  [(LAStorage *)self dictionaryForKey:a3 completionHandler:v7];
  if (a4)
  {
    *a4 = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __36__LAStorage_dictionaryForKey_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)exchangeData:(id)a3 forKey:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__LAStorage_exchangeData_forKey_error___block_invoke;
  v11[3] = &unk_1E77CBF88;
  v11[4] = &v18;
  v11[5] = &v12;
  [(LAStorage *)self exchangeData:v8 forKey:a4 completionHandler:v11];
  if (a5)
  {
    *a5 = v13[5];
  }

  v9 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __39__LAStorage_exchangeData_forKey_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)_bootstrapServiceWithAuthenticationPolicy:(int64_t)a3 proxyBlock:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(LAStorage *)self remoteObjectProxy];

  if (v10)
  {
    [(LAStorage *)self _callProxyBlock:v8 authenticationPolicy:a3 completionHandler:v9];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__LAStorage__bootstrapServiceWithAuthenticationPolicy_proxyBlock_completionHandler___block_invoke;
    v11[3] = &unk_1E77CC290;
    v11[4] = self;
    v12 = v8;
    v14 = a3;
    v13 = v9;
    [(LAStorage *)self _bootstrapServiceType:@"kLAServiceTypeSecureStorage" completionHandler:v11];
  }
}

uint64_t __84__LAStorage__bootstrapServiceWithAuthenticationPolicy_proxyBlock_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) _connectToEndpoint:a2];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _callProxyBlock:v4 authenticationPolicy:v5 completionHandler:v6];
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = *(*(a1 + 48) + 16);

    return v9();
  }
}

- (void)_connectToEndpoint:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v4];
  connection = self->_connection;
  self->_connection = v5;

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1A78CF0];
  v8 = [(LAStorage *)self connection];
  [v8 setRemoteObjectInterface:v7];

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __32__LAStorage__connectToEndpoint___block_invoke;
  v19[3] = &unk_1E77CB1F8;
  objc_copyWeak(&v20, &location);
  v9 = [(LAStorage *)self connection];
  [v9 setInterruptionHandler:v19];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __32__LAStorage__connectToEndpoint___block_invoke_2;
  v17[3] = &unk_1E77CB1F8;
  objc_copyWeak(&v18, &location);
  v10 = [(LAStorage *)self connection];
  [v10 setInvalidationHandler:v17];

  v11 = [(LAStorage *)self connection];
  [v11 resume];

  v12 = [(LAStorage *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __32__LAStorage__connectToEndpoint___block_invoke_3;
  v15[3] = &unk_1E77CC2B8;
  objc_copyWeak(&v16, &location);
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v15];
  remoteObjectProxy = self->_remoteObjectProxy;
  self->_remoteObjectProxy = v13;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __32__LAStorage__connectToEndpoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetConnection];
}

void __32__LAStorage__connectToEndpoint___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetConnection];
}

void __32__LAStorage__connectToEndpoint___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LA_LOG_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __32__LAStorage__connectToEndpoint___block_invoke_3_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetConnection];
}

- (void)_resetConnection
{
  [(NSXPCConnection *)self->_connection invalidate];
  remoteObjectProxy = self->_remoteObjectProxy;
  self->_remoteObjectProxy = 0;
}

- (void)_bootstrapServiceType:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LAStorage *)self authenticationContext];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = [(LAStorage *)self authenticationContext];
  v11 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__LAStorage__bootstrapServiceType_completionHandler___block_invoke;
  v15[3] = &unk_1E77CC2E0;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  v16 = v9;
  v17 = v6;
  v13 = v9;
  v14 = v6;
  [v12 bootstrapServiceType:v7 completionHandler:v15];
}

uint64_t __53__LAStorage__bootstrapServiceType_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)_callProxyBlock:(id)a3 authenticationPolicy:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(LAStorage *)self remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__LAStorage__callProxyBlock_authenticationPolicy_completionHandler___block_invoke;
  v14[3] = &unk_1E77CC330;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = a4;
  v11 = v8[2];
  v12 = v8;
  v13 = v9;
  v11(v12, v10, v14);
}

void __68__LAStorage__callProxyBlock_authenticationPolicy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5 && [MEMORY[0x1E696EE88] storageError:v6 hasCode:0] && (objc_msgSend(*(a1 + 32), "authenticationContext"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = *(a1 + 56), v7, v8))
  {
    v9 = [*(a1 + 32) authenticationContext];
    v10 = [v9 uiDelegate];

    if (v10)
    {
      if (LA_LOG_INTERACTIVE_once != -1)
      {
        __68__LAStorage__callProxyBlock_authenticationPolicy_completionHandler___block_invoke_cold_1();
      }

      v11 = LA_LOG_INTERACTIVE_log;
      if (os_log_type_enabled(LA_LOG_INTERACTIVE_log, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 56);
        *buf = 67109120;
        v22 = v12;
        _os_log_impl(&dword_1A784E000, v11, OS_LOG_TYPE_DEFAULT, "Will invoke authentication using policy %d", buf, 8u);
      }

      v13 = [*(a1 + 32) authenticationContext];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __68__LAStorage__callProxyBlock_authenticationPolicy_completionHandler___block_invoke_103;
      v18[3] = &unk_1E77CC308;
      v18[4] = *(a1 + 32);
      v14 = *(a1 + 56);
      v19 = *(a1 + 48);
      v20 = *(a1 + 40);
      [v13 evaluatePolicy:v14 options:0 reply:v18];
    }

    else
    {
      v16 = *(a1 + 40);
      v17 = [MEMORY[0x1E696EE88] storageErrorWithCode:0 message:@"Policy can't be satisfied without UI delegate."];
      (*(v16 + 16))(v16, 0, v17);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __68__LAStorage__callProxyBlock_authenticationPolicy_completionHandler___block_invoke_103(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) _callProxyBlock:*(a1 + 40) authenticationPolicy:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

void __60__LAStorage_setObject_forKey_withOptions_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_1A784E000, v1, v2, "setObject forKey:%d returned error: %{private}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __44__LAStorage_objectForKey_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_1A784E000, v1, v2, "objectForKey:%d returned error: %{private}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __50__LAStorage_removeObjectForKey_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_1A784E000, v1, v2, "removeObjectForKey:%d returned error: %{private}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __51__LAStorage_exchangeData_forKey_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_1A784E000, v1, v2, "exchangeData forKey:%d returned error: %{private}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __44__LAStorage_processError_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  v4 = a1;
  _os_log_error_impl(&dword_1A784E000, a2, OS_LOG_TYPE_ERROR, "Failed to reboot with error: %{private}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __32__LAStorage__connectToEndpoint___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  v4 = a1;
  _os_log_error_impl(&dword_1A784E000, a2, OS_LOG_TYPE_ERROR, "Encountered XPC error on remote proxy: %{private}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
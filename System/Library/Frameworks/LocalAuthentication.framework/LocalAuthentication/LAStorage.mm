@interface LAStorage
+ (id)secureDomainStorage;
- (BOOL)BOOLForKey:(int64_t)key error:(id *)error;
- (BOOL)setData:(id)data forKey:(int64_t)key error:(id *)error;
- (BOOL)setDictionary:(id)dictionary forKey:(int64_t)key error:(id *)error;
- (BOOL)setObject:(id)object forKey:(int64_t)key withOptions:(id)options error:(id *)error;
- (LAStorage)initWithDomain:(int64_t)domain authenticationContext:(id)context;
- (__SecAccessControl)accessControlForKey:(int64_t)key error:(id *)error;
- (id)dataForKey:(int64_t)key error:(id *)error;
- (id)description;
- (id)dictionaryForKey:(int64_t)key error:(id *)error;
- (id)exchangeData:(id)data forKey:(int64_t)key error:(id *)error;
- (id)numberForKey:(int64_t)key error:(id *)error;
- (void)BOOLForKey:(int64_t)key completionHandler:(id)handler;
- (void)_bootstrapServiceType:(id)type completionHandler:(id)handler;
- (void)_bootstrapServiceWithAuthenticationPolicy:(int64_t)policy proxyBlock:(id)block completionHandler:(id)handler;
- (void)_callProxyBlock:(id)block authenticationPolicy:(int64_t)policy completionHandler:(id)handler;
- (void)_class:(Class)_class forKey:(int64_t)key completionHandler:(id)handler;
- (void)_connectToEndpoint:(id)endpoint;
- (void)_resetConnection;
- (void)dataForKey:(int64_t)key completionHandler:(id)handler;
- (void)dealloc;
- (void)dictionaryForKey:(int64_t)key completionHandler:(id)handler;
- (void)exchangeData:(id)data forKey:(int64_t)key completionHandler:(id)handler;
- (void)numberForKey:(int64_t)key completionHandler:(id)handler;
- (void)objectForKey:(int64_t)key completionHandler:(id)handler;
- (void)processError:(id)error completionHandler:(id)handler;
- (void)removeObjectForKey:(int64_t)key completionHandler:(id)handler;
- (void)setObject:(id)object forKey:(int64_t)key withOptions:(id)options completionHandler:(id)handler;
@end

@implementation LAStorage

+ (id)secureDomainStorage
{
  v2 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];

  return v2;
}

- (LAStorage)initWithDomain:(int64_t)domain authenticationContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = LAStorage;
  v8 = [(LAStorage *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_domain = domain;
    objc_storeStrong(&v8->_authenticationContext, context);
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
  connection = [(LAStorage *)self connection];
  [connection invalidate];

  v4.receiver = self;
  v4.super_class = LAStorage;
  [(LAStorage *)&v4 dealloc];
}

- (id)description
{
  authenticationContext = [(LAStorage *)self authenticationContext];

  v4 = MEMORY[0x1E696AEC0];
  instanceId = [(LAStorage *)self instanceId];
  v6 = instanceId;
  if (authenticationContext)
  {
    authenticationContext2 = [(LAStorage *)self authenticationContext];
    v8 = [v4 stringWithFormat:@"LAStorage[%u] bound with %@", v6, authenticationContext2];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"LAStorage[%u]", instanceId];
  }

  return v8;
}

- (void)setObject:(id)object forKey:(int64_t)key withOptions:(id)options completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  optionsCopy = options;
  handlerCopy = handler;
  v13 = LA_LOG_3();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    keyCopy = key;
    _os_log_impl(&dword_1A784E000, v13, OS_LOG_TYPE_INFO, "setObject forKey:%d", buf, 8u);
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __60__LAStorage_setObject_forKey_withOptions_completionHandler___block_invoke;
  v33[3] = &unk_1E77CC100;
  keyCopy2 = key;
  v14 = handlerCopy;
  v34 = v14;
  v15 = MEMORY[0x1AC55C260](v33);
  v16 = [MEMORY[0x1E69AD2B0] classForKey:key];
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = objectCopy;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        buf[0] = [objectCopy BOOLValue];
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

        v17 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:0];
      }
    }

    v23 = v17;
    v24 = MEMORY[0x1E696EE88];
    v25 = [MEMORY[0x1E69AD298] checkStorageOptions:optionsCopy];
    [v24 raiseExceptionOnError:v25];

    v26 = [MEMORY[0x1E69AD2B0] policyForKey:key operation:2 value:objectCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __60__LAStorage_setObject_forKey_withOptions_completionHandler___block_invoke_21;
    v28[3] = &unk_1E77CC128;
    v29 = v23;
    selfCopy = self;
    keyCopy3 = key;
    v31 = optionsCopy;
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

- (void)objectForKey:(int64_t)key completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = LA_LOG_3();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    keyCopy = key;
    _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_INFO, "objectForKey:%d", buf, 8u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__LAStorage_objectForKey_completionHandler___block_invoke;
  v13[3] = &unk_1E77CC100;
  v14 = handlerCopy;
  keyCopy2 = key;
  v8 = handlerCopy;
  v9 = MEMORY[0x1AC55C260](v13);
  v10 = [MEMORY[0x1E69AD2B0] policyForKey:key operation:1 value:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__LAStorage_objectForKey_completionHandler___block_invoke_23;
  v12[3] = &unk_1E77CC150;
  v12[4] = self;
  v12[5] = key;
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

- (void)removeObjectForKey:(int64_t)key completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = LA_LOG_3();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    keyCopy = key;
    _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_INFO, "removeObjectForKey:%d", buf, 8u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__LAStorage_removeObjectForKey_completionHandler___block_invoke;
  v13[3] = &unk_1E77CC100;
  v14 = handlerCopy;
  keyCopy2 = key;
  v8 = handlerCopy;
  v9 = MEMORY[0x1AC55C260](v13);
  v10 = [MEMORY[0x1E69AD2B0] policyForKey:key operation:3 value:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__LAStorage_removeObjectForKey_completionHandler___block_invoke_24;
  v12[3] = &unk_1E77CC150;
  v12[4] = self;
  v12[5] = key;
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

- (void)exchangeData:(id)data forKey:(int64_t)key completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  v10 = LA_LOG_3();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = key;
    _os_log_impl(&dword_1A784E000, v10, OS_LOG_TYPE_INFO, "exchangeData forKey:%d", &buf, 8u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__LAStorage_exchangeData_forKey_completionHandler___block_invoke;
  v19[3] = &unk_1E77CC100;
  keyCopy = key;
  v11 = handlerCopy;
  v20 = v11;
  v12 = MEMORY[0x1AC55C260](v19);
  if ([MEMORY[0x1E69AD2B0] isKeyAvailable:key operation:*MEMORY[0x1E69AD200]])
  {
    v13 = [MEMORY[0x1E69AD2B0] policyForKey:key operation:4 value:dataCopy];
    objc_initWeak(&buf, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__LAStorage_exchangeData_forKey_completionHandler___block_invoke_28;
    v16[3] = &unk_1E77CC178;
    objc_copyWeak(v18, &buf);
    v17 = dataCopy;
    v18[1] = key;
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

- (__SecAccessControl)accessControlForKey:(int64_t)key error:(id *)error
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
  v10[5] = key;
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
    if (!error)
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

  if (error)
  {
LABEL_5:
    *error = v12[5];
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

- (void)processError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
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
  v17 = handlerCopy;
  v9 = handlerCopy;
  v13 = MEMORY[0x1AC55C260](v16);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__LAStorage_processError_completionHandler___block_invoke_30;
  v14[3] = &unk_1E77CC1A0;
  v15 = errorCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__LAStorage_processError_completionHandler___block_invoke_3;
  v12[3] = &unk_1E77CBCE0;
  v10 = v13;
  v11 = errorCopy;
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

- (void)BOOLForKey:(int64_t)key completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__LAStorage_BOOLForKey_completionHandler___block_invoke;
  v9[3] = &unk_1E77CC1C8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(LAStorage *)self _class:v7 forKey:key completionHandler:v9];
}

void __42__LAStorage_BOOLForKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

- (void)dataForKey:(int64_t)key completionHandler:(id)handler
{
  handlerCopy = handler;
  [(LAStorage *)self _class:objc_opt_class() forKey:key completionHandler:handlerCopy];
}

- (void)dictionaryForKey:(int64_t)key completionHandler:(id)handler
{
  handlerCopy = handler;
  [(LAStorage *)self _class:objc_opt_class() forKey:key completionHandler:handlerCopy];
}

- (void)_class:(Class)_class forKey:(int64_t)key completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__LAStorage__class_forKey_completionHandler___block_invoke;
  v10[3] = &unk_1E77CC1F0;
  v11 = handlerCopy;
  _classCopy = _class;
  v9 = handlerCopy;
  [(LAStorage *)self objectForKey:key completionHandler:v10];
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

- (BOOL)setObject:(id)object forKey:(int64_t)key withOptions:(id)options error:(id *)error
{
  objectCopy = object;
  optionsCopy = options;
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
  [(LAStorage *)self setObject:objectCopy forKey:key withOptions:optionsCopy completionHandler:v14];
  if (error)
  {
    *error = v16[5];
  }

  v12 = v16[5] == 0;
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (BOOL)setData:(id)data forKey:(int64_t)key error:(id *)error
{
  dataCopy = data;
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
  [(LAStorage *)self setData:dataCopy forKey:key completionHandler:v11];
  if (error)
  {
    *error = v13[5];
  }

  v9 = v13[5] == 0;
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (BOOL)setDictionary:(id)dictionary forKey:(int64_t)key error:(id *)error
{
  dictionaryCopy = dictionary;
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
  [(LAStorage *)self setDictionary:dictionaryCopy forKey:key completionHandler:v11];
  if (error)
  {
    *error = v13[5];
  }

  v9 = v13[5] == 0;
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (BOOL)BOOLForKey:(int64_t)key error:(id *)error
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
  [(LAStorage *)self BOOLForKey:key completionHandler:v7];
  if (error)
  {
    *error = v9[5];
  }

  v5 = *(v15 + 24);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

- (id)dataForKey:(int64_t)key error:(id *)error
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
  [(LAStorage *)self dataForKey:key completionHandler:v7];
  if (error)
  {
    *error = v9[5];
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

- (void)numberForKey:(int64_t)key completionHandler:(id)handler
{
  handlerCopy = handler;
  [(LAStorage *)self _class:objc_opt_class() forKey:key completionHandler:handlerCopy];
}

- (id)numberForKey:(int64_t)key error:(id *)error
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
  [(LAStorage *)self numberForKey:key completionHandler:v7];
  if (error)
  {
    *error = v9[5];
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

- (id)dictionaryForKey:(int64_t)key error:(id *)error
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
  [(LAStorage *)self dictionaryForKey:key completionHandler:v7];
  if (error)
  {
    *error = v9[5];
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

- (id)exchangeData:(id)data forKey:(int64_t)key error:(id *)error
{
  dataCopy = data;
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
  [(LAStorage *)self exchangeData:dataCopy forKey:key completionHandler:v11];
  if (error)
  {
    *error = v13[5];
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

- (void)_bootstrapServiceWithAuthenticationPolicy:(int64_t)policy proxyBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  remoteObjectProxy = [(LAStorage *)self remoteObjectProxy];

  if (remoteObjectProxy)
  {
    [(LAStorage *)self _callProxyBlock:blockCopy authenticationPolicy:policy completionHandler:handlerCopy];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__LAStorage__bootstrapServiceWithAuthenticationPolicy_proxyBlock_completionHandler___block_invoke;
    v11[3] = &unk_1E77CC290;
    v11[4] = self;
    v12 = blockCopy;
    policyCopy = policy;
    v13 = handlerCopy;
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

- (void)_connectToEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
  connection = self->_connection;
  self->_connection = v5;

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1A78CF0];
  connection = [(LAStorage *)self connection];
  [connection setRemoteObjectInterface:v7];

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __32__LAStorage__connectToEndpoint___block_invoke;
  v19[3] = &unk_1E77CB1F8;
  objc_copyWeak(&v20, &location);
  connection2 = [(LAStorage *)self connection];
  [connection2 setInterruptionHandler:v19];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __32__LAStorage__connectToEndpoint___block_invoke_2;
  v17[3] = &unk_1E77CB1F8;
  objc_copyWeak(&v18, &location);
  connection3 = [(LAStorage *)self connection];
  [connection3 setInvalidationHandler:v17];

  connection4 = [(LAStorage *)self connection];
  [connection4 resume];

  connection5 = [(LAStorage *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __32__LAStorage__connectToEndpoint___block_invoke_3;
  v15[3] = &unk_1E77CC2B8;
  objc_copyWeak(&v16, &location);
  v13 = [connection5 synchronousRemoteObjectProxyWithErrorHandler:v15];
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

- (void)_bootstrapServiceType:(id)type completionHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  authenticationContext = [(LAStorage *)self authenticationContext];
  if (authenticationContext)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_opt_new();
  }

  authenticationContext2 = [(LAStorage *)self authenticationContext];
  v11 = authenticationContext2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__LAStorage__bootstrapServiceType_completionHandler___block_invoke;
  v15[3] = &unk_1E77CC2E0;
  if (authenticationContext2)
  {
    v12 = authenticationContext2;
  }

  else
  {
    v12 = v9;
  }

  v16 = v9;
  v17 = handlerCopy;
  v13 = v9;
  v14 = handlerCopy;
  [v12 bootstrapServiceType:typeCopy completionHandler:v15];
}

uint64_t __53__LAStorage__bootstrapServiceType_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)_callProxyBlock:(id)block authenticationPolicy:(int64_t)policy completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  remoteObjectProxy = [(LAStorage *)self remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__LAStorage__callProxyBlock_authenticationPolicy_completionHandler___block_invoke;
  v14[3] = &unk_1E77CC330;
  v14[4] = self;
  v15 = handlerCopy;
  v16 = blockCopy;
  policyCopy = policy;
  v11 = blockCopy[2];
  v12 = blockCopy;
  v13 = handlerCopy;
  v11(v12, remoteObjectProxy, v14);
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
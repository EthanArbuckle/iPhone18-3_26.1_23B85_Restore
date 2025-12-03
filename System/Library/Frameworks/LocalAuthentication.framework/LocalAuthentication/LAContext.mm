@interface LAContext
+ (id)_optionsForEvent:(int64_t)event;
+ (void)notifyEvent:(int64_t)event completionHandler:(id)handler;
- (BOOL)canEvaluatePolicy:(LAPolicy)policy error:(NSError *)error;
- (BOOL)checkContextValidWithError:(id *)error;
- (BOOL)evaluateBoolOption:(int64_t)option options:(id)options property:(id)property;
- (BOOL)interactionNotAllowed;
- (BOOL)isCredentialSet:(LACredentialType)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)setCredential:(id)credential type:(int64_t)type options:(id)options error:(id *)error;
- (BOOL)verifyFileVaultUser:(id)user volumeUuid:(id)uuid options:(unint64_t)options error:(id *)error;
- (LABiometryType)biometryType;
- (LACContextCredentialCoder)credentialCoder;
- (LACEntitlementsChecker)entitlementsChecker;
- (LAContext)initWithCoder:(id)coder;
- (LAContext)initWithExternalizedContext:(id)context uiDelegate:(id)delegate;
- (LAContext)initWithExternalizedContext:(id)context userSession:(const unsigned int *)session flags:(int64_t)flags;
- (NSData)externalizedContext;
- (NSTimeInterval)touchIDAuthenticationAllowableReuseDuration;
- (id)_evaluationMechanismsFromReturnedError:(id)error error:(id *)a4;
- (id)_fetchDomainStateWithOptions:(id)options error:(id *)error;
- (id)_hashWithBundleIdentifier:(id)identifier;
- (id)_nullCharacterData;
- (id)_publicErrorFromInternalError:(id)error options:(id)options;
- (id)_serverPropertyValueForOption:(int64_t)option log:(int64_t)log;
- (id)credentialOfType:(int64_t)type error:(id *)error;
- (id)description;
- (id)domainStateWithOptions:(id)options;
- (id)evaluateAccessControl:(__SecAccessControl *)control aksOperation:(void *)operation options:(id)options error:(id *)error;
- (id)evaluateAccessControl:(__SecAccessControl *)control operation:(int64_t)operation options:(id)options error:(id *)error;
- (id)evaluatePolicy:(int64_t)policy options:(id)options error:(id *)error;
- (id)evaluationMechanismsForAccessControl:(__SecAccessControl *)control operation:(int64_t)operation error:(id *)error;
- (id)evaluationMechanismsForPolicy:(int64_t)policy error:(id *)error;
- (id)initNonDisposableWithError:(id *)error;
- (unint64_t)hash;
- (void)_decodeCredential:(id)credential type:(int64_t)type reply:(id)reply;
- (void)_encodeCredential:(id)credential type:(int64_t)type reply:(id)reply;
- (void)_evaluateAccessControl:(__SecAccessControl *)control operation:(id)operation options:(id)options log:(int64_t)log cid:(unsigned int)cid synchronous:(BOOL)synchronous reply:(id)reply;
- (void)_notifyObserversAfterInvalidation;
- (void)_setCredential:(id)credential type:(int64_t)type options:(id)options log:(int64_t)log cid:(unsigned int)cid reply:(id)reply;
- (void)_setServerPropertyForOption:(int64_t)option value:(id)value log:(int64_t)log;
- (void)addContextObserver:(id)observer;
- (void)authMethodWithReply:(id)reply;
- (void)authorizeOperation:(int64_t)operation protectedBy:(__SecAccessControl *)by options:(id)options reply:(id)reply;
- (void)checkCanEvaluateRight:(id)right reply:(id)reply;
- (void)credentialOfType:(int64_t)type reply:(id)reply;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)evaluateAccessControl:(SecAccessControlRef)accessControl operation:(LAAccessControlOperation)operation localizedReason:(NSString *)localizedReason reply:(void *)reply;
- (void)evaluateAccessControl:(__SecAccessControl *)control aksOperation:(void *)operation options:(id)options reply:(id)reply;
- (void)evaluateAccessControl:(__SecAccessControl *)control operation:(int64_t)operation options:(id)options reply:(id)reply;
- (void)evaluatePolicy:(LAPolicy)policy localizedReason:(NSString *)localizedReason reply:(void *)reply;
- (void)evaluatePolicy:(int64_t)policy options:(id)options reply:(id)reply;
- (void)evaluateRight:(id)right localizedReason:(id)reason reply:(id)reply;
- (void)failProcessedEvent:(int64_t)event failureError:(id)error reply:(id)reply;
- (void)invalidate;
- (void)optionsForInternalOperation:(int64_t)operation reply:(id)reply;
- (void)prearmTouchIDWithReply:(id)reply;
- (void)removeContextObserver:(id)observer;
- (void)resetProcessedEvent:(int64_t)event reply:(id)reply;
- (void)resetWithReply:(id)reply;
- (void)retryProcessedEvent:(int64_t)event reply:(id)reply;
- (void)setCredential:(id)credential forProcessedEvent:(int64_t)event credentialType:(int64_t)type reply:(id)reply;
- (void)setCredential:(id)credential type:(int64_t)type options:(id)options reply:(id)reply;
- (void)setOptions:(id)options forInternalOperation:(int64_t)operation reply:(id)reply;
- (void)setTouchIDAuthenticationAllowableReuseDuration:(NSTimeInterval)touchIDAuthenticationAllowableReuseDuration;
@end

@implementation LAContext

- (NSData)externalizedContext
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = LALogForCategory();
  v4 = +[LAContext newCommandId];
  v5 = [(LAContext *)self description];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = v5;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_1A784E000, v3, OS_LOG_TYPE_INFO, "externalizedContext on %{public}@ cid:%u", &v12, 0x12u);
  }

  externalizedContext = [(LAClient *)self->_client externalizedContext];
  v7 = v3;
  v8 = 16 * (externalizedContext == 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = [externalizedContext hash];
    v12 = 138543874;
    v13 = v5;
    v14 = 1024;
    v15 = v4;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_1A784E000, v7, v8, "externalizedContext on %{public}@ cid:%u returned %x", &v12, 0x18u);
  }

  v10 = *MEMORY[0x1E69E9840];

  return externalizedContext;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  instanceId = [(LAContext *)self instanceId];
  proxyId = [(LAClient *)self->_client proxyId];
  v6 = [v3 stringWithFormat:@"LAContext[%u:%@", instanceId, proxyId];

  if (self->_flags)
  {
    v7 = [v6 stringByAppendingString:@"-nd"];

    v6 = v7;
  }

  uiDelegate = [(LAContext *)self uiDelegate];

  if (uiDelegate)
  {
    uiDelegate2 = [(LAContext *)self uiDelegate];
    v10 = [v6 stringByAppendingFormat:@" uiDelegate:%@", uiDelegate2];

    v6 = v10;
  }

  v11 = [v6 stringByAppendingString:@"]"];

  return v11;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1A784E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocated", buf, 0xCu);
  }

  [(LAClient *)self->_client invalidateWithMessage:@"context dealloc"];
  v5.receiver = self;
  v5.super_class = LAContext;
  [(LAContext *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)authorizeOperation:(int64_t)operation protectedBy:(__SecAccessControl *)by options:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  v12 = [optionsCopy objectForKeyedSubscript:&unk_1F1A6FC08];
  v13 = [optionsCopy mutableCopy];
  [v13 setObject:0 forKeyedSubscript:&unk_1F1A6FC08];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v14 = getLAContextUITrampolineClass_softClass;
  v27 = getLAContextUITrampolineClass_softClass;
  if (!getLAContextUITrampolineClass_softClass)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __getLAContextUITrampolineClass_block_invoke;
    v23[3] = &unk_1E77CB120;
    v23[4] = &v24;
    __getLAContextUITrampolineClass_block_invoke(v23);
    v14 = v25[3];
  }

  v15 = v14;
  _Block_object_dispose(&v24, 8);
  if ([(LAContext *)self _useModernAuthorizationSheet]&& v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __73__LAContext_Authorization__authorizeOperation_protectedBy_options_reply___block_invoke;
    v21[3] = &unk_1E77CB0F8;
    v16 = &v22;
    v22 = replyCopy;
    v17 = replyCopy;
    [v14 evaluateAccessControl:by context:self operation:operation options:v13 presentationContext:v12 reply:v21];
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__LAContext_Authorization__authorizeOperation_protectedBy_options_reply___block_invoke_2;
    v19[3] = &unk_1E77CB0F8;
    v16 = &v20;
    v20 = replyCopy;
    v18 = replyCopy;
    [(LAContext *)self evaluateAccessControl:by operation:operation options:v13 reply:v19];
  }
}

- (void)evaluateRight:(id)right localizedReason:(id)reason reply:(id)reply
{
  replyCopy = reply;
  reasonCopy = reason;
  rightCopy = right;
  [rightCopy setContext:self];
  [rightCopy authorizeWithLocalizedReason:reasonCopy completion:replyCopy];
}

- (void)checkCanEvaluateRight:(id)right reply:(id)reply
{
  replyCopy = reply;
  rightCopy = right;
  [rightCopy setContext:self];
  [rightCopy checkCanAuthorizeWithCompletion:replyCopy];
}

+ (void)notifyEvent:(int64_t)event completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (notifyEvent_completionHandler__onceToken[0] != -1)
  {
    +[LAContext notifyEvent:completionHandler:];
  }

  v6 = LALogForCategory();
  v7 = +[LAContext newCommandId];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = event;
    LOWORD(v20) = 1024;
    *(&v20 + 2) = v7;
    _os_log_impl(&dword_1A784E000, v6, OS_LOG_TYPE_DEFAULT, "notifyEvent:%d cid:%u", buf, 0xEu);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = objc_opt_new();
  v8 = *(v20 + 5);
  v9 = [LAContext _optionsForEvent:event];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__LAContext_notifyEvent_completionHandler___block_invoke_6;
  v13[3] = &unk_1E77CC508;
  v10 = v6;
  v18 = v7;
  v14 = v10;
  v16 = buf;
  eventCopy = event;
  v11 = handlerCopy;
  v15 = v11;
  [v8 notifyEvent:event options:v9 reply:v13];

  _Block_object_dispose(buf, 8);
  v12 = *MEMORY[0x1E69E9840];
}

void __43__LAContext_notifyEvent_completionHandler___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = @"success";
    if (!a2)
    {
      v9 = v5;
    }

    v14[0] = 67109634;
    v14[1] = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1A784E000, v6, OS_LOG_TYPE_INFO, "notifyEvent:%d cid:%u returned %{public}@", v14, 0x18u);
  }

  [*(*(*(a1 + 48) + 8) + 40) invalidateWithMessage:@"Helper context invalidated"];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)_optionsForEvent:(int64_t)event
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ((event | 2) == 2)
  {
    v7 = &unk_1F1A6FCB0;
    date = [MEMORY[0x1E695DF00] date];
    v8[0] = date;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)initNonDisposableWithError:(id *)error
{
  v4 = [(LAContext *)self initWithExternalizedContext:0 userSession:0 flags:1];
  v5 = v4;
  if (v4 && ![(LAContext *)v4 checkContextValidWithError:error])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (LAContext)initWithExternalizedContext:(id)context userSession:(const unsigned int *)session flags:(int64_t)flags
{
  v25 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = LAContext;
  v9 = [(LAContext *)&v18 init];
  if (!v9)
  {
    goto LABEL_15;
  }

  if (initWithExternalizedContext_userSession_flags__onceToken != -1)
  {
    [LAContext initWithExternalizedContext:userSession:flags:];
  }

  v10 = LALogForCategory();
  if (contextCopy)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"with externalized context %x", objc_msgSend(contextCopy, "hash")];
    if (!session)
    {
      goto LABEL_10;
    }

LABEL_8:
    v12 = *session;
    if (v12 != geteuid())
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid uid: %u", *session}];
    }

    goto LABEL_10;
  }

  v11 = @"new";
  if (session)
  {
    goto LABEL_8;
  }

LABEL_10:
  v13 = +[LAContext newCommandId];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = v11;
    v21 = 1024;
    LODWORD(v22) = v13;
    _os_log_impl(&dword_1A784E000, v10, OS_LOG_TYPE_DEFAULT, "Creating LAContext %{public}@ cid:%u", buf, 0x12u);
  }

  v9->_instanceId = +[LAContext newInstanceId];
  v9->_flags = flags;
  v14 = [[LAClient alloc] initWithExternalizedContext:contextCopy userSession:session flags:flags context:v9];
  client = v9->_client;
  v9->_client = v14;

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    v23 = 1024;
    v24 = v13;
    _os_log_impl(&dword_1A784E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ created %{public}@ cid:%u", buf, 0x1Cu);
  }

LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (LAContext)initWithExternalizedContext:(id)context uiDelegate:(id)delegate
{
  delegateCopy = delegate;
  v7 = [(LAContext *)self initWithExternalizedContext:context];
  [(LAContext *)v7 setUiDelegate:delegateCopy];

  return v7;
}

- (LAContext)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = LAContext;
  v5 = [(LAContext *)&v19 init];
  if (v5)
  {
    if (initWithCoder__onceToken != -1)
    {
      [LAContext initWithCoder:];
    }

    connection = [coderCopy connection];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Token"];
    v9 = objc_alloc(MEMORY[0x1E69AD220]);
    if (connection)
    {
      [connection auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v10 = [v9 initWithRawValue:buf];
    data = [v10 data];

    v5->_instanceId = +[LAContext newInstanceId];
    v12 = [[LAClient alloc] initWithUUID:v7 token:v8 senderAuditTokenData:data context:v5];
    client = v5->_client;
    v5->_client = v12;

    v14 = LALogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 hash];
      v16 = [v8 hash];
      *buf = 138543874;
      *&buf[4] = v5;
      *&buf[12] = 1024;
      *&buf[14] = v15;
      *&buf[18] = 1024;
      *&buf[20] = v16;
      _os_log_impl(&dword_1A784E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ created with uuid: %x token: %x", buf, 0x18u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = LAContext;
  if ([(LAContext *)&v9 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(LAClient *)self->_client uuid];
      uuid2 = [equalCopy[10] uuid];
      v5 = [uuid isEqual:uuid2];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  uuid = [(LAClient *)self->_client uuid];
  v3 = [uuid hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v30 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = LALogForCategory();
  v6 = +[LAContext newCommandId];
  v7 = [(LAContext *)self description];
  connection = [coderCopy connection];
  uuid = [(LAClient *)self->_client uuid];
  [coderCopy encodeObject:uuid forKey:@"UUID"];

  processIdentifier = [connection processIdentifier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    *&buf[18] = 1024;
    *&buf[20] = v6;
    _os_log_impl(&dword_1A784E000, v5, OS_LOG_TYPE_DEFAULT, "Encoding %{public}@ for transfer to pid:%d cid:%u", buf, 0x18u);
  }

  if (processIdentifier)
  {
    v11 = objc_alloc(MEMORY[0x1E69AD220]);
    if (connection)
    {
      [connection auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v16 = [v11 initWithRawValue:buf];
    data = [v16 data];

    client = self->_client;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __29__LAContext_encodeWithCoder___block_invoke_55;
    v19[3] = &unk_1E77CC558;
    v20 = v5;
    v21 = v7;
    v22 = processIdentifier;
    v23 = v6;
    v15 = v7;
    v13 = v5;
    [(LAClient *)client allowTransferToProcess:processIdentifier receiverAuditTokenData:data reply:v19];
  }

  else
  {
    v12 = self->_client;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __29__LAContext_encodeWithCoder___block_invoke;
    v24[3] = &unk_1E77CC530;
    v25 = coderCopy;
    v26 = v5;
    v27 = v7;
    v28 = v6;
    v13 = v7;
    data = v5;
    [(LAClient *)v12 tokenForTransferToUnknownProcess:v24];

    v15 = v25;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __29__LAContext_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) encodeObject:v5 forKey:@"Token"];
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      v9 = v7;
      v10 = [v5 hash];
      v11 = *(a1 + 56);
      v13 = 138543874;
      v14 = v8;
      v15 = 1024;
      v16 = v10;
      v17 = 1024;
      v18 = v11;
      _os_log_impl(&dword_1A784E000, v9, OS_LOG_TYPE_INFO, "Encoded %{public}@ for transfer with token:%x cid:%u", &v13, 0x18u);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    __29__LAContext_encodeWithCoder___block_invoke_cold_1(v6, a1);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __29__LAContext_encodeWithCoder___block_invoke_55(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __29__LAContext_encodeWithCoder___block_invoke_55_cold_2(a1, v6);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __29__LAContext_encodeWithCoder___block_invoke_55_cold_1(a1);
  }
}

- (void)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = LALogForCategory();
  v4 = +[LAContext newCommandId];
  v5 = [(LAContext *)self description];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v16 = v5;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&dword_1A784E000, v3, OS_LOG_TYPE_INFO, "Invalidating %{public}@ cid:%u", buf, 0x12u);
  }

  client = self->_client;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __23__LAContext_invalidate__block_invoke;
  v11[3] = &unk_1E77CC580;
  v11[4] = self;
  v12 = v3;
  v13 = v5;
  v14 = v4;
  v7 = v5;
  v8 = v3;
  selfCopy = self;
  [(LAClient *)client invalidateWithReply:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __23__LAContext_invalidate__block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;

  if (a2)
  {
    [*(a1 + 32) _notifyObserversAfterInvalidation];
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, v8))
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = @"success";
    if (!a2)
    {
      v12 = v5;
    }

    v14 = 138543874;
    v15 = v10;
    v16 = 1024;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_1A784E000, v9, v8, "invalidate %{public}@ cid:%u internally returned %{public}@", &v14, 0x1Cu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)evaluatePolicy:(int64_t)policy options:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  [(LAContext *)self _evaluatePolicy:policy options:optionsCopy log:LALogCategoryForPolicy() cid:+[LAContext synchronous:"newCommandId"]reply:0, replyCopy];
}

void __63__LAContext__evaluatePolicy_options_log_cid_synchronous_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v5)
  {
    v9 = [v5 objectForKey:&unk_1F1A6FCC8];
    v10 = [v8 _hashWithBundleIdentifier:v9];
    [*(a1 + 32) setEvaluatedPolicyDomainState:v10];
  }

  else
  {
    v11 = [v6 userInfo];
    v12 = [v11 objectForKey:@"BiometryDatabaseHash"];
    v13 = [v8 _hashWithBundleIdentifier:v12];
    [*(a1 + 32) setEvaluatedPolicyDomainState:v13];

    v14 = [v7 userInfo];
    v9 = [v14 objectForKeyedSubscript:@"BiometryType"];

    if (!v9)
    {
      goto LABEL_6;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "integerValue")}];
    v10 = _cachedBiometryType;
    _cachedBiometryType = v15;
  }

LABEL_6:
  if (*(a1 + 64))
  {
    v16 = LALogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      v18 = *(a1 + 72);
      if (v5)
      {
        v19 = v5;
      }

      else
      {
        v19 = v7;
      }

      v25 = 138543874;
      v26 = v17;
      v27 = 1024;
      v28 = v18;
      v29 = 2114;
      v30 = v19;
      _os_log_impl(&dword_1A784E000, v16, OS_LOG_TYPE_DEFAULT, "evaluatePolicy on %{public}@ cid:%u returned %{public}@", &v25, 0x1Cu);
    }
  }

  if (*(a1 + 56))
  {
    if (v7)
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 48);
      v22 = [v20 optionRedactErrors];
      LODWORD(v20) = [v20 evaluateBoolOption:1096 options:v21 property:v22];

      if (v20)
      {
        v23 = [*(a1 + 32) _publicErrorFromInternalError:v7 options:*(a1 + 48)];

        v7 = v23;
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __55__LAContext__evaluatePolicy_options_synchronous_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696EE88];
  v6 = a2;
  v7 = [v5 redactInternalError:a3];
  (*(v4 + 16))(v4, v6, v7);
}

- (id)_hashWithBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = MEMORY[0x1E69AD258];
    v4 = MEMORY[0x1E696AAE8];
    identifierCopy = identifier;
    mainBundle = [v4 mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v8 = [v3 saltHash:identifierCopy withBundleID:bundleIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)evaluatePolicy:(int64_t)policy options:(id)options error:(id *)error
{
  optionsCopy = options;
  error = [(LAContext *)self _evaluatePolicy:policy options:optionsCopy log:LALogCategoryForPolicy() cid:+[LAContext error:"newCommandId"], error];

  return error;
}

void __51__LAContext__evaluatePolicy_options_log_cid_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_publicErrorFromInternalError:(id)error options:(id)options
{
  errorCopy = error;
  optionsCopy = options;
  v7 = errorCopy;
  domain = [v7 domain];
  v9 = [domain isEqualToString:@"com.apple.LocalAuthentication"];

  v10 = v7;
  if (v9)
  {
    code = [v7 code];
    code2 = [v7 code];
    if (code2 == -4)
    {
      userInfo = [v7 userInfo];
      v14 = [userInfo objectForKeyedSubscript:@"Subcode"];

      if (v14 && ([v14 integerValue] - 12) <= 2)
      {
        v15 = [optionsCopy objectForKeyedSubscript:&unk_1F1A6FCE0];
        v16 = v15;
        code = -3;
        if (v15 && ![v15 length])
        {
          code = -2;
        }
      }
    }

    else if (code2 == -1018)
    {
      code = -6;
    }

    v17 = MEMORY[0x1E696EE88];
    userInfo2 = [v7 userInfo];
    v19 = [userInfo2 objectForKey:*MEMORY[0x1E696A278]];
    v10 = [v17 errorWithCode:code message:v19];
  }

  return v10;
}

- (void)evaluatePolicy:(LAPolicy)policy localizedReason:(NSString *)localizedReason reply:(void *)reply
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = localizedReason;
  v9 = reply;
  [(LAContext *)self setEvaluatedPolicyDomainState:0];
  if (![(NSString *)v8 length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Non-empty localizedReason must be provided."];
  }

  v16[0] = &unk_1F1A6FCF8;
  v16[1] = &unk_1F1A6FD10;
  v17[0] = v8;
  v17[1] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v11 = +[LAContext newCommandId];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__LAContext_evaluatePolicy_localizedReason_reply___block_invoke;
  v14[3] = &unk_1E77CB0F8;
  v15 = v9;
  v12 = v9;
  [(LAContext *)self _evaluatePolicy:policy options:v10 log:8 cid:v11 synchronous:0 reply:v14];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_evaluationMechanismsFromReturnedError:(id)error error:(id *)a4
{
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    v7 = MEMORY[0x1E695DFD8];
    userInfo = [errorCopy userInfo];
    v9 = [userInfo objectForKey:@"AvailableMechanisms"];
    v10 = [v7 setWithArray:v9];

    v11 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696EE88] errorWithCode:-1011 message:@"No authentication required."];
  v10 = 0;
  if (a4)
  {
LABEL_3:
    v11 = v11;
    *a4 = v11;
  }

LABEL_4:

  return v10;
}

- (id)evaluationMechanismsForPolicy:(int64_t)policy error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = +[LAContext newCommandId];
  v8 = LALogForPolicy();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    policyCopy2 = policy;
    v20 = 2114;
    selfCopy2 = self;
    v22 = 1024;
    v23 = v7;
    _os_log_impl(&dword_1A784E000, v8, OS_LOG_TYPE_INFO, "evaluationMechanismsForPolicy:%d on %{public}@ cid:%u", buf, 0x18u);
  }

  v26 = &unk_1F1A6FD28;
  v27[0] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v17 = 0;
  v10 = [(LAContext *)self _evaluatePolicy:policy options:v9 log:0 cid:v7 error:&v17];
  v11 = v17;

  v12 = [(LAContext *)self _evaluationMechanismsFromReturnedError:v11 error:error];
  v13 = 16 * (v12 == 0);
  if (os_log_type_enabled(v8, v13))
  {
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v11;
    }

    *buf = 67109890;
    policyCopy2 = policy;
    v20 = 2114;
    selfCopy2 = self;
    v22 = 1024;
    v23 = v7;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_1A784E000, v8, v13, "evaluationMechanismsForPolicy:%d on %{public}@ cid:%u returned %{public}@", buf, 0x22u);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)evaluationMechanismsForAccessControl:(__SecAccessControl *)control operation:(int64_t)operation error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  v9 = LALogForCategory();
  v10 = +[LAContext newCommandId];
  v11 = [(LAContext *)self description];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    controlCopy2 = control;
    v23 = 2114;
    v24 = v11;
    v25 = 1024;
    v26 = v10;
    _os_log_impl(&dword_1A784E000, v9, OS_LOG_TYPE_INFO, "evaluationMechanismsForAccessControl:%@ on %{public}@ cid:%u", buf, 0x1Cu);
  }

  v29 = &unk_1F1A6FD28;
  v30[0] = MEMORY[0x1E695E118];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v20 = 0;
  v13 = [(LAContext *)self evaluateAccessControl:control operation:operation options:v12 error:&v20];
  v14 = v20;

  v15 = [(LAContext *)self _evaluationMechanismsFromReturnedError:v14 error:error];
  v16 = 16 * (v15 == 0);
  if (os_log_type_enabled(v9, v16))
  {
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    *buf = 138413058;
    controlCopy2 = control;
    v23 = 2114;
    v24 = v11;
    v25 = 1024;
    v26 = v10;
    v27 = 2114;
    v28 = v17;
    _os_log_impl(&dword_1A784E000, v9, v16, "evaluationMechanismsForAccessControl:%@ on %{public}@ cid:%u returned %{public}@", buf, 0x26u);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)canEvaluatePolicy:(LAPolicy)policy error:(NSError *)error
{
  v30[2] = *MEMORY[0x1E69E9840];
  v29[0] = &unk_1F1A6FD28;
  v29[1] = &unk_1F1A6FD10;
  v30[0] = MEMORY[0x1E695E118];
  v30[1] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v8 = +[LAContext newCommandId];
  v9 = LALogForPolicy();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    v22 = policy;
    v23 = 2114;
    selfCopy2 = self;
    v25 = 1024;
    v26 = v8;
    _os_log_impl(&dword_1A784E000, v9, OS_LOG_TYPE_INFO, "canEvaluatePolicy:%d on %{public}@ cid:%u", buf, 0x18u);
  }

  v20 = 0;
  v10 = [(LAContext *)self _evaluatePolicy:policy options:v7 log:0 cid:v8 error:&v20];
  v11 = v20;
  if (v10)
  {
    v12 = 1;
    if (error)
    {
LABEL_5:
      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11;
      }

      *error = v13;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696EE88] error:v11 hasCode:-1004];
    if (error)
    {
      goto LABEL_5;
    }
  }

  v14 = v9;
  if (v12)
  {
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    domain = [(__CFString *)v11 domain];
    if ([domain isEqualToString:@"com.apple.LocalAuthentication"])
    {
      v15 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v15 = OS_LOG_TYPE_ERROR;
    }
  }

  if (os_log_type_enabled(v14, v15))
  {
    v17 = @"YES";
    *buf = 67109890;
    if (!v12)
    {
      v17 = v11;
    }

    v22 = policy;
    v23 = 2114;
    selfCopy2 = self;
    v25 = 1024;
    v26 = v8;
    v27 = 2114;
    v28 = v17;
    _os_log_impl(&dword_1A784E000, v14, v15, "canEvaluatePolicy:%d on %{public}@ cid:%u returned %{public}@", buf, 0x22u);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)failProcessedEvent:(int64_t)event failureError:(id)error reply:(id)reply
{
  v34 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  replyCopy = reply;
  v10 = LALogForCategory();
  v11 = +[LAContext newCommandId];
  v12 = [(LAContext *)self description];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109890;
    eventCopy = event;
    v28 = 2114;
    v29 = errorCopy;
    v30 = 2114;
    v31 = v12;
    v32 = 1024;
    v33 = v11;
    _os_log_impl(&dword_1A784E000, v10, OS_LOG_TYPE_INFO, "failProcessedEvent:%d failureError:%{public}@ on %{public}@ cid:%u", buf, 0x22u);
  }

  client = self->_client;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__LAContext_failProcessedEvent_failureError_reply___block_invoke;
  v19[3] = &unk_1E77CC5F8;
  v23 = replyCopy;
  eventCopy2 = event;
  v20 = v10;
  v21 = errorCopy;
  v25 = v11;
  v22 = v12;
  v14 = replyCopy;
  v15 = v12;
  v16 = errorCopy;
  v17 = v10;
  [(LAClient *)client failProcessedEvent:event failureError:v16 reply:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void __51__LAContext_failProcessedEvent_failureError_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(*(a1 + 32), v7))
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 72);
    v12 = @"success";
    if (!a2)
    {
      v12 = v5;
    }

    v15[0] = 67110146;
    v15[1] = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 1024;
    v21 = v11;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1A784E000, v6, v7, "failProcessedEvent:%d failureError:%{public}@ on %{public}@ cid:%u returned %{public}@", v15, 0x2Cu);
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v5);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)retryProcessedEvent:(int64_t)event reply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v7 = LALogForCategory();
  v8 = +[LAContext newCommandId];
  v9 = [(LAContext *)self description];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    eventCopy = event;
    v23 = 2114;
    v24 = v9;
    v25 = 1024;
    v26 = v8;
    _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_INFO, "retryProcessEvent:%d on %{public}@ cid:%u", buf, 0x18u);
  }

  client = self->_client;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__LAContext_retryProcessedEvent_reply___block_invoke;
  v15[3] = &unk_1E77CC620;
  v16 = v7;
  v17 = v9;
  v20 = v8;
  v18 = replyCopy;
  eventCopy2 = event;
  v11 = replyCopy;
  v12 = v9;
  v13 = v7;
  [(LAClient *)client retryProcessedEvent:event reply:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __39__LAContext_retryProcessedEvent_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(*(a1 + 32), v7))
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = *(a1 + 64);
    v11 = @"success";
    if (!a2)
    {
      v11 = v5;
    }

    v14[0] = 67109890;
    v14[1] = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 1024;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_1A784E000, v6, v7, "retryProcessEvent:%d on %{public}@ cid:%u returned %{public}@", v14, 0x22u);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)resetProcessedEvent:(int64_t)event reply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v7 = LALogForCategory();
  v8 = +[LAContext newCommandId];
  v9 = [(LAContext *)self description];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    eventCopy = event;
    v23 = 2114;
    v24 = v9;
    v25 = 1024;
    v26 = v8;
    _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_INFO, "resetProcessedEvent:%d on %{public}@ cid:%u", buf, 0x18u);
  }

  client = self->_client;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__LAContext_resetProcessedEvent_reply___block_invoke;
  v15[3] = &unk_1E77CC620;
  v16 = v7;
  v17 = v9;
  v20 = v8;
  v18 = replyCopy;
  eventCopy2 = event;
  v11 = replyCopy;
  v12 = v9;
  v13 = v7;
  [(LAClient *)client resetProcessedEvent:event reply:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __39__LAContext_resetProcessedEvent_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(*(a1 + 32), v7))
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = *(a1 + 64);
    v11 = @"success";
    if (!a2)
    {
      v11 = v5;
    }

    v14[0] = 67109890;
    v14[1] = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 1024;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_1A784E000, v6, v7, "resetProcessedEvent:%d on %{public}@ cid:%u returned %{public}@", v14, 0x22u);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __45__LAContext_pauseProcessedEvent_pause_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(*(a1 + 32), v7))
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = *(a1 + 64);
    v11 = @"success";
    if (!a2)
    {
      v11 = v5;
    }

    v14[0] = 67109890;
    v14[1] = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 1024;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_1A784E000, v6, v7, "pauseProcessedEvent:%d on %{public}@ cid:%u returned %{public}@", v14, 0x22u);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setCredential:(id)credential forProcessedEvent:(int64_t)event credentialType:(int64_t)type reply:(id)reply
{
  v32 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  replyCopy = reply;
  v12 = LALogForCategory();
  v13 = +[LAContext newCommandId];
  v14 = [(LAContext *)self description];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109890;
    HIDWORD(buf) = event;
    v26 = 1024;
    typeCopy = type;
    v28 = 2114;
    v29 = v14;
    v30 = 1024;
    v31 = v13;
    _os_log_impl(&dword_1A784E000, v12, OS_LOG_TYPE_INFO, "setCredential:forProcessedEvent:%d credentialType:%d on %{public}@ cid:%u", &buf, 0x1Eu);
  }

  objc_initWeak(&buf, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__LAContext_setCredential_forProcessedEvent_credentialType_reply___block_invoke;
  v19[3] = &unk_1E77CC670;
  objc_copyWeak(v23, &buf);
  v15 = v12;
  v20 = v15;
  v23[1] = event;
  v23[2] = type;
  v16 = v14;
  v21 = v16;
  v24 = v13;
  v17 = replyCopy;
  v22 = v17;
  [(LAContext *)self _encodeCredential:credentialCopy type:type reply:v19];

  objc_destroyWeak(v23);
  objc_destroyWeak(&buf);

  v18 = *MEMORY[0x1E69E9840];
}

void __66__LAContext_setCredential_forProcessedEvent_credentialType_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        __66__LAContext_setCredential_forProcessedEvent_credentialType_reply___block_invoke_cold_1(a1);
      }

      v9 = *(a1 + 48);
      if (v9)
      {
        (*(v9 + 16))(v9, 0, v6);
      }
    }

    else
    {
      v10 = *(WeakRetained + 10);
      v11 = *(a1 + 64);
      v12 = *(a1 + 72);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __66__LAContext_setCredential_forProcessedEvent_credentialType_reply___block_invoke_84;
      v13[3] = &unk_1E77CC648;
      v14 = *(a1 + 32);
      v17 = *(a1 + 64);
      v15 = *(a1 + 40);
      v18 = *(a1 + 80);
      v16 = *(a1 + 48);
      [v10 setCredential:v5 forProcessedEvent:v11 credentialType:v12 reply:v13];
    }
  }
}

void __66__LAContext_setCredential_forProcessedEvent_credentialType_reply___block_invoke_84(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(*(a1 + 32), v7))
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = *(a1 + 72);
    v12 = @"success";
    if (!a2)
    {
      v12 = v5;
    }

    v15[0] = 67110146;
    v15[1] = v8;
    v16 = 1024;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 1024;
    v21 = v11;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1A784E000, v6, v7, "setCredential:forProcessedEvent:%d credentialType:%d on %{public}@ cid:%u returned %{public}@", v15, 0x28u);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v5);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)evaluateAccessControl:(__SecAccessControl *)control operation:(int64_t)operation options:(id)options reply:(id)reply
{
  v10 = MEMORY[0x1E696AD98];
  replyCopy = reply;
  optionsCopy = options;
  v13 = [v10 numberWithInteger:operation];
  [(LAContext *)self _evaluateAccessControl:control operation:v13 options:optionsCopy log:LALogCategoryForOptions() cid:+[LAContext synchronous:"newCommandId"]reply:0, replyCopy];
}

- (void)evaluateAccessControl:(__SecAccessControl *)control aksOperation:(void *)operation options:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  [(LAContext *)self _evaluateAccessControl:control operation:operation options:optionsCopy log:LALogCategoryForOptions() cid:+[LAContext synchronous:"newCommandId"]reply:0, replyCopy];
}

- (void)_evaluateAccessControl:(__SecAccessControl *)control operation:(id)operation options:(id)options log:(int64_t)log cid:(unsigned int)cid synchronous:(BOOL)synchronous reply:(id)reply
{
  LODWORD(v26) = cid;
  HIDWORD(v26) = synchronous;
  v48 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  optionsCopy = options;
  replyCopy = reply;
  if (log)
  {
    v16 = [(LAContext *)self description];
    v17 = LALogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "async";
      *buf = 138544642;
      controlCopy = control;
      v38 = 2114;
      if (HIDWORD(v26))
      {
        v18 = "sync";
      }

      v39 = operationCopy;
      v40 = 2114;
      v41 = optionsCopy;
      v42 = 2114;
      v43 = v16;
      v44 = 2082;
      v45 = v18;
      v46 = 1024;
      v47 = v26;
      _os_log_impl(&dword_1A784E000, v17, OS_LOG_TYPE_DEFAULT, "evaluateAccessControl:%{public}@ operation:%{public}@ options:%{public}@ on %{public}@ (%{public}s) cid:%u", buf, 0x3Au);
    }

    if (control)
    {
      goto LABEL_7;
    }

LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v16 = 0;
  if (!control)
  {
    goto LABEL_9;
  }

LABEL_7:
  v19 = SecAccessControlCopyData();
LABEL_10:
  client = self->_client;
  uiDelegate = [(LAContext *)self uiDelegate];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __80__LAContext__evaluateAccessControl_operation_options_log_cid_synchronous_reply___block_invoke;
  v29[3] = &unk_1E77CC698;
  v29[4] = self;
  v30 = optionsCopy;
  controlCopy2 = control;
  logCopy = log;
  v35 = v27;
  v31 = v16;
  v32 = replyCopy;
  v22 = replyCopy;
  v23 = v16;
  v24 = optionsCopy;
  [(LAClient *)client evaluateACL:v19 operation:operationCopy options:v24 uiDelegate:uiDelegate synchronous:v28 reply:v29];

  v25 = *MEMORY[0x1E69E9840];
}

void __80__LAContext__evaluateAccessControl_operation_options_log_cid_synchronous_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    *v18 = 0;
    if (!LAUpdateAccessControl(*(a1 + 64), v5, v18))
    {

      v7 = *v18;
      v5 = 0;
      v6 = v7;
    }
  }

  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [v8 optionRedactErrors];
    LODWORD(v8) = [v8 evaluateBoolOption:1096 options:v9 property:v10];

    if (v8)
    {
      v11 = [*(a1 + 32) _publicErrorFromInternalError:v6 options:*(a1 + 40)];

      v6 = v11;
    }
  }

  if (*(a1 + 72))
  {
    v12 = LALogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v14 = *(a1 + 80);
      if (v5)
      {
        v15 = v5;
      }

      else
      {
        v15 = v6;
      }

      *v18 = 138543874;
      *&v18[4] = v13;
      v19 = 1024;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_1A784E000, v12, OS_LOG_TYPE_DEFAULT, "evaluateAccessControl on %{public}@ cid:%u returned %{public}@", v18, 0x1Cu);
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, v5, v6);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)evaluateAccessControl:(SecAccessControlRef)accessControl operation:(LAAccessControlOperation)operation localizedReason:(NSString *)localizedReason reply:(void *)reply
{
  v21[2] = *MEMORY[0x1E69E9840];
  v10 = localizedReason;
  v11 = reply;
  if (![(NSString *)v10 length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Non-empty localizedReason must be provided."];
  }

  v20[0] = &unk_1F1A6FCF8;
  v20[1] = &unk_1F1A6FD10;
  v21[0] = v10;
  v21[1] = MEMORY[0x1E695E118];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:operation];
  v14 = LALogCategoryForOptions();
  v15 = +[LAContext newCommandId];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__LAContext_evaluateAccessControl_operation_localizedReason_reply___block_invoke;
  v18[3] = &unk_1E77CB0F8;
  v19 = v11;
  v16 = v11;
  [(LAContext *)self _evaluateAccessControl:accessControl operation:v13 options:v12 log:v14 cid:v15 synchronous:0 reply:v18];

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __67__LAContext_evaluateAccessControl_operation_localizedReason_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (id)evaluateAccessControl:(__SecAccessControl *)control operation:(int64_t)operation options:(id)options error:(id *)error
{
  optionsCopy = options;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:operation];
  v12 = LALogCategoryForOptions();
  v13 = +[LAContext newCommandId];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__LAContext_evaluateAccessControl_operation_options_error___block_invoke;
  v16[3] = &unk_1E77CC268;
  v16[4] = &v23;
  v16[5] = &v17;
  [(LAContext *)self _evaluateAccessControl:control operation:v11 options:optionsCopy log:v12 cid:v13 synchronous:1 reply:v16];

  if (error)
  {
    *error = v18[5];
  }

  v14 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v14;
}

void __59__LAContext_evaluateAccessControl_operation_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)evaluateAccessControl:(__SecAccessControl *)control aksOperation:(void *)operation options:(id)options error:(id *)error
{
  optionsCopy = options;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v11 = LALogCategoryForOptions();
  v12 = +[LAContext newCommandId];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__LAContext_evaluateAccessControl_aksOperation_options_error___block_invoke;
  v15[3] = &unk_1E77CC268;
  v15[4] = &v22;
  v15[5] = &v16;
  [(LAContext *)self _evaluateAccessControl:control operation:operation options:optionsCopy log:v11 cid:v12 synchronous:1 reply:v15];
  if (error)
  {
    *error = v17[5];
  }

  v13 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __62__LAContext_evaluateAccessControl_aksOperation_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (LABiometryType)biometryType
{
  v9 = *MEMORY[0x1E69E9840];
  if (_cachedBiometryType)
  {
    integerValue = [_cachedBiometryType integerValue];
  }

  else
  {
    domainState = [(LAContext *)self domainState];
    biometry = [domainState biometry];
    integerValue = [biometry biometryType];
  }

  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = integerValue;
    _os_log_impl(&dword_1A784E000, v5, OS_LOG_TYPE_DEFAULT, "returned biometryType: %d", v8, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (id)domainStateWithOptions:(id)options
{
  optionsCopy = options;
  domainStateCache = self->_domainStateCache;
  if (!domainStateCache)
  {
    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x1E69AD228]);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __36__LAContext_domainStateWithOptions___block_invoke;
    v18 = &unk_1E77CC6C0;
    objc_copyWeak(&v19, &location);
    v7 = [v6 initWithTimeout:&v15 block:0.5];
    v8 = self->_domainStateCache;
    self->_domainStateCache = v7;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    domainStateCache = self->_domainStateCache;
  }

  v9 = [(LACCacheSync *)domainStateCache valueWithParameter:optionsCopy error:0, v15, v16, v17, v18];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [LADomainState alloc];
    v11 = [(LADomainState *)v12 initWithResult:MEMORY[0x1E695E0F8]];
  }

  v13 = v11;

  return v13;
}

id __36__LAContext_domainStateWithOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained _fetchDomainStateWithOptions:v5 error:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_fetchDomainStateWithOptions:(id)options error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = LALogCategoryForOptions();
  if (v7)
  {
    v8 = [(LAContext *)self description];
    v9 = LALogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_1A784E000, v9, OS_LOG_TYPE_DEFAULT, "DomainState on %{public}@", &buf, 0xCu);
    }
  }

  else
  {
    v8 = 0;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__5;
  v37 = __Block_byref_object_dispose__5;
  v38 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__5;
  v32 = __Block_byref_object_dispose__5;
  v33 = 0;
  client = self->_client;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __48__LAContext__fetchDomainStateWithOptions_error___block_invoke;
  v23 = &unk_1E77CC6E8;
  v27 = v7;
  v11 = v8;
  v24 = v11;
  p_buf = &buf;
  v26 = &v28;
  [(LAClient *)client getDomainStateWithOptions:optionsCopy synchronous:1 reply:&v20];
  v12 = [LADomainState alloc];
  v13 = [(LADomainState *)v12 initWithResult:*(*(&buf + 1) + 40), v20, v21, v22, v23];
  v14 = MEMORY[0x1E696AD98];
  biometry = [(LADomainState *)v13 biometry];
  v16 = [v14 numberWithInteger:{objc_msgSend(biometry, "biometryType")}];
  v17 = _cachedBiometryType;
  _cachedBiometryType = v16;

  if (error)
  {
    *error = v29[5];
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&buf, 8);

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

void __48__LAContext__fetchDomainStateWithOptions_error___block_invoke(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1[7])
  {
    v7 = LALogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      if (v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = v6;
      }

      v16 = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_DEFAULT, "DomainState on %{public}@ returned: %{public}@", &v16, 0x16u);
    }
  }

  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = *(a1[6] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)setCredential:(id)credential type:(int64_t)type options:(id)options error:(id *)error
{
  optionsCopy = options;
  credentialCopy = credential;
  LOBYTE(error) = [(LAContext *)self _setCredential:credentialCopy type:type options:optionsCopy log:16 cid:+[LAContext error:"newCommandId"], error];

  return error;
}

void __55__LAContext__setCredential_type_options_log_cid_error___block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

- (void)setCredential:(id)credential type:(int64_t)type options:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  credentialCopy = credential;
  [(LAContext *)self _setCredential:credentialCopy type:type options:optionsCopy log:16 cid:+[LAContext reply:"newCommandId"], replyCopy];
}

- (void)_setCredential:(id)credential type:(int64_t)type options:(id)options log:(int64_t)log cid:(unsigned int)cid reply:(id)reply
{
  v46 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  optionsCopy = options;
  replyCopy = reply;
  v14 = [(LAContext *)self description];
  v15 = LALogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109890;
    HIDWORD(buf) = type;
    v40 = 2114;
    v41 = optionsCopy;
    v42 = 2114;
    v43 = v14;
    v44 = 1024;
    cidCopy = cid;
    _os_log_impl(&dword_1A784E000, v15, OS_LOG_TYPE_INFO, "setCredential:type:%d options:%{public}@ on %{public}@ cid:%u", &buf, 0x22u);
  }

  if ([(LAContext *)self _checkCredentialRequiresExtractionEntitlements:type])
  {
    mEMORY[0x1E69AD278] = [MEMORY[0x1E69AD278] sharedInstance];
    featureFlagExtractableCredentialProtectionEnabled = [mEMORY[0x1E69AD278] featureFlagExtractableCredentialProtectionEnabled];

    if ((featureFlagExtractableCredentialProtectionEnabled & 1) == 0)
    {
      v27 = *MEMORY[0x1E69AD0F8];
      entitlementsChecker = [(LAContext *)self entitlementsChecker];
      v38 = v27;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v37 = 0;
      v20 = [entitlementsChecker checkHasEntitlements:v19 error:&v37];
      v21 = v37;

      if ((v20 & 1) == 0 && os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [LAContext _setCredential:type:options:log:cid:reply:];
      }
    }
  }

  objc_initWeak(&buf, self);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __55__LAContext__setCredential_type_options_log_cid_reply___block_invoke;
  v30[3] = &unk_1E77CC738;
  objc_copyWeak(v35, &buf);
  v22 = v15;
  v31 = v22;
  v35[1] = type;
  v23 = v14;
  v32 = v23;
  cidCopy2 = cid;
  v24 = replyCopy;
  v34 = v24;
  v25 = optionsCopy;
  v33 = v25;
  [(LAContext *)self _encodeCredential:credentialCopy type:type reply:v30];

  objc_destroyWeak(v35);
  objc_destroyWeak(&buf);

  v26 = *MEMORY[0x1E69E9840];
}

void __55__LAContext__setCredential_type_options_log_cid_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = *(a1 + 32);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 72);
        v17 = *(a1 + 40);
        v18 = *(a1 + 80);
        *buf = 67110146;
        v27 = v5 != 0;
        v28 = 1024;
        v29 = v16;
        v30 = 2114;
        v31 = v17;
        v32 = 1024;
        v33 = v18;
        v34 = 2114;
        v35 = v6;
        _os_log_error_impl(&dword_1A784E000, v9, OS_LOG_TYPE_ERROR, "setCredential:%d type:%d on %{public}@ cid:%u returned %{public}@ when attempting to encode credential", buf, 0x28u);
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v10 = *(WeakRetained + 10);
      v11 = *(a1 + 72);
      v12 = *(a1 + 48);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __55__LAContext__setCredential_type_options_log_cid_reply___block_invoke_92;
      v19[3] = &unk_1E77CC5F8;
      v20 = *(a1 + 32);
      v13 = v5;
      v14 = *(a1 + 72);
      v21 = v13;
      v24 = v14;
      v22 = *(a1 + 40);
      v25 = *(a1 + 80);
      v23 = *(a1 + 56);
      [v10 setCredential:v13 type:v11 options:v12 reply:v19];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __55__LAContext__setCredential_type_options_log_cid_reply___block_invoke_92(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(*(a1 + 32), v7))
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 40) != 0;
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v12 = @"success";
    if (!a2)
    {
      v12 = v5;
    }

    v15[0] = 67110146;
    v15[1] = v9;
    v16 = 1024;
    v17 = v10;
    v18 = 2114;
    v19 = v8;
    v20 = 1024;
    v21 = v11;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1A784E000, v6, v7, "setCredential:%d type:%d on %{public}@ cid:%u returned %{public}@", v15, 0x28u);
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v5);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)credentialOfType:(int64_t)type reply:(id)reply
{
  v35 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v7 = LALogForCategory();
  v8 = +[LAContext newCommandId];
  v9 = [(LAContext *)self description];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109634;
    HIDWORD(buf) = type;
    v31 = 2114;
    v32 = v9;
    v33 = 1024;
    v34 = v8;
    _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_INFO, "credentialOfType:%d on %{public}@ cid:%u", &buf, 0x18u);
  }

  if ([(LAContext *)self _checkCredentialRequiresExtractionEntitlements:type])
  {
    mEMORY[0x1E69AD278] = [MEMORY[0x1E69AD278] sharedInstance];
    featureFlagExtractableCredentialProtectionEnabled = [mEMORY[0x1E69AD278] featureFlagExtractableCredentialProtectionEnabled];

    if ((featureFlagExtractableCredentialProtectionEnabled & 1) == 0)
    {
      v21 = *MEMORY[0x1E69AD0F0];
      entitlementsChecker = [(LAContext *)self entitlementsChecker];
      v29 = v21;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      v28 = 0;
      v14 = [entitlementsChecker checkHasEntitlements:v13 error:&v28];
      v15 = v28;

      if ((v14 & 1) == 0 && os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [LAContext credentialOfType:reply:];
      }
    }
  }

  objc_initWeak(&buf, self);
  client = self->_client;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __36__LAContext_credentialOfType_reply___block_invoke;
  v22[3] = &unk_1E77CC788;
  objc_copyWeak(v26, &buf);
  v17 = v7;
  v23 = v17;
  v26[1] = type;
  v18 = v9;
  v24 = v18;
  v27 = v8;
  v19 = replyCopy;
  v25 = v19;
  [(LAClient *)client credentialOfType:type reply:v22];

  objc_destroyWeak(v26);
  objc_destroyWeak(&buf);

  v20 = *MEMORY[0x1E69E9840];
}

void __36__LAContext_credentialOfType_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      if (v5)
      {
        v8 = *(a1 + 32);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          __36__LAContext_credentialOfType_reply___block_invoke_cold_1(v8);
        }
      }

      v9 = [MEMORY[0x1E696EE88] error:v6 hasCode:-1008];
      v10 = *(a1 + 32);
      if (v9)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 64);
          v12 = *(a1 + 40);
          v13 = *(a1 + 72);
          *buf = 67109634;
          v25 = v11;
          v26 = 2114;
          v27 = v12;
          v28 = 1024;
          v29 = v13;
          _os_log_impl(&dword_1A784E000, v10, OS_LOG_TYPE_DEFAULT, "credentialOfType:%d on %{public}@ cid:%u returned", buf, 0x18u);
        }
      }

      else if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        __36__LAContext_credentialOfType_reply___block_invoke_cold_2(a1);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v14 = *(a1 + 64);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __36__LAContext_credentialOfType_reply___block_invoke_93;
      v18[3] = &unk_1E77CC760;
      v15 = *(a1 + 32);
      v16 = *(a1 + 64);
      v19 = v15;
      v22 = v16;
      v20 = *(a1 + 40);
      v23 = *(a1 + 72);
      v21 = *(a1 + 48);
      [WeakRetained _decodeCredential:v5 type:v14 reply:v18];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __36__LAContext_credentialOfType_reply___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 56);
      v9 = *(a1 + 40);
      v10 = *(a1 + 64);
      v12[0] = 67109634;
      v12[1] = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 1024;
      v16 = v10;
      _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_DEFAULT, "credentialOfType:%d on %{public}@ cid:%u returned", v12, 0x18u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __36__LAContext_credentialOfType_reply___block_invoke_93_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (id)credentialOfType:(int64_t)type error:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_95);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__LAContext_credentialOfType_error___block_invoke_2;
  v11[3] = &unk_1E77CC7B0;
  v13 = &v21;
  v14 = &v15;
  v8 = v7;
  v12 = v8;
  [(LAContext *)self credentialOfType:type reply:v11];
  dispatch_block_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __36__LAContext_credentialOfType_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[4] + 16))();
}

- (BOOL)isCredentialSet:(LACredentialType)type
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = LALogForCategory();
  v6 = +[LAContext newCommandId];
  v7 = [(LAContext *)self description];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    *&buf[4] = type;
    LOWORD(v24) = 2114;
    *(&v24 + 2) = v7;
    WORD5(v24) = 1024;
    HIDWORD(v24) = v6;
    _os_log_impl(&dword_1A784E000, v5, OS_LOG_TYPE_INFO, "isCredentialSet:%d on %{public}@ cid:%u", buf, 0x18u);
  }

  *buf = 0;
  *&v24 = buf;
  *(&v24 + 1) = 0x2020000000;
  v25 = 0;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_97);
  client = self->_client;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __29__LAContext_isCredentialSet___block_invoke_2;
  v16[3] = &unk_1E77CC7D8;
  v20 = buf;
  v10 = v5;
  v17 = v10;
  v21 = type;
  v11 = v7;
  v18 = v11;
  v22 = v6;
  v12 = v8;
  v19 = v12;
  [(LAClient *)client isCredentialSet:type reply:v16];
  dispatch_block_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = *(v24 + 24);

  _Block_object_dispose(buf, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

void __29__LAContext_isCredentialSet___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  *(*(*(a1 + 56) + 8) + 24) = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else if ([MEMORY[0x1E696EE88] error:v5 hasCode:-1008])
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 72);
    v10 = *(a1 + 64);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v11 = @"YES";
    }

    else
    {
      v11 = v5;
    }

    v13[0] = 67109890;
    v13[1] = v10;
    v14 = 2114;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_1A784E000, v6, v7, "isCredentialSet:%d on %{public}@ cid:%u returned %{public}@", v13, 0x22u);
  }

  (*(*(a1 + 48) + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

- (void)setOptions:(id)options forInternalOperation:(int64_t)operation reply:(id)reply
{
  v35 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v10 = LALogForCategory();
  v11 = +[LAContext newCommandId];
  v12 = [(LAContext *)self description];
  v13 = v10;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109890;
    v28 = [optionsCopy hash];
    v29 = 1024;
    operationCopy = operation;
    v31 = 2114;
    v32 = v12;
    v33 = 1024;
    v34 = v11;
    _os_log_impl(&dword_1A784E000, v13, OS_LOG_TYPE_INFO, "setOptions:%x forInternalOperation:%d on %{public}@ cid:%u", buf, 0x1Eu);
  }

  client = self->_client;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __51__LAContext_setOptions_forInternalOperation_reply___block_invoke;
  v20[3] = &unk_1E77CC5F8;
  v21 = v13;
  v22 = optionsCopy;
  v24 = replyCopy;
  operationCopy2 = operation;
  v26 = v11;
  v23 = v12;
  v15 = replyCopy;
  v16 = v12;
  v17 = optionsCopy;
  v18 = v13;
  [(LAClient *)client setOptions:v17 forInternalOperation:operation reply:v20];

  v19 = *MEMORY[0x1E69E9840];
}

void __51__LAContext_setOptions_forInternalOperation_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(*(a1 + 32), v7))
  {
    v8 = *(a1 + 40);
    v9 = v6;
    v10 = [v8 hash];
    v11 = *(a1 + 64);
    v12 = *(a1 + 48);
    v13 = *(a1 + 72);
    v14 = @"success";
    if (!a2)
    {
      v14 = v5;
    }

    v17[0] = 67110146;
    v17[1] = v10;
    v18 = 1024;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 1024;
    v23 = v13;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_1A784E000, v9, v7, "setOptions:%x forInternalOperation:%d on %{public}@ cid:%u returned %{public}@", v17, 0x28u);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, a2, v5);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)optionsForInternalOperation:(int64_t)operation reply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v7 = LALogForCategory();
  v8 = +[LAContext newCommandId];
  v9 = [(LAContext *)self description];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    operationCopy = operation;
    v23 = 2114;
    v24 = v9;
    v25 = 1024;
    v26 = v8;
    _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_INFO, "optionsForInternalOperation:%d on %{public}@ cid:%u", buf, 0x18u);
  }

  client = self->_client;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__LAContext_optionsForInternalOperation_reply___block_invoke;
  v15[3] = &unk_1E77CC800;
  v16 = v7;
  v17 = v9;
  v20 = v8;
  v18 = replyCopy;
  operationCopy2 = operation;
  v11 = replyCopy;
  v12 = v9;
  v13 = v7;
  [(LAClient *)client optionsForInternalOperation:operation reply:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __47__LAContext_optionsForInternalOperation_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = 16 * (v5 == 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    if (v5)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "hash")}];
    }

    else
    {
      v12 = v6;
    }

    v14[0] = 67109890;
    v14[1] = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 1024;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_1A784E000, v7, v8, "optionsForInternalOperation:%d on %{public}@ cid:%u returned %{public}@", v14, 0x22u);
    if (v5)
    {
    }
  }

  (*(*(a1 + 48) + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

- (void)prearmTouchIDWithReply:(id)reply
{
  v22 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = LALogForCategory();
  v6 = +[LAContext newCommandId];
  v7 = [(LAContext *)self description];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v19 = v7;
    v20 = 1024;
    v21 = v6;
    _os_log_impl(&dword_1A784E000, v5, OS_LOG_TYPE_INFO, "prearmTouchIDWithReply on %{public}@ cid:%u", buf, 0x12u);
  }

  client = self->_client;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__LAContext_prearmTouchIDWithReply___block_invoke;
  v13[3] = &unk_1E77CC828;
  v13[4] = self;
  v14 = v5;
  v17 = v6;
  v15 = v7;
  v16 = replyCopy;
  v9 = replyCopy;
  v10 = v7;
  v11 = v5;
  [(LAClient *)client prearmTouchIdWithReply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __36__LAContext_prearmTouchIDWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 8), a2);
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, v8))
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v12 = @"success";
    if (!v6)
    {
      v12 = v7;
    }

    v14 = 138543874;
    v15 = v10;
    v16 = 1024;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_1A784E000, v9, v8, "prearmTouchIDWithReply on %{public}@ cid:%u returned %{public}@", &v14, 0x1Cu);
  }

  (*(*(a1 + 56) + 16))();

  v13 = *MEMORY[0x1E69E9840];
}

- (void)resetWithReply:(id)reply
{
  v22 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = LALogForCategory();
  v6 = +[LAContext newCommandId];
  v7 = [(LAContext *)self description];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v19 = v7;
    v20 = 1024;
    v21 = v6;
    _os_log_impl(&dword_1A784E000, v5, OS_LOG_TYPE_INFO, "resetWithReply on %{public}@ cid:%u", buf, 0x12u);
  }

  client = self->_client;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __28__LAContext_resetWithReply___block_invoke;
  v13[3] = &unk_1E77CC850;
  v14 = v5;
  v15 = v7;
  v17 = v6;
  v16 = replyCopy;
  v9 = replyCopy;
  v10 = v7;
  v11 = v5;
  [(LAClient *)client resetProcessedEvent:0 reply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __28__LAContext_resetWithReply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(*(a1 + 32), v7))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v10 = @"success";
    if (!a2)
    {
      v10 = v5;
    }

    v13 = 138543874;
    v14 = v8;
    v15 = 1024;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_1A784E000, v6, v7, "resetWithReply on %{public}@ cid:%u returned %{public}@", &v13, 0x1Cu);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)authMethodWithReply:(id)reply
{
  v22 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = LALogForCategory();
  v6 = +[LAContext newCommandId];
  v7 = [(LAContext *)self description];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v19 = v7;
    v20 = 1024;
    v21 = v6;
    _os_log_impl(&dword_1A784E000, v5, OS_LOG_TYPE_INFO, "authMethodWithReply on %{public}@ cid:%u", buf, 0x12u);
  }

  client = self->_client;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__LAContext_authMethodWithReply___block_invoke;
  v13[3] = &unk_1E77CC878;
  v14 = v5;
  v15 = v7;
  v17 = v6;
  v16 = replyCopy;
  v9 = replyCopy;
  v10 = v7;
  v11 = v5;
  [(LAClient *)client authMethodWithReply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __33__LAContext_authMethodWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = 16 * (v5 == 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    if (v5)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "hash")}];
    }

    else
    {
      v11 = v6;
    }

    v13 = 138543874;
    v14 = v9;
    v15 = 1024;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_1A784E000, v7, v8, "authMethodWithReply on %{public}@ cid:%u returned %{public}@", &v13, 0x1Cu);
    if (v5)
    {
    }
  }

  (*(*(a1 + 48) + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

void __48__LAContext_setShowingCoachingHint_event_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(*(a1 + 32), v7))
  {
    v8 = *(a1 + 68);
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    v12 = @"success";
    if (!a2)
    {
      v12 = v5;
    }

    v15[0] = 67110146;
    v15[1] = v8;
    v16 = 1024;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 1024;
    v21 = v11;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1A784E000, v6, v7, "setShowingCoachingHint:%d event:%d on %{public}@ cid:%u returned %{public}@", v15, 0x28u);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v5);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)checkContextValidWithError:(id *)error
{
  if (error)
  {
    *error = [(LAClient *)self->_client permanentError];
  }

  permanentError = [(LAClient *)self->_client permanentError];
  v6 = permanentError == 0;

  return v6;
}

- (BOOL)verifyFileVaultUser:(id)user volumeUuid:(id)uuid options:(unint64_t)options error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  userCopy = user;
  uuidCopy = uuid;
  v12 = LALogForCategory();
  v13 = +[LAContext newCommandId];
  v14 = [(LAContext *)self description];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138544386;
    *&buf[4] = userCopy;
    *&buf[12] = 2114;
    *&buf[14] = uuidCopy;
    *&buf[22] = 1024;
    LODWORD(v36) = options;
    WORD2(v36) = 2114;
    *(&v36 + 6) = v14;
    HIWORD(v36) = 1024;
    LODWORD(v37) = v13;
    _os_log_impl(&dword_1A784E000, v12, OS_LOG_TYPE_INFO, "verifyFileVaultUser:%{public}@ volumeUuid:%{public}@ options:%u on %{public}@ cid:%u", buf, 0x2Cu);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v36 = __Block_byref_object_copy__5;
  *(&v36 + 1) = __Block_byref_object_dispose__5;
  v37 = 0;
  client = self->_client;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __58__LAContext_verifyFileVaultUser_volumeUuid_options_error___block_invoke;
  v23[3] = &unk_1E77CC8C8;
  v16 = v12;
  v24 = v16;
  v17 = userCopy;
  v25 = v17;
  v18 = uuidCopy;
  v26 = v18;
  v19 = v14;
  v30 = v13;
  v27 = v19;
  v28 = &v31;
  v29 = buf;
  [(LAClient *)client verifyFileVaultUser:v17 volumeUuid:v18 options:options reply:v23];
  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  v20 = *(v32 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v31, 8);

  v21 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

void __58__LAContext_verifyFileVaultUser_volumeUuid_options_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(*(a1 + 32), v7))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 80);
    v12 = @"success";
    if (!a2)
    {
      v12 = v5;
    }

    v16 = 138544386;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 1024;
    v23 = v11;
    v24 = 2114;
    v25 = v12;
    _os_log_impl(&dword_1A784E000, v6, v7, "verifyFileVaultUser:%{public}@ volumeUuid:%{public}@ on %{public}@ cid:%u returned %{public}@", &v16, 0x30u);
  }

  *(*(*(a1 + 64) + 8) + 24) = a2;
  v13 = *(*(a1 + 72) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_serverPropertyValueForOption:(int64_t)option log:(int64_t)log
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = LALogForCategory();
  v7 = +[LAContext newCommandId];
  v8 = [(LAContext *)self description];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    optionCopy2 = option;
    v21 = 2114;
    v22 = v8;
    v23 = 1024;
    v24 = v7;
    _os_log_impl(&dword_1A784E000, v6, OS_LOG_TYPE_INFO, "serverPropertyValueForOption:%d on %{public}@ cid:%u", buf, 0x18u);
  }

  client = self->_client;
  v18 = 0;
  v10 = [(LAClient *)client serverPropertyForOption:option error:&v18];
  v11 = v18;
  null = [MEMORY[0x1E695DFB0] null];
  v13 = [v10 isEqual:null];

  if (v13)
  {

    v10 = 0;
  }

  v14 = 16 * (v11 != 0);
  if (os_log_type_enabled(v6, v14))
  {
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v10;
    }

    *buf = 67109890;
    optionCopy2 = option;
    v21 = 2114;
    v22 = v8;
    v23 = 1024;
    v24 = v7;
    v25 = 2114;
    v26 = v15;
    _os_log_impl(&dword_1A784E000, v6, v14, "serverPropertyValueForOption:%d on %{public}@ cid:%u returned %{public}@", buf, 0x22u);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_setServerPropertyForOption:(int64_t)option value:(id)value log:(int64_t)log
{
  v29 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v8 = LALogForCategory();
  v9 = +[LAContext newCommandId];
  v10 = [(LAContext *)self description];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109890;
    optionCopy2 = option;
    v21 = 2114;
    v22 = valueCopy;
    v23 = 2114;
    v24 = v10;
    v25 = 1024;
    v26 = v9;
    _os_log_impl(&dword_1A784E000, v8, OS_LOG_TYPE_INFO, "setServerPropertyForOption:%d value:%{public}@ on %{public}@ cid:%u", buf, 0x22u);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A784E000, v8, OS_LOG_TYPE_INFO, "Invalidating domain state cache", buf, 2u);
  }

  [(LACCacheSync *)self->_domainStateCache invalidate];
  client = self->_client;
  null = valueCopy;
  if (!valueCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18 = 0;
  v13 = [(LAClient *)client setServerPropertyForOption:option value:null error:&v18];
  v14 = v18;
  if (!valueCopy)
  {
  }

  v15 = 16 * (v14 != 0);
  if (os_log_type_enabled(v8, v15))
  {
    v16 = @"success";
    *buf = 67110146;
    if (!v13)
    {
      v16 = v14;
    }

    optionCopy2 = option;
    v21 = 2114;
    v22 = valueCopy;
    v23 = 2114;
    v24 = v10;
    v25 = 1024;
    v26 = v9;
    v27 = 2114;
    v28 = v16;
    _os_log_impl(&dword_1A784E000, v8, v15, "setServerPropertyForOption:%d value:%{public}@ on %{public}@ cid:%u returned %{public}@", buf, 0x2Cu);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (NSTimeInterval)touchIDAuthenticationAllowableReuseDuration
{
  v2 = [(LAContext *)self _serverPropertyValueForOption:1017 log:8];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setTouchIDAuthenticationAllowableReuseDuration:(NSTimeInterval)touchIDAuthenticationAllowableReuseDuration
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:touchIDAuthenticationAllowableReuseDuration];
  [(LAContext *)self _setServerPropertyForOption:1017 value:v4 log:8];
}

- (void)addContextObserver:(id)observer
{
  observerCopy = observer;
  observers = [(LAContext *)self observers];

  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(LAContext *)self setObservers:weakObjectsHashTable];
  }

  observers2 = [(LAContext *)self observers];
  [observers2 addObject:observerCopy];
}

- (void)removeContextObserver:(id)observer
{
  observerCopy = observer;
  observers = [(LAContext *)self observers];
  if (observers)
  {
    v5 = observers;
    observers2 = [(LAContext *)self observers];
    v7 = [observers2 containsObject:observerCopy];

    if (v7)
    {
      observers3 = [(LAContext *)self observers];
      [observers3 removeObject:observerCopy];
    }
  }
}

- (void)_notifyObserversAfterInvalidation
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    observers = [(LAContext *)self observers];
    *buf = 67109378;
    v24 = [observers count];
    v25 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1A784E000, v3, OS_LOG_TYPE_INFO, "Will notify %d observers of changes in %{public}@", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DEC8];
  observers2 = [(LAContext *)self observers];
  allObjects = [observers2 allObjects];
  v8 = allObjects;
  if (allObjects)
  {
    v9 = allObjects;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [v5 arrayWithArray:v9];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 contextDidBecomeInvalid:{self, v18}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_encodeCredential:(id)credential type:(int64_t)type reply:(id)reply
{
  credentialCopy = credential;
  replyCopy = reply;
  v10 = credentialCopy;
  v11 = v10;
  if (v10 && [v10 length] && (objc_msgSend(MEMORY[0x1E69AD248], "checkCredentialRequiresEncoding:", type) & 1) != 0)
  {
    objc_initWeak(&location, self);
    client = self->_client;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__LAContext__encodeCredential_type_reply___block_invoke;
    v13[3] = &unk_1E77CB850;
    objc_copyWeak(&v16, &location);
    v15 = replyCopy;
    v14 = v11;
    [(LAClient *)client credentialEncodingSeedWithReply:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, v11, 0);
  }
}

void __42__LAContext__encodeCredential_type_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v9 = [WeakRetained credentialCoder];
      v10 = *(a1 + 32);
      v15 = 0;
      v11 = [v9 encode:v10 seed:v5 error:&v15];
      v12 = v15;

      v13 = *(a1 + 40);
      if (v11)
      {
        v14 = [v11 data];
        (*(v13 + 16))(v13, v14, 0);
      }

      else
      {
        (*(v13 + 16))(v13, 0, v12);
      }
    }
  }
}

- (void)_decodeCredential:(id)credential type:(int64_t)type reply:(id)reply
{
  credentialCopy = credential;
  replyCopy = reply;
  if (credentialCopy && [credentialCopy length] && (objc_msgSend(MEMORY[0x1E69AD248], "checkCredentialRequiresEncoding:", type) & 1) != 0)
  {
    objc_initWeak(&location, self);
    client = self->_client;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__LAContext__decodeCredential_type_reply___block_invoke;
    v11[3] = &unk_1E77CB850;
    objc_copyWeak(&v14, &location);
    v13 = replyCopy;
    v12 = credentialCopy;
    [(LAClient *)client credentialEncodingSeedWithReply:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, credentialCopy, 0);
  }
}

void __42__LAContext__decodeCredential_type_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v9 = [WeakRetained credentialCoder];
      v10 = *(a1 + 32);
      v15 = 0;
      v11 = [v9 decode:v10 seed:v5 error:&v15];
      v12 = v15;

      v13 = *(a1 + 40);
      if (v11)
      {
        v14 = [v11 data];
        (*(v13 + 16))(v13, v14, 0);
      }

      else
      {
        (*(v13 + 16))(v13, 0, v12);
      }
    }
  }
}

- (id)_nullCharacterData
{
  v4 = 0;
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:&v4 length:1];

  return v2;
}

- (LACEntitlementsChecker)entitlementsChecker
{
  entitlementsChecker = self->_entitlementsChecker;
  if (!entitlementsChecker)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69AD260]);
    v5 = self->_entitlementsChecker;
    self->_entitlementsChecker = v4;

    entitlementsChecker = self->_entitlementsChecker;
  }

  return entitlementsChecker;
}

- (LACContextCredentialCoder)credentialCoder
{
  credentialCoder = self->_credentialCoder;
  if (!credentialCoder)
  {
    v4 = objc_alloc(MEMORY[0x1E69AD248]);
    externalizedContext = [(LAContext *)self externalizedContext];
    v6 = [v4 initWithExternalizedContextRef:externalizedContext];
    v7 = self->_credentialCoder;
    self->_credentialCoder = v6;

    credentialCoder = self->_credentialCoder;
  }

  return credentialCoder;
}

- (BOOL)interactionNotAllowed
{
  v2 = [(LAContext *)self _serverPropertyValueForOption:1000 log:8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)evaluateBoolOption:(int64_t)option options:(id)options property:(id)property
{
  v26 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  v8 = MEMORY[0x1E696AD98];
  optionsCopy = options;
  v10 = [v8 numberWithInteger:option];
  v11 = [optionsCopy objectForKey:v10];

  if (v11)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (propertyCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    v14 = 0;
    if (isKindOfClass)
    {
      goto LABEL_10;
    }

LABEL_14:
    bOOLValue5 = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    bOOLValue = [propertyCopy BOOLValue];
    goto LABEL_16;
  }

  isKindOfClass = 0;
  if (!propertyCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();
  v14 = v13;
  if (isKindOfClass & v13)
  {
    bOOLValue2 = [propertyCopy BOOLValue];
    if (bOOLValue2 != [v11 BOOLValue])
    {
      v16 = LALogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v21[0] = 67109632;
        v21[1] = option;
        v22 = 1024;
        bOOLValue3 = [v11 BOOLValue];
        v24 = 1024;
        bOOLValue4 = [propertyCopy BOOLValue];
        _os_log_error_impl(&dword_1A784E000, v16, OS_LOG_TYPE_ERROR, "Discrepancy between option %d value (%d) and property value (%d)", v21, 0x14u);
      }
    }

    v14 = 1;
  }

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  bOOLValue5 = [v11 BOOLValue];
  if (v14)
  {
    goto LABEL_15;
  }

LABEL_11:
  bOOLValue = 0;
LABEL_16:

  v19 = *MEMORY[0x1E69E9840];
  return (bOOLValue5 | bOOLValue) & 1;
}

void __29__LAContext_encodeWithCoder___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 56);
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

void __29__LAContext_encodeWithCoder___block_invoke_55_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 48);
  v8 = *(a1 + 52);
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x1E69E9840];
}

void __29__LAContext_encodeWithCoder___block_invoke_55_cold_2(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 52);
  v6 = 138543874;
  v7 = v2;
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = v4;
  _os_log_debug_impl(&dword_1A784E000, a2, OS_LOG_TYPE_DEBUG, "Encoded %{public}@ for transfer to pid:%d cid:%u", &v6, 0x18u);
  v5 = *MEMORY[0x1E69E9840];
}

void __66__LAContext_setCredential_forProcessedEvent_credentialType_reply___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 40);
  v10 = *(a1 + 80);
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_setCredential:type:options:log:cid:reply:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3(&dword_1A784E000, v0, v1, "Stashing a LACredentialTypeExtractablePassword will require the '%@' entitlement. The operation will be allowed for now. Error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)credentialOfType:reply:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3(&dword_1A784E000, v0, v1, "Extracting a LACredentialTypeExtractablePassword will require the '%@' entitlement. The operation will be allowed for now. Error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void __36__LAContext_credentialOfType_reply___block_invoke_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  v2 = *(a1 + 40);
  v3 = *(a1 + 72);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
  v9 = *MEMORY[0x1E69E9840];
}

void __36__LAContext_credentialOfType_reply___block_invoke_93_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
  v9 = *MEMORY[0x1E69E9840];
}

@end
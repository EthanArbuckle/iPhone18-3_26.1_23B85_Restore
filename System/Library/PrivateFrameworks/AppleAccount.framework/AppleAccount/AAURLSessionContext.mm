@interface AAURLSessionContext
+ (id)_relevantHTTPStatusCodes;
- (AAAbsintheSigner)absintheSigner;
- (AARemoteServer)remoteServer;
- (AAURLSessionContext)initWithCoder:(id)coder;
- (id)_initRequiringSigning:(BOOL)signing appleIDSession:(id)session;
- (id)copyWithZone:(_NSZone *)zone;
- (id)relevantHTTPStatusCodes;
- (void)URLSession:(id)session task:(id)task getAppleIDHeadersForResponse:(id)response completionHandler:(id)handler;
- (void)_additionalAbsintheHeadersForData:(id)data completion:(id)completion;
- (void)_additionalHeadersForRequest:(id)request completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAURLSessionContext

- (id)relevantHTTPStatusCodes
{
  relevantHTTPStatusCodes = [(AKAppleIDSession *)self->_appleIDSession relevantHTTPStatusCodes];
  _relevantHTTPStatusCodes = [objc_opt_class() _relevantHTTPStatusCodes];
  if (relevantHTTPStatusCodes)
  {
    v4 = [relevantHTTPStatusCodes setByAddingObjectsFromSet:_relevantHTTPStatusCodes];

    _relevantHTTPStatusCodes = v4;
  }

  return _relevantHTTPStatusCodes;
}

+ (id)_relevantHTTPStatusCodes
{
  if (_relevantHTTPStatusCodes_onceToken != -1)
  {
    +[AAURLSessionContext _relevantHTTPStatusCodes];
  }

  v3 = _relevantHTTPStatusCodes_relevantStatusCodes;

  return v3;
}

uint64_t __47__AAURLSessionContext__relevantHTTPStatusCodes__block_invoke()
{
  _relevantHTTPStatusCodes_relevantStatusCodes = [MEMORY[0x1E695DFD8] set];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initRequiringSigning:(BOOL)signing appleIDSession:(id)session
{
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = AAURLSessionContext;
  v8 = [(AAURLSessionContext *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_requiresSigning = signing;
    objc_storeStrong(&v8->_appleIDSession, session);
    v9->_signerLock._os_unfair_lock_opaque = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = v9;
    v12 = dispatch_queue_create("com.apple.appleaccount.URLSigningQ", v10);
    signingQueue = v11->_signingQueue;
    v11->_signingQueue = v12;
  }

  return v9;
}

- (AAURLSessionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AAURLSessionContext;
  v5 = [(AAURLSessionContext *)&v13 init];
  if (v5)
  {
    v5->_requiresSigning = [coderCopy decodeBoolForKey:@"RequiresSigning"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppleIDSession"];
    appleIDSession = v5->_appleIDSession;
    v5->_appleIDSession = v6;

    v5->_signerLock._os_unfair_lock_opaque = 0;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = v5;
    v10 = dispatch_queue_create("com.apple.appleaccount.URLSigningQ", v8);
    signingQueue = v9->_signingQueue;
    v9->_signingQueue = v10;
  }

  return v5;
}

- (AARemoteServer)remoteServer
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__AAURLSessionContext_remoteServer__block_invoke;
  v5[3] = &unk_1E7C9C2A8;
  v5[4] = self;
  os_unfair_lock_lock(&self->_signerLock);
  v3 = __35__AAURLSessionContext_remoteServer__block_invoke(v5);
  os_unfair_lock_unlock(&self->_signerLock);

  return v3;
}

id __35__AAURLSessionContext_remoteServer__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = +[AARemoteServer sharedServer];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  return v2;
}

- (AAAbsintheSigner)absintheSigner
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AAURLSessionContext_absintheSigner__block_invoke;
  v5[3] = &unk_1E7C9C2A8;
  v5[4] = self;
  os_unfair_lock_lock(&self->_signerLock);
  v3 = __37__AAURLSessionContext_absintheSigner__block_invoke(v5);
  os_unfair_lock_unlock(&self->_signerLock);

  return v3;
}

id __37__AAURLSessionContext_absintheSigner__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = +[AAAbsintheSigner sharedSigner];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  return v2;
}

- (void)_additionalHeadersForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (_AAURLSessionDefaultHeaders_onceToken != -1)
  {
    [AAURLSessionContext _additionalHeadersForRequest:completion:];
  }

  v8 = [_AAURLSessionDefaultHeaders_defaultHeaders mutableCopy];
  if ([(AAURLSessionContext *)self requiresSigning])
  {
    aa_HTTPBody = [requestCopy aa_HTTPBody];
    remoteServer = [(AAURLSessionContext *)self remoteServer];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__AAURLSessionContext__additionalHeadersForRequest_completion___block_invoke;
    v12[3] = &unk_1E7C9C320;
    v13 = v8;
    selfCopy = self;
    v15 = aa_HTTPBody;
    v16 = completionCopy;
    v11 = aa_HTTPBody;
    [remoteServer configurationWithCompletion:v12];
  }

  else
  {
    v11 = [v8 copy];
    (*(completionCopy + 2))(completionCopy, v11, 0);
  }
}

void __63__AAURLSessionContext__additionalHeadersForRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (_AAURLSessionAdditionalDeviceHeaders_onceToken != -1)
  {
    __63__AAURLSessionContext__additionalHeadersForRequest_completion___block_invoke_cold_1();
  }

  v7 = _AAURLSessionAdditionalDeviceHeaders_additionalDeviceHeaders;
  if (v7)
  {
    [*(a1 + 32) addEntriesFromDictionary:v7];
  }

  v8 = dispatch_group_create();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__AAURLSessionContext__additionalHeadersForRequest_completion___block_invoke_2;
  aBlock[3] = &unk_1E7C9C2D0;
  v14 = *(a1 + 32);
  v9 = v14.i64[0];
  v19 = vextq_s8(v14, v14, 8uLL);
  v10 = v8;
  v20 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [v5 absintheEnable];
  [v12 unsignedIntegerValue];
  dispatch_group_enter(v10);
  [*(a1 + 40) _additionalAbsintheHeadersForData:*(a1 + 48) completion:v11];
  v13 = *(*(a1 + 40) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AAURLSessionContext__additionalHeadersForRequest_completion___block_invoke_4;
  block[3] = &unk_1E7C9C2F8;
  v17 = *(a1 + 56);
  v16 = *(a1 + 32);
  dispatch_group_notify(v10, v13, block);
}

void __63__AAURLSessionContext__additionalHeadersForRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AAURLSessionContext__additionalHeadersForRequest_completion___block_invoke_3;
  block[3] = &unk_1E7C9B020;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_sync(v4, block);
}

void __63__AAURLSessionContext__additionalHeadersForRequest_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addEntriesFromDictionary:?];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __63__AAURLSessionContext__additionalHeadersForRequest_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)_additionalAbsintheHeadersForData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  absintheSigner = [(AAURLSessionContext *)self absintheSigner];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AAURLSessionContext__additionalAbsintheHeadersForData_completion___block_invoke;
  v10[3] = &unk_1E7C9C348;
  v11 = completionCopy;
  v9 = completionCopy;
  [absintheSigner signatureForData:dataCopy completion:v10];
}

void __68__AAURLSessionContext__additionalAbsintheHeadersForData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a3;
  v5 = MEMORY[0x1E695DF90];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  v8 = [v6 base64EncodedStringWithOptions:0];

  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:@"X-MMe-Nas-Qualify"];
  }

  v9 = _AAErrorUnderlyingError(v16);
  v10 = v9;
  if (v9)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "code")}];
    v12 = [v11 stringValue];
    [v7 setObject:v12 forKeyedSubscript:@"X-MMe-Nas-E"];
  }

  v13 = [v7 count];
  v14 = *(a1 + 32);
  if (v13)
  {
    v15 = [v7 copy];
    (*(v14 + 16))(v14, v15, v16);
  }

  else
  {
    (*(v14 + 16))(v14, 0, v16);
  }
}

- (void)encodeWithCoder:(id)coder
{
  requiresSigning = self->_requiresSigning;
  coderCopy = coder;
  [coderCopy encodeBool:requiresSigning forKey:@"RequiresSigning"];
  [coderCopy encodeObject:self->_appleIDSession forKey:@"AppleIDSession"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(AKAppleIDSession *)self->_appleIDSession copyWithZone:?];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "_initRequiringSigning:appleIDSession:", self->_requiresSigning, v5}];

  return v6;
}

- (void)URLSession:(id)session task:(id)task getAppleIDHeadersForResponse:(id)response completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  if (!sessionCopy)
  {
    [AAURLSessionContext URLSession:a2 task:self getAppleIDHeadersForResponse:? completionHandler:?];
    if (taskCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [AAURLSessionContext URLSession:a2 task:self getAppleIDHeadersForResponse:? completionHandler:?];
    goto LABEL_3;
  }

  if (!taskCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  mEMORY[0x1E695AC78] = [MEMORY[0x1E695AC78] sharedSession];
  currentRequest = [taskCopy currentRequest];
  v17 = [mEMORY[0x1E695AC78] dataTaskWithRequest:currentRequest];

  appleIDSession = self->_appleIDSession;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__AAURLSessionContext_URLSession_task_getAppleIDHeadersForResponse_completionHandler___block_invoke;
  v22[3] = &unk_1E7C9C398;
  v23 = v17;
  selfCopy = self;
  v25 = taskCopy;
  v26 = handlerCopy;
  v19 = handlerCopy;
  v20 = taskCopy;
  v21 = v17;
  [(AKAppleIDSession *)appleIDSession URLSession:sessionCopy task:v21 getAppleIDHeadersForResponse:responseCopy completionHandler:v22];
}

void __86__AAURLSessionContext_URLSession_task_getAppleIDHeadersForResponse_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) cancel];
  if (a2)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) currentRequest];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__AAURLSessionContext_URLSession_task_getAppleIDHeadersForResponse_completionHandler___block_invoke_2;
    v8[3] = &unk_1E7C9C370;
    v9 = v5;
    v10 = *(a1 + 56);
    [v6 _additionalHeadersForRequest:v7 completion:v8];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __86__AAURLSessionContext_URLSession_task_getAppleIDHeadersForResponse_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v11;
  v7 = v5;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v11 && v8)
  {
    v10 = [v8 aaf_dictionaryByAddingEntriesFromDictionary:?];
    (*(v9 + 16))(v9, 1, v10);
  }

  else
  {
    if (v8)
    {
      v6 = v8;
    }

    (*(v9 + 16))(v9, 1, v6);
  }
}

- (void)URLSession:(uint64_t)a1 task:(uint64_t)a2 getAppleIDHeadersForResponse:completionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAURLSessionContext.m" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"session"}];
}

- (void)URLSession:(uint64_t)a1 task:(uint64_t)a2 getAppleIDHeadersForResponse:completionHandler:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAURLSessionContext.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"task"}];
}

@end
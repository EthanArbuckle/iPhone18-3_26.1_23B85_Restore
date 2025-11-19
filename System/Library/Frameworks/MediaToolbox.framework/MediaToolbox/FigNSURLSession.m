@interface FigNSURLSession
- (FigNSURLSession)initWithClientBundleIdentifier:(id)a3 clientPersonaIdentifier:(id)a4 dispatchQueue:(id)a5 useNWLoader:(BOOL)a6;
- (FigOpaqueAssertion)acquireAssertion;
- (unsigned)acquireOSTransaction;
- (void)acquireAssertion;
- (void)dealloc;
- (void)releaseOSTransaction;
@end

@implementation FigNSURLSession

- (FigOpaqueAssertion)acquireAssertion
{
  v7 = 0;
  if (!self->_weakAssertion || (v7 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    v3 = FigNSURLSessionAssertionCreate(*MEMORY[0x1E695E480], self, figNSURLSessionAssertionFinalize, &v7);
    if (v3)
    {
      [(FigNSURLSession *)v3 acquireAssertion];
      return v8;
    }

    [(FigNSURLSession *)self setAssertionCount:[(FigNSURLSession *)self assertionCount]+ 1];
    v4 = self;
    weakAssertion = self->_weakAssertion;
    if (weakAssertion)
    {
      CFRelease(weakAssertion);
    }

    self->_weakAssertion = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  [(FigNSURLSession *)self setDoomTime:0, v7];
  return v7;
}

- (FigNSURLSession)initWithClientBundleIdentifier:(id)a3 clientPersonaIdentifier:(id)a4 dispatchQueue:(id)a5 useNWLoader:(BOOL)a6
{
  v6 = self;
  if (!a3)
  {
    [FigNSURLSession initWithClientBundleIdentifier:? clientPersonaIdentifier:? dispatchQueue:? useNWLoader:?];
    goto LABEL_19;
  }

  if (!a5)
  {
    [FigNSURLSession initWithClientBundleIdentifier:? clientPersonaIdentifier:? dispatchQueue:? useNWLoader:?];
    goto LABEL_19;
  }

  v8 = a6;
  v19.receiver = self;
  v19.super_class = FigNSURLSession;
  v11 = [(FigNSURLSession *)&v19 init];
  v6 = v11;
  if (!v11)
  {
    return v6;
  }

  v11->_usesNWLoader = v8;
  v11->_clientBundleIdentifier = a3;
  v6->_clientPersonaIdentifier = a4;
  dispatch_retain(a5);
  v6->_dispatchQueue = a5;
  v12 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  v6->_configuration = v12;
  if (!v12)
  {
    [FigNSURLSession initWithClientBundleIdentifier:? clientPersonaIdentifier:? dispatchQueue:? useNWLoader:?];
    goto LABEL_19;
  }

  [(NSURLSessionConfiguration *)v12 set_timingDataOptions:-1];
  if (v6->_usesNWLoader)
  {
    [(NSURLSessionConfiguration *)v6->_configuration set_usesNWLoader:v8];
  }

  NSURLSessionDataDelegate = _FigHTTPRequestSessionCreateNSURLSessionDataDelegate(0, &v6->_dataDelegate);
  v14 = NSURLSessionDataDelegate;
  if (!v6->_dataDelegate)
  {
    [FigNSURLSession initWithClientBundleIdentifier:&v20 clientPersonaIdentifier:? dispatchQueue:? useNWLoader:?];
    goto LABEL_19;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v6->_opQueue = v15;
  if (!v15)
  {
    [FigNSURLSession initWithClientBundleIdentifier:? clientPersonaIdentifier:? dispatchQueue:? useNWLoader:?];
    goto LABEL_19;
  }

  [(NSOperationQueue *)v15 setUnderlyingQueue:a5];
  v16 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v6->_configuration delegate:v6->_dataDelegate delegateQueue:v6->_opQueue];
  v6->_session = v16;
  if (!v16)
  {
    [FigNSURLSession initWithClientBundleIdentifier:? clientPersonaIdentifier:? dispatchQueue:? useNWLoader:?];
LABEL_19:
    if (!v20)
    {
      return v6;
    }

    goto LABEL_11;
  }

  v17 = v16;
  if (v14)
  {
LABEL_11:

    return 0;
  }

  return v6;
}

- (unsigned)acquireOSTransaction
{
  if (self->_transaction)
  {
    return 1;
  }

  v4 = FigOSTransactionCreate();
  self->_transaction = v4;
  return v4 != 0;
}

- (void)releaseOSTransaction
{
  transaction = self->_transaction;
  if (transaction)
  {

    self->_transaction = 0;
  }
}

- (void)dealloc
{
  [(NSURLSession *)self->_session invalidateAndCancel];

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  weakAssertion = self->_weakAssertion;
  if (weakAssertion)
  {
    CFRelease(weakAssertion);
  }

  v5.receiver = self;
  v5.super_class = FigNSURLSession;
  [(FigNSURLSession *)&v5 dealloc];
}

- (void)acquireAssertion
{
  fig_log_get_emitter();
  FigSignalErrorAtGM();
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = 0;
}

- (uint64_t)initWithClientBundleIdentifier:(_DWORD *)a1 clientPersonaIdentifier:dispatchQueue:useNWLoader:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)initWithClientBundleIdentifier:(_DWORD *)a1 clientPersonaIdentifier:dispatchQueue:useNWLoader:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)initWithClientBundleIdentifier:(uint64_t)a1 clientPersonaIdentifier:(_DWORD *)a2 dispatchQueue:useNWLoader:.cold.3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

- (uint64_t)initWithClientBundleIdentifier:(_DWORD *)a1 clientPersonaIdentifier:dispatchQueue:useNWLoader:.cold.4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)initWithClientBundleIdentifier:(_DWORD *)a1 clientPersonaIdentifier:dispatchQueue:useNWLoader:.cold.5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)initWithClientBundleIdentifier:(_DWORD *)a1 clientPersonaIdentifier:dispatchQueue:useNWLoader:.cold.6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end
@interface FigNSURLSession
- (FigNSURLSession)initWithClientBundleIdentifier:(id)identifier clientPersonaIdentifier:(id)personaIdentifier dispatchQueue:(id)queue useNWLoader:(BOOL)loader;
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
    selfCopy = self;
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

- (FigNSURLSession)initWithClientBundleIdentifier:(id)identifier clientPersonaIdentifier:(id)personaIdentifier dispatchQueue:(id)queue useNWLoader:(BOOL)loader
{
  selfCopy = self;
  if (!identifier)
  {
    [FigNSURLSession initWithClientBundleIdentifier:? clientPersonaIdentifier:? dispatchQueue:? useNWLoader:?];
    goto LABEL_19;
  }

  if (!queue)
  {
    [FigNSURLSession initWithClientBundleIdentifier:? clientPersonaIdentifier:? dispatchQueue:? useNWLoader:?];
    goto LABEL_19;
  }

  loaderCopy = loader;
  v19.receiver = self;
  v19.super_class = FigNSURLSession;
  v11 = [(FigNSURLSession *)&v19 init];
  selfCopy = v11;
  if (!v11)
  {
    return selfCopy;
  }

  v11->_usesNWLoader = loaderCopy;
  v11->_clientBundleIdentifier = identifier;
  selfCopy->_clientPersonaIdentifier = personaIdentifier;
  dispatch_retain(queue);
  selfCopy->_dispatchQueue = queue;
  ephemeralSessionConfiguration = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  selfCopy->_configuration = ephemeralSessionConfiguration;
  if (!ephemeralSessionConfiguration)
  {
    [FigNSURLSession initWithClientBundleIdentifier:? clientPersonaIdentifier:? dispatchQueue:? useNWLoader:?];
    goto LABEL_19;
  }

  [(NSURLSessionConfiguration *)ephemeralSessionConfiguration set_timingDataOptions:-1];
  if (selfCopy->_usesNWLoader)
  {
    [(NSURLSessionConfiguration *)selfCopy->_configuration set_usesNWLoader:loaderCopy];
  }

  NSURLSessionDataDelegate = _FigHTTPRequestSessionCreateNSURLSessionDataDelegate(0, &selfCopy->_dataDelegate);
  v14 = NSURLSessionDataDelegate;
  if (!selfCopy->_dataDelegate)
  {
    [FigNSURLSession initWithClientBundleIdentifier:&v20 clientPersonaIdentifier:? dispatchQueue:? useNWLoader:?];
    goto LABEL_19;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  selfCopy->_opQueue = v15;
  if (!v15)
  {
    [FigNSURLSession initWithClientBundleIdentifier:? clientPersonaIdentifier:? dispatchQueue:? useNWLoader:?];
    goto LABEL_19;
  }

  [(NSOperationQueue *)v15 setUnderlyingQueue:queue];
  v16 = [MEMORY[0x1E695AC78] sessionWithConfiguration:selfCopy->_configuration delegate:selfCopy->_dataDelegate delegateQueue:selfCopy->_opQueue];
  selfCopy->_session = v16;
  if (!v16)
  {
    [FigNSURLSession initWithClientBundleIdentifier:? clientPersonaIdentifier:? dispatchQueue:? useNWLoader:?];
LABEL_19:
    if (!v20)
    {
      return selfCopy;
    }

    goto LABEL_11;
  }

  v17 = v16;
  if (v14)
  {
LABEL_11:

    return 0;
  }

  return selfCopy;
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
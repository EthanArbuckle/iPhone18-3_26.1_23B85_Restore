@interface APTNANPairingDelegate
- (APTNANPairingDelegate)initWithHandleAuthorizationRequestBlock:(id)block logContext:(__CFString *)context;
- (void)dealloc;
- (void)handlePairingRequestOfType:(__CFString *)type withInputCompletionHandler:(id)handler;
@end

@implementation APTNANPairingDelegate

- (APTNANPairingDelegate)initWithHandleAuthorizationRequestBlock:(id)block logContext:(__CFString *)context
{
  if (block && context)
  {
    v8.receiver = self;
    v8.super_class = APTNANPairingDelegate;
    v6 = [(APTNANPairingDelegate *)&v8 init];
    if (v6)
    {
      v6->_handleAuthorizationRequestBlock = _Block_copy(block);
      v6->_logContext = CFRetain(context);
      *&v6->_handledPairingRequest = 0;
      if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
      {
        [APTNANPairingDelegate initWithHandleAuthorizationRequestBlock:logContext:];
      }
    }
  }

  else
  {
    [APTNANPairingDelegate initWithHandleAuthorizationRequestBlock:? logContext:?];
    return 0;
  }

  return v6;
}

- (void)dealloc
{
  handleAuthorizationRequestBlock = self->_handleAuthorizationRequestBlock;
  if (handleAuthorizationRequestBlock)
  {
    _Block_release(handleAuthorizationRequestBlock);
  }

  logContext = self->_logContext;
  if (logContext)
  {
    CFRelease(logContext);
  }

  v5.receiver = self;
  v5.super_class = APTNANPairingDelegate;
  [(APTNANPairingDelegate *)&v5 dealloc];
}

- (void)handlePairingRequestOfType:(__CFString *)type withInputCompletionHandler:(id)handler
{
  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    [APTNANPairingDelegate handlePairingRequestOfType:type withInputCompletionHandler:self];
  }

  v7 = (*(self->_handleAuthorizationRequestBlock + 2))();
  self->_handledPairingRequest = 1;
  if (v7 == -16728)
  {
    self->_authPromptWasDismissed = 1;
  }

  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    [APTNANPairingDelegate handlePairingRequestOfType:withInputCompletionHandler:];
  }

  (*(handler + 2))(handler, 0);
}

- (void)initWithHandleAuthorizationRequestBlock:(void *)a1 logContext:.cold.2(void *a1)
{
  APSLogErrorAt();
  if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || OUTLINED_FUNCTION_9_0()))
  {
    OUTLINED_FUNCTION_15();
  }
}

- (uint64_t)handlePairingRequestOfType:(uint64_t)a1 withInputCompletionHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 8);
  return OUTLINED_FUNCTION_9();
}

@end
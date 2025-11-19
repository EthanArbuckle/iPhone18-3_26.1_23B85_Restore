@interface APTNANPairingDelegate
- (APTNANPairingDelegate)initWithHandleAuthorizationRequestBlock:(id)a3 logContext:(__CFString *)a4;
- (void)dealloc;
- (void)handlePairingRequestOfType:(__CFString *)a3 withInputCompletionHandler:(id)a4;
@end

@implementation APTNANPairingDelegate

- (APTNANPairingDelegate)initWithHandleAuthorizationRequestBlock:(id)a3 logContext:(__CFString *)a4
{
  if (a3 && a4)
  {
    v8.receiver = self;
    v8.super_class = APTNANPairingDelegate;
    v6 = [(APTNANPairingDelegate *)&v8 init];
    if (v6)
    {
      v6->_handleAuthorizationRequestBlock = _Block_copy(a3);
      v6->_logContext = CFRetain(a4);
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

- (void)handlePairingRequestOfType:(__CFString *)a3 withInputCompletionHandler:(id)a4
{
  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    [APTNANPairingDelegate handlePairingRequestOfType:a3 withInputCompletionHandler:self];
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

  (*(a4 + 2))(a4, 0);
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
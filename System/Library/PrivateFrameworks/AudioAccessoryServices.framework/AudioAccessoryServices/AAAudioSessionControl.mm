@interface AAAudioSessionControl
- (AAAudioSessionControl)init;
- (AAAudioSessionControl)initWithCoder:(id)coder;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_activateDirect:(id)direct;
- (void)_activateXPC:(id)c reactivate:(BOOL)reactivate;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)setConversationDetectSignal:(int)signal;
- (void)setMuteAction:(int)action auditToken:(id *)token bundleIdentifier:(id)identifier;
@end

@implementation AAAudioSessionControl

- (AAAudioSessionControl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AAAudioSessionControl *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_conversationDetectSignal = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientID = self->_clientID;
  v7 = coderCopy;
  if (clientID)
  {
    [coderCopy encodeInt64:clientID forKey:@"cid"];
    coderCopy = v7;
  }

  conversationDetectSignal = self->_conversationDetectSignal;
  if (conversationDetectSignal)
  {
    [v7 encodeInteger:conversationDetectSignal forKey:@"cds"];
    coderCopy = v7;
  }
}

- (id)description
{
  clientID = self->_clientID;
  conversationDetectSignal = self->_conversationDetectSignal;
  if (conversationDetectSignal <= 0xB)
  {
    v5 = off_278CDD770[conversationDetectSignal];
  }

  v10 = self->_clientID;
  NSAppendPrintF();
  v6 = 0;
  v7 = v6;
  if (self->_direct)
  {
    v11 = v6;
    NSAppendPrintF_safe();
    v8 = v11;

    v7 = v8;
  }

  return v7;
}

- (AAAudioSessionControl)init
{
  v5.receiver = self;
  v5.super_class = AAAudioSessionControl;
  v2 = [(AAAudioSessionControl *)&v5 init];
  if (v2)
  {
    v2->_clientID = AAXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3 = v2;
  }

  return v2;
}

- (void)setConversationDetectSignal:(int)signal
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__AAAudioSessionControl_setConversationDetectSignal___block_invoke;
    v6[3] = &unk_278CDD5E8;
    v6[4] = selfCopy;
    signalCopy = signal;
    dispatch_async(dispatchQueue, v6);
  }

  else
  {
    selfCopy->_conversationDetectSignal = signal;
  }

  objc_sync_exit(selfCopy);
}

void __53__AAAudioSessionControl_setConversationDetectSignal___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = *(a1 + 40);
  v2 = *(a1 + 32);
  if (*(v2 + 28) == 1)
  {
    v3 = gAAServicesDaemon;

    [v3 updateAudioSessionControl:?];
  }

  else
  {
    v5 = [*(v2 + 32) remoteObjectProxy];
    [v5 audioSessionControlUpdate:*(a1 + 32)];
  }
}

- (void)setMuteAction:(int)action auditToken:(id *)token bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (gLogCategory_AAAudioSessionControl <= 30 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
  {
    [AAAudioSessionControl setMuteAction:action auditToken:? bundleIdentifier:?];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v11 = *&token->var0[4];
    v15 = *token->var0;
    block[2] = __67__AAAudioSessionControl_setMuteAction_auditToken_bundleIdentifier___block_invoke;
    block[3] = &unk_278CDD610;
    block[4] = selfCopy;
    actionCopy = action;
    v16 = v11;
    v13 = identifierCopy;
    dispatch_async(dispatchQueue, block);
  }

  else if (gLogCategory_AAAudioSessionControl <= 90 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  objc_sync_exit(selfCopy);
}

void __67__AAAudioSessionControl_setMuteAction_auditToken_bundleIdentifier___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 28) == 1)
  {
    if (gLogCategory_AAAudioSessionControl <= 90 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
    {
      __67__AAAudioSessionControl_setMuteAction_auditToken_bundleIdentifier___block_invoke_cold_2();
    }
  }

  else
  {
    if (gLogCategory_AAAudioSessionControl <= 30 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
    {
      __67__AAAudioSessionControl_setMuteAction_auditToken_bundleIdentifier___block_invoke_cold_1();
    }

    v2 = [*(*(a1 + 32) + 32) remoteObjectProxy];
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = *(a1 + 68);
    v6[0] = *(a1 + 52);
    v6[1] = v5;
    [v2 setMuteAction:v3 auditToken:v6 bundleIdentifier:v4];
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__AAAudioSessionControl_activateWithCompletion___block_invoke;
  v7[3] = &unk_278CDD638;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __48__AAAudioSessionControl_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v8 = NSErrorF();
    if (gLogCategory_AAAudioSessionControl <= 90 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
    {
      __48__AAAudioSessionControl_activateWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 8) = 1;
    v4 = MEMORY[0x245CE9060](*(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v7 = *(a1 + 32);

    [v7 _activate:0];
  }
}

void __35__AAAudioSessionControl__activate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_AAAudioSessionControl <= 90)
    {
      if (gLogCategory_AAAudioSessionControl != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
      {
        __35__AAAudioSessionControl__activate___block_invoke_cold_1();
        v4 = v9;
      }
    }

    [*(a1 + 32) _reportError:v4];
    goto LABEL_17;
  }

  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_AAAudioSessionControl > 30 || gLogCategory_AAAudioSessionControl == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }
  }

  else if (gLogCategory_AAAudioSessionControl > 30 || gLogCategory_AAAudioSessionControl == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_14;
  }

  __35__AAAudioSessionControl__activate___block_invoke_cold_2(a1);
LABEL_14:
  v6 = MEMORY[0x245CE9060](*(*(a1 + 32) + 16));
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  if (v6)
  {
    v6[2](v6, 0);
  }

LABEL_17:
}

- (void)_activateDirect:(id)direct
{
  directCopy = direct;
  if (gLogCategory_AAAudioSessionControl <= 30 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
  {
    [AAAudioSessionControl _activateDirect:?];
  }

  v5 = gAAServicesDaemon;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__AAAudioSessionControl__activateDirect___block_invoke;
  v7[3] = &unk_278CDD6B0;
  v7[4] = self;
  v8 = directCopy;
  v6 = directCopy;
  [v5 activateAudioSessionControl:self completion:v7];
}

void __41__AAAudioSessionControl__activateDirect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__AAAudioSessionControl__activateDirect___block_invoke_2;
  v7[3] = &unk_278CDD688;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __41__AAAudioSessionControl__activateDirect___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_activateXPC:(id)c reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  cCopy = c;
  if (reactivateCopy)
  {
    if (gLogCategory_AAAudioSessionControl > 30)
    {
      goto LABEL_12;
    }

    if (gLogCategory_AAAudioSessionControl == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (gLogCategory_AAAudioSessionControl > 30)
  {
    goto LABEL_12;
  }

  if (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize())
  {
LABEL_16:
    [AAAudioSessionControl _activateXPC:reactivate:];
  }

LABEL_9:
  if (gLogCategory_AAAudioSessionControl <= 30 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
  {
    [AAAudioSessionControl _activateXPC:? reactivate:?];
  }

LABEL_12:
  _ensureXPCStarted = [(AAAudioSessionControl *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    cCopy[2](cCopy, _ensureXPCStarted);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__AAAudioSessionControl__activateXPC_reactivate___block_invoke;
    v13[3] = &unk_278CDD6D8;
    v15 = reactivateCopy;
    v9 = cCopy;
    v14 = v9;
    v10 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__AAAudioSessionControl__activateXPC_reactivate___block_invoke_2;
    v11[3] = &unk_278CDD700;
    v12 = v9;
    [v10 audioSessionControlActivate:self completion:v11];
  }
}

void __49__AAAudioSessionControl__activateXPC_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_AAAudioSessionControl <= 30 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
    {
      __49__AAAudioSessionControl__activateXPC_reactivate___block_invoke_cold_2();
    }
  }

  else if (gLogCategory_AAAudioSessionControl <= 90 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
  {
    __49__AAAudioSessionControl__activateXPC_reactivate___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = self->_testListenerEndpoint;
    v4 = objc_alloc(MEMORY[0x277CCAE80]);
    if (v3)
    {
      v5 = [v4 initWithListenerEndpoint:v3];
    }

    else
    {
      v5 = [v4 initWithMachServiceName:@"com.apple.AudioAccessoryServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28533BD50];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__AAAudioSessionControl__ensureXPCStarted__block_invoke;
    v11[3] = &unk_278CDD728;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__AAAudioSessionControl__ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_278CDD728;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345C18];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __42__AAAudioSessionControl__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_AAAudioSessionControl <= 50 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
  {
    [AAAudioSessionControl _interrupted];
  }

  v3 = BTErrorF();
  [(AAAudioSessionControl *)self _reportError:v3];

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (self->_activateCalled)
  {
    [(AAAudioSessionControl *)self _activate:1];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v6 = *(interruptionHandler + 2);

    v6();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__AAAudioSessionControl_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __35__AAAudioSessionControl_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 29) & 1) == 0)
  {
    *(v2 + 29) = 1;
    if ((*(*(a1 + 32) + 30) & 1) == 0 && gLogCategory_AAAudioSessionControl <= 30 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
    {
      __35__AAAudioSessionControl_invalidate__block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    if (*(v4 + 28) == 1)
    {
      [v4 _invalidateDirect];
      v4 = *(a1 + 32);
    }

    if (*(v4 + 32))
    {
      [*(v4 + 32) invalidate];
      v4 = *(a1 + 32);
    }

    v8 = MEMORY[0x245CE9060](*(v4 + 16));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;

    if (v8)
    {
      v7 = BTErrorF();
      v8[2](v8, v7);
    }

    [*(a1 + 32) _invalidated];
  }
}

void __42__AAAudioSessionControl__invalidateDirect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AAAudioSessionControl__invalidateDirect__block_invoke_2;
  block[3] = &unk_278CDD728;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_AAAudioSessionControl <= 50 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
    {
      [AAAudioSessionControl _invalidated];
    }

    if (!self->_direct && !self->_xpcCnx)
    {
      v8 = MEMORY[0x245CE9060](self->_activateCompletion, a2);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (v8)
      {
        v4 = BTErrorF();
        v8[2](v8, v4);
      }

      v5 = MEMORY[0x245CE9060](self->_invalidationHandler);
      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      if (v5)
      {
        v5[2](v5);
      }

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_AAAudioSessionControl <= 10 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
      {
        [AAAudioSessionControl _invalidated];
      }
    }
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  if (gLogCategory_AAAudioSessionControl <= 90 && (gLogCategory_AAAudioSessionControl != -1 || _LogCategory_Initialize()))
  {
    [AAAudioSessionControl _reportError:];
  }

  v4 = MEMORY[0x245CE9060](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, errorCopy);
  }
}

- (uint64_t)setMuteAction:(unsigned int)a1 auditToken:bundleIdentifier:.cold.1(unsigned int a1)
{
  if (a1 <= 6)
  {
    v1 = off_278CDD7D0[a1];
  }

  return LogPrintF();
}

@end
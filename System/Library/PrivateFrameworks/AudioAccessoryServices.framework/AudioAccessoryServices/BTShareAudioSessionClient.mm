@interface BTShareAudioSessionClient
- (BTShareAudioSessionClient)init;
- (BTShareAudioSessionClient)initWithCoder:(id)coder;
- (id)_ensureXPCStarted;
- (void)_activate:(BOOL)_activate;
- (void)_interrupted;
- (void)_invalidated;
- (void)activate;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)userConfirmed:(BOOL)confirmed;
@end

@implementation BTShareAudioSessionClient

- (BTShareAudioSessionClient)init
{
  v6.receiver = self;
  v6.super_class = BTShareAudioSessionClient;
  v2 = [(BTShareAudioSessionClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (BTShareAudioSessionClient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BTShareAudioSessionClient *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_mode = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  mode = self->_mode;
  if (mode)
  {
    [coder encodeInteger:mode forKey:@"mode"];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__BTShareAudioSessionClient_activate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__BTShareAudioSessionClient_activate__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    return [*(result + 32) _activate:0];
  }

  return result;
}

- (void)_activate:(BOOL)_activate
{
  if (_activate)
  {
    if (gLogCategory_BTShareAudioSessionClient <= 30 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
LABEL_16:
      [BTShareAudioSessionClient _activate:];
    }
  }

  else if (gLogCategory_BTShareAudioSessionClient <= 30 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_16;
  }

  _ensureXPCStarted = [(BTShareAudioSessionClient *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    if (gLogCategory_BTShareAudioSessionClient <= 90 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      [BTShareAudioSessionClient _activate:];
    }
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__BTShareAudioSessionClient__activate___block_invoke;
    v10[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
    _activateCopy = _activate;
    v7 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__BTShareAudioSessionClient__activate___block_invoke_2;
    v8[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
    _activateCopy2 = _activate;
    [v7 shareAudioSessionActivate:self completion:v8];
  }
}

uint64_t __39__BTShareAudioSessionClient__activate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    if (gLogCategory_BTShareAudioSessionClient <= 90)
    {
      if (gLogCategory_BTShareAudioSessionClient != -1 || (v6 = v3, v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
LABEL_12:
        v8 = v4;
        v3 = __39__BTShareAudioSessionClient__activate___block_invoke_cold_1();
        v4 = v8;
      }
    }
  }

  else if (gLogCategory_BTShareAudioSessionClient <= 90)
  {
    if (gLogCategory_BTShareAudioSessionClient != -1)
    {
      goto LABEL_12;
    }

    v7 = v3;
    v3 = _LogCategory_Initialize();
    v4 = v7;
    if (v3)
    {
      goto LABEL_12;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t __39__BTShareAudioSessionClient__activate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 32))
    {
      if (gLogCategory_BTShareAudioSessionClient <= 90)
      {
        v7 = v3;
        if (gLogCategory_BTShareAudioSessionClient != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
        {
          v3 = __39__BTShareAudioSessionClient__activate___block_invoke_2_cold_2();
LABEL_20:
          v4 = v7;
        }
      }
    }

    else if (gLogCategory_BTShareAudioSessionClient <= 90)
    {
      v7 = v3;
      if (gLogCategory_BTShareAudioSessionClient != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
      {
        v3 = __39__BTShareAudioSessionClient__activate___block_invoke_2_cold_1();
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 32))
  {
    if (gLogCategory_BTShareAudioSessionClient <= 30)
    {
      v7 = 0;
      if (gLogCategory_BTShareAudioSessionClient != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = __39__BTShareAudioSessionClient__activate___block_invoke_2_cold_4();
        goto LABEL_20;
      }
    }
  }

  else if (gLogCategory_BTShareAudioSessionClient <= 30)
  {
    v7 = 0;
    if (gLogCategory_BTShareAudioSessionClient != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      v3 = __39__BTShareAudioSessionClient__activate___block_invoke_2_cold_3();
      goto LABEL_20;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = self->_testListenerEndpoint;
    v4 = objc_alloc(MEMORY[0x277CCAE80]);
    v20 = v3;
    if (v3)
    {
      v5 = [v4 initWithListenerEndpoint:v3];
    }

    else
    {
      v5 = [v4 initWithMachServiceName:@"com.apple.BluetoothServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345D38];
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v18 = objc_opt_class();
    v15 = [v7 initWithObjects:{v8, v9, v10, v11, v12, v13, v14, v18, objc_opt_class(), 0}];
    [v19 setClasses:v15 forSelector:sel_shareAudioProgressEvent_info_ argumentIndex:1 ofReply:0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v19];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __46__BTShareAudioSessionClient__ensureXPCStarted__block_invoke;
    v22[3] = &unk_278CDD728;
    v22[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v22];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46__BTShareAudioSessionClient__ensureXPCStarted__block_invoke_2;
    v21[3] = &unk_278CDD728;
    v21[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v21];
    v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345D98];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v16];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_BTShareAudioSessionClient <= 30 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      [BTShareAudioSessionClient _ensureXPCStarted];
    }
  }

  return 0;
}

uint64_t __46__BTShareAudioSessionClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  if (gLogCategory_BTShareAudioSessionClient <= 50 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioSessionClient _interrupted];
  }

  v3 = MEMORY[0x245CE9060](self->_progressHandler);
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 30, 0);
  }

  if (self->_activateCalled)
  {

    [(BTShareAudioSessionClient *)self _activate:1];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BTShareAudioSessionClient_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __39__BTShareAudioSessionClient_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 9) & 1) == 0)
  {
    v3 = result;
    *(v2 + 9) = 1;
    if (gLogCategory_BTShareAudioSessionClient <= 30 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      __39__BTShareAudioSessionClient_invalidate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);
    if (v4[2])
    {
      [v4[2] invalidate];
      v4 = *(v3 + 32);
    }

    return [v4 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_BTShareAudioSessionClient <= 50 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      [BTShareAudioSessionClient _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v3 = MEMORY[0x245CE9060](self->_progressHandler);
      v4 = v3;
      if (v3)
      {
        (*(v3 + 16))(v3, 20, 0);
      }

      progressHandler = self->_progressHandler;
      self->_progressHandler = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_BTShareAudioSessionClient <= 10 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
      {
        [BTShareAudioSessionClient _invalidated];
      }
    }
  }
}

- (void)userConfirmed:(BOOL)confirmed
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__BTShareAudioSessionClient_userConfirmed___block_invoke;
  v4[3] = &unk_278CDE0D0;
  v4[4] = self;
  confirmedCopy = confirmed;
  dispatch_async(dispatchQueue, v4);
}

void __43__BTShareAudioSessionClient_userConfirmed___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    if (gLogCategory_BTShareAudioSessionClient <= 30 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      __43__BTShareAudioSessionClient_userConfirmed___block_invoke_cold_1(a1);
    }

    v2 = [*(*(a1 + 32) + 16) remoteObjectProxy];
    [v2 shareAudioUserConfirmed:*(a1 + 40)];
  }

  else
  {
    __43__BTShareAudioSessionClient_userConfirmed___block_invoke_cold_2(gLogCategory_BTShareAudioSessionClient);
  }
}

uint64_t __43__BTShareAudioSessionClient_userConfirmed___block_invoke_cold_2(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF();
    }
  }

  return result;
}

@end
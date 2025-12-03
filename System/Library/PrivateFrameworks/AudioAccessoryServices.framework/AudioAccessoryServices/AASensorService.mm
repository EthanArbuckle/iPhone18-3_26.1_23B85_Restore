@interface AASensorService
- (AASensorService)init;
- (AASensorService)initWithCoder:(id)coder;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_activateXPC:(id)c reactivate:(BOOL)reactivate;
- (void)_broadcastAACPAvailabilities;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)sensorServiceReportSensorInfo:(id)info;
- (void)subscribeWithSensorDataFlags:(unsigned int)flags rate:(unsigned int)rate completion:(id)completion;
- (void)unsubscribeWithSensorDataFlags:(unsigned int)flags;
@end

@implementation AASensorService

- (AASensorService)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AASensorService *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_subscribedSensors = 0;
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

  subscribedSensors = self->_subscribedSensors;
  if (subscribedSensors)
  {
    [v7 encodeInt64:subscribedSensors forKey:@"sbsn"];
    coderCopy = v7;
  }
}

- (id)description
{
  clientID = self->_clientID;
  NSAppendPrintF();

  return 0;
}

- (AASensorService)init
{
  v9.receiver = self;
  v9.super_class = AASensorService;
  v2 = [(AASensorService *)&v9 init];
  if (v2)
  {
    v2->_clientID = AAXPCGetNextClientID();
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AASensorServiceQueue", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    requestedSensorRates = v2->_requestedSensorRates;
    v2->_requestedSensorRates = dictionary;
  }

  return v2;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__AASensorService_activateWithCompletion___block_invoke;
  v7[3] = &unk_278CDD638;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __42__AASensorService_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v8 = NSErrorF();
    if (gLogCategory_AASensorService_0 <= 90 && (gLogCategory_AASensorService_0 != -1 || _LogCategory_Initialize()))
    {
      __42__AASensorService_activateWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 16) = 1;
    v4 = MEMORY[0x245CE9060](*(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;

    v7 = *(a1 + 32);

    [v7 _activate:0];
  }
}

void __29__AASensorService__activate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_AASensorService_0 <= 90)
    {
      if (gLogCategory_AASensorService_0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
      {
        __29__AASensorService__activate___block_invoke_cold_1();
        v4 = v9;
      }
    }

    [*(a1 + 32) _reportError:v4];
    goto LABEL_17;
  }

  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_AASensorService_0 > 30 || gLogCategory_AASensorService_0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }
  }

  else if (gLogCategory_AASensorService_0 > 30 || gLogCategory_AASensorService_0 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_14;
  }

  __29__AASensorService__activate___block_invoke_cold_2(a1);
LABEL_14:
  v6 = MEMORY[0x245CE9060](*(*(a1 + 32) + 24));
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = 0;

  if (v6)
  {
    v6[2](v6, 0);
  }

LABEL_17:
}

- (void)_activateXPC:(id)c reactivate:(BOOL)reactivate
{
  cCopy = c;
  if (gLogCategory_AASensorService_0 <= 30 && (gLogCategory_AASensorService_0 != -1 || _LogCategory_Initialize()))
  {
    [AASensorService _activateXPC:? reactivate:?];
  }

  _ensureXPCStarted = [(AASensorService *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    cCopy[2](cCopy, _ensureXPCStarted);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__AASensorService__activateXPC_reactivate___block_invoke;
    v13[3] = &unk_278CDD6D8;
    reactivateCopy = reactivate;
    v9 = cCopy;
    v14 = v9;
    v10 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__AASensorService__activateXPC_reactivate___block_invoke_2;
    v11[3] = &unk_278CDD700;
    v12 = v9;
    [v10 sensorServiceActivate:self completion:v11];
  }
}

void __43__AASensorService__activateXPC_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_AASensorService_0 <= 30 && (gLogCategory_AASensorService_0 != -1 || _LogCategory_Initialize()))
    {
      __43__AASensorService__activateXPC_reactivate___block_invoke_cold_2();
    }
  }

  else if (gLogCategory_AASensorService_0 <= 90 && (gLogCategory_AASensorService_0 != -1 || _LogCategory_Initialize()))
  {
    __43__AASensorService__activateXPC_reactivate___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_broadcastAACPAvailabilities
{
  self->_availableSensors |= 1u;
  sensorAvailabilityUpdatedHandler = self->_sensorAvailabilityUpdatedHandler;
  if (sensorAvailabilityUpdatedHandler)
  {
    sensorAvailabilityUpdatedHandler[2]();
  }
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.AudioAccessoryServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28533BD50];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__AASensorService__ensureXPCStarted__block_invoke;
    v9[3] = &unk_278CDD728;
    v9[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__AASensorService__ensureXPCStarted__block_invoke_2;
    v8[3] = &unk_278CDD728;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v8];
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345C18];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __36__AASensorService__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_AASensorService_0 <= 50 && (gLogCategory_AASensorService_0 != -1 || _LogCategory_Initialize()))
  {
    [AASensorService _interrupted];
  }

  v3 = BTErrorF();
  [(AASensorService *)self _reportError:v3];

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

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
  block[2] = __29__AASensorService_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __29__AASensorService_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 36) & 1) == 0)
  {
    *(v2 + 36) = 1;
    if ((*(*(a1 + 32) + 37) & 1) == 0 && gLogCategory_AASensorService_0 <= 30 && (gLogCategory_AASensorService_0 != -1 || _LogCategory_Initialize()))
    {
      __29__AASensorService_invalidate__block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    if (v5)
    {
      [v5 invalidate];
      v4 = *(a1 + 32);
    }

    v9 = MEMORY[0x245CE9060](*(v4 + 24));
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;

    if (v9)
    {
      v8 = BTErrorF();
      v9[2](v9, v8);
    }

    [*(a1 + 32) _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_AASensorService_0 <= 50 && (gLogCategory_AASensorService_0 != -1 || _LogCategory_Initialize()))
    {
      [AASensorService _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v11 = MEMORY[0x245CE9060](self->_activateCompletion, a2);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (v11)
      {
        v4 = BTErrorF();
        v11[2](v11, v4);
      }

      v5 = MEMORY[0x245CE9060](self->_invalidationHandler);
      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      if (v5)
      {
        v5[2](v5);
      }

      [(NSMutableDictionary *)self->_requestedSensorRates removeAllObjects];
      requestedSensorRates = self->_requestedSensorRates;
      self->_requestedSensorRates = 0;

      sensorAvailabilityUpdatedHandler = self->_sensorAvailabilityUpdatedHandler;
      self->_sensorAvailabilityUpdatedHandler = 0;

      sensorDataInfoUpdatedHandler = self->_sensorDataInfoUpdatedHandler;
      self->_sensorDataInfoUpdatedHandler = 0;

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_AASensorService_0 <= 10 && (gLogCategory_AASensorService_0 != -1 || _LogCategory_Initialize()))
      {
        [AASensorService _invalidated];
      }
    }
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  if (gLogCategory_AASensorService_0 <= 90 && (gLogCategory_AASensorService_0 != -1 || _LogCategory_Initialize()))
  {
    [AASensorService _reportError:];
  }

  v4 = MEMORY[0x245CE9060](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, errorCopy);
  }
}

- (void)sensorServiceReportSensorInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (self->_subscribedSensors & 1) != 0 && (sensorDataInfoUpdatedHandler = self->_sensorDataInfoUpdatedHandler) != 0)
  {
    sensorDataInfoUpdatedHandler[2](sensorDataInfoUpdatedHandler, infoCopy);
  }

  else if (gLogCategory_AASensorService_0 <= 10 && (gLogCategory_AASensorService_0 != -1 || _LogCategory_Initialize()))
  {
    [AASensorService sensorServiceReportSensorInfo:?];
  }
}

- (void)subscribeWithSensorDataFlags:(unsigned int)flags rate:(unsigned int)rate completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__AASensorService_subscribeWithSensorDataFlags_rate_completion___block_invoke;
  block[3] = &unk_278CDE088;
  block[4] = self;
  v11 = completionCopy;
  flagsCopy = flags;
  v9 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __64__AASensorService_subscribeWithSensorDataFlags_rate_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245CE9060](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  *(*(a1 + 32) + 56) |= *(a1 + 48);
  if ((*(a1 + 48) & 1) != 0 && (v5 = *(a1 + 40)) != 0)
  {
    v6 = *(v5 + 16);

    return v6();
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [v8 initWithDomain:kAASensorServiceErrorDomain code:1 userInfo:0];
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = v9;
      v10 = (*(v10 + 16))();
      v9 = v11;
    }

    return MEMORY[0x2821F96F8](v10, v9);
  }
}

- (void)unsubscribeWithSensorDataFlags:(unsigned int)flags
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__AASensorService_unsubscribeWithSensorDataFlags___block_invoke;
  v4[3] = &unk_278CDD5E8;
  v4[4] = self;
  flagsCopy = flags;
  dispatch_async(dispatchQueue, v4);
}

@end
@interface AAAudioRoutingControl
- (AAAudioRoutingControl)init;
- (AAAudioRoutingControl)initWithCoder:(id)a3;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_activate;
- (void)_activateDirect:(id)a3;
- (void)_activateXPC:(id)a3;
- (void)_handleServerDied;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)areHeadphonesNearbyAndEligibleToPlay:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)hrmSessionStateChanged:(BOOL)a3 completion:(id)a4;
- (void)invalidate;
- (void)prewarmAudioAccessoriesForFitnessWorkout;
@end

@implementation AAAudioRoutingControl

- (AAAudioRoutingControl)init
{
  v5.receiver = self;
  v5.super_class = AAAudioRoutingControl;
  v2 = [(AAAudioRoutingControl *)&v5 init];
  if (v2)
  {
    v2->_clientID = AAXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3 = v2;
  }

  return v2;
}

- (AAAudioRoutingControl)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AAAudioRoutingControl *)self init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  appBundleID = self->_appBundleID;
  v8 = v4;
  if (appBundleID)
  {
    [v4 encodeObject:appBundleID forKey:@"aid"];
    v4 = v8;
  }

  clientID = self->_clientID;
  if (clientID)
  {
    [v8 encodeInt64:clientID forKey:@"cid"];
    v4 = v8;
  }

  deviceAddress = self->_deviceAddress;
  if (deviceAddress)
  {
    [v8 encodeObject:deviceAddress forKey:@"dAdr"];
    v4 = v8;
  }
}

- (id)description
{
  deviceAddress = self->_deviceAddress;
  appBundleID = self->_appBundleID;
  clientID = self->_clientID;
  NSAppendPrintF();

  return 0;
}

- (void)areHeadphonesNearbyAndEligibleToPlay:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_activateCalled)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__AAAudioRoutingControl_areHeadphonesNearbyAndEligibleToPlay___block_invoke;
    block[3] = &unk_278CDE238;
    block[4] = self;
    v8 = v4;
    v9 = 4;
    dispatch_async(dispatchQueue, block);
  }
}

void __62__AAAudioRoutingControl_areHeadphonesNearbyAndEligibleToPlay___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 24) == 1)
  {
    if (gLogCategory_AAAudioRoutingControl <= 90 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
    {
      __62__AAAudioRoutingControl_areHeadphonesNearbyAndEligibleToPlay___block_invoke_cold_2();
    }
  }

  else
  {
    if (gLogCategory_AAAudioRoutingControl <= 30 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
    {
      __62__AAAudioRoutingControl_areHeadphonesNearbyAndEligibleToPlay___block_invoke_cold_1();
    }

    v2 = *(*(a1 + 32) + 32);
    v4 = MEMORY[0x277D85DD0];
    v5 = 3221225472;
    v6 = __62__AAAudioRoutingControl_areHeadphonesNearbyAndEligibleToPlay___block_invoke_2;
    v7 = &unk_278CDD6D8;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v3 = [v2 remoteObjectProxyWithErrorHandler:&v4];
    [v3 areHeadphonesNearbyAndEligibleToPlay:*(a1 + 32) completion:{*(a1 + 40), v4, v5, v6, v7}];
  }
}

- (void)hrmSessionStateChanged:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_activateCalled)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__AAAudioRoutingControl_hrmSessionStateChanged_completion___block_invoke;
    block[3] = &unk_278CDE238;
    block[4] = self;
    v10 = v6;
    v11 = a3;
    dispatch_async(dispatchQueue, block);
  }
}

void __59__AAAudioRoutingControl_hrmSessionStateChanged_completion___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 24) == 1)
  {
    if (gLogCategory_AAAudioRoutingControl <= 90 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
    {
      __59__AAAudioRoutingControl_hrmSessionStateChanged_completion___block_invoke_cold_2();
    }
  }

  else
  {
    if (gLogCategory_AAAudioRoutingControl <= 30 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
    {
      __59__AAAudioRoutingControl_hrmSessionStateChanged_completion___block_invoke_cold_1();
    }

    v2 = *(*(a1 + 32) + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __59__AAAudioRoutingControl_hrmSessionStateChanged_completion___block_invoke_2;
    v4[3] = &unk_278CDD700;
    v5 = *(a1 + 40);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
    [v3 activeHRMSessionChanged:*(a1 + 32) hrmState:*(a1 + 48) completion:*(a1 + 40)];
  }
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__AAAudioRoutingControl_activateWithCompletion___block_invoke;
  v7[3] = &unk_278CDD638;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __48__AAAudioRoutingControl_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v8 = NSErrorF();
    if (gLogCategory_AAAudioRoutingControl <= 90 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
    {
      __48__AAAudioRoutingControl_activateWithCompletion___block_invoke_cold_1();
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

    [v7 _activate];
  }
}

- (void)_activate
{
  if (gLogCategory_AAAudioRoutingControl <= 30 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
  {
    [AAAudioRoutingControl _activate];
  }

  if (self->_testListenerEndpoint)
  {
    v3 = 1;
  }

  else
  {
    v3 = gAAServicesDaemon == 0;
  }

  v4 = !v3;
  self->_direct = v4;
  if (gLogCategory_AAAudioRoutingControl <= 30 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
  {
    [(AAAudioRoutingControl *)self _activate];
  }

  if (self->_invalidateCalled)
  {
    v5 = *MEMORY[0x277CCA590];
    v9 = NSErrorF();
    if (gLogCategory_AAAudioRoutingControl <= 90 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = MEMORY[0x245CE9060](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v7)
    {
      (v7)[2](v7, v9);
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__AAAudioRoutingControl__activate__block_invoke;
    v10[3] = &unk_278CDD750;
    v10[4] = self;
    v6 = MEMORY[0x245CE9060](v10);
    if (self->_direct)
    {
      [(AAAudioRoutingControl *)self _activateDirect:v6];
    }

    else
    {
      [(AAAudioRoutingControl *)self _activateXPC:v6];
    }
  }
}

void __34__AAAudioRoutingControl__activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_AAAudioRoutingControl <= 90)
    {
      if (gLogCategory_AAAudioRoutingControl != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
      {
        __34__AAAudioRoutingControl__activate__block_invoke_cold_1();
        v4 = v9;
      }
    }

    [*(a1 + 32) _reportError:v4];
  }

  else
  {
    v6 = MEMORY[0x245CE9060](*(*(a1 + 32) + 16));
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = 0;

    if (v6)
    {
      v6[2](v6, 0);
    }
  }
}

- (void)_activateDirect:(id)a3
{
  v4 = a3;
  if (gLogCategory_AAAudioRoutingControl <= 30 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
  {
    [AAAudioRoutingControl _activateDirect:?];
  }

  v5 = gAAServicesDaemon;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__AAAudioRoutingControl__activateDirect___block_invoke;
  v7[3] = &unk_278CDD6B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 activateAudioRoutingControl:self completion:v7];
}

void __41__AAAudioRoutingControl__activateDirect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__AAAudioRoutingControl__activateDirect___block_invoke_2;
  v7[3] = &unk_278CDD688;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __41__AAAudioRoutingControl__activateDirect___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_activateXPC:(id)a3
{
  v4 = a3;
  if (gLogCategory_AAAudioRoutingControl <= 30 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
  {
    [AAAudioRoutingControl _activateXPC:?];
  }

  v5 = [(AAAudioRoutingControl *)self _ensureXPCStarted];
  if (v5)
  {
    v4[2](v4, v5);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__AAAudioRoutingControl__activateXPC___block_invoke;
    v11[3] = &unk_278CDD700;
    v7 = v4;
    v12 = v7;
    v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__AAAudioRoutingControl__activateXPC___block_invoke_2;
    v9[3] = &unk_278CDD700;
    v10 = v7;
    [v8 audioRoutingControlActivate:self completion:v9];
  }
}

void __38__AAAudioRoutingControl__activateXPC___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_AAAudioRoutingControl <= 90 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
  {
    __38__AAAudioRoutingControl__activateXPC___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __38__AAAudioRoutingControl__activateXPC___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __77__AAAudioRoutingControl_setArbitrationBlockingModeWithCompletion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_AAAudioRoutingControl <= 90 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
  {
    __77__AAAudioRoutingControl_setArbitrationBlockingModeWithCompletion_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)prewarmAudioAccessoriesForFitnessWorkout
{
  if (self->_activateCalled)
  {
    block[5] = v2;
    block[6] = v3;
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__AAAudioRoutingControl_prewarmAudioAccessoriesForFitnessWorkout__block_invoke;
    block[3] = &unk_278CDD728;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

uint64_t __65__AAAudioRoutingControl_prewarmAudioAccessoriesForFitnessWorkout__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  v3 = v2;
  if (!v2)
  {
    v6 = 0;
    if (!*(*(a1 + 32) + 32))
    {
      if (gLogCategory_AAAudioRoutingControl > 90)
      {
LABEL_13:
        v4 = [*(*(a1 + 32) + 32) remoteObjectProxyWithErrorHandler:&__block_literal_global_7];
        [v4 prewarmAudioAccessoriesForFitnessWorkout:*(a1 + 32)];

        goto LABEL_14;
      }

      if (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize())
      {
        __65__AAAudioRoutingControl_prewarmAudioAccessoriesForFitnessWorkout__block_invoke_cold_2();
      }
    }

    if (gLogCategory_AAAudioRoutingControl <= 30 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
    {
      __65__AAAudioRoutingControl_prewarmAudioAccessoriesForFitnessWorkout__block_invoke_cold_3();
    }

    goto LABEL_13;
  }

  if (gLogCategory_AAAudioRoutingControl <= 90)
  {
    v6 = v2;
    if (gLogCategory_AAAudioRoutingControl != -1 || (v2 = _LogCategory_Initialize(), v3 = v6, v2))
    {
      v2 = __65__AAAudioRoutingControl_prewarmAudioAccessoriesForFitnessWorkout__block_invoke_cold_1();
LABEL_14:
      v3 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t __65__AAAudioRoutingControl_prewarmAudioAccessoriesForFitnessWorkout__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AAAudioRoutingControl <= 90)
  {
    v5 = v2;
    if (gLogCategory_AAAudioRoutingControl != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __65__AAAudioRoutingControl_prewarmAudioAccessoriesForFitnessWorkout__block_invoke_2_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)_handleServerDied
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AAAudioRoutingControl__handleServerDied__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __42__AAAudioRoutingControl__handleServerDied__block_invoke(uint64_t a1)
{
  if (gLogCategory_AAAudioRoutingControl <= 50 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
  {
    __42__AAAudioRoutingControl__handleServerDied__block_invoke_cold_1();
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:AAAudioRoutingControlAudioAccessorydDiedNotification object:*(a1 + 32)];
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
    v11[2] = __42__AAAudioRoutingControl__ensureXPCStarted__block_invoke;
    v11[3] = &unk_278CDD728;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__AAAudioRoutingControl__ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_278CDD728;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345C18];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __42__AAAudioRoutingControl__ensureXPCStarted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _interrupted];
  v2 = *(a1 + 32);

  return [v2 _handleServerDied];
}

_BYTE *__42__AAAudioRoutingControl__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  [*(a1 + 32) _invalidated];
  result = *(a1 + 32);
  if ((result[25] & 1) == 0)
  {

    return [result _handleServerDied];
  }

  return result;
}

- (void)_interrupted
{
  if (gLogCategory_AAAudioRoutingControl <= 50 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
  {
    [AAAudioRoutingControl _interrupted];
  }

  v3 = BTErrorF();
  [(AAAudioRoutingControl *)self _reportError:v3];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__AAAudioRoutingControl_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __35__AAAudioRoutingControl_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 25) & 1) == 0)
  {
    *(v2 + 25) = 1;
    if ((*(*(a1 + 32) + 26) & 1) == 0 && gLogCategory_AAAudioRoutingControl <= 30 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
    {
      __35__AAAudioRoutingControl_invalidate__block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    if (*(v4 + 24) == 1)
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

void __42__AAAudioRoutingControl__invalidateDirect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AAAudioRoutingControl__invalidateDirect__block_invoke_2;
  block[3] = &unk_278CDD728;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_AAAudioRoutingControl <= 50 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
    {
      [AAAudioRoutingControl _invalidated];
    }

    if (!self->_direct && !self->_xpcCnx)
    {
      v6 = MEMORY[0x245CE9060](self->_activateCompletion, a2);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (v6)
      {
        v4 = BTErrorF();
        v6[2](v6, v4);
      }

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_AAAudioRoutingControl <= 10 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
      {
        [AAAudioRoutingControl _invalidated];
      }
    }
  }
}

- (void)_reportError:(id)a3
{
  v6 = a3;
  if (gLogCategory_AAAudioRoutingControl <= 90 && (gLogCategory_AAAudioRoutingControl != -1 || _LogCategory_Initialize()))
  {
    [AAAudioRoutingControl _reportError:];
  }

  v4 = MEMORY[0x245CE9060](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, v6);
  }
}

- (uint64_t)setArbitrationBlockingModeWithCompletion:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  return LogPrintF();
}

@end
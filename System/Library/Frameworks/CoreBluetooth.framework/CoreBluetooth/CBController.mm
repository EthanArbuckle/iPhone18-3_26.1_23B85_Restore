@interface CBController
+ (BOOL)writePrefKey:(id)key value:(id)value error:(id *)error;
+ (id)controllerInfoWithEndpoint:(id)endpoint error:(id *)error;
+ (id)performDeviceRequest:(id)request device:(id)device xpcEndpoint:(id)endpoint error:(id *)error;
+ (id)readPrefKeys:(id)keys error:(id *)error;
+ (unsigned)featureFlags;
+ (void)setOfflineAdvertisingParams:(id)params;
- (BOOL)setLowPowerModeWithReason:(int)reason error:(id *)error;
- (CBController)init;
- (CBController)initWithXPCObject:(id)object error:(id *)error;
- (id)_ensureXPCStarted;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_activateAssertionWithFlagsDirect:(unsigned int)direct completion:(id)completion;
- (void)_activateAssertionWithFlagsXPC:(unsigned int)c completion:(id)completion;
- (void)_activateDirectStart;
- (void)_activateXPCCompleted:(id)completed;
- (void)_activateXPCStart:(BOOL)start;
- (void)_interrupted;
- (void)_invalidated;
- (void)_update;
- (void)_updateIfNeededWithBlock:(id)block;
- (void)_xpcReceivedDiscoverableStateChanged:(id)changed;
- (void)_xpcReceivedInquiryStateChanged:(id)changed;
- (void)_xpcReceivedMessage:(id)message;
- (void)_xpcReceivedPowerStateChanged:(id)changed;
- (void)_xpcReceivedRelayMessage:(id)message;
- (void)_xpcReceivedTipiChanged:(id)changed;
- (void)activateAssertionWithFlags:(unsigned int)flags completion:(id)completion;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)deleteDevice:(id)device completion:(id)completion;
- (void)diagnosticControl:(id)control completion:(id)completion;
- (void)diagnosticLog:(id)log completion:(id)completion;
- (void)diagnosticShow:(id)show completion:(id)completion;
- (void)encodeWithXPCObject:(id)object;
- (void)getControllerInfoWithCompletion:(id)completion;
- (void)getControllerSettingsWithCompletionHandler:(id)handler;
- (void)getDevicesWithFlags:(unsigned int)flags completionHandler:(id)handler;
- (void)getPowerStateWithCompletion:(id)completion;
- (void)invalidate;
- (void)modifyControllerSettings:(id)settings completionHandler:(id)handler;
- (void)modifyDevice:(id)device completion:(id)completion;
- (void)modifyDevice:(id)device connectionPriorityDevices:(id)devices timeoutSeconds:(double)seconds completionHandler:(id)handler;
- (void)modifyDevice:(id)device peerSourceDevice:(id)sourceDevice peerSourceState:(char)state requestFlags:(unsigned int)flags completionHandler:(id)handler;
- (void)modifyDevice:(id)device settings:(id)settings completion:(id)completion;
- (void)performDeviceRequest:(id)request device:(id)device completion:(id)completion;
- (void)resetCBExtensionID:(id)d completionHandler:(id)handler;
- (void)sendConversationDetectMessage:(id)message device:(id)device completionHandler:(id)handler;
- (void)sendRelayMessageType:(unsigned __int8)type messageData:(id)data conduitDevice:(id)device destinationDevice:(id)destinationDevice completionHandler:(id)handler;
- (void)sendSmartRoutingInformation:(id)information device:(id)device completionHandler:(id)handler;
- (void)setLabel:(id)label;
- (void)setLowPowerModeWithParams:(int)params params:(id)a4 completion:(id)completion;
- (void)setLowPowerModeWithReason:(int)reason completion:(id)completion;
- (void)setPowerState:(int64_t)state completion:(id)completion;
- (void)updateIdentities:(id)identities completion:(id)completion;
- (void)xpcReceivedMessage:(id)message;
@end

@implementation CBController

- (CBController)init
{
  v5.receiver = self;
  v5.super_class = CBController;
  v2 = [(CBController *)&v5 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    v2->_direct = gCBDaemonServer != 0;
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v2->_ucat = &gLogCategory_CBController;
    v3 = v2;
  }

  return v2;
}

- (id)_ensureXPCStarted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_xpcCnx;
  if (!v3)
  {
    v4 = selfCopy->_testListenerEndpoint;
    v5 = v4;
    if (v4)
    {
      mach_service = xpc_connection_create_from_endpoint(v4);
      xpc_connection_set_target_queue(mach_service, selfCopy->_dispatchQueue);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", selfCopy->_dispatchQueue, 0);
    }

    objc_storeStrong(&selfCopy->_xpcCnx, mach_service);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__CBController__ensureXPCStarted__block_invoke;
    v8[3] = &unk_1E811D620;
    v8[4] = selfCopy;
    v3 = mach_service;
    v9 = v3;
    xpc_connection_set_event_handler(v3, v8);
    xpc_connection_activate(v3);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_activate
{
  if (self->_bluetoothStateChangedHandler)
  {
    self->_internalFlags |= 1u;
  }

  if (self->_relayMessageHandler)
  {
    self->_internalFlags |= 0x40u;
  }

  if (self->_tipiChangedHandler)
  {
    self->_internalFlags |= 0x200u;
  }

  if (self->_invalidateCalled)
  {
    v19 = CBErrorF(-71148, "Activate after invalidate", v2, v3, v4, v5, v6, v7, v17);
    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        v16 = self->_ucat;
      }

      self->_direct;
      clientID = self->_clientID;
      v18 = CUPrintNSError();
      LogPrintF_safe();
    }

LABEL_19:
    v12 = MEMORY[0x1C68DF720](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v12)
    {
      (v12)[2](v12, v19);
    }

    else
    {
      v14 = MEMORY[0x1C68DF720](self->_errorHandler);
      v15 = v14;
      if (v14)
      {
        (*(v14 + 16))(v14, v19);
      }
    }

    return;
  }

  if (self->_direct)
  {

    [(CBController *)self _activateDirectStart];
  }

  else
  {

    [(CBController *)self _activateXPCStart:0];
  }
}

uint64_t __26__CBController_invalidate__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 26))
  {
    return result;
  }

  v2 = result;
  *(v1 + 26) = 1;
  v3 = *(result + 32);
  v4 = **(v3 + 32);
  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      v5 = *(v3 + 32);
      v6 = _LogCategory_Initialize();
      v3 = *(v2 + 32);
      if (!v6)
      {
        goto LABEL_6;
      }

      v11 = *(v3 + 32);
    }

    v12 = *(v3 + 60);
    LogPrintF_safe();
    v3 = *(v2 + 32);
  }

LABEL_6:
  if (*(v3 + 25) == 1)
  {
    [v3 _invalidateDirect];
    v3 = *(v2 + 32);
  }

  v7 = v3;
  objc_sync_enter(v7);
  v8 = *(*(v2 + 32) + 40);
  v9 = v8;
  if (v8)
  {
    xpc_connection_cancel(v8);
  }

  objc_sync_exit(v7);
  v10 = *(v2 + 32);

  return [v10 _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_direct)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    xpcCnx = selfCopy->_xpcCnx;
    objc_sync_exit(selfCopy);

    if (!xpcCnx)
    {
      bluetoothStateChangedHandler = selfCopy->_bluetoothStateChangedHandler;
      selfCopy->_bluetoothStateChangedHandler = 0;

      discoverableStateChangedHandler = selfCopy->_discoverableStateChangedHandler;
      selfCopy->_discoverableStateChangedHandler = 0;

      errorHandler = selfCopy->_errorHandler;
      selfCopy->_errorHandler = 0;

      inquiryStateChangedHandler = selfCopy->_inquiryStateChangedHandler;
      selfCopy->_inquiryStateChangedHandler = 0;

      interruptionHandler = selfCopy->_interruptionHandler;
      selfCopy->_interruptionHandler = 0;

      v16 = MEMORY[0x1C68DF720](selfCopy->_invalidationHandler);
      invalidationHandler = selfCopy->_invalidationHandler;
      selfCopy->_invalidationHandler = 0;

      relayMessageHandler = selfCopy->_relayMessageHandler;
      selfCopy->_relayMessageHandler = 0;

      tipiChangedHandler = selfCopy->_tipiChangedHandler;
      selfCopy->_tipiChangedHandler = 0;

      v13 = v16;
      if (v16)
      {
        (*(v16 + 16))(v16);
        v13 = v16;
      }

      self->_invalidateDone = 1;
      p_var0 = &selfCopy->_ucat->var0;
      if (*p_var0 <= 30)
      {
        if (*p_var0 != -1)
        {
          goto LABEL_10;
        }

        p_var0 = _LogCategory_Initialize();
        v13 = v16;
        if (p_var0)
        {
          ucat = selfCopy->_ucat;
LABEL_10:
          p_var0 = LogPrintF_safe();
          v13 = v16;

void __33__CBController__invalidateDirect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CBController__invalidateDirect__block_invoke_2;
  block[3] = &unk_1E811D130;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    selfCopy = self;
    v4 = self->_ucat;
    LogCategory_Remove();
    self = selfCopy;
    selfCopy->_ucat = 0;
  }

  v5.receiver = self;
  v5.super_class = CBController;
  [(CBController *)&v5 dealloc];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CBController_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

+ (unsigned)featureFlags
{
  if (qword_1ED7C1ED0 != -1)
  {
    +[CBController featureFlags];
  }

  return _MergedGlobals;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  assertionFlags = self->_assertionFlags;
  xdict = objectCopy;
  if (assertionFlags)
  {
    xpc_dictionary_set_uint64(objectCopy, "asrF", assertionFlags);
  }

  clientID = self->_clientID;
  if (clientID)
  {
    xpc_dictionary_set_uint64(xdict, "cid", clientID);
  }

  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    xpc_dictionary_set_uint64(xdict, "intF", internalFlags);
  }

  remoteDevice = self->_remoteDevice;
  CUXPCEncodeObject();
}

- (id)descriptionWithLevel:(int)level
{
  NSAppendPrintF_safe();
  v4 = 0;
  v5 = v4;
  label = self->_label;
  if (label)
  {
    v17 = v4;
    v13 = label;
    NSAppendPrintF_safe();
    v7 = v17;

    v5 = v7;
  }

  clientID = self->_clientID;
  NSAppendPrintF_safe();
  v8 = v5;

  if (self->_assertionFlags)
  {
    v15 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v9 = v8;

    v8 = v9;
  }

  remoteDevice = self->_remoteDevice;
  if (remoteDevice)
  {
    v16 = remoteDevice;
    NSAppendPrintF_safe();
    v11 = v8;

    v8 = v11;
  }

  return v8;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v4 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF();
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activateCalled)
  {
    selfCopy->_activateCalled = 1;
    v6 = MEMORY[0x1C68DF720](completionCopy);
    activateCompletion = selfCopy->_activateCompletion;
    selfCopy->_activateCompletion = v6;

    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__CBController_activateWithCompletion___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_activateDirectStart
{
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    clientID = self->_clientID;
    LogPrintF_safe();
  }

LABEL_5:
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__CBController__activateDirectStart__block_invoke;
  v6[3] = &unk_1E811D5F8;
  v6[4] = self;
  [gCBDaemonServer activateCBController:self completion:{v6, clientID}];
}

void __36__CBController__activateDirectStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CBController__activateDirectStart__block_invoke_2;
  v7[3] = &unk_1E811CF50;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __36__CBController__activateDirectStart__block_invoke_2(uint64_t a1)
{
  v17 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = **(v4 + 32);
  if (*(a1 + 40))
  {
    if (v5 > 90)
    {
      goto LABEL_9;
    }

    if (v5 == -1)
    {
      v7 = *(v4 + 32);
      if (!_LogCategory_Initialize())
      {
LABEL_9:
        if (v17)
        {
          (*(v17 + 16))(v17, *(a1 + 40));
        }

        else
        {
          v8 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 96));
          v9 = v8;
          if (v8)
          {
            (*(v8 + 16))(v8, *(a1 + 40));
          }
        }

        goto LABEL_17;
      }

      v4 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = *(v4 + 32);
    }

    v6 = *(v4 + 60);
    v16 = CUPrintNSError();
    LogPrintF_safe();

    goto LABEL_9;
  }

  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      v10 = *(v4 + 32);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v4 = *(a1 + 32);
      v14 = *(v4 + 32);
    }

    v15 = *(v4 + 60);
    LogPrintF_safe();
  }

LABEL_15:
  v11 = v17;
  if (!v17)
  {
    goto LABEL_18;
  }

  (*(v17 + 16))(v17, 0);
LABEL_17:
  v11 = v17;
LABEL_18:
}

- (void)_activateXPCStart:(BOOL)start
{
  var0 = self->_ucat->var0;
  if (start)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        ucat = self->_ucat;
      }

      clientID = self->_clientID;
      goto LABEL_8;
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v9 = self->_ucat;
    }

    v11 = self->_clientID;
LABEL_8:
    LogPrintF_safe();
  }

LABEL_12:
  v6 = xpc_dictionary_create(0, 0, 0);
  [(CBController *)self encodeWithXPCObject:v6];
  xpc_dictionary_set_string(v6, "mTyp", "CtrA");
  _ensureXPCStarted = [(CBController *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __34__CBController__activateXPCStart___block_invoke;
  handler[3] = &unk_1E811D158;
  handler[4] = self;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v6, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)completed
{
  completedCopy = completed;
  v5 = CUXPCDecodeNSErrorIfNeeded();
  if (v5)
  {
    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_18;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
LABEL_18:
        v15 = MEMORY[0x1C68DF720](self->_activateCompletion);
        activateCompletion = self->_activateCompletion;
        self->_activateCompletion = 0;

        if (v15)
        {
          (v15)[2](v15, v5);
        }

        else
        {
          v17 = MEMORY[0x1C68DF720](self->_errorHandler);
          v18 = v17;
          if (v17)
          {
            (*(v17 + 16))(v17, v5);
          }
        }

        goto LABEL_31;
      }

      v24 = self->_ucat;
    }

    clientID = self->_clientID;
    v25 = CUPrintNSError();
    LogPrintF_safe();

    goto LABEL_18;
  }

  if (CUXPCDecodeSInt64RangedEx() == 6)
  {
    self->_bluetoothState = 0;
  }

  if (CUXPCDecodeSInt64RangedEx() == 6)
  {
    self->_discoverableState = 0;
  }

  if (CUXPCDecodeSInt64RangedEx() == 6)
  {
    self->_inquiryState = 0;
  }

  v8 = self->_ucat->var0;
  if (v8 <= 30)
  {
    if (v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_29;
      }

      v19 = self->_ucat;
      bluetoothState = self->_bluetoothState;
      if (bluetoothState <= 0xA)
      {
LABEL_14:
        v10 = off_1E811E578[bluetoothState];
        discoverableState = self->_discoverableState;
        if (discoverableState > 2)
        {
          goto LABEL_15;
        }

        goto LABEL_26;
      }
    }

    else
    {
      bluetoothState = self->_bluetoothState;
      if (bluetoothState <= 0xA)
      {
        goto LABEL_14;
      }
    }

    discoverableState = self->_discoverableState;
    if (discoverableState > 2)
    {
LABEL_15:
      v12 = self->_clientID;
      inquiryState = self->_inquiryState;
      if (inquiryState > 2)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_26:
    v20 = off_1E811E680[discoverableState];
    v21 = self->_clientID;
    inquiryState = self->_inquiryState;
    if (inquiryState > 2)
    {
      goto LABEL_28;
    }

LABEL_27:
    v22 = off_1E811E680[inquiryState];
LABEL_28:
    LogPrintF_safe();
  }

LABEL_29:
  v15 = MEMORY[0x1C68DF720](self->_activateCompletion);
  v23 = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v15)
  {
    v15[2](v15, 0);
  }

LABEL_31:
}

void *__33__CBController__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[5] == *(a1 + 40))
  {
    return [result xpcReceivedMessage:a2];
  }

  return result;
}

- (void)_interrupted
{
  if (self->_invalidateCalled)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 90)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_6:
  v4 = MEMORY[0x1C68DF720](self->_interruptionHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }

  self->_bluetoothState = 1;
  v6 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
  }

  if (self->_activateCalled)
  {
    [(CBController *)self _activateXPCStart:1];
  }

  if (self->_activateAssertionCalled)
  {
    assertionFlags = self->_assertionFlags;

    [(CBController *)self _activateAssertionWithFlagsXPC:assertionFlags completion:0];
  }
}

- (void)_updateIfNeededWithBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((blockCopy[2](blockCopy) & 1) != 0 && selfCopy->_activateCalled && !selfCopy->_changesPending)
  {
    selfCopy->_changesPending = 1;
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__CBController__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_update
{
  if (!self->_invalidateCalled)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    changesPending = selfCopy->_changesPending;
    selfCopy->_changesPending = 0;
    objc_sync_exit(selfCopy);

    var0 = selfCopy->_ucat->var0;
    if (changesPending)
    {
      if (var0 > 30)
      {
        return;
      }

      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        ucat = selfCopy->_ucat;
      }
    }

    else
    {
      if (var0 > 10)
      {
        return;
      }

      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        v6 = selfCopy->_ucat;
      }
    }

    LogPrintF_safe();
  }
}

- (void)xpcReceivedMessage:(id)message
{
  messageCopy = message;
  var0 = self->_ucat->var0;
  v28 = messageCopy;
  if (var0 <= 9)
  {
    if (var0 != -1)
    {
LABEL_3:
      v26 = CUPrintXPC();
      LogPrintF_safe();

      messageCopy = v28;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    messageCopy = v28;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (MEMORY[0x1C68DFDD0](messageCopy) == MEMORY[0x1E69E9E80])
  {
    [(CBController *)self _xpcReceivedMessage:v28];
    goto LABEL_26;
  }

  if (v28 == MEMORY[0x1E69E9E18])
  {
    [(CBController *)self _interrupted];
    goto LABEL_26;
  }

  if (v28 == MEMORY[0x1E69E9E20])
  {
    if (self->_invalidateCalled)
    {
      goto LABEL_25;
    }

    v17 = self->_ucat->var0;
    if (v17 > 90)
    {
      goto LABEL_25;
    }

    if (v17 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v25 = self->_ucat;
    }

    LogPrintF_safe();
LABEL_25:
    selfCopy = self;
    objc_sync_enter(selfCopy);
    xpcCnx = selfCopy->_xpcCnx;
    selfCopy->_xpcCnx = 0;

    objc_sync_exit(selfCopy);
    [(CBController *)selfCopy _invalidated];
    goto LABEL_26;
  }

  v7 = CUXPCDecodeNSErrorIfNeeded();
  v14 = v7;
  if (v7)
  {
    v15 = v7;

    v16 = self->_ucat->var0;
    if (v16 > 90)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v15 = CBErrorF(-6700, "XPC event error", v8, v9, v10, v11, v12, v13, v26);

    v16 = self->_ucat->var0;
    if (v16 > 90)
    {
      goto LABEL_21;
    }
  }

  if (v16 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_21;
    }

    v24 = self->_ucat;
  }

  v18 = CUPrintNSError();
  v27 = CUPrintXPC();
  LogPrintF_safe();

LABEL_21:
  v19 = MEMORY[0x1C68DF720](self->_errorHandler);
  v20 = v19;
  if (v19)
  {
    (*(v19 + 16))(v19, v15);
  }

LABEL_26:
}

- (void)_xpcReceivedMessage:(id)message
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "mTyp");
  if (!string)
  {
    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_13;
    }

    if (var0 != -1)
    {
      goto LABEL_12;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
LABEL_12:
      LogPrintF_safe();
    }

LABEL_13:
    v8 = messageCopy;

    goto LABEL_15;
  }

  v5 = string;
  if (!strcmp(string, "DscC"))
  {
    [(CBController *)self _xpcReceivedDiscoverableStateChanged:messageCopy];
    v8 = messageCopy;
  }

  else if (!strcmp(v5, "InqC"))
  {
    [(CBController *)self _xpcReceivedInquiryStateChanged:messageCopy];
    v8 = messageCopy;
  }

  else if (!strcmp(v5, "PwrC"))
  {
    [(CBController *)self _xpcReceivedPowerStateChanged:messageCopy];
    v8 = messageCopy;
  }

  else if (!strcmp(v5, "RlMR"))
  {
    [(CBController *)self _xpcReceivedRelayMessage:messageCopy];
    v8 = messageCopy;
  }

  else
  {
    if (strcmp(v5, "TpiC"))
    {
      v6 = self->_ucat->var0;
      if (v6 > 90)
      {
        goto LABEL_13;
      }

      if (v6 != -1)
      {
        goto LABEL_12;
      }

      if (_LogCategory_Initialize())
      {
        v10 = self->_ucat;
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    [(CBController *)self _xpcReceivedTipiChanged:messageCopy];
    v8 = messageCopy;
  }

LABEL_15:
}

- (void)_xpcReceivedDiscoverableStateChanged:(id)changed
{
  changedCopy = changed;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    if (CUXPCDecodeSInt64RangedEx() == 6)
    {
      self->_discoverableState = 0;
    }

    v5 = MEMORY[0x1C68DF720](self->_discoverableStateChangedHandler);
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5);
    }
  }

  else
  {
    [CBController _xpcReceivedDiscoverableStateChanged:?];
  }
}

- (void)_xpcReceivedInquiryStateChanged:(id)changed
{
  changedCopy = changed;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    if (CUXPCDecodeSInt64RangedEx() == 6)
    {
      self->_inquiryState = 0;
    }

    v5 = MEMORY[0x1C68DF720](self->_inquiryStateChangedHandler);
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5);
    }
  }

  else
  {
    [CBController _xpcReceivedInquiryStateChanged:?];
  }
}

- (void)_xpcReceivedPowerStateChanged:(id)changed
{
  changedCopy = changed;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    if (CUXPCDecodeSInt64RangedEx() == 6)
    {
      self->_bluetoothState = 0;
    }

    v5 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5);
    }
  }

  else
  {
    [CBController _xpcReceivedPowerStateChanged:?];
  }
}

- (void)_xpcReceivedRelayMessage:(id)message
{
  messageCopy = message;
  v5 = MEMORY[0x1C68DF720](self->_relayMessageHandler);
  if (v5)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__CBController__xpcReceivedRelayMessage___block_invoke;
    v11[3] = &unk_1E811D378;
    v11[4] = self;
    v11[5] = &v12;
    v6 = MEMORY[0x1C68DF720](v11);
    if (MEMORY[0x1C68DFDD0](messageCopy) == MEMORY[0x1E69E9E80])
    {
      objc_opt_class();
      CUXPCDecodeObject();
      v7 = 0;
      v10 = CUPrintNSError();
      v8 = NSPrintF_safe();
      v9 = v13[5];
      v13[5] = v8;
    }

    else
    {
      v7 = v13[5];
      v13[5] = @"non-dict message";
    }

    v6[2](v6);
    _Block_object_dispose(&v12, 8);
  }
}

uint64_t __41__CBController__xpcReceivedRelayMessage___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    result = *(*(result + 32) + 32);
    if (*result <= 90)
    {
      if (*result != -1)
      {
        return LogPrintF_safe();
      }

      v2 = v1;
      result = _LogCategory_Initialize();
      if (result)
      {
        v3 = *(*(v2 + 32) + 32);
        v4 = *(*(*(v2 + 40) + 8) + 40);
        return LogPrintF_safe();
      }
    }
  }

  return result;
}

- (void)_xpcReceivedTipiChanged:(id)changed
{
  changedCopy = changed;
  v5 = MEMORY[0x1C68DF720](self->_tipiChangedHandler);
  if (v5)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__CBController__xpcReceivedTipiChanged___block_invoke;
    v11[3] = &unk_1E811D378;
    v11[4] = self;
    v11[5] = &v12;
    v6 = MEMORY[0x1C68DF720](v11);
    if (MEMORY[0x1C68DFDD0](changedCopy) == MEMORY[0x1E69E9E80])
    {
      objc_opt_class();
      CUXPCDecodeObject();
      v7 = 0;
      v10 = CUPrintNSError();
      v8 = NSPrintF_safe();
      v9 = v13[5];
      v13[5] = v8;
    }

    else
    {
      v7 = v13[5];
      v13[5] = @"non-dict message";
    }

    v6[2](v6);
    _Block_object_dispose(&v12, 8);
  }
}

uint64_t __40__CBController__xpcReceivedTipiChanged___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    result = *(*(result + 32) + 32);
    if (*result <= 90)
    {
      if (*result != -1)
      {
        return LogPrintF_safe();
      }

      v2 = v1;
      result = _LogCategory_Initialize();
      if (result)
      {
        v3 = *(*(v2 + 32) + 32);
        v4 = *(*(*(v2 + 40) + 8) + 40);
        return LogPrintF_safe();
      }
    }
  }

  return result;
}

- (void)activateAssertionWithFlags:(unsigned int)flags completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CBController_activateAssertionWithFlags_completion___block_invoke;
  block[3] = &unk_1E811E3A8;
  flagsCopy = flags;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __54__CBController_activateAssertionWithFlags_completion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  *(*(a1 + 32) + 56) = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[25] == 1)
  {
    return [v2 _activateAssertionWithFlagsDirect:? completion:?];
  }

  else
  {
    return [v2 _activateAssertionWithFlagsXPC:? completion:?];
  }
}

- (void)_activateAssertionWithFlagsDirect:(unsigned int)direct completion:(id)completion
{
  completionCopy = completion;
  v6 = gCBDaemonServer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__CBController__activateAssertionWithFlagsDirect_completion___block_invoke;
  v8[3] = &unk_1E811E3D0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 activateCBController:self completion:v8];
}

void __61__CBController__activateAssertionWithFlagsDirect_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CBController__activateAssertionWithFlagsDirect_completion___block_invoke_2;
  block[3] = &unk_1E811D2D8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_async(v4, block);
}

void __61__CBController__activateAssertionWithFlagsDirect_completion___block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = *(v2 + 16);
    v5 = a1[6];

    v4(v5, v3);
  }

  else if (a1[4])
  {
    v7 = MEMORY[0x1C68DF720](*(a1[5] + 96));
    if (v7)
    {
      v8 = v7;
      v7[2](v7, a1[4]);
      v7 = v8;
    }
  }
}

- (void)_activateAssertionWithFlagsXPC:(unsigned int)c completion:(id)completion
{
  completionCopy = completion;
  v6 = xpc_dictionary_create(0, 0, 0);
  [(CBController *)self encodeWithXPCObject:v6];
  xpc_dictionary_set_string(v6, "mTyp", "CtrA");
  _ensureXPCStarted = [(CBController *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CBController__activateAssertionWithFlagsXPC_completion___block_invoke;
  v10[3] = &unk_1E811E3F8;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v6, dispatchQueue, v10);
}

uint64_t __58__CBController__activateAssertionWithFlagsXPC_completion___block_invoke(uint64_t a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  v3 = *(a1 + 40);
  if (v3)
  {
    v7 = v2;
    v3 = (*(v3 + 16))();
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v7 = v2;
    v4 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 96));
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4, v7);
    }
  }

  v2 = v7;
LABEL_8:

  return MEMORY[0x1EEE66BB8](v3, v2);
}

+ (id)controllerInfoWithEndpoint:(id)endpoint error:(id *)error
{
  endpointCopy = endpoint;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "mTyp", "GCtI");
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("CBController-GetInfo", v7);

  v9 = endpointCopy;
  v10 = v9;
  if (v9)
  {
    mach_service = xpc_connection_create_from_endpoint(v9);
    xpc_connection_set_target_queue(mach_service, v8);
  }

  else
  {
    mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", v8, 0);
  }

  xpc_connection_set_event_handler(mach_service, &__block_literal_global_73);
  xpc_connection_activate(mach_service);
  v12 = xpc_connection_send_message_with_reply_sync(mach_service, v6);
  xpc_connection_cancel(mach_service);
  if (v12)
  {
    v19 = CUXPCDecodeNSErrorIfNeeded();
    if (v19)
    {
      v29 = v19;
      if (error)
      {
        v32 = v19;
        v27 = 0;
        *error = v29;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v26 = xpc_dictionary_get_value(v12, "ctrI");
      if (v26)
      {
        v35 = 0;
        v27 = [[CBControllerInfo alloc] initWithXPCObject:v26 error:&v35];
        v28 = v35;
        v29 = v28;
        if (v27)
        {
          v30 = v27;
        }

        else if (error)
        {
          v33 = v28;
          *error = v29;
        }
      }

      else if (error)
      {
        CBErrorF(-6762, "No controller info", v20, v21, v22, v23, v24, v25, v34);
        v29 = 0;
        *error = v27 = 0;
      }

      else
      {
        v29 = 0;
        v27 = 0;
      }
    }
  }

  else if (error)
  {
    CBErrorF(-6700, "No reply", v13, v14, v15, v16, v17, v18, v34);
    *error = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)getControllerInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CBController_getControllerInfoWithCompletion___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __48__CBController_getControllerInfoWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "GCtI");
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __48__CBController_getControllerInfoWithCompletion___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __48__CBController_getControllerInfoWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v14 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = xpc_dictionary_get_value(v3, "ctrI");
    if (v12)
    {
      v15 = 0;
      v13 = [[CBControllerInfo alloc] initWithXPCObject:v12 error:&v15];
      v14 = v15;
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      __48__CBController_getControllerInfoWithCompletion___block_invoke_2_cold_1(a1, v5, v6, v7, v8, v9, v10, v11);
      v14 = 0;
    }
  }
}

- (void)getControllerSettingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CBController_getControllerSettingsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __59__CBController_getControllerSettingsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "GCtS");
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __59__CBController_getControllerSettingsWithCompletionHandler___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __59__CBController_getControllerSettingsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v5 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    objc_opt_class();
    CUXPCDecodeObject();
    v5 = 0;
    __59__CBController_getControllerSettingsWithCompletionHandler___block_invoke_2_cold_1(v5, *(a1 + 32) + 16, *(a1 + 32), v6, v7, v8, v9, v10);
  }
}

- (void)modifyControllerSettings:(id)settings completionHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CBController_modifyControllerSettings_completionHandler___block_invoke;
  block[3] = &unk_1E811D490;
  block[4] = self;
  v12 = settingsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = settingsCopy;
  dispatch_async(dispatchQueue, block);
}

void __59__CBController_modifyControllerSettings_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "MCtS");
  v3 = *(a1 + 40);
  CUXPCEncodeObject();
  v4 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __59__CBController_modifyControllerSettings_completionHandler___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v7 = *(a1 + 48);
  xpc_connection_send_message_with_reply(v4, v2, v5, handler);
}

void __59__CBController_modifyControllerSettings_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)getDevicesWithFlags:(unsigned int)flags completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CBController_getDevicesWithFlags_completionHandler___block_invoke;
  block[3] = &unk_1E811E3A8;
  flagsCopy = flags;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __54__CBController_getDevicesWithFlags_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "GtDv");
  v3 = *(a1 + 48);
  if (v3)
  {
    xpc_dictionary_set_uint64(v2, "gDvF", v3);
  }

  v4 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __54__CBController_getDevicesWithFlags_completionHandler___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v7 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v4, v2, v5, handler);
}

void __54__CBController_getDevicesWithFlags_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v5 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    objc_opt_class();
    CUXPCDecodeNSArrayOfClass();
    v5 = 0;
    __54__CBController_getDevicesWithFlags_completionHandler___block_invoke_2_cold_1(v5, *(a1 + 32) + 16, *(a1 + 32), v6, v7, v8, v9, v10);
  }
}

+ (id)performDeviceRequest:(id)request device:(id)device xpcEndpoint:(id)endpoint error:(id *)error
{
  endpointCopy = endpoint;
  deviceCopy = device;
  requestCopy = request;
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v12, "mTyp", "PfDR");
  CUXPCEncodeObject();

  CUXPCEncodeObject();
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create("CBController-Perform", v13);

  v15 = endpointCopy;
  v16 = v15;
  if (v15)
  {
    mach_service = xpc_connection_create_from_endpoint(v15);
    xpc_connection_set_target_queue(mach_service, v14);
  }

  else
  {
    mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", v14, 0);
  }

  xpc_connection_set_event_handler(mach_service, &__block_literal_global_91);
  xpc_connection_activate(mach_service);
  v18 = xpc_connection_send_message_with_reply_sync(mach_service, v12);
  xpc_connection_cancel(mach_service);
  if (v18)
  {
    v25 = CUXPCDecodeNSErrorIfNeeded();
    if (v25)
    {
      v27 = v25;
      if (error)
      {
        v29 = v25;
        *error = v27;
      }
    }

    else
    {
      objc_opt_class();
      CUXPCDecodeObject();
      v26 = 0;
      v27 = v26;
      if (error)
      {
        v30 = v26;
        *error = v27;
      }
    }
  }

  else if (error)
  {
    *error = CBErrorF(-6700, "No reply", v19, v20, v21, v22, v23, v24, v31);
  }

  return 0;
}

- (void)performDeviceRequest:(id)request device:(id)device completion:(id)completion
{
  requestCopy = request;
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__CBController_performDeviceRequest_device_completion___block_invoke;
  v15[3] = &unk_1E811E468;
  v15[4] = self;
  v16 = requestCopy;
  v17 = deviceCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = deviceCopy;
  v14 = requestCopy;
  dispatch_async(dispatchQueue, v15);
}

void __55__CBController_performDeviceRequest_device_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "PfDR");
  v3 = *(a1 + 40);
  CUXPCEncodeObject();
  v4 = *(a1 + 48);
  CUXPCEncodeObject();
  v5 = [*(a1 + 32) _ensureXPCStarted];
  v6 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __55__CBController_performDeviceRequest_device_completion___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v8 = *(a1 + 56);
  xpc_connection_send_message_with_reply(v5, v2, v6, handler);
}

void __55__CBController_performDeviceRequest_device_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v14 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = xpc_dictionary_get_value(v3, "dvRs");
    if (v12)
    {
      v15 = 0;
      v13 = [[CBDeviceResponse alloc] initWithXPCObject:v12 error:&v15];
      v14 = v15;
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      __55__CBController_performDeviceRequest_device_completion___block_invoke_2_cold_1(a1, v5, v6, v7, v8, v9, v10, v11);
      v14 = 0;
    }
  }
}

- (void)deleteDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CBController_deleteDevice_completion___block_invoke;
  block[3] = &unk_1E811D490;
  block[4] = self;
  v12 = deviceCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

void __40__CBController_deleteDevice_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "DltD");
  v3 = *(a1 + 40);
  CUXPCEncodeObject();
  v4 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __40__CBController_deleteDevice_completion___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v7 = *(a1 + 48);
  xpc_connection_send_message_with_reply(v4, v2, v5, handler);
}

void __40__CBController_deleteDevice_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)modifyDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CBController_modifyDevice_completion___block_invoke;
  block[3] = &unk_1E811D490;
  block[4] = self;
  v12 = deviceCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

void __40__CBController_modifyDevice_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "UpDv");
  v3 = *(a1 + 40);
  CUXPCEncodeObject();
  v4 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __40__CBController_modifyDevice_completion___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v7 = *(a1 + 48);
  xpc_connection_send_message_with_reply(v4, v2, v5, handler);
}

void __40__CBController_modifyDevice_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)modifyDevice:(id)device connectionPriorityDevices:(id)devices timeoutSeconds:(double)seconds completionHandler:(id)handler
{
  deviceCopy = device;
  devicesCopy = devices;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__CBController_modifyDevice_connectionPriorityDevices_timeoutSeconds_completionHandler___block_invoke;
  block[3] = &unk_1E811E490;
  block[4] = self;
  v18 = deviceCopy;
  secondsCopy = seconds;
  v19 = devicesCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = devicesCopy;
  v16 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

void __88__CBController_modifyDevice_connectionPriorityDevices_timeoutSeconds_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "UpDv");
  v3 = *(a1 + 40);
  CUXPCEncodeObject();
  v4 = *(a1 + 48);
  CUXPCEncodeNSArrayOfNSString();
  v5 = *(a1 + 64);
  if (v5 != 0.0)
  {
    xpc_dictionary_set_double(v2, "timO", v5);
  }

  v6 = [*(a1 + 32) _ensureXPCStarted];
  v7 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __88__CBController_modifyDevice_connectionPriorityDevices_timeoutSeconds_completionHandler___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v9 = *(a1 + 56);
  xpc_connection_send_message_with_reply(v6, v2, v7, handler);
}

void __88__CBController_modifyDevice_connectionPriorityDevices_timeoutSeconds_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)modifyDevice:(id)device peerSourceDevice:(id)sourceDevice peerSourceState:(char)state requestFlags:(unsigned int)flags completionHandler:(id)handler
{
  deviceCopy = device;
  sourceDeviceCopy = sourceDevice;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__CBController_modifyDevice_peerSourceDevice_peerSourceState_requestFlags_completionHandler___block_invoke;
  block[3] = &unk_1E811E4B8;
  block[4] = self;
  v20 = deviceCopy;
  stateCopy = state;
  flagsCopy = flags;
  v21 = sourceDeviceCopy;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = sourceDeviceCopy;
  v18 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

void __93__CBController_modifyDevice_peerSourceDevice_peerSourceState_requestFlags_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "UpDv");
  v3 = *(a1 + 40);
  CUXPCEncodeObject();
  v4 = *(a1 + 48);
  CUXPCEncodeObject();
  if (*(a1 + 68))
  {
    xpc_dictionary_set_int64(v2, "prSS", *(a1 + 68));
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    xpc_dictionary_set_uint64(v2, "dvRF", v5);
  }

  v6 = [*(a1 + 32) _ensureXPCStarted];
  v7 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __93__CBController_modifyDevice_peerSourceDevice_peerSourceState_requestFlags_completionHandler___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v9 = *(a1 + 56);
  xpc_connection_send_message_with_reply(v6, v2, v7, handler);
}

void __93__CBController_modifyDevice_peerSourceDevice_peerSourceState_requestFlags_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)modifyDevice:(id)device settings:(id)settings completion:(id)completion
{
  deviceCopy = device;
  settingsCopy = settings;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__CBController_modifyDevice_settings_completion___block_invoke;
  v15[3] = &unk_1E811E468;
  v15[4] = self;
  v16 = deviceCopy;
  v17 = settingsCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = settingsCopy;
  v14 = deviceCopy;
  dispatch_async(dispatchQueue, v15);
}

void __49__CBController_modifyDevice_settings_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "UpDv");
  v3 = *(a1 + 40);
  CUXPCEncodeObject();
  v4 = *(a1 + 48);
  CUXPCEncodeObject();
  v5 = [*(a1 + 32) _ensureXPCStarted];
  v6 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __49__CBController_modifyDevice_settings_completion___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v8 = *(a1 + 56);
  xpc_connection_send_message_with_reply(v5, v2, v6, handler);
}

void __49__CBController_modifyDevice_settings_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)diagnosticControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CBController_diagnosticControl_completion___block_invoke;
  block[3] = &unk_1E811D490;
  block[4] = self;
  v12 = controlCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controlCopy;
  dispatch_async(dispatchQueue, block);
}

void __45__CBController_diagnosticControl_completion___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [a1[4] encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "DiCt");
  v3 = a1[5];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = _CFXPCCreateXPCObjectFromCFObject();
  if (v4)
  {
    v11 = v4;
    xpc_dictionary_set_value(v2, "parm", v4);

LABEL_4:
    v12 = [a1[4] _ensureXPCStarted];
    v13 = *(a1[4] + 11);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __45__CBController_diagnosticControl_completion___block_invoke_2;
    handler[3] = &unk_1E811D1B0;
    v15 = a1[6];
    xpc_connection_send_message_with_reply(v12, v2, v13, handler);

    return;
  }

  __45__CBController_diagnosticControl_completion___block_invoke_cold_1(a1, v3, v5, v6, v7, v8, v9, v10);
}

void __45__CBController_diagnosticControl_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = _CFXPCCreateCFObjectFromXPCObject();
    v11 = *(a1 + 32);
    if (v10)
    {
      (*(v11 + 16))(*(a1 + 32), v10, 0);
    }

    else
    {
      __45__CBController_diagnosticControl_completion___block_invoke_2_cold_1(v11 + 16, v11, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)diagnosticLog:(id)log completion:(id)completion
{
  logCopy = log;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CBController_diagnosticLog_completion___block_invoke;
  block[3] = &unk_1E811D490;
  block[4] = self;
  v12 = logCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = logCopy;
  dispatch_async(dispatchQueue, block);
}

void __41__CBController_diagnosticLog_completion___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [a1[4] encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "DiLg");
  v3 = a1[5];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = _CFXPCCreateXPCObjectFromCFObject();
  if (v4)
  {
    v11 = v4;
    xpc_dictionary_set_value(v2, "parm", v4);

LABEL_4:
    v12 = [a1[4] _ensureXPCStarted];
    v13 = *(a1[4] + 11);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __41__CBController_diagnosticLog_completion___block_invoke_2;
    handler[3] = &unk_1E811D1B0;
    v15 = a1[6];
    xpc_connection_send_message_with_reply(v12, v2, v13, handler);

    return;
  }

  __45__CBController_diagnosticControl_completion___block_invoke_cold_1(a1, v3, v5, v6, v7, v8, v9, v10);
}

void __41__CBController_diagnosticLog_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = _CFXPCCreateCFObjectFromXPCObject();
    v11 = *(a1 + 32);
    if (v10)
    {
      (*(v11 + 16))(*(a1 + 32), v10, 0);
    }

    else
    {
      __45__CBController_diagnosticControl_completion___block_invoke_2_cold_1(v11 + 16, v11, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)diagnosticShow:(id)show completion:(id)completion
{
  showCopy = show;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CBController_diagnosticShow_completion___block_invoke;
  block[3] = &unk_1E811D490;
  block[4] = self;
  v12 = showCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = showCopy;
  dispatch_async(dispatchQueue, block);
}

void __42__CBController_diagnosticShow_completion___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [a1[4] encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "DiSh");
  v3 = a1[5];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = _CFXPCCreateXPCObjectFromCFObject();
  if (v4)
  {
    v11 = v4;
    xpc_dictionary_set_value(v2, "parm", v4);

LABEL_4:
    v12 = [a1[4] _ensureXPCStarted];
    v13 = *(a1[4] + 11);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __42__CBController_diagnosticShow_completion___block_invoke_2;
    handler[3] = &unk_1E811D1B0;
    v15 = a1[6];
    xpc_connection_send_message_with_reply(v12, v2, v13, handler);

    return;
  }

  __45__CBController_diagnosticControl_completion___block_invoke_cold_1(a1, v3, v5, v6, v7, v8, v9, v10);
}

void __42__CBController_diagnosticShow_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = _CFXPCCreateCFObjectFromXPCObject();
    v11 = *(a1 + 32);
    if (v10)
    {
      (*(v11 + 16))(*(a1 + 32), v10, 0);
    }

    else
    {
      __45__CBController_diagnosticControl_completion___block_invoke_2_cold_1(v11 + 16, v11, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)setLowPowerModeWithParams:(int)params params:(id)a4 completion:(id)completion
{
  v8 = a4;
  completionCopy = completion;
  if (gLogCategory_CBController > 30 || gLogCategory_CBController == -1 && !_LogCategory_Initialize())
  {
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_16:
    [(CBController *)completionCopy setLowPowerModeWithParams:v9 params:v10 completion:v11, v12, v13, v14, v15];
    goto LABEL_14;
  }

  [CBController setLowPowerModeWithParams:params:completion:];
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (params == 3)
  {
    if ([v8 rssiThresholdValue])
    {
      if ([v8 scanWindow])
      {
        if ([v8 scanInterval])
        {
          v17 = xpc_dictionary_create(0, 0, 0);
          [(CBController *)self encodeWithXPCObject:v17];
          xpc_dictionary_set_string(v17, "mTyp", "LpmS");
          xpc_dictionary_set_int64(v17, "ctrP", 3);
          CUXPCEncodeObject();
          _ensureXPCStarted = [(CBController *)self _ensureXPCStarted];
          dispatchQueue = self->_dispatchQueue;
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __60__CBController_setLowPowerModeWithParams_params_completion___block_invoke;
          handler[3] = &unk_1E811D1B0;
          v23 = completionCopy;
          xpc_connection_send_message_with_reply(_ensureXPCStarted, v17, dispatchQueue, handler);
        }

        else
        {
          [CBController setLowPowerModeWithParams:completionCopy params:v8 completion:?];
        }
      }

      else
      {
        [CBController setLowPowerModeWithParams:completionCopy params:v8 completion:?];
      }
    }

    else
    {
      [CBController setLowPowerModeWithParams:completionCopy params:v8 completion:?];
    }
  }

  else
  {
    if (params > 2)
    {
      v20 = "?";
    }

    else
    {
      v20 = off_1E811E528[params];
    }

    v21 = CBErrorF(-6735, "Power reason %s is not supported", v10, v11, v12, v13, v14, v15, v20);
    (*(completionCopy + 2))(completionCopy, v21);
  }

LABEL_14:
}

void __60__CBController_setLowPowerModeWithParams_params_completion___block_invoke(uint64_t a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_CBController <= 30 && (gLogCategory_CBController != -1 || _LogCategory_Initialize()))
  {
    __60__CBController_setLowPowerModeWithParams_params_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setLowPowerModeWithReason:(int)reason completion:(id)completion
{
  completionCopy = completion;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "mTyp", "LpmS");
  xpc_dictionary_set_int64(v7, "ctrP", reason);
  _ensureXPCStarted = [(CBController *)self _ensureXPCStarted];
  if (gLogCategory_CBController <= 30 && (gLogCategory_CBController != -1 || _LogCategory_Initialize()))
  {
    [CBController setLowPowerModeWithReason:completion:];
  }

  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __53__CBController_setLowPowerModeWithReason_completion___block_invoke;
  handler[3] = &unk_1E811D1B0;
  v12 = completionCopy;
  v10 = completionCopy;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v7, dispatchQueue, handler);
}

void __53__CBController_setLowPowerModeWithReason_completion___block_invoke(uint64_t a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_CBController <= 30 && (gLogCategory_CBController != -1 || _LogCategory_Initialize()))
  {
    __53__CBController_setLowPowerModeWithReason_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)setLowPowerModeWithReason:(int)reason error:(id *)error
{
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "mTyp", "LpmS");
  xpc_dictionary_set_int64(v7, "ctrP", reason);
  _ensureXPCStarted = [(CBController *)self _ensureXPCStarted];
  v15 = xpc_connection_send_message_with_reply_sync(_ensureXPCStarted, v7);
  if (v15)
  {
    v16 = CUXPCDecodeNSErrorIfNeeded();
    v17 = v16 == 0;
    if (v16 && error)
    {
      v16 = v16;
      *error = v16;
    }
  }

  else if (error)
  {
    CBErrorF(-6700, "No reply", v9, v10, v11, v12, v13, v14, v19);
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (void)setOfflineAdvertisingParams:(id)params
{
  paramsCopy = params;
  stackController = [gCBDaemonServer stackController];
  v4 = stackController;
  if (stackController)
  {
    [stackController setOfflineAdvertisingParams:paramsCopy];
  }

  else
  {
    +[CBController setOfflineAdvertisingParams:];
  }
}

- (void)getPowerStateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CBController_getPowerStateWithCompletion___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __44__CBController_getPowerStateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "PwrG");
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __44__CBController_getPowerStateWithCompletion___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __44__CBController_getPowerStateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    __44__CBController_getPowerStateWithCompletion___block_invoke_2_cold_1(a1, v4);
  }

  else
  {
    CUXPCDecodeSInt64RangedEx();
    v5 = 0;
    if (v5)
    {
      __44__CBController_getPowerStateWithCompletion___block_invoke_2_cold_2(a1, v5);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)setPowerState:(int64_t)state completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CBController_setPowerState_completion___block_invoke;
  block[3] = &unk_1E811E4E0;
  v10 = completionCopy;
  stateCopy = state;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __41__CBController_setPowerState_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "PwrS");
  xpc_dictionary_set_int64(v2, "pwrS", *(a1 + 48));
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __41__CBController_setPowerState_completion___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __41__CBController_setPowerState_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

+ (id)readPrefKeys:(id)keys error:(id *)error
{
  keysCopy = keys;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "mTyp", "RdPf");
  CUXPCEncodeNSArrayOfNSString();

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("CBController-ReadPrefs", v7);

  mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", v8, 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_127);
  xpc_connection_activate(mach_service);
  v10 = xpc_connection_send_message_with_reply_sync(mach_service, v6);
  xpc_connection_cancel(mach_service);
  if (v10)
  {
    v17 = CUXPCDecodeNSErrorIfNeeded();
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v37 = v17;
        v34 = 0;
        *error = v18;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v25 = xpc_dictionary_get_value(v10, "pfVs");
      if (v25)
      {
        v26 = _CFXPCCreateCFObjectFromXPCObject();
        v34 = v26;
        if (v26)
        {
          v35 = v26;
        }

        else
        {
          [(CBController *)error readPrefKeys:v27 error:v28, v29, v30, v31, v32, v33];
        }
      }

      else if (error)
      {
        CBErrorF(-6762, "No XPC prefs", v19, v20, v21, v22, v23, v24, v38);
        *error = v34 = 0;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else if (error)
  {
    CBErrorF(-6700, "No reply", v11, v12, v13, v14, v15, v16, v38);
    *error = v34 = 0;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

+ (BOOL)writePrefKey:(id)key value:(id)value error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "mTyp", "WrPf");
  v10 = v9;
  uTF8String = [keyCopy UTF8String];

  if (uTF8String)
  {
    xpc_dictionary_set_string(v10, "pfKy", uTF8String);
  }

  v12 = _CFXPCCreateXPCObjectFromCFObject();
  if (v12)
  {
    xpc_dictionary_set_value(v10, "pfVl", v12);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("CBController-WritePrefs", v19);

    mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", v20, 0);
    xpc_connection_set_event_handler(mach_service, &__block_literal_global_137);
    xpc_connection_activate(mach_service);
    v22 = xpc_connection_send_message_with_reply_sync(mach_service, v10);
    xpc_connection_cancel(mach_service);
    if (v22)
    {
      v29 = CUXPCDecodeNSErrorIfNeeded();
      v30 = v29 == 0;
      if (v29 && error)
      {
        v29 = v29;
        *error = v29;
      }
    }

    else if (error)
    {
      CBErrorF(-6700, "No reply", v23, v24, v25, v26, v27, v28, v32);
      *error = v30 = 0;
    }

    else
    {
      v30 = 0;
    }
  }

  else if (error)
  {
    CBErrorF(-6756, "Bad value type", v13, v14, v15, v16, v17, v18, v32);
    *error = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)sendRelayMessageType:(unsigned __int8)type messageData:(id)data conduitDevice:(id)device destinationDevice:(id)destinationDevice completionHandler:(id)handler
{
  dataCopy = data;
  deviceCopy = device;
  destinationDeviceCopy = destinationDevice;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __99__CBController_sendRelayMessageType_messageData_conduitDevice_destinationDevice_completionHandler___block_invoke;
  v21[3] = &unk_1E811E508;
  typeCopy = type;
  v22 = dataCopy;
  v23 = deviceCopy;
  v24 = destinationDeviceCopy;
  selfCopy = self;
  v26 = handlerCopy;
  v17 = handlerCopy;
  v18 = destinationDeviceCopy;
  v19 = deviceCopy;
  v20 = dataCopy;
  dispatch_async(dispatchQueue, v21);
}

void __99__CBController_sendRelayMessageType_messageData_conduitDevice_destinationDevice_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "SnRM");
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = v3;
    v7 = [v6 bytes];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = "";
    }

    v9 = [v6 length];

    xpc_dictionary_set_data(v5, "rlMD", v8, v9);
  }

  if (*(a1 + 72))
  {
    xpc_dictionary_set_uint64(v2, "rlMT", *(a1 + 72));
  }

  v10 = *(a1 + 40);
  CUXPCEncodeObject();
  v11 = *(a1 + 48);
  CUXPCEncodeObject();
  v12 = [*(a1 + 56) _ensureXPCStarted];
  v13 = *(*(a1 + 56) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __99__CBController_sendRelayMessageType_messageData_conduitDevice_destinationDevice_completionHandler___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v15 = *(a1 + 64);
  xpc_connection_send_message_with_reply(v12, v2, v13, handler);
}

void __99__CBController_sendRelayMessageType_messageData_conduitDevice_destinationDevice_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)sendSmartRoutingInformation:(id)information device:(id)device completionHandler:(id)handler
{
  informationCopy = information;
  deviceCopy = device;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__CBController_sendSmartRoutingInformation_device_completionHandler___block_invoke;
  v15[3] = &unk_1E811E468;
  v16 = informationCopy;
  v17 = deviceCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = deviceCopy;
  v14 = informationCopy;
  dispatch_async(dispatchQueue, v15);
}

void __69__CBController_sendSmartRoutingInformation_device_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "SnSR");
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = v3;
    v7 = [v6 bytes];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = "";
    }

    v9 = [v6 length];

    xpc_dictionary_set_data(v5, "rlMD", v8, v9);
  }

  v10 = *(a1 + 40);
  CUXPCEncodeObject();
  v11 = [*(a1 + 48) _ensureXPCStarted];
  v12 = *(*(a1 + 48) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __69__CBController_sendSmartRoutingInformation_device_completionHandler___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v14 = *(a1 + 56);
  xpc_connection_send_message_with_reply(v11, v2, v12, handler);
}

void __69__CBController_sendSmartRoutingInformation_device_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)sendConversationDetectMessage:(id)message device:(id)device completionHandler:(id)handler
{
  messageCopy = message;
  deviceCopy = device;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__CBController_sendConversationDetectMessage_device_completionHandler___block_invoke;
  v15[3] = &unk_1E811E468;
  v16 = messageCopy;
  v17 = deviceCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = deviceCopy;
  v14 = messageCopy;
  dispatch_async(dispatchQueue, v15);
}

void __71__CBController_sendConversationDetectMessage_device_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "SnCD");
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = v3;
    v7 = [v6 bytes];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = "";
    }

    v9 = [v6 length];

    xpc_dictionary_set_data(v5, "cdMd", v8, v9);
  }

  v10 = *(a1 + 40);
  CUXPCEncodeObject();
  v11 = [*(a1 + 48) _ensureXPCStarted];
  v12 = *(*(a1 + 48) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __71__CBController_sendConversationDetectMessage_device_completionHandler___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v14 = *(a1 + 56);
  xpc_connection_send_message_with_reply(v11, v2, v12, handler);
}

void __71__CBController_sendConversationDetectMessage_device_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)resetCBExtensionID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CBController_resetCBExtensionID_completionHandler___block_invoke;
  block[3] = &unk_1E811D490;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(dispatchQueue, block);
}

void __53__CBController_resetCBExtensionID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "RstE");
  v3 = *(a1 + 40);
  v4 = v2;
  v5 = [v3 UTF8String];
  if (v5)
  {
    xpc_dictionary_set_string(v4, "id", v5);
  }

  v6 = [*(a1 + 32) _ensureXPCStarted];
  v7 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __53__CBController_resetCBExtensionID_completionHandler___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v9 = *(a1 + 48);
  xpc_connection_send_message_with_reply(v6, v4, v7, handler);
}

void __53__CBController_resetCBExtensionID_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)updateIdentities:(id)identities completion:(id)completion
{
  identitiesCopy = identities;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CBController_updateIdentities_completion___block_invoke;
  block[3] = &unk_1E811D490;
  v12 = identitiesCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identitiesCopy;
  dispatch_async(dispatchQueue, block);
}

void __44__CBController_updateIdentities_completion___block_invoke(id *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "UpId");
  v3 = xpc_array_create(0, 0);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = xpc_dictionary_create(0, 0, 0);
        [v9 encodeWithXPCObject:v10];
        xpc_array_append_value(v3, v10);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  xpc_dictionary_set_value(v2, "idtA", v3);
  v11 = [a1[5] _ensureXPCStarted];
  v12 = *(a1[5] + 11);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __44__CBController_updateIdentities_completion___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v15 = a1[6];
  xpc_connection_send_message_with_reply(v11, v2, v12, handler);

  v13 = *MEMORY[0x1E69E9840];
}

void __44__CBController_updateIdentities_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (CBController)initWithXPCObject:(id)object error:(id *)error
{
  OUTLINED_FUNCTION_19(self, a2, object);
  v13 = OUTLINED_FUNCTION_18();
  if (!v13)
  {
    if (!v5)
    {
      goto LABEL_20;
    }

    v18 = "CBController init failed";
LABEL_19:
    v19 = CBErrorF(-6756, v18, v7, v8, v9, v10, v11, v12, v20);
    OUTLINED_FUNCTION_16(v19);
    goto LABEL_14;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (!v5)
    {
      goto LABEL_20;
    }

    v18 = "XPC non-dict";
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_0();
  v14 = OUTLINED_FUNCTION_5();
  if (v14 == 6)
  {
    v13[14] = 0;
  }

  else if (v14 == 5)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0();
  v15 = OUTLINED_FUNCTION_5();
  if (v15 == 6)
  {
    v13[15] = 0;
  }

  else if (v15 == 5)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0();
  v16 = OUTLINED_FUNCTION_5();
  if (v16 == 6)
  {
    v13[16] = 0;
    goto LABEL_12;
  }

  if (v16 == 5)
  {
LABEL_20:
    v6 = 0;
    goto LABEL_14;
  }

LABEL_12:
  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_20;
  }

  v6 = v13;
LABEL_14:

  return v6;
}

- (uint64_t)_xpcReceivedDiscoverableStateChanged:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_7_1(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 32);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)_xpcReceivedInquiryStateChanged:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_7_1(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 32);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)_xpcReceivedPowerStateChanged:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_7_1(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 32);
    }

    return LogPrintF_safe();
  }

  return result;
}

void __48__CBController_getControllerInfoWithCompletion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  CBErrorF(-6762, "No controller info", a3, a4, a5, a6, a7, a8, v11);
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_2_4();
  v10(v9, 0);
}

void __59__CBController_getControllerSettingsWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = OUTLINED_FUNCTION_8_1();
    v9(v8);
  }

  else
  {
    v10 = CBErrorF(-6762, "No settings", a3, a4, a5, a6, a7, a8, v13);
    v11 = OUTLINED_FUNCTION_8_1();
    v12(v11);
  }
}

void __54__CBController_getDevicesWithFlags_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = OUTLINED_FUNCTION_8_1();
    v9(v8);
  }

  else
  {
    v10 = CBErrorF(-6762, "No device array", a3, a4, a5, a6, a7, a8, v13);
    v11 = OUTLINED_FUNCTION_8_1();
    v12(v11);
  }
}

void __55__CBController_performDeviceRequest_device_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  CBErrorF(-6762, "No device response", a3, a4, a5, a6, a7, a8, v11);
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_2_4();
  v10(v9, 0);
}

void __45__CBController_diagnosticControl_completion___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  v9 = CBErrorF(-6700, "Params conversion failed", a3, a4, a5, a6, a7, a8, v12);
  v10 = OUTLINED_FUNCTION_3_2();
  v11(v10, 0, v9);
}

void __45__CBController_diagnosticControl_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CBErrorF(-6700, "No error, no response", a3, a4, a5, a6, a7, a8, v10);
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_5_3();
  v9(v8);
}

- (void)setLowPowerModeWithParams:(uint64_t)a1 params:(void *)a2 completion:.cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 scanInterval];
  CBErrorF(-6705, "BTWake: Invalid scan Interval %d", v3, v4, v5, v6, v7, v8, v2);
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_2_4();
  v10(v9);
}

- (void)setLowPowerModeWithParams:(uint64_t)a1 params:(void *)a2 completion:.cold.3(uint64_t a1, void *a2)
{
  v2 = [a2 scanWindow];
  CBErrorF(-6705, "BTWake: Invalid scan Window %d", v3, v4, v5, v6, v7, v8, v2);
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_2_4();
  v10(v9);
}

- (void)setLowPowerModeWithParams:(uint64_t)a1 params:(void *)a2 completion:.cold.4(uint64_t a1, void *a2)
{
  v2 = [a2 rssiThresholdValue];
  CBErrorF(-6705, "BTWake: Invalid RSSI %d", v3, v4, v5, v6, v7, v8, v2);
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_2_4();
  v10(v9);
}

- (void)setLowPowerModeWithParams:(uint64_t)a3 params:(uint64_t)a4 completion:(uint64_t)a5 .cold.5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CBErrorF(-6705, "No Params", a3, a4, a5, a6, a7, a8, v10);
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_2_4();
  v9(v8);
}

void __60__CBController_setLowPowerModeWithParams_params_completion___block_invoke_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void __53__CBController_setLowPowerModeWithReason_completion___block_invoke_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

+ (void)setOfflineAdvertisingParams:.cold.1()
{
  if (gLogCategory_CBController <= 90 && (gLogCategory_CBController != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe();
  }
}

void __44__CBController_getPowerStateWithCompletion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_17(a1);
  v3(v2);
}

void __44__CBController_getPowerStateWithCompletion___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v3 = OUTLINED_FUNCTION_17(a1);
  v4(v3);
}

+ (void)readPrefKeys:(uint64_t)a3 error:(uint64_t)a4 .cold.1(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = CBErrorF(-6700, "Bad XPC prefs", a3, a4, a5, a6, a7, a8, v9);
    *v8 = result;
  }

  return result;
}

@end
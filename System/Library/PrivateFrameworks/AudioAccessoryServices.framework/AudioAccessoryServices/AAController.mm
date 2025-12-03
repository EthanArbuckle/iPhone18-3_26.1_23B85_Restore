@interface AAController
- (AAController)init;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_accessoryUsageSummaryMessageReceived:(id)received fromDevice:(id)device;
- (void)_activate;
- (void)_activateXPC:(BOOL)c;
- (void)_activateXPCCompleted:(id)completed;
- (void)_batteryInfoMessageReceived:(id)received fromDevice:(id)device;
- (void)_conversationDetectMessageReceived:(id)received fromDevice:(id)device;
- (void)_interrupted;
- (void)_invalidated;
- (void)_multimodalContextMessageReceived:(id)received fromDevice:(id)device;
- (void)_personalTranslationMessageReceived:(id)received fromDevice:(id)device;
- (void)_pmeConfigDataReceived:(id)received fromDevice:(id)device;
- (void)_rawGestureMessageReceived:(id)received fromDevice:(id)device;
- (void)_sendAccessoryEventMessage:(id)message eventType:(unsigned __int8)type destinationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_sendDeviceConfig:(id)config destinationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_sleepDetectionMessageReceived:(id)received fromDevice:(id)device;
- (void)_xpcReceivedAccessoryEvent:(id)event;
- (void)_xpcReceivedAudioAccessoryDeviceInfoChange:(id)change;
- (void)_xpcReceivedMessage:(id)message;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)sendConversationDetectMessage:(id)message destinationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)sendDEOCTempDisableIntervalMessage:(id)message destinationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)sendDeviceConfig:(id)config destinationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)sendGetTipiTableMessageToDestinationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)sendMultimodalContextMessage:(id)message destinationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)sendPMEConfigData:(id)data destinationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)sendSleepDetectionMessage:(id)message destinationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)xpcReceivedMessage:(id)message;
@end

@implementation AAController

- (AAController)init
{
  v5.receiver = self;
  v5.super_class = AAController;
  v2 = [(AAController *)&v5 init];
  if (v2)
  {
    v2->_clientID = AAXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v2->_coreBluetoothInternalFlag = 0x2000;
    v3 = v2;
  }

  return v2;
}

- (id)description
{
  clientID = self->_clientID;
  NSAppendPrintF();

  return 0;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activateCalled)
  {
    selfCopy->_activateCalled = 1;
    v6 = MEMORY[0x245CE9060](completionCopy);
    activateCompletion = selfCopy->_activateCompletion;
    selfCopy->_activateCompletion = v6;

    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__AAController_activateWithCompletion___block_invoke;
    block[3] = &unk_278CDD728;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_activate
{
  if (self->_invalidateCalled)
  {
    v3 = *MEMORY[0x277CCA590];
    v6 = NSErrorF();
    if (gLogCategory_AAController <= 90 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = MEMORY[0x245CE9060](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v4)
    {
      (v4)[2](v4, v6);
    }
  }

  else
  {

    [(AAController *)self _activateXPC:0];
  }
}

- (void)_activateXPC:(BOOL)c
{
  if (c)
  {
    if (gLogCategory_AAController <= 30 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
LABEL_12:
      [AAController _activateXPC:?];
    }
  }

  else if (gLogCategory_AAController <= 30 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_12;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  coreBluetoothInternalFlag = self->_coreBluetoothInternalFlag;
  if (coreBluetoothInternalFlag)
  {
    xpc_dictionary_set_uint64(v4, "intF", coreBluetoothInternalFlag);
  }

  xpc_dictionary_set_string(v5, "mTyp", "CtrA");
  _ensureXPCStarted = [(AAController *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __29__AAController__activateXPC___block_invoke;
  handler[3] = &unk_278CDD908;
  handler[4] = self;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v5, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)completed
{
  completedCopy = completed;
  v5 = CUXPCDecodeNSErrorIfNeeded();
  if (v5)
  {
    if (gLogCategory_AAController <= 90 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
      [AAController _activateXPCCompleted:?];
    }

    v6 = MEMORY[0x245CE9060](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v6)
    {
      (v6)[2](v6, v5);
    }
  }

  else
  {
    v8 = xpc_dictionary_get_array(completedCopy, "aaDD");
    v6 = v8;
    if (v8)
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __38__AAController__activateXPCCompleted___block_invoke;
      applier[3] = &unk_278CDD930;
      applier[4] = self;
      xpc_array_apply(v8, applier);
    }

    if (gLogCategory_AAController <= 30 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
      [AAController _activateXPCCompleted:?];
    }

    v9 = MEMORY[0x245CE9060](self->_activateCompletion);
    v10 = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v9)
    {
      v9[2](v9, 0);
    }
  }
}

- (id)_ensureXPCStarted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_xpcCnx;
  if (!selfCopy->_xpcCnx)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", selfCopy->_dispatchQueue, 0);

    objc_storeStrong(&selfCopy->_xpcCnx, mach_service);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__AAController__ensureXPCStarted__block_invoke;
    v6[3] = &unk_278CDD958;
    v3 = mach_service;
    v7 = v3;
    v8 = selfCopy;
    xpc_connection_set_event_handler(v3, v6);
    xpc_connection_activate(v3);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

void *__33__AAController__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[4])
  {
    return [result xpcReceivedMessage:a2];
  }

  return result;
}

- (void)_interrupted
{
  if (!self->_invalidateCalled)
  {
    if (gLogCategory_AAController <= 30 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
      [AAController _interrupted];
    }

    v3 = MEMORY[0x245CE9060](self->_interruptionHandler);
    v4 = v3;
    if (v3)
    {
      (*(v3 + 16))(v3);
    }

    if (self->_activateCalled)
    {

      [(AAController *)self _activateXPC:1];
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__AAController_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __26__AAController_invalidate__block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    if (gLogCategory_AAController <= 30 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
      __26__AAController_invalidate__block_invoke_cold_1(v2);
    }

    v3 = *v2;
    objc_sync_enter(v3);
    v4 = *(*v2 + 4);
    v5 = v4;
    if (v4)
    {
      xpc_connection_cancel(v4);
    }

    objc_sync_exit(v3);
    v6 = *v2;

    return [v6 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    xpcCnx = selfCopy->_xpcCnx;
    objc_sync_exit(selfCopy);

    if (!xpcCnx)
    {
      conversationDetectMessageHandler = selfCopy->_conversationDetectMessageHandler;
      selfCopy->_conversationDetectMessageHandler = 0;

      deviceInfoChangeHandler = selfCopy->_deviceInfoChangeHandler;
      selfCopy->_deviceInfoChangeHandler = 0;

      multimodalContextMessageHandler = selfCopy->_multimodalContextMessageHandler;
      selfCopy->_multimodalContextMessageHandler = 0;

      pmeConfigMessageHandler = selfCopy->_pmeConfigMessageHandler;
      selfCopy->_pmeConfigMessageHandler = 0;

      interruptionHandler = selfCopy->_interruptionHandler;
      selfCopy->_interruptionHandler = 0;

      v13 = MEMORY[0x245CE9060](selfCopy->_invalidationHandler);
      invalidationHandler = selfCopy->_invalidationHandler;
      selfCopy->_invalidationHandler = 0;

      v12 = v13;
      if (v13)
      {
        _invalidated = (*(v13 + 16))(v13);
        v12 = v13;
      }

      self->_invalidateDone = 1;
      if (gLogCategory_AAController <= 30)
      {
        if (gLogCategory_AAController != -1 || (_invalidated = _LogCategory_Initialize(), v12 = v13, _invalidated))
        {
          _invalidated = [AAController _invalidated];
          v12 = v13;
        }
      }

      MEMORY[0x2821F96F8](_invalidated, v12);
    }
  }
}

- (void)sendConversationDetectMessage:(id)message destinationIdentifier:(id)identifier completionHandler:(id)handler
{
  messageCopy = message;
  identifierCopy = identifier;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__AAController_sendConversationDetectMessage_destinationIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278CDD980;
  v16 = identifierCopy;
  selfCopy = self;
  v18 = messageCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = messageCopy;
  v14 = identifierCopy;
  dispatch_async(dispatchQueue, v15);
}

uint64_t __86__AAController_sendConversationDetectMessage_destinationIdentifier_completionHandler___block_invoke(void *a1)
{
  if (gLogCategory_AAController <= 30 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    __86__AAController_sendConversationDetectMessage_destinationIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:2 destinationIdentifier:v3 completionHandler:v5];
}

- (void)sendDEOCTempDisableIntervalMessage:(id)message destinationIdentifier:(id)identifier completionHandler:(id)handler
{
  messageCopy = message;
  identifierCopy = identifier;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__AAController_sendDEOCTempDisableIntervalMessage_destinationIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278CDD980;
  v16 = identifierCopy;
  selfCopy = self;
  v18 = messageCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = messageCopy;
  v14 = identifierCopy;
  dispatch_async(dispatchQueue, v15);
}

uint64_t __91__AAController_sendDEOCTempDisableIntervalMessage_destinationIdentifier_completionHandler___block_invoke(void *a1)
{
  if (gLogCategory_AAController <= 30 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    __91__AAController_sendDEOCTempDisableIntervalMessage_destinationIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:12 destinationIdentifier:v3 completionHandler:v5];
}

- (void)sendMultimodalContextMessage:(id)message destinationIdentifier:(id)identifier completionHandler:(id)handler
{
  messageCopy = message;
  identifierCopy = identifier;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__AAController_sendMultimodalContextMessage_destinationIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278CDD980;
  v16 = identifierCopy;
  selfCopy = self;
  v18 = messageCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = messageCopy;
  v14 = identifierCopy;
  dispatch_async(dispatchQueue, v15);
}

uint64_t __85__AAController_sendMultimodalContextMessage_destinationIdentifier_completionHandler___block_invoke(void *a1)
{
  if (gLogCategory_AAController <= 30 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    __85__AAController_sendMultimodalContextMessage_destinationIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:4 destinationIdentifier:v3 completionHandler:v5];
}

- (void)sendPMEConfigData:(id)data destinationIdentifier:(id)identifier completionHandler:(id)handler
{
  dataCopy = data;
  identifierCopy = identifier;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__AAController_sendPMEConfigData_destinationIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278CDD980;
  v16 = identifierCopy;
  selfCopy = self;
  v18 = dataCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = dataCopy;
  v14 = identifierCopy;
  dispatch_async(dispatchQueue, v15);
}

uint64_t __74__AAController_sendPMEConfigData_destinationIdentifier_completionHandler___block_invoke(void *a1)
{
  if (gLogCategory_AAController <= 30 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    __74__AAController_sendPMEConfigData_destinationIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:5 destinationIdentifier:v3 completionHandler:v5];
}

- (void)sendDeviceConfig:(id)config destinationIdentifier:(id)identifier completionHandler:(id)handler
{
  configCopy = config;
  identifierCopy = identifier;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__AAController_sendDeviceConfig_destinationIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278CDD980;
  v16 = identifierCopy;
  selfCopy = self;
  v18 = configCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = configCopy;
  v14 = identifierCopy;
  dispatch_async(dispatchQueue, v15);
}

uint64_t __73__AAController_sendDeviceConfig_destinationIdentifier_completionHandler___block_invoke(void *a1)
{
  if (gLogCategory_AAController <= 30 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    __73__AAController_sendDeviceConfig_destinationIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendDeviceConfig:v4 destinationIdentifier:v3 completionHandler:v5];
}

- (void)sendGetTipiTableMessageToDestinationIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__AAController_sendGetTipiTableMessageToDestinationIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278CDD9A8;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(dispatchQueue, block);
}

void __81__AAController_sendGetTipiTableMessageToDestinationIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [@"Send getTipiTable message" dataUsingEncoding:4];
  if (gLogCategory_AAController <= 30 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    __81__AAController_sendGetTipiTableMessageToDestinationIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  [*(a1 + 40) _sendAccessoryEventMessage:v2 eventType:6 destinationIdentifier:*(a1 + 32) completionHandler:*(a1 + 48)];
}

- (void)sendSleepDetectionMessage:(id)message destinationIdentifier:(id)identifier completionHandler:(id)handler
{
  messageCopy = message;
  identifierCopy = identifier;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__AAController_sendSleepDetectionMessage_destinationIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278CDD980;
  v16 = identifierCopy;
  selfCopy = self;
  v18 = messageCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = messageCopy;
  v14 = identifierCopy;
  dispatch_async(dispatchQueue, v15);
}

uint64_t __82__AAController_sendSleepDetectionMessage_destinationIdentifier_completionHandler___block_invoke(void *a1)
{
  if (gLogCategory_AAController <= 30 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    __82__AAController_sendSleepDetectionMessage_destinationIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:8 destinationIdentifier:v3 completionHandler:v5];
}

- (void)_sendAccessoryEventMessage:(id)message eventType:(unsigned __int8)type destinationIdentifier:(id)identifier completionHandler:(id)handler
{
  typeCopy = type;
  messageCopy = message;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (self->_invalidateCalled)
  {
    v13 = *MEMORY[0x277CCA590];
    v14 = NSErrorF();
    if (gLogCategory_AAController <= 90 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
      [AAController _sendAccessoryEventMessage:typeCopy eventType:? destinationIdentifier:? completionHandler:?];
    }

LABEL_15:
    handlerCopy[2](handlerCopy, v14);
    goto LABEL_16;
  }

  if (!identifierCopy)
  {
    v29 = *MEMORY[0x277CCA590];
    v14 = NSErrorF();
    if (gLogCategory_AAController <= 90 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
      [AAController _sendAccessoryEventMessage:typeCopy eventType:? destinationIdentifier:? completionHandler:?];
    }

    goto LABEL_15;
  }

  v14 = objc_alloc_init(MEMORY[0x277CBE020]);
  [v14 setIdentifier:identifierCopy];
  [v14 dictionaryRepresentation];
  v15 = _CFXPCCreateXPCObjectFromCFObject();
  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v16, "mTyp", "SnAE");
  xpc_dictionary_set_uint64(v16, "acET", typeCopy);
  if (messageCopy)
  {
    v17 = messageCopy;
    v18 = v16;
    v19 = messageCopy;
    bytes = [v19 bytes];
    v21 = "";
    if (bytes)
    {
      v21 = bytes;
    }

    v22 = messageCopy;
    v23 = v14;
    v24 = v15;
    v25 = [v19 length];

    v26 = v25;
    v15 = v24;
    v14 = v23;
    messageCopy = v22;
    xpc_dictionary_set_data(v18, "acMd", bytes, v26);
  }

  xpc_dictionary_set_value(v16, "dstD", v15);
  _ensureXPCStarted = [(AAController *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __93__AAController__sendAccessoryEventMessage_eventType_destinationIdentifier_completionHandler___block_invoke;
  handler[3] = &unk_278CDD9D0;
  v32 = handlerCopy;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v16, dispatchQueue, handler);

LABEL_16:
}

void __93__AAController__sendAccessoryEventMessage_eventType_destinationIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)_sendDeviceConfig:(id)config destinationIdentifier:(id)identifier completionHandler:(id)handler
{
  configCopy = config;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (self->_invalidateCalled)
  {
    v11 = *MEMORY[0x277CCA590];
    v12 = NSErrorF();
    if (gLogCategory_AAController <= 90 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
      [AAController _sendDeviceConfig:destinationIdentifier:completionHandler:];
    }

LABEL_11:
    handlerCopy[2](handlerCopy, v12);
    goto LABEL_12;
  }

  if (!identifierCopy)
  {
    v17 = *MEMORY[0x277CCA590];
    v12 = NSErrorF();
    if (gLogCategory_AAController <= 90 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
      [AAController _sendDeviceConfig:destinationIdentifier:completionHandler:];
    }

    goto LABEL_11;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBE020]);
  [v12 setIdentifier:identifierCopy];
  [v12 dictionaryRepresentation];
  v13 = _CFXPCCreateXPCObjectFromCFObject();
  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v14, "mTyp", "SnAC");
  xpc_dictionary_set_value(v14, "acMd", configCopy);
  xpc_dictionary_set_value(v14, "dstD", v13);
  _ensureXPCStarted = [(AAController *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __74__AAController__sendDeviceConfig_destinationIdentifier_completionHandler___block_invoke;
  handler[3] = &unk_278CDD9D0;
  v19 = handlerCopy;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v14, dispatchQueue, handler);

LABEL_12:
}

void __74__AAController__sendDeviceConfig_destinationIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)xpcReceivedMessage:(id)message
{
  messageCopy = message;
  v13 = messageCopy;
  if (gLogCategory_AAController <= 10)
  {
    if (gLogCategory_AAController != -1 || (v5 = _LogCategory_Initialize(), messageCopy = v13, v5))
    {
      [AAController xpcReceivedMessage:];
      messageCopy = v13;
    }
  }

  if (MEMORY[0x245CE9330](messageCopy) == MEMORY[0x277D86468])
  {
    [(AAController *)self _xpcReceivedMessage:v13];
  }

  else if (v13 == MEMORY[0x277D863F0])
  {
    [(AAController *)self _interrupted];
  }

  else if (v13 == MEMORY[0x277D863F8])
  {
    if (!self->_invalidateCalled && gLogCategory_AAController <= 90 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
      [AAController xpcReceivedMessage:?];
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    xpcCnx = selfCopy->_xpcCnx;
    selfCopy->_xpcCnx = 0;

    objc_sync_exit(selfCopy);
    [(AAController *)selfCopy _invalidated];
  }

  else
  {
    v6 = CUXPCDecodeNSErrorIfNeeded();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v11 = *MEMORY[0x277CCA590];
      v8 = NSErrorF();
    }

    v12 = v8;

    if (gLogCategory_AAController <= 90 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
      [AAController xpcReceivedMessage:];
    }
  }
}

- (void)_xpcReceivedMessage:(id)message
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "mTyp");
  if (string)
  {
    v5 = string;
    if (!strcmp(string, "AcRc"))
    {
      [(AAController *)self _xpcReceivedAccessoryEvent:messageCopy];
    }

    else if (!strcmp(v5, "AcIC"))
    {
      [(AAController *)self _xpcReceivedAudioAccessoryDeviceInfoChange:messageCopy];
    }

    else if (gLogCategory_AAController <= 10 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
    {
      [AAController _xpcReceivedMessage:];
    }
  }

  else if (gLogCategory_AAController <= 90 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    [AAController _xpcReceivedMessage:];
  }
}

- (void)_xpcReceivedAccessoryEvent:(id)event
{
  eventCopy = event;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__AAController__xpcReceivedAccessoryEvent___block_invoke;
  v9[3] = &unk_278CDD9F8;
  v9[4] = &v10;
  v4 = MEMORY[0x245CE9060](v9);
  if (MEMORY[0x245CE9330](eventCopy) == MEMORY[0x277D86468])
  {
    objc_opt_class();
    CUXPCDecodeObject();
    v5 = 0;
    v8 = CUPrintNSError();
    v6 = NSPrintF_safe();
    v7 = v11[5];
    v11[5] = v6;
  }

  else
  {
    v5 = v11[5];
    v11[5] = @"non-dict message";
  }

  v4[2](v4);
  _Block_object_dispose(&v10, 8);
}

uint64_t __43__AAController__xpcReceivedAccessoryEvent___block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && gLogCategory_AAController <= 90)
  {
    if (gLogCategory_AAController != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

- (void)_xpcReceivedAudioAccessoryDeviceInfoChange:(id)change
{
  changeCopy = change;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__AAController__xpcReceivedAudioAccessoryDeviceInfoChange___block_invoke;
  v11[3] = &unk_278CDD9F8;
  v11[4] = &v12;
  v5 = MEMORY[0x245CE9060](v11);
  v6 = MEMORY[0x245CE9330](changeCopy);
  v7 = MEMORY[0x277D86468];
  if (v6 == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_value(changeCopy, "aaID");
    if (MEMORY[0x245CE9330]() == v7)
    {
      v9 = MEMORY[0x245CE9060](self->_deviceInfoChangeHandler);
      v10 = v9;
      if (v9)
      {
        (*(v9 + 16))(v9, v8);
      }
    }

    else
    {
      v10 = v13[5];
      v13[5] = @"missing key for AADeviceInfo";
    }
  }

  else
  {
    v8 = v13[5];
    v13[5] = @"non-dict message";
  }

  v5[2](v5);
  _Block_object_dispose(&v12, 8);
}

uint64_t __59__AAController__xpcReceivedAudioAccessoryDeviceInfoChange___block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && gLogCategory_AAController <= 90)
  {
    if (gLogCategory_AAController != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

- (void)_batteryInfoMessageReceived:(id)received fromDevice:(id)device
{
  receivedCopy = received;
  deviceCopy = device;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__AAController__batteryInfoMessageReceived_fromDevice___block_invoke;
  v15[3] = &unk_278CDD9F8;
  v15[4] = &v16;
  v8 = MEMORY[0x245CE9060](v15);
  if (gLogCategory_AAController <= 10 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    v14 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = MEMORY[0x245CE9060](self->_batteryInfoMessageHandler);
  if (v9)
  {
    identifier = [deviceCopy identifier];
    if (identifier)
    {
      (v9)[2](v9, identifier, receivedCopy);
    }

    else
    {
      v13 = CUPrintNSError();
      v11 = NSPrintF_safe();
      v12 = v17[5];
      v17[5] = v11;
    }
  }

  v8[2](v8);
  _Block_object_dispose(&v16, 8);
}

uint64_t __55__AAController__batteryInfoMessageReceived_fromDevice___block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && gLogCategory_AAController <= 90)
  {
    if (gLogCategory_AAController != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

- (void)_conversationDetectMessageReceived:(id)received fromDevice:(id)device
{
  receivedCopy = received;
  deviceCopy = device;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__AAController__conversationDetectMessageReceived_fromDevice___block_invoke;
  v15[3] = &unk_278CDD9F8;
  v15[4] = &v16;
  v8 = MEMORY[0x245CE9060](v15);
  if (gLogCategory_AAController <= 10 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    v14 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = MEMORY[0x245CE9060](self->_conversationDetectMessageHandler);
  if (v9)
  {
    identifier = [deviceCopy identifier];
    if (identifier)
    {
      (v9)[2](v9, identifier, receivedCopy);
    }

    else
    {
      v13 = CUPrintNSError();
      v11 = NSPrintF_safe();
      v12 = v17[5];
      v17[5] = v11;
    }
  }

  v8[2](v8);
  _Block_object_dispose(&v16, 8);
}

uint64_t __62__AAController__conversationDetectMessageReceived_fromDevice___block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && gLogCategory_AAController <= 90)
  {
    if (gLogCategory_AAController != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

- (void)_accessoryUsageSummaryMessageReceived:(id)received fromDevice:(id)device
{
  receivedCopy = received;
  deviceCopy = device;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__AAController__accessoryUsageSummaryMessageReceived_fromDevice___block_invoke;
  v22[3] = &unk_278CDD9F8;
  v22[4] = &v23;
  v8 = MEMORY[0x245CE9060](v22);
  if (gLogCategory_AAController <= 10 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    v21 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = MEMORY[0x245CE9060](self->_accessoryUsageSummaryMessageHandler);
  if (v9)
  {
    identifier = [deviceCopy identifier];
    if (!identifier)
    {
      v14 = CUPrintNSError();
      v20 = NSPrintF_safe();
      v17 = v24[5];
      v24[5] = v20;
      goto LABEL_19;
    }

    btAddressData = [deviceCopy btAddressData];
    v12 = CUPrintNSDataAddress();

    v13 = v12;
    v14 = v13;
    if (v13 && [v13 UTF8String])
    {
      v15 = NSDataWithHex();
      if ([v15 length] == 6 && objc_msgSend(v15, "bytes"))
      {
        v30 = 0;
        __s1 = 0;
        v16 = memcmp(&__s1, [v15 bytes], objc_msgSend(v15, "length"));

        if (v16)
        {
          (v9)[2](v9, v14, receivedCopy);
LABEL_13:

          goto LABEL_14;
        }

        goto LABEL_17;
      }
    }

LABEL_17:
    v17 = CUPrintNSError();
    v18 = NSPrintF_safe();
    v19 = v24[5];
    v24[5] = v18;

LABEL_19:
    goto LABEL_13;
  }

LABEL_14:

  v8[2](v8);
  _Block_object_dispose(&v23, 8);
}

uint64_t __65__AAController__accessoryUsageSummaryMessageReceived_fromDevice___block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && gLogCategory_AAController <= 90)
  {
    if (gLogCategory_AAController != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

- (void)_multimodalContextMessageReceived:(id)received fromDevice:(id)device
{
  receivedCopy = received;
  deviceCopy = device;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__AAController__multimodalContextMessageReceived_fromDevice___block_invoke;
  v15[3] = &unk_278CDD9F8;
  v15[4] = &v16;
  v8 = MEMORY[0x245CE9060](v15);
  if (gLogCategory_AAController <= 10 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    v14 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = MEMORY[0x245CE9060](self->_multimodalContextMessageHandler);
  if (v9)
  {
    identifier = [deviceCopy identifier];
    if (identifier)
    {
      (v9)[2](v9, identifier, receivedCopy);
    }

    else
    {
      v13 = CUPrintNSError();
      v11 = NSPrintF_safe();
      v12 = v17[5];
      v17[5] = v11;
    }
  }

  v8[2](v8);
  _Block_object_dispose(&v16, 8);
}

uint64_t __61__AAController__multimodalContextMessageReceived_fromDevice___block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && gLogCategory_AAController <= 90)
  {
    if (gLogCategory_AAController != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

- (void)_personalTranslationMessageReceived:(id)received fromDevice:(id)device
{
  receivedCopy = received;
  deviceCopy = device;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__AAController__personalTranslationMessageReceived_fromDevice___block_invoke;
  v16[3] = &unk_278CDD9F8;
  v16[4] = &v17;
  v8 = MEMORY[0x245CE9060](v16);
  if (gLogCategory_AAController <= 10 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    [receivedCopy length];
    v15 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = MEMORY[0x245CE9060](self->_personalTranslationMessageHandler);
  if (v9)
  {
    btAddressData = [deviceCopy btAddressData];
    v11 = CUPrintNSDataAddress();

    if (v11)
    {
      (v9)[2](v9, v11, receivedCopy);
    }

    else
    {
      v14 = CUPrintNSError();
      v12 = NSPrintF_safe();
      v13 = v18[5];
      v18[5] = v12;
    }
  }

  v8[2](v8);
  _Block_object_dispose(&v17, 8);
}

uint64_t __63__AAController__personalTranslationMessageReceived_fromDevice___block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && gLogCategory_AAController <= 90)
  {
    if (gLogCategory_AAController != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

- (void)_pmeConfigDataReceived:(id)received fromDevice:(id)device
{
  receivedCopy = received;
  deviceCopy = device;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__AAController__pmeConfigDataReceived_fromDevice___block_invoke;
  v15[3] = &unk_278CDD9F8;
  v15[4] = &v16;
  v8 = MEMORY[0x245CE9060](v15);
  if (gLogCategory_AAController <= 10 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    v14 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = MEMORY[0x245CE9060](self->_pmeConfigMessageHandler);
  if (v9)
  {
    identifier = [deviceCopy identifier];
    if (identifier)
    {
      (v9)[2](v9, identifier, receivedCopy);
    }

    else
    {
      v13 = CUPrintNSError();
      v11 = NSPrintF_safe();
      v12 = v17[5];
      v17[5] = v11;
    }
  }

  v8[2](v8);
  _Block_object_dispose(&v16, 8);
}

uint64_t __50__AAController__pmeConfigDataReceived_fromDevice___block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && gLogCategory_AAController <= 90)
  {
    if (gLogCategory_AAController != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

- (void)_rawGestureMessageReceived:(id)received fromDevice:(id)device
{
  receivedCopy = received;
  deviceCopy = device;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__AAController__rawGestureMessageReceived_fromDevice___block_invoke;
  v15[3] = &unk_278CDD9F8;
  v15[4] = &v16;
  v8 = MEMORY[0x245CE9060](v15);
  if (gLogCategory_AAController <= 10 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    [receivedCopy length];
    v14 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = MEMORY[0x245CE9060](self->_rawGestureMessageHandler);
  if (v9)
  {
    identifier = [deviceCopy identifier];
    if (identifier)
    {
      (v9)[2](v9, identifier, receivedCopy);
    }

    else
    {
      v13 = CUPrintNSError();
      v11 = NSPrintF_safe();
      v12 = v17[5];
      v17[5] = v11;
    }
  }

  v8[2](v8);
  _Block_object_dispose(&v16, 8);
}

uint64_t __54__AAController__rawGestureMessageReceived_fromDevice___block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && gLogCategory_AAController <= 90)
  {
    if (gLogCategory_AAController != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

- (void)_sleepDetectionMessageReceived:(id)received fromDevice:(id)device
{
  receivedCopy = received;
  deviceCopy = device;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__AAController__sleepDetectionMessageReceived_fromDevice___block_invoke;
  v15[3] = &unk_278CDD9F8;
  v15[4] = &v16;
  v8 = MEMORY[0x245CE9060](v15);
  if (gLogCategory_AAController <= 10 && (gLogCategory_AAController != -1 || _LogCategory_Initialize()))
  {
    v14 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = MEMORY[0x245CE9060](self->_sleepDetectionMessageHandler);
  if (v9)
  {
    identifier = [deviceCopy identifier];
    if (identifier)
    {
      (v9)[2](v9, identifier, receivedCopy);
    }

    else
    {
      v13 = CUPrintNSError();
      v11 = NSPrintF_safe();
      v12 = v17[5];
      v17[5] = v11;
    }
  }

  v8[2](v8);
  _Block_object_dispose(&v16, 8);
}

uint64_t __58__AAController__sleepDetectionMessageReceived_fromDevice___block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && gLogCategory_AAController <= 90)
  {
    if (gLogCategory_AAController != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

BOOL __38__AAController__activateXPCCompleted___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x245CE9060](*(*(a1 + 32) + 80));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  return v6 != 0;
}

- (void)_activateXPCCompleted:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = CUPrintNSError();
  LogPrintF();
}

- (void)_sendAccessoryEventMessage:(unsigned __int8)a1 eventType:destinationIdentifier:completionHandler:.cold.1(unsigned __int8 a1)
{
  if (a1 <= 0xCu)
  {
    v1 = off_278CDDA18[a1];
  }

  v2 = CUPrintNSError();
  LogPrintF();
}

- (void)_sendAccessoryEventMessage:(unsigned __int8)a1 eventType:destinationIdentifier:completionHandler:.cold.2(unsigned __int8 a1)
{
  if (a1 <= 0xCu)
  {
    v1 = off_278CDDA18[a1];
  }

  v2 = CUPrintNSError();
  LogPrintF();
}

- (void)_sendDeviceConfig:destinationIdentifier:completionHandler:.cold.1()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

- (void)_sendDeviceConfig:destinationIdentifier:completionHandler:.cold.2()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

- (void)xpcReceivedMessage:.cold.1()
{
  v0 = CUPrintXPC();
  LogPrintF();
}

- (void)xpcReceivedMessage:.cold.2()
{
  v1 = CUPrintNSError();
  v0 = CUPrintXPC();
  LogPrintF();
}

- (uint64_t)xpcReceivedMessage:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = *(a1 + 32);
  xpc_connection_copy_invalidation_reason();
  return LogPrintF();
}

@end
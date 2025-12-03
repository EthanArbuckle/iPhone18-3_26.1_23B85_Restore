@interface BCSNFCReaderConnection
- (BCSNFCReaderConnection)init;
- (BOOL)_enableNFC;
- (BOOL)_isNFCEnabled;
- (BOOL)_needsRadioEnabledCheck;
- (int64_t)_hardwareSupportState;
- (void)_enableNFC;
- (void)_isNFCEnabled;
- (void)checkHardwareSupportStateWithCompletionHandler:(id)handler;
- (void)checkNFCEnabledWithCompletionHandler:(id)handler;
- (void)disconnect;
- (void)enableNFCWithCompletionHandler:(id)handler;
- (void)startReaderWithDelegate:(id)delegate errorHandler:(id)handler interruptionHandler:(id)interruptionHandler;
@end

@implementation BCSNFCReaderConnection

- (BCSNFCReaderConnection)init
{
  v8.receiver = self;
  v8.super_class = BCSNFCReaderConnection;
  v2 = [(BCSNFCReaderConnection *)&v8 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4 = dispatch_queue_create_with_target_V2("com.apple.BarcodeSupport.BCSNFCReaderConnection", 0, v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)checkNFCEnabledWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__BCSNFCReaderConnection_checkNFCEnabledWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CFE7C0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __63__BCSNFCReaderConnection_checkNFCEnabledWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _isNFCEnabled];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__BCSNFCReaderConnection_checkNFCEnabledWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_278CFEC48;
  v4 = *(a1 + 40);
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (BOOL)_isNFCEnabled
{
  if (![(BCSNFCReaderConnection *)self _needsRadioEnabledCheck])
  {
    return 1;
  }

  v7 = 0;
  sharedHardwareManager = [getNFHardwareManagerClass_0() sharedHardwareManager];
  v3 = [sharedHardwareManager getRadioEnabledSetting:&v7];

  if (v3)
  {
    if (readerConnectionLog_onceToken != -1)
    {
      [BCSNFCReaderConnection _isNFCEnabled];
    }

    v4 = readerConnectionLog_log;
    if (os_log_type_enabled(readerConnectionLog_log, OS_LOG_TYPE_ERROR))
    {
      [(BCSNFCReaderConnection *)v4 _isNFCEnabled];
    }
  }

  v5 = (v3 == 0) & v7;

  return v5;
}

- (BOOL)_needsRadioEnabledCheck
{
  if (_needsRadioEnabledCheck_onceToken != -1)
  {
    [BCSNFCReaderConnection _needsRadioEnabledCheck];
  }

  return _needsRadioEnabledCheck_deviceRegionIsChina;
}

void __49__BCSNFCReaderConnection__needsRadioEnabledCheck__block_invoke()
{
  v0 = MGGetStringAnswer();
  if (v0)
  {
    v1 = v0;
    _needsRadioEnabledCheck_deviceRegionIsChina = CFStringCompare(v0, @"CH", 0) == kCFCompareEqualTo;

    CFRelease(v1);
  }
}

- (void)enableNFCWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__BCSNFCReaderConnection_enableNFCWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CFE7C0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __57__BCSNFCReaderConnection_enableNFCWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _enableNFC];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__BCSNFCReaderConnection_enableNFCWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_278CFEC48;
  v4 = *(a1 + 40);
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (BOOL)_enableNFC
{
  sharedHardwareManager = [getNFHardwareManagerClass_0() sharedHardwareManager];
  v3 = [sharedHardwareManager setRadioEnabledSetting:1];

  if (v3)
  {
    if (readerConnectionLog_onceToken != -1)
    {
      [BCSNFCReaderConnection _enableNFC];
    }

    v4 = readerConnectionLog_log;
    if (os_log_type_enabled(readerConnectionLog_log, OS_LOG_TYPE_ERROR))
    {
      [(BCSNFCReaderConnection *)v4 _enableNFC];
    }
  }

  return v3 == 0;
}

- (void)checkHardwareSupportStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__BCSNFCReaderConnection_checkHardwareSupportStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CFE7C0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __73__BCSNFCReaderConnection_checkHardwareSupportStateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _hardwareSupportState];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__BCSNFCReaderConnection_checkHardwareSupportStateWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_278CFEC70;
  v4 = *(a1 + 40);
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (int64_t)_hardwareSupportState
{
  sharedHardwareManager = [getNFHardwareManagerClass_0() sharedHardwareManager];
  v8 = 0;
  v3 = [sharedHardwareManager queryHardwareSupport:&v8];
  v4 = v8;

  v5 = 1;
  if (v3 != 2)
  {
    v5 = 2;
  }

  if ((v3 & 0xFFFFFFFD) != 1 && v4 == 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)startReaderWithDelegate:(id)delegate errorHandler:(id)handler interruptionHandler:(id)interruptionHandler
{
  delegateCopy = delegate;
  handlerCopy = handler;
  interruptionHandlerCopy = interruptionHandler;
  if (self->_notificationServiceConnection)
  {
    if (readerConnectionLog_onceToken != -1)
    {
      [BCSNFCReaderConnection _enableNFC];
    }

    v11 = readerConnectionLog_log;
    if (os_log_type_enabled(readerConnectionLog_log, OS_LOG_TYPE_ERROR))
    {
      [BCSNFCReaderConnection startReaderWithDelegate:v11 errorHandler:? interruptionHandler:?];
    }
  }

  v12 = objc_alloc_init(BCSNotificationServiceConnection);
  notificationServiceConnection = self->_notificationServiceConnection;
  self->_notificationServiceConnection = v12;

  [(BCSNotificationServiceConnection *)self->_notificationServiceConnection setInterruptionHandler:interruptionHandlerCopy];
  [(BCSNotificationServiceConnection *)self->_notificationServiceConnection startNFCReaderWithDelegate:delegateCopy errorHandler:handlerCopy];
}

- (void)disconnect
{
  notificationServiceConnection = self->_notificationServiceConnection;
  self->_notificationServiceConnection = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_isNFCEnabled
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  _bcs_privacyPreservingDescription = [a2 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_241993000, v5, v6, "Get radio enabled error: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_enableNFC
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  _bcs_privacyPreservingDescription = [a2 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_241993000, v5, v6, "Failed to enable radio: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end
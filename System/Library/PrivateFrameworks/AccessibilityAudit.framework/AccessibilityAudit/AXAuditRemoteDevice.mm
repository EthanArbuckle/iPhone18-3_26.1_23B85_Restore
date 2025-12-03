@interface AXAuditRemoteDevice
- (AXAuditRemoteDeviceDelegate)delegate;
- (BOOL)_setupConnectionForFileDescriptor:(int)descriptor;
- (CGSize)deviceSize;
- (int64_t)accessibilityHostCacheManagerDeviceOrientationForDeviceIdentifier:(id)identifier;
- (void)accessibilityTranslationTransportSendData:(id)data completionHandler:(id)handler;
- (void)didDisconnect;
- (void)notifyDelegateOfConnectionCompletionIfNecessary;
- (void)orientationChangedToDegrees:(double)degrees;
- (void)processDataFromRemoteDevice:(id)device;
- (void)requestDeviceAPIVersion;
- (void)startAccessibility;
- (void)stopAccessibility;
@end

@implementation AXAuditRemoteDevice

- (void)notifyDelegateOfConnectionCompletionIfNecessary
{
  if ([(AXAuditRemoteDevice *)self deviceAPIVersion]>= 1)
  {
    delegate = [(AXAuditRemoteDevice *)self delegate];
    if (delegate)
    {
      v4 = delegate;
      if (objc_opt_respondsToSelector())
      {
        [v4 remoteDeviceDidCompleteConnection];
      }
    }

    MEMORY[0x2821F9730]();
  }
}

- (void)didDisconnect
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AXAuditRemoteDevice didDisconnect]";
    _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
  }

  connection = [(AXAuditRemoteDevice *)self connection];
  [connection setDispatchTarget:0];

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setupConnectionForFileDescriptor:(int)descriptor
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = dup(descriptor);
  v5 = objc_alloc(MEMORY[0x277D03680]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__AXAuditRemoteDevice__setupConnectionForFileDescriptor___block_invoke;
  v10[3] = &__block_descriptor_36_e5_v8__0l;
  v11 = v4;
  v6 = [v5 initWithConnectedSocket:v4 disconnectAction:v10];
  v7 = [objc_alloc(MEMORY[0x277D03650]) initWithTransport:v6];
  [v7 setMaximumEnqueueSize:0x4000000];
  [v7 resume];
  [v7 setDispatchTarget:self];
  [(AXAuditRemoteDevice *)self setConnection:v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[AXAuditRemoteDevice _setupConnectionForFileDescriptor:]";
    _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

- (void)startAccessibility
{
  v3 = MEMORY[0x277D03668];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [v3 messageWithSelector:sel_clientNeedsAccessibility_ objectArguments:{v4, 0}];

  connection = [(AXAuditRemoteDevice *)self connection];
  [connection sendControlAsync:v6 replyHandler:&__block_literal_global_23];
}

void __41__AXAuditRemoteDevice_startAccessibility__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AXAuditRemoteDevice_startAccessibility__block_invoke_2;
  block[3] = &unk_278BE2CD0;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__AXAuditRemoteDevice_startAccessibility__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) errorStatus])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __41__AXAuditRemoteDevice_startAccessibility__block_invoke_2_cold_1(v1);
    }
  }
}

- (void)stopAccessibility
{
  v3 = MEMORY[0x277D03668];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [v3 messageWithSelector:sel_clientNeedsAccessibility_ objectArguments:{v4, 0}];

  connection = [(AXAuditRemoteDevice *)self connection];
  [connection sendControlAsync:v6 replyHandler:&__block_literal_global_11_1];
}

void __40__AXAuditRemoteDevice_stopAccessibility__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 errorStatus] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __40__AXAuditRemoteDevice_stopAccessibility__block_invoke_cold_1(v2);
  }
}

- (void)orientationChangedToDegrees:(double)degrees
{
  if ([(AXAuditRemoteDevice *)self _degree1:degrees isAlmostEqualTo:90.0]|| [(AXAuditRemoteDevice *)self _degree1:degrees isAlmostEqualTo:-270.0])
  {
    v5 = 4;
  }

  else if ([(AXAuditRemoteDevice *)self _degree1:degrees isAlmostEqualTo:-90.0]|| [(AXAuditRemoteDevice *)self _degree1:degrees isAlmostEqualTo:270.0])
  {
    v5 = 3;
  }

  else if ([(AXAuditRemoteDevice *)self _degree1:degrees isAlmostEqualTo:-180.0]|| [(AXAuditRemoteDevice *)self _degree1:degrees isAlmostEqualTo:180.0])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(AXAuditRemoteDevice *)self setDeviceOrientation:v5];
}

- (void)requestDeviceAPIVersion
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__AXAuditRemoteDevice_requestDeviceAPIVersion__block_invoke;
  v6[3] = &unk_278BE3248;
  v6[4] = self;
  v3 = MEMORY[0x23EEEA2E0](v6, a2);
  v4 = [MEMORY[0x277D03668] messageWithSelector:sel_deviceAPIVersion objectArguments:0];
  if ([(AXAuditRemoteDevice *)self deviceAPIVersion]<= 0)
  {
    connection = [(AXAuditRemoteDevice *)self connection];
    [connection sendControlAsync:v4 replyHandler:v3];
  }
}

void __46__AXAuditRemoteDevice_requestDeviceAPIVersion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__AXAuditRemoteDevice_requestDeviceAPIVersion__block_invoke_2;
  v6[3] = &unk_278BE2CA8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __46__AXAuditRemoteDevice_requestDeviceAPIVersion__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) errorStatus])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __46__AXAuditRemoteDevice_requestDeviceAPIVersion__block_invoke_2_cold_1(v2);
    }
  }

  else
  {
    v3 = [*v2 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) setDeviceAPIVersion:{objc_msgSend(v3, "integerValue")}];
    }
  }

  return [*(a1 + 40) notifyDelegateOfConnectionCompletionIfNecessary];
}

- (int64_t)accessibilityHostCacheManagerDeviceOrientationForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  deviceID = [(AXAuditRemoteDevice *)self deviceID];
  v6 = [deviceID isEqualToString:identifierCopy];

  if (!v6)
  {
    return 1;
  }

  return [(AXAuditRemoteDevice *)self deviceOrientation];
}

- (void)accessibilityTranslationTransportSendData:(id)data completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [MEMORY[0x277D03668] messageWithSelector:sel_processDataFromHost_ objectArguments:{data, 0}];
  connection = [(AXAuditRemoteDevice *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__AXAuditRemoteDevice_accessibilityTranslationTransportSendData_completionHandler___block_invoke;
  v10[3] = &unk_278BE3298;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [connection sendControlAsync:v7 replyHandler:v10];
}

void __83__AXAuditRemoteDevice_accessibilityTranslationTransportSendData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__AXAuditRemoteDevice_accessibilityTranslationTransportSendData_completionHandler___block_invoke_2;
  v5[3] = &unk_278BE3270;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __83__AXAuditRemoteDevice_accessibilityTranslationTransportSendData_completionHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) errorStatus])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AXAuditDevicesAppRemoteServer" code:0 userInfo:0];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  (*(*(a1 + 40) + 16))();
}

- (void)processDataFromRemoteDevice:(id)device
{
  deviceCopy = device;
  axpTransportDataHandler = [(AXAuditRemoteDevice *)self axpTransportDataHandler];

  if (axpTransportDataHandler)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__AXAuditRemoteDevice_processDataFromRemoteDevice___block_invoke;
    v6[3] = &unk_278BE2CA8;
    v6[4] = self;
    v7 = deviceCopy;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [AXAuditRemoteDevice processDataFromRemoteDevice:];
  }
}

void __51__AXAuditRemoteDevice_processDataFromRemoteDevice___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) axpTransportDataHandler];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) deviceID];
  v4[2](v4, v2, v3);
}

- (AXAuditRemoteDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)deviceSize
{
  width = self->_deviceSize.width;
  height = self->_deviceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithFileDescriptor:identifier:deviceSize:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __41__AXAuditRemoteDevice_startAccessibility__block_invoke_2_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*a1 errorStatus];
  v2 = [*a1 error];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

void __40__AXAuditRemoteDevice_stopAccessibility__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 errorStatus];
  v2 = [a1 error];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

void __46__AXAuditRemoteDevice_requestDeviceAPIVersion__block_invoke_2_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*a1 errorStatus];
  v2 = [*a1 error];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)processDataFromRemoteDevice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end
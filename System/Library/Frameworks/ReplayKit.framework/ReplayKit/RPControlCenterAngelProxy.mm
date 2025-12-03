@interface RPControlCenterAngelProxy
+ (id)sharedInstance;
- (BOOL)showReactionsTipForApplication:(id)application bundleID:(id)d;
- (RPControlCenterAngelProxy)init;
- (id)connectionManagerQueue;
- (id)getBSServiceInterface;
- (void)cancelRecordingCountdown;
- (void)countdownInterruptWithStatus:(id)status;
- (void)hideAndStopRecordingBanner;
- (void)requestToCancelReadyToRecord;
- (void)setCountdownState:(id)state;
- (void)setupConnection;
- (void)showRecordingBanner;
- (void)startReadyToRecord;
- (void)startRecordingCountdownWithSessionType:(id)type;
- (void)stopCurrentSession;
- (void)stopReadyToRecord;
- (void)stopRecordingCalled;
@end

@implementation RPControlCenterAngelProxy

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[RPControlCenterAngelProxy sharedInstance];
  }

  v3 = sharedInstance_angelProxy;

  return v3;
}

uint64_t __43__RPControlCenterAngelProxy_sharedInstance__block_invoke()
{
  sharedInstance_angelProxy = objc_alloc_init(RPControlCenterAngelProxy);

  return MEMORY[0x2821F96F8]();
}

- (id)connectionManagerQueue
{
  if (connectionManagerQueue_onceToken != -1)
  {
    [RPControlCenterAngelProxy connectionManagerQueue];
  }

  v3 = connectionManagerQueue_connectionQueue;

  return v3;
}

uint64_t __51__RPControlCenterAngelProxy_connectionManagerQueue__block_invoke()
{
  connectionManagerQueue_connectionQueue = dispatch_queue_create("com.replaykitangel.angelProxyConnectionQueue", 0);

  return MEMORY[0x2821F96F8]();
}

- (id)getBSServiceInterface
{
  if (getBSServiceInterface_onceToken != -1)
  {
    [RPControlCenterAngelProxy getBSServiceInterface];
  }

  v3 = getBSServiceInterface___interface;

  return v3;
}

void __50__RPControlCenterAngelProxy_getBSServiceInterface__block_invoke()
{
  v4 = [MEMORY[0x277CF3278] interfaceWithIdentifier:@"com.apple.ReplayKitAngel.session"];
  v0 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_284D7F9B8];
  [v4 setServer:v0];

  v1 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_284D7FA68];
  [v4 setClient:v1];

  [v4 setClientMessagingExpectation:0];
  v2 = [v4 copy];
  v3 = getBSServiceInterface___interface;
  getBSServiceInterface___interface = v2;
}

- (RPControlCenterAngelProxy)init
{
  v5.receiver = self;
  v5.super_class = RPControlCenterAngelProxy;
  v2 = [(RPControlCenterAngelProxy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RPControlCenterAngelProxy *)v2 setupConnection];
  }

  return v3;
}

- (void)setupConnection
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CF3288] endpointForMachName:@"com.apple.ReplayKitAngel.mach" service:@"com.apple.ReplayKitAngel.session" instance:0];
  if (v3)
  {
    v4 = [MEMORY[0x277CF3280] connectionWithEndpoint:v3];
    connection = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__RPControlCenterAngelProxy_setupConnection__block_invoke;
    v8[3] = &unk_278B61FE0;
    v8[4] = self;
    [(BSServiceConnectionClient *)v6 configureConnection:v8];
    [(BSServiceConnectionClient *)self->_connection activate];
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy setupConnection]";
    v11 = 1024;
    v12 = 106;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngel endpoint nil", buf, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __44__RPControlCenterAngelProxy_setupConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 connectionManagerQueue];
  [v4 setTargetQueue:v5];

  v6 = [MEMORY[0x277CF32C8] userInitiated];
  [v4 setServiceQuality:v6];

  v7 = [*(a1 + 32) getBSServiceInterface];
  [v4 setInterface:v7];

  [v4 setInterfaceTarget:*(a1 + 32)];
  [v4 setActivationHandler:&__block_literal_global_89];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__RPControlCenterAngelProxy_setupConnection__block_invoke_90;
  v9[3] = &unk_278B61FB8;
  v9[4] = *(a1 + 32);
  [v4 setInterruptionHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__RPControlCenterAngelProxy_setupConnection__block_invoke_97;
  v8[3] = &unk_278B61FB8;
  v8[4] = *(a1 + 32);
  [v4 setInvalidationHandler:v8];
}

void __44__RPControlCenterAngelProxy_setupConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPControlCenterAngelProxy setupConnection]_block_invoke_2";
    v6 = 1024;
    v7 = 79;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Activation handler", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __44__RPControlCenterAngelProxy_setupConnection__block_invoke_90(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPControlCenterAngelProxy setupConnection]_block_invoke";
    v11 = 1024;
    v12 = 82;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Interruption handler", &v9, 0x12u);
  }

  [@"com.apple.replayd" UTF8String];
  if (os_variant_allows_internal_security_policies())
  {
    v4 = CFPreferencesCopyAppValue(@"RPHideStatusBar", @"com.apple.replayd");
    v5 = v4 != 0;
    if (__RPLogLevel <= 1)
    {
      v6 = v4;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136446722;
        v10 = "[RPControlCenterAngelProxy setupConnection]_block_invoke";
        v11 = 1024;
        v12 = 90;
        v13 = 1024;
        v14 = v6 != 0;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d hideStatusBar=%d", &v9, 0x18u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(*(a1 + 32) + 16);
  if (v7 && !v5)
  {
    [v7 replayKitAngelDisconnected];
  }

  [v3 activate];

  v8 = *MEMORY[0x277D85DE8];
}

void __44__RPControlCenterAngelProxy_setupConnection__block_invoke_97(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPControlCenterAngelProxy setupConnection]_block_invoke";
    v9 = 1024;
    v10 = 99;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Invalidation handler", &v7, 0x12u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  [*(a1 + 32) stopCurrentSession];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startRecordingCountdownWithSessionType:(id)type
{
  v15 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPControlCenterAngelProxy startRecordingCountdownWithSessionType:]";
    v13 = 1024;
    v14 = 112;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v6 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v8 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v7];

  if (v8)
  {
    [v8 startRecordingCountdownWithSessionType:typeCopy];
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPControlCenterAngelProxy startRecordingCountdownWithSessionType:]";
    v13 = 1024;
    v14 = 119;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setCountdownState:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPControlCenterAngelProxy setCountdownState:]";
    v13 = 1024;
    v14 = 124;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v6 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v8 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v7];

  if (v8)
  {
    [v8 setCountdownState:stateCopy];
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPControlCenterAngelProxy setCountdownState:]";
    v13 = 1024;
    v14 = 131;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelRecordingCountdown
{
  v13 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy cancelRecordingCountdown]";
    v11 = 1024;
    v12 = 136;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v4 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v8 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v6 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v5];

  if (v6)
  {
    [v6 cancelRecordingCountdown];
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy cancelRecordingCountdown]";
    v11 = 1024;
    v12 = 143;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)showRecordingBanner
{
  v13 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy showRecordingBanner]";
    v11 = 1024;
    v12 = 148;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v4 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v8 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v6 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v5];

  if (v6)
  {
    [v6 showRecordingBanner];
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy showRecordingBanner]";
    v11 = 1024;
    v12 = 155;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopRecordingCalled
{
  v13 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy stopRecordingCalled]";
    v11 = 1024;
    v12 = 160;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v4 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v8 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v6 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v5];

  if (v6)
  {
    [v6 stopRecordingCalled];
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy stopRecordingCalled]";
    v11 = 1024;
    v12 = 167;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)hideAndStopRecordingBanner
{
  v13 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy hideAndStopRecordingBanner]";
    v11 = 1024;
    v12 = 172;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v4 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v8 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v6 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v5];

  if (v6)
  {
    [v6 hideAndStopRecordingBanner];
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy hideAndStopRecordingBanner]";
    v11 = 1024;
    v12 = 179;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)showReactionsTipForApplication:(id)application bundleID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  dCopy = d;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[RPControlCenterAngelProxy showReactionsTipForApplication:bundleID:]";
    v17 = 1024;
    v18 = 184;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v9 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v14 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v11 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v10];

  if (v11)
  {
    [v11 showReactionsTipForApplication:applicationCopy bundleID:dCopy];
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[RPControlCenterAngelProxy showReactionsTipForApplication:bundleID:]";
    v17 = 1024;
    v18 = 191;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11 != 0;
}

- (void)startReadyToRecord
{
  v13 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy startReadyToRecord]";
    v11 = 1024;
    v12 = 197;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v4 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v8 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v6 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v5];

  if (v6)
  {
    [v6 startReadyToRecord];
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy startReadyToRecord]";
    v11 = 1024;
    v12 = 202;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopReadyToRecord
{
  v13 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy stopReadyToRecord]";
    v11 = 1024;
    v12 = 207;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v4 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v8 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v6 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v5];

  if (v6)
  {
    [v6 stopReadyToRecord];
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterAngelProxy stopReadyToRecord]";
    v11 = 1024;
    v12 = 212;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopCurrentSession
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPControlCenterAngelProxy stopCurrentSession]";
    v7 = 1024;
    v8 = 219;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  delegate = self->_delegate;
  if (delegate)
  {
    [(RPControlCenterAngelProxyDelegate *)delegate stopCurrentSession];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)requestToCancelReadyToRecord
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPControlCenterAngelProxy requestToCancelReadyToRecord]";
    v7 = 1024;
    v8 = 228;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  delegate = self->_delegate;
  if (delegate)
  {
    [(RPControlCenterAngelProxyDelegate *)delegate requestToCancelReadyToRecord];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)countdownInterruptWithStatus:(id)status
{
  v11 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPControlCenterAngelProxy countdownInterruptWithStatus:]";
    v9 = 1024;
    v10 = 237;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
  }

  delegate = self->_delegate;
  if (delegate)
  {
    [(RPControlCenterAngelProxyDelegate *)delegate countdownInterruptWithStatus:statusCopy];
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end
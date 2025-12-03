@interface CMOdometerSuitabilityManagerProxy
- (CMOdometerSuitabilityManagerProxy)initWithOdometerSuitability:(id)suitability;
- (void)_startDaemonConnection;
- (void)_startOdometerSuitabilityUpdatesWithHandler:(id)handler;
- (void)_stopOdometerSuitabilityUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMOdometerSuitabilityManagerProxy

- (CMOdometerSuitabilityManagerProxy)initWithOdometerSuitability:(id)suitability
{
  v7.receiver = self;
  v7.super_class = CMOdometerSuitabilityManagerProxy;
  v4 = [(CMOdometerSuitabilityManagerProxy *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_odometerSuitabilityManager = suitability;
    v4->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMOdometerSuitability.internal", 0);
    v5->fCallbackQueue = dispatch_queue_create("com.apple.CoreMotion.CMOdometerSuitability.callback", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMOdometerSuitabilityManagerProxy;
  [(CMOdometerSuitabilityManagerProxy *)&v3 dealloc];
}

- (void)_teardown
{
  objc_msgSend__stopOdometerSuitabilityUpdates(self, a2, v2);
  if (self->fLocationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_startDaemonConnection
{
  fLocationdConnection = self->fLocationdConnection;
  CLConnectionClient::setDefaultMessageHandler();
  v4 = self->fLocationdConnection;
  CLConnectionClient::setInterruptionHandler();
  CLConnectionClient::start(self->fLocationdConnection);
}

- (void)_startOdometerSuitabilityUpdatesWithHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];

  self->fHandler = objc_msgSend_copy(handler, v5, v6);
  fLocationdConnection = self->fLocationdConnection;
  sub_19B428B50(&__p, "kCLConnectionMessageOdometerSuitabilityUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v11 = @"kCLConnectionMessageSubscribeKey";
  v12[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v12, &v11, 1);
  sub_19B68E434();
}

- (void)_stopOdometerSuitabilityUpdates
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"kCLConnectionMessageSubscribeKey";
  v4[0] = MEMORY[0x1E695E110];
  __p = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
  sub_19B68E434();
}

@end
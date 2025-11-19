@interface CMOdometerProxy
- (CMOdometerProxy)initWithOdometer:(id)a3;
- (void)_startCyclingWorkoutDistanceUpdatesWithHandler:(id)a3;
- (void)_startDaemonConnection;
- (void)_startOdometerUpdatesWithHandler:(id)a3;
- (void)_stopCyclingWorkoutDistanceUpdates;
- (void)_stopOdometerGpsAvailability;
- (void)_stopOdometerUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMOdometerProxy

- (CMOdometerProxy)initWithOdometer:(id)a3
{
  v7.receiver = self;
  v7.super_class = CMOdometerProxy;
  v4 = [(CMOdometerProxy *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_odometer = a3;
    v4->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMOdometer.internal", 0);
    v5->fCallbackQueue = dispatch_queue_create("com.apple.CoreMotion.CMOdometer.callback", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMOdometerProxy;
  [(CMOdometerProxy *)&v3 dealloc];
}

- (void)_teardown
{
  objc_msgSend__stopOdometerGpsAvailability(self, a2, v2);
  objc_msgSend__stopOdometerUpdates(self, v4, v5);
  objc_msgSend__stopCyclingWorkoutDistanceUpdates(self, v6, v7);
  if (self->fLocationdConnection)
  {
    v8 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v8, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_startDaemonConnection
{
  v10[1] = *MEMORY[0x1E69E9840];
  fLocationdConnection = self->fLocationdConnection;
  CLConnectionClient::setDefaultMessageHandler();
  v4 = self->fLocationdConnection;
  sub_19B428B50(&v7, "kCLConnectionMessageOdometerGpsAvailability");
  CLConnectionClient::setHandlerForMessage();
  if (v8 < 0)
  {
    operator delete(v7);
  }

  v5 = self->fLocationdConnection;
  CLConnectionClient::setInterruptionHandler();
  CLConnectionClient::start(self->fLocationdConnection);
  v9 = @"kCLConnectionMessageSubscribeKey";
  v10[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v10, &v9, 1);
  sub_19B627DE4();
}

- (void)_startOdometerUpdatesWithHandler:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  objc_msgSend_setTotalDistance_(self, a2, a3, -1.0);

  self->fHandler = objc_msgSend_copy(a3, v5, v6);
  fLocationdConnection = self->fLocationdConnection;
  sub_19B428B50(&__p, "kCLConnectionMessageStartOdometerUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v11 = @"kCLConnectionMessageSubscribeKey";
  v12[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v12, &v11, 1);
  sub_19B5D379C();
}

- (void)_stopOdometerGpsAvailability
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"kCLConnectionMessageSubscribeKey";
  v4[0] = MEMORY[0x1E695E110];
  __p = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
  sub_19B627DE4();
}

- (void)_stopOdometerUpdates
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"kCLConnectionMessageSubscribeKey";
  v4[0] = MEMORY[0x1E695E110];
  __p = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
  sub_19B5D379C();
}

- (void)_startCyclingWorkoutDistanceUpdatesWithHandler:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  objc_msgSend_setTotalCyclingDistance_(self, a2, a3, -1.0);
  fLocationdConnection = self->fLocationdConnection;
  sub_19B428B50(&__p, "kCLConnectionMessageCyclingWorkoutDistanceUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  v8 = @"kCLConnectionMessageSubscribeKey";
  v9[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v9, &v8, 1);
  sub_19B627F28();
}

- (void)_stopCyclingWorkoutDistanceUpdates
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"kCLConnectionMessageSubscribeKey";
  v4[0] = MEMORY[0x1E695E110];
  __p = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
  sub_19B627F28();
}

@end
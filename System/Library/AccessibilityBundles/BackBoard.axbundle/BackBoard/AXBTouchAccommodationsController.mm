@interface AXBTouchAccommodationsController
+ (void)initializeMonitor;
- (AXUIClient)touchAccommodationsClient;
- (id)_clientIdentifier;
- (void)_hideHoldDurationTripleClickHelp;
- (void)_registerForTouchAccommodationsAXSettingsUpdate;
- (void)_showHoldDurationTripleClickHelp;
- (void)_updateTouchAccommodationsSetting;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
@end

@implementation AXBTouchAccommodationsController

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken_11 != -1)
  {
    +[AXBTouchAccommodationsController initializeMonitor];
  }
}

uint64_t __53__AXBTouchAccommodationsController_initializeMonitor__block_invoke()
{
  v0 = objc_alloc_init(AXBTouchAccommodationsController);
  v1 = SharedManager_2;
  SharedManager_2 = v0;

  [SharedManager_2 _registerForTouchAccommodationsAXSettingsUpdate];
  v2 = SharedManager_2;

  return [v2 _updateTouchAccommodationsSetting];
}

- (void)_registerForTouchAccommodationsAXSettingsUpdate
{
  v3 = dispatch_queue_create("TouchAccommodationsQueue", 0);
  touchAccommodationsQueue = self->_touchAccommodationsQueue;
  self->_touchAccommodationsQueue = v3;

  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __83__AXBTouchAccommodationsController__registerForTouchAccommodationsAXSettingsUpdate__block_invoke;
  v12[3] = &unk_29F2A4B10;
  v12[4] = self;
  [mEMORY[0x29EDBDFA0] registerUpdateBlock:v12 forRetrieveSelector:sel_touchAccommodationsHoldDurationEnabled withListener:self];

  mEMORY[0x29EDBDFA0]2 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __83__AXBTouchAccommodationsController__registerForTouchAccommodationsAXSettingsUpdate__block_invoke_2;
  v11[3] = &unk_29F2A4B10;
  v11[4] = self;
  [mEMORY[0x29EDBDFA0]2 registerUpdateBlock:v11 forRetrieveSelector:sel_touchAccommodationsIgnoreRepeatEnabled withListener:self];

  mEMORY[0x29EDBDFA0]3 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __83__AXBTouchAccommodationsController__registerForTouchAccommodationsAXSettingsUpdate__block_invoke_3;
  v10[3] = &unk_29F2A4B10;
  v10[4] = self;
  [mEMORY[0x29EDBDFA0]3 registerUpdateBlock:v10 forRetrieveSelector:sel_touchAccommodationsTapActivationMethod withListener:self];

  mEMORY[0x29EDBDFA0]4 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __83__AXBTouchAccommodationsController__registerForTouchAccommodationsAXSettingsUpdate__block_invoke_4;
  v9[3] = &unk_29F2A4B10;
  v9[4] = self;
  [mEMORY[0x29EDBDFA0]4 registerUpdateBlock:v9 forRetrieveSelector:sel_touchAccommodationsEnabled withListener:self];
}

- (void)_updateTouchAccommodationsSetting
{
  touchAccommodationsQueue = self->_touchAccommodationsQueue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __69__AXBTouchAccommodationsController__updateTouchAccommodationsSetting__block_invoke;
  block[3] = &unk_29F2A4B10;
  block[4] = self;
  dispatch_async(touchAccommodationsQueue, block);
}

void __69__AXBTouchAccommodationsController__updateTouchAccommodationsSetting__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v3 = [v2 touchAccommodationsEnabled];
  if (v3)
  {
    v3 = [v2 touchAccommodationsAreConfigured];
  }

  v4 = *(a1 + 32);
  if (*(v4 + 8) != v3)
  {
    *(v4 + 8) = v3;
    v5 = *(a1 + 32);
    if (*(v5 + 8) == 1)
    {
      v6 = AXLogTouchAccommodations();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29BBBD000, v6, OS_LOG_TYPE_DEFAULT, "Starting up touch accommodations", buf, 2u);
      }

      v7 = [*(a1 + 32) touchAccommodationsClient];
      [v7 sendAsynchronousMessage:0 withIdentifier:2 targetAccessQueue:0 completion:0];

      *(*(a1 + 32) + 9) = 1;
    }

    else if (*(v5 + 9) == 1)
    {
      v8 = AXLogTouchAccommodations();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_29BBBD000, v8, OS_LOG_TYPE_DEFAULT, "Stopping touch accommodations", v10, 2u);
      }

      v9 = [*(a1 + 32) touchAccommodationsClient];
      [v9 sendAsynchronousMessage:0 withIdentifier:1 targetAccessQueue:0 completion:0];
    }
  }
}

- (void)_showHoldDurationTripleClickHelp
{
  touchAccommodationsClient = [(AXBTouchAccommodationsController *)self touchAccommodationsClient];
  [touchAccommodationsClient sendAsynchronousMessage:0 withIdentifier:3 targetAccessQueue:0 completion:0];
}

- (void)_hideHoldDurationTripleClickHelp
{
  touchAccommodationsClient = [(AXBTouchAccommodationsController *)self touchAccommodationsClient];
  [touchAccommodationsClient sendAsynchronousMessage:0 withIdentifier:4 targetAccessQueue:0 completion:0];
}

- (id)_clientIdentifier
{
  processInfo = [MEMORY[0x29EDBA0B0] processInfo];
  processIdentifier = [processInfo processIdentifier];

  v4 = MEMORY[0x29EDBA0F8];
  v5 = [MEMORY[0x29EDBA070] numberWithInt:processIdentifier];
  v6 = [v4 stringWithFormat:@"TouchAccommodationsClientIdentifier-%@", v5];

  return v6;
}

- (AXUIClient)touchAccommodationsClient
{
  touchAccommodationsClient = self->_touchAccommodationsClient;
  if (!touchAccommodationsClient)
  {
    v4 = objc_alloc(MEMORY[0x29EDBDDD0]);
    _clientIdentifier = [(AXBTouchAccommodationsController *)self _clientIdentifier];
    v6 = [v4 initWithIdentifier:_clientIdentifier serviceBundleName:@"TouchAccommodations"];
    v7 = self->_touchAccommodationsClient;
    self->_touchAccommodationsClient = v6;

    [(AXUIClient *)self->_touchAccommodationsClient setDelegate:self];
    touchAccommodationsClient = self->_touchAccommodationsClient;
  }

  return touchAccommodationsClient;
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  touchAccommodationsQueue = self->_touchAccommodationsQueue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __94__AXBTouchAccommodationsController_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke;
  block[3] = &unk_29F2A4B10;
  block[4] = self;
  dispatch_async(touchAccommodationsQueue, block);
}

void __94__AXBTouchAccommodationsController_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  if (v4[8] == 1)
  {
    v5 = [v4 touchAccommodationsClient];
    [v5 sendAsynchronousMessage:0 withIdentifier:2 targetAccessQueue:0 completion:0];
  }
}

@end
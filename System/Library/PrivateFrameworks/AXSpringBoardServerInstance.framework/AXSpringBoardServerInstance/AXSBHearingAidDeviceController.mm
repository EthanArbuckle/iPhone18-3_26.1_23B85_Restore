@interface AXSBHearingAidDeviceController
+ (id)sharedController;
- (AXSBHearingAidDeviceController)init;
- (BOOL)isScreenLocked;
- (id)hearingUIClient;
- (id)userInterfaceClient:(id)client processMessageFromServer:(id)server withIdentifier:(unint64_t)identifier error:(id *)error;
- (void)_lockStateChanged;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
- (void)dealloc;
- (void)hearingServerDidDie:(id)die;
- (void)startServer;
@end

@implementation AXSBHearingAidDeviceController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[AXSBHearingAidDeviceController sharedController];
  }

  v3 = sharedController_SharedController;

  return v3;
}

- (void)startServer
{
  mEMORY[0x277D12DE8] = [MEMORY[0x277D12DE8] sharedInstance];
  [mEMORY[0x277D12DE8] startServerWithDelegate:self];
}

uint64_t __50__AXSBHearingAidDeviceController_sharedController__block_invoke()
{
  sharedController_SharedController = objc_alloc_init(AXSBHearingAidDeviceController);

  return MEMORY[0x2821F96F8]();
}

- (AXSBHearingAidDeviceController)init
{
  v6.receiver = self;
  v6.super_class = AXSBHearingAidDeviceController;
  v2 = [(AXSBHearingAidDeviceController *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, screenDidDim, @"com.apple.springboardservices.eventobserver.internalSBSEventObserverEventDimmed", 0, 0);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_liveListenStatusBarActivated_ name:@"SBStatusBarReturnToHearingAidNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.springboardservices.eventobserver.internalSBSEventObserverEventDimmed", 0);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, @"SBFaceTimeStateChangedNotification", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, *MEMORY[0x277CE7CB0], 0);
  v6 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v6, self, *MEMORY[0x277D67A70], 0);
  v7 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v7, self, *MEMORY[0x277D67A40], 0);
  v8 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v8, self, *MEMORY[0x277D6EFE8], 0);
  v9 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v9, self, *MEMORY[0x277D6EFD8], 0);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v11.receiver = self;
  v11.super_class = AXSBHearingAidDeviceController;
  [(AXSBHearingAidDeviceController *)&v11 dealloc];
}

- (id)hearingUIClient
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__AXSBHearingAidDeviceController_hearingUIClient__block_invoke;
  block[3] = &unk_27842BB18;
  block[4] = self;
  if (hearingUIClient_onceToken != -1)
  {
    dispatch_once(&hearingUIClient_onceToken, block);
  }

  return hearingUIClient_HearingUIClient;
}

uint64_t __49__AXSBHearingAidDeviceController_hearingUIClient__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CE7740]) initWithIdentifier:@"HearingAidUIClient" serviceBundleName:@"HearingAidUIServer"];
  v3 = hearingUIClient_HearingUIClient;
  hearingUIClient_HearingUIClient = v2;

  v4 = hearingUIClient_HearingUIClient;
  v5 = *(a1 + 32);

  return [v4 setDelegate:v5];
}

- (void)_lockStateChanged
{
  if ([(AXSBHearingAidDeviceController *)self isScreenLocked])
  {

    [(AXSBHearingAidDeviceController *)self showHearingAidControl:0];
  }
}

- (BOOL)isScreenLocked
{
  server = [MEMORY[0x277CE7E40] server];
  v3 = [server isScreenLockedWithPasscode:0];

  return v3;
}

void __56__AXSBHearingAidDeviceController_showHearingAidControl___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:@"result"];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) setIsShowingHearingAidControl:{objc_msgSend(v3, "BOOLValue")}];
    v3 = v4;
  }
}

- (void)hearingServerDidDie:(id)die
{
  mEMORY[0x277D12E20] = [MEMORY[0x277D12E20] sharedInstance];
  pairedHearingAids = [mEMORY[0x277D12E20] pairedHearingAids];

  if (pairedHearingAids)
  {
    mEMORY[0x277D12DE8] = [MEMORY[0x277D12DE8] sharedInstance];
    [mEMORY[0x277D12DE8] startServerWithDelegate:self];
  }

  v7 = dispatch_time(0, 3000000000);
  v8 = dispatch_get_global_queue(0, 0);
  dispatch_after(v7, v8, &__block_literal_global_314);
}

void __54__AXSBHearingAidDeviceController_hearingServerDidDie___block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = *MEMORY[0x277D12DE0];

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v1, 0, 0, 1u);
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  [(AXSBHearingAidDeviceController *)self setIsShowingHearingAidControl:0];
  server = [MEMORY[0x277CE7D30] server];
  [server setHearingAidControlIsVisible:0];
}

- (id)userInterfaceClient:(id)client processMessageFromServer:(id)server withIdentifier:(unint64_t)identifier error:(id *)error
{
  if (identifier == 1)
  {
    v7 = [server valueForKey:@"result"];
    v8 = v7;
    if (v7)
    {
      -[AXSBHearingAidDeviceController setIsShowingHearingAidControl:](self, "setIsShowingHearingAidControl:", [v7 BOOLValue]);
    }
  }

  return 0;
}

@end
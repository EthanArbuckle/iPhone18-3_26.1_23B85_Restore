@interface WACUIViewController
- (BOOL)hostIsEntitled;
- (WACUIViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)backendConfigureAirPortAssistantWithTargetMACAddress:(id)a3;
- (void)backendStartSearch;
- (void)backendStopSearch;
- (void)cancelActiveConfiguration;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)shouldCheckWiFiPowerStatus;
- (void)updateState:(int64_t)a3;
- (void)viewDidLoad;
- (void)wacDevicesAdded:(id)a3 andWACDevicesRemoved:(id)a4;
@end

@implementation WACUIViewController

- (WACUIViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v14.receiver = self;
  v14.super_class = WACUIViewController;
  v4 = [(WACUIViewController *)&v14 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(AirPortAssistantManager);
    airportAssistantManager = v4->_airportAssistantManager;
    v4->_airportAssistantManager = v5;

    [(AirPortAssistantManager *)v4->_airportAssistantManager setDelegate:v4];
    v4->_authorized = 0;
    v4->_wifiManager = WiFiManagerClientCreate();
    CFRunLoopGetCurrent();
    WiFiManagerClientScheduleWithRunLoop();
    wifiManager = v4->_wifiManager;
    WiFiManagerClientSetType();
    v8 = v4->_wifiManager;
    v9 = WiFiManagerClientCopyDevices();
    v10 = v9;
    if (v9)
    {
      if ([v9 count])
      {
        v11 = [v10 objectAtIndex:0];
        v4->_wifiDevice = v11;
        CFRetain(v11);
        wifiDevice = v4->_wifiDevice;
        WiFiDeviceClientRegisterPowerCallback();
      }

      CFRelease(v10);
    }

    v4->__debugLog = +[WACLogging isEnabled];
  }

  return v4;
}

- (void)dealloc
{
  wifiManager = self->_wifiManager;
  if (wifiManager)
  {
    CFRelease(wifiManager);
  }

  wifiDevice = self->_wifiDevice;
  if (wifiDevice)
  {
    CFRelease(wifiDevice);
  }

  v5.receiver = self;
  v5.super_class = WACUIViewController;
  [(WACUIViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WACUIViewController;
  [(WACUIViewController *)&v3 viewDidLoad];
  if (self->__debugLog)
  {
    NSLog(@"Plugin: ViewDidLoad");
  }
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = WACUIViewController;
  [(WACUIViewController *)&v2 didReceiveMemoryWarning];
}

- (void)shouldCheckWiFiPowerStatus
{
  if (self->__debugLog)
  {
    NSLog(@"Plugin: shouldCheckWiFiPowerStatus", a2);
  }

  if (self->_wifiDevice && !WiFiDeviceClientGetPower() && [(WACUIViewController *)self hostIsEntitled])
  {
    v3 = [(WACUIViewController *)self _remoteViewControllerProxy];
    [v3 wifiDidShutdown];
  }
}

- (BOOL)hostIsEntitled
{
  if (!self->_didCheckedEntitlements)
  {
    self->_didCheckedEntitlements = 1;
    memset(&v11, 0, sizeof(v11));
    [(WACUIViewController *)self _hostAuditToken];
    if (self->__debugLog)
    {
      NSLog(@"Audit Token: %x %x %x %x %x %x %x %x", v11.val[0], v11.val[1], v11.val[2], v11.val[3], v11.val[4], v11.val[5], v11.val[6], v11.val[7]);
    }

    token = v11;
    v3 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
    v4 = v3;
    if (self->__debugLog)
    {
      NSLog(@"Task: %@", v3);
    }

    *token.val = 0;
    v5 = SecTaskCopyValueForEntitlement(v4, @"com.apple.external-accessory.wireless-configuration", &token);
    v6 = v5;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      v8 = v7 == CFBooleanGetTypeID() && CFBooleanGetValue(v6) != 0;
      self->_authorized = v8;
    }

    if (self->__debugLog)
    {
      NSLog(@"Entitlement returned: %@, Error returned: %@", v6, *token.val);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (*token.val)
    {
      CFRelease(*token.val);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return self->_authorized;
}

- (void)cancelActiveConfiguration
{
  if (self->__debugLog)
  {
    NSLog(@"Plugin: cancelActiveConfiguration", a2);
  }

  v4 = [(AirPortAssistantManager *)self->_airportAssistantManager airportAssistantController];
  v3 = [v4 viewController];
  [v3 performSelector:"handeImmediateCancel" withObject:0];
}

- (void)wacDevicesAdded:(id)a3 andWACDevicesRemoved:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    v7 = [(WACUIViewController *)self _remoteViewControllerProxy];
    [v7 backendFoundNewWACDevices:v8 andRemovedWACDevices:v6];
  }
}

- (void)updateState:(int64_t)a3
{
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    v5 = [(WACUIViewController *)self _remoteViewControllerProxy];
    [v5 updateState:a3];
  }
}

- (void)backendStartSearch
{
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    airportAssistantManager = self->_airportAssistantManager;

    [(AirPortAssistantManager *)airportAssistantManager startSearchingForUnconfiguredAccessories];
  }
}

- (void)backendStopSearch
{
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    airportAssistantManager = self->_airportAssistantManager;

    [(AirPortAssistantManager *)airportAssistantManager stopSearchingForUnconfiguredAccessories];
  }
}

- (void)backendConfigureAirPortAssistantWithTargetMACAddress:(id)a3
{
  v4 = a3;
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    v13[0] = kAirPortAssistantDeviceMACAddressKey;
    v13[1] = kAirPortAssistantWACShouldHideFindAppUIKey;
    v14[0] = v4;
    v14[1] = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [(AirPortAssistantManager *)self->_airportAssistantManager stopSearchingForUnconfiguredAccessories];
    v6 = [(AirPortAssistantManager *)self->_airportAssistantManager airportAssistantController];
    [v6 configureUIViewControllerWithParameters:v5];

    [(WACUIViewController *)self updateState:3];
    v7 = [AirPortAssistantUINavigationController alloc];
    v8 = [(AirPortAssistantManager *)self->_airportAssistantManager airportAssistantController];
    v9 = [v8 viewController];
    v10 = [v7 initWithRootViewController:v9];
    nav = self->_nav;
    self->_nav = v10;

    [(AirPortAssistantUINavigationController *)self->_nav setModalInPresentation:1];
    v12 = [(WACUIViewController *)self nav];
    [(WACUIViewController *)self presentViewController:v12 animated:0 completion:0];
  }
}

@end
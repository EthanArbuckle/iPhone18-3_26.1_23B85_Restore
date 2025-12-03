@interface WACUIViewController
- (BOOL)hostIsEntitled;
- (WACUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)backendConfigureAirPortAssistantWithTargetMACAddress:(id)address;
- (void)backendStartSearch;
- (void)backendStopSearch;
- (void)cancelActiveConfiguration;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)shouldCheckWiFiPowerStatus;
- (void)updateState:(int64_t)state;
- (void)viewDidLoad;
- (void)wacDevicesAdded:(id)added andWACDevicesRemoved:(id)removed;
@end

@implementation WACUIViewController

- (WACUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v14.receiver = self;
  v14.super_class = WACUIViewController;
  v4 = [(WACUIViewController *)&v14 initWithNibName:name bundle:bundle];
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
    _remoteViewControllerProxy = [(WACUIViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy wifiDidShutdown];
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

  airportAssistantController = [(AirPortAssistantManager *)self->_airportAssistantManager airportAssistantController];
  viewController = [airportAssistantController viewController];
  [viewController performSelector:"handeImmediateCancel" withObject:0];
}

- (void)wacDevicesAdded:(id)added andWACDevicesRemoved:(id)removed
{
  addedCopy = added;
  removedCopy = removed;
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    _remoteViewControllerProxy = [(WACUIViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy backendFoundNewWACDevices:addedCopy andRemovedWACDevices:removedCopy];
  }
}

- (void)updateState:(int64_t)state
{
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    _remoteViewControllerProxy = [(WACUIViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy updateState:state];
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

- (void)backendConfigureAirPortAssistantWithTargetMACAddress:(id)address
{
  addressCopy = address;
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    v13[0] = kAirPortAssistantDeviceMACAddressKey;
    v13[1] = kAirPortAssistantWACShouldHideFindAppUIKey;
    v14[0] = addressCopy;
    v14[1] = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [(AirPortAssistantManager *)self->_airportAssistantManager stopSearchingForUnconfiguredAccessories];
    airportAssistantController = [(AirPortAssistantManager *)self->_airportAssistantManager airportAssistantController];
    [airportAssistantController configureUIViewControllerWithParameters:v5];

    [(WACUIViewController *)self updateState:3];
    v7 = [AirPortAssistantUINavigationController alloc];
    airportAssistantController2 = [(AirPortAssistantManager *)self->_airportAssistantManager airportAssistantController];
    viewController = [airportAssistantController2 viewController];
    v10 = [v7 initWithRootViewController:viewController];
    nav = self->_nav;
    self->_nav = v10;

    [(AirPortAssistantUINavigationController *)self->_nav setModalInPresentation:1];
    v12 = [(WACUIViewController *)self nav];
    [(WACUIViewController *)self presentViewController:v12 animated:0 completion:0];
  }
}

@end
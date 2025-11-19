@interface AirPortAssistantManager
- (AirPortAssistantManager)init;
- (AirPortAssistantManagerDelegate)delegate;
- (void)startSearchingForUnconfiguredAccessories;
- (void)stopSearchingForUnconfiguredAccessories;
- (void)wacDevicesAdded:(id)a3 andWACDevicesRemoved:(id)a4 withController:(id)a5;
@end

@implementation AirPortAssistantManager

- (AirPortAssistantManager)init
{
  v6.receiver = self;
  v6.super_class = AirPortAssistantManager;
  v2 = [(AirPortAssistantManager *)&v6 init];
  if (v2)
  {
    v3 = +[AirPortAssistantController sharedInstance];
    airportAssistantController = v2->_airportAssistantController;
    v2->_airportAssistantController = v3;

    [(AirPortAssistantController *)v2->_airportAssistantController setDelegate:v2];
    v2->__debugLog = +[WACLogging isEnabled];
  }

  return v2;
}

- (void)startSearchingForUnconfiguredAccessories
{
  if (self->__debugLog)
  {
    NSLog(@"Plugin: AirPortAssistantManager startSearchingForUnconfiguredAccessories", a2);
  }

  v3 = [(AirPortAssistantController *)self->_airportAssistantController start2_4WiFiScan];
  v4 = v3;
  if (self->__debugLog)
  {
    NSLog(@"Plugin: Start Scan status: %d", v3);
  }

  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = WeakRetained;
LABEL_7:
    v6 = 2;
    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (v4 == -6709)
  {
    [WeakRetained updateState:1];

    [(AirPortAssistantController *)self->_airportAssistantController stop2_4WiFiScan];
    v7 = [(AirPortAssistantController *)self->_airportAssistantController start2_4WiFiScan];
    v8 = v7;
    if (self->__debugLog)
    {
      NSLog(@"Plugin: Start Scan status: %d", v7);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = WeakRetained;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v6 = 0;
LABEL_13:
  [WeakRetained updateState:v6];
}

- (void)stopSearchingForUnconfiguredAccessories
{
  if (self->__debugLog)
  {
    NSLog(@"Plugin: AirPortAssistantManager stopSearchingForUnconfiguredAccessories", a2);
  }

  [(AirPortAssistantController *)self->_airportAssistantController stop2_4WiFiScan];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained updateState:1];
}

- (void)wacDevicesAdded:(id)a3 andWACDevicesRemoved:(id)a4 withController:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (self->__debugLog)
  {
    NSLog(@"Plugin: AirPortAssistantManager wacDevicesAdded:andWACDevicesRemoved:withController");
    if (self->__debugLog)
    {
      NSLog(@"Plugin: Devices Added: %@", v11);
      if (self->__debugLog)
      {
        NSLog(@"Plugin: Devices Removed: %@", v8);
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained wacDevicesAdded:v11 andWACDevicesRemoved:v8];
}

- (AirPortAssistantManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
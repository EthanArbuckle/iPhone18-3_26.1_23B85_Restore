@interface AirPortAssistantManager
- (AirPortAssistantManager)init;
- (AirPortAssistantManagerDelegate)delegate;
- (void)startSearchingForUnconfiguredAccessories;
- (void)stopSearchingForUnconfiguredAccessories;
- (void)wacDevicesAdded:(id)added andWACDevicesRemoved:(id)removed withController:(id)controller;
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

  start2_4WiFiScan = [(AirPortAssistantController *)self->_airportAssistantController start2_4WiFiScan];
  v4 = start2_4WiFiScan;
  if (self->__debugLog)
  {
    NSLog(@"Plugin: Start Scan status: %d", start2_4WiFiScan);
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
    start2_4WiFiScan2 = [(AirPortAssistantController *)self->_airportAssistantController start2_4WiFiScan];
    v8 = start2_4WiFiScan2;
    if (self->__debugLog)
    {
      NSLog(@"Plugin: Start Scan status: %d", start2_4WiFiScan2);
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

- (void)wacDevicesAdded:(id)added andWACDevicesRemoved:(id)removed withController:(id)controller
{
  addedCopy = added;
  removedCopy = removed;
  controllerCopy = controller;
  if (self->__debugLog)
  {
    NSLog(@"Plugin: AirPortAssistantManager wacDevicesAdded:andWACDevicesRemoved:withController");
    if (self->__debugLog)
    {
      NSLog(@"Plugin: Devices Added: %@", addedCopy);
      if (self->__debugLog)
      {
        NSLog(@"Plugin: Devices Removed: %@", removedCopy);
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained wacDevicesAdded:addedCopy andWACDevicesRemoved:removedCopy];
}

- (AirPortAssistantManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
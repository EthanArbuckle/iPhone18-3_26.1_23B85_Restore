@interface WACUIRemoteViewController
- (EAWiFiUnconfiguredAccessoryBrowserManager)parent;
- (void)_signalPresentationComplete;
- (void)backendFoundNewWACDevices:(id)devices andRemovedWACDevices:(id)cDevices;
- (void)updateState:(int64_t)state;
- (void)wifiDidShutdown;
@end

@implementation WACUIRemoteViewController

- (void)updateState:(int64_t)state
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained updateState:state];
}

- (void)backendFoundNewWACDevices:(id)devices andRemovedWACDevices:(id)cDevices
{
  devicesCopy = devices;
  cDevicesCopy = cDevices;
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_parent);
    [v8 didFindNewUnconfiguredAccessories:devicesCopy andRemovedUnconfiguredAccessories:cDevicesCopy];
  }
}

- (void)_signalPresentationComplete
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained _signalPresentationComplete];
}

- (void)wifiDidShutdown
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained wifiDidShutdown];
}

- (EAWiFiUnconfiguredAccessoryBrowserManager)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end
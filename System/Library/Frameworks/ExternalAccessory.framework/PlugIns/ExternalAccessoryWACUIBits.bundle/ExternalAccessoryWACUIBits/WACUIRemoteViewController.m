@interface WACUIRemoteViewController
- (EAWiFiUnconfiguredAccessoryBrowserManager)parent;
- (void)_signalPresentationComplete;
- (void)backendFoundNewWACDevices:(id)a3 andRemovedWACDevices:(id)a4;
- (void)updateState:(int64_t)a3;
- (void)wifiDidShutdown;
@end

@implementation WACUIRemoteViewController

- (void)updateState:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained updateState:a3];
}

- (void)backendFoundNewWACDevices:(id)a3 andRemovedWACDevices:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_parent);
    [v8 didFindNewUnconfiguredAccessories:v9 andRemovedUnconfiguredAccessories:v6];
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
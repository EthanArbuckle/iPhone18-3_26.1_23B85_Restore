@interface AXRNearbyDevicesViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_connectToDevice:(id)a3;
- (void)_dismissPresentedViewController;
- (void)_showActiveDeviceConnectionAlertWithDevice:(id)a3;
- (void)_showFailedToConnectAlert;
- (void)deviceDiscoveryManager:(id)a3 updatedDevices:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation AXRNearbyDevicesViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = AXRNearbyDevicesViewController;
  [(AXRNearbyDevicesViewController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x277CE75E8] sharedInstance];
  [(AXRNearbyDevicesViewController *)self setDiscoveryManager:v3];

  v4 = [(AXRNearbyDevicesViewController *)self discoveryManager];
  [v4 addObserver:self];

  v5 = [(AXRNearbyDevicesViewController *)self discoveryManager];
  v6 = [v5 cachedDiscoveredDevices];
  [(AXRNearbyDevicesViewController *)self setDiscoveredDevices:v6];

  v7 = [(AXRNearbyDevicesViewController *)self tableView];
  [v7 registerClass:objc_opt_class() forCellReuseIdentifier:@"NearbyDeviceCell"];
}

- (void)_connectToDevice:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__AXRNearbyDevicesViewController__connectToDevice___block_invoke;
  v6[3] = &unk_278BED568;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [v5 connectIfNecessary:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __51__AXRNearbyDevicesViewController__connectToDevice___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained _showActiveDeviceConnectionAlertWithDevice:*(a1 + 32)];
  }

  else
  {
    [WeakRetained _showFailedToConnectAlert];
  }
}

- (void)_showActiveDeviceConnectionAlertWithDevice:(id)a3
{
  v4 = a3;
  v8 = [[AXRConnectedDeviceViewController alloc] initWithRemoteDevice:v4];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel__dismissPresentedViewController];
  v6 = [(AXRConnectedDeviceViewController *)v8 navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [(AXRNearbyDevicesViewController *)self presentViewController:v7 animated:1 completion:&__block_literal_global];
}

- (void)_dismissPresentedViewController
{
  v2 = [(AXRNearbyDevicesViewController *)self presentedViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_showFailedToConnectAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = AXRLocalizedStringForKey();
  v8 = [v3 alertControllerWithTitle:v4 message:0 preferredStyle:0];

  v5 = MEMORY[0x277D750F8];
  v6 = AXRLocalizedStringForKey();
  v7 = [v5 actionWithTitle:v6 style:0 handler:0];
  [v8 addAction:v7];

  [(AXRNearbyDevicesViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)deviceDiscoveryManager:(id)a3 updatedDevices:(id)a4
{
  [(AXRNearbyDevicesViewController *)self setDiscoveredDevices:a4];
  v5 = [(AXRNearbyDevicesViewController *)self tableView];
  [v5 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(AXRNearbyDevicesViewController *)self discoveredDevices:a3];
  v6 = [v5 count];

  if (!v6)
  {
    return 1;
  }

  v7 = [(AXRNearbyDevicesViewController *)self discoveredDevices];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"NearbyDeviceCell" forIndexPath:v6];
  [v7 setHidden:0];
  v8 = [(AXRNearbyDevicesViewController *)self discoveredDevices];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v6 item];
    v11 = [(AXRNearbyDevicesViewController *)self discoveredDevices];
    v12 = [v11 count];

    if (v10 >= v12)
    {
      v20 = [v7 textLabel];
      [v20 setText:0];

      [v7 setHidden:1];
    }

    else
    {
      v13 = [(AXRNearbyDevicesViewController *)self discoveredDevices];
      v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

      v15 = [v14 displayName];
      v16 = [v7 textLabel];
      [v16 setText:v15];
    }
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v17 startAnimating];
    [v7 setAccessoryView:v17];
    v18 = AXRLocalizedStringForKey();
    v19 = [v7 textLabel];
    [v19 setText:v18];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 row];
  v8 = [(AXRNearbyDevicesViewController *)self discoveredDevices];
  v9 = [v8 count];

  if (v7 < v9)
  {
    v10 = [(AXRNearbyDevicesViewController *)self discoveredDevices];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    [(AXRNearbyDevicesViewController *)self _connectToDevice:v11];
  }

  [v12 deselectRowAtIndexPath:v6 animated:1];
}

@end
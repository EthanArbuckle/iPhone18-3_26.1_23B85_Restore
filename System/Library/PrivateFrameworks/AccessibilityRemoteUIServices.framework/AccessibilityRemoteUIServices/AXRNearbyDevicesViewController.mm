@interface AXRNearbyDevicesViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_connectToDevice:(id)device;
- (void)_dismissPresentedViewController;
- (void)_showActiveDeviceConnectionAlertWithDevice:(id)device;
- (void)_showFailedToConnectAlert;
- (void)deviceDiscoveryManager:(id)manager updatedDevices:(id)devices;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AXRNearbyDevicesViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = AXRNearbyDevicesViewController;
  [(AXRNearbyDevicesViewController *)&v8 viewDidLoad];
  mEMORY[0x277CE75E8] = [MEMORY[0x277CE75E8] sharedInstance];
  [(AXRNearbyDevicesViewController *)self setDiscoveryManager:mEMORY[0x277CE75E8]];

  discoveryManager = [(AXRNearbyDevicesViewController *)self discoveryManager];
  [discoveryManager addObserver:self];

  discoveryManager2 = [(AXRNearbyDevicesViewController *)self discoveryManager];
  cachedDiscoveredDevices = [discoveryManager2 cachedDiscoveredDevices];
  [(AXRNearbyDevicesViewController *)self setDiscoveredDevices:cachedDiscoveredDevices];

  tableView = [(AXRNearbyDevicesViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"NearbyDeviceCell"];
}

- (void)_connectToDevice:(id)device
{
  deviceCopy = device;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__AXRNearbyDevicesViewController__connectToDevice___block_invoke;
  v6[3] = &unk_278BED568;
  objc_copyWeak(&v8, &location);
  v5 = deviceCopy;
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

- (void)_showActiveDeviceConnectionAlertWithDevice:(id)device
{
  deviceCopy = device;
  v8 = [[AXRConnectedDeviceViewController alloc] initWithRemoteDevice:deviceCopy];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel__dismissPresentedViewController];
  navigationItem = [(AXRConnectedDeviceViewController *)v8 navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [(AXRNearbyDevicesViewController *)self presentViewController:v7 animated:1 completion:&__block_literal_global];
}

- (void)_dismissPresentedViewController
{
  presentedViewController = [(AXRNearbyDevicesViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
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

- (void)deviceDiscoveryManager:(id)manager updatedDevices:(id)devices
{
  [(AXRNearbyDevicesViewController *)self setDiscoveredDevices:devices];
  tableView = [(AXRNearbyDevicesViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(AXRNearbyDevicesViewController *)self discoveredDevices:view];
  v6 = [v5 count];

  if (!v6)
  {
    return 1;
  }

  discoveredDevices = [(AXRNearbyDevicesViewController *)self discoveredDevices];
  v8 = [discoveredDevices count];

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"NearbyDeviceCell" forIndexPath:pathCopy];
  [v7 setHidden:0];
  discoveredDevices = [(AXRNearbyDevicesViewController *)self discoveredDevices];
  v9 = [discoveredDevices count];

  if (v9)
  {
    item = [pathCopy item];
    discoveredDevices2 = [(AXRNearbyDevicesViewController *)self discoveredDevices];
    v12 = [discoveredDevices2 count];

    if (item >= v12)
    {
      textLabel = [v7 textLabel];
      [textLabel setText:0];

      [v7 setHidden:1];
    }

    else
    {
      discoveredDevices3 = [(AXRNearbyDevicesViewController *)self discoveredDevices];
      v14 = [discoveredDevices3 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

      displayName = [v14 displayName];
      textLabel2 = [v7 textLabel];
      [textLabel2 setText:displayName];
    }
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v17 startAnimating];
    [v7 setAccessoryView:v17];
    v18 = AXRLocalizedStringForKey();
    textLabel3 = [v7 textLabel];
    [textLabel3 setText:v18];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  discoveredDevices = [(AXRNearbyDevicesViewController *)self discoveredDevices];
  v9 = [discoveredDevices count];

  if (v7 < v9)
  {
    discoveredDevices2 = [(AXRNearbyDevicesViewController *)self discoveredDevices];
    v11 = [discoveredDevices2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    [(AXRNearbyDevicesViewController *)self _connectToDevice:v11];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

@end
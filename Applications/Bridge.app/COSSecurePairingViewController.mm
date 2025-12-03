@interface COSSecurePairingViewController
- (BOOL)updateDiscoveredDevices;
- (id)_discoveredNRDeviceForAdvertisedName:(id)name;
- (id)cellNameForRow:(int64_t)row;
- (id)didSelectRowAtIndexPath:(id)path;
- (void)beginDiscovery;
- (void)endDiscovery;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation COSSecurePairingViewController

- (BOOL)updateDiscoveredDevices
{
  displayedDeviceNames = [(COSManualPairingViewController *)self displayedDeviceNames];
  v4 = [NSMutableSet setWithArray:displayedDeviceNames];

  v5 = +[NRDeviceDiscoveryController sharedInstance];
  devices = [v5 devices];

  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [devices count]);
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Get fresh list of %@ devices from NR", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = devices;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = 0;
    v14 = *v23;
    v15 = NRDevicePropertyAdvertisedName;
    *&v11 = 138543362;
    v21 = v11;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v17 = [*(*(&v22 + 1) + 8 * i) valueForProperty:{v15, v21, v22}];
        if (v17 && ([v4 containsObject:v17] & 1) == 0)
        {
          v18 = pbb_setupflow_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v28 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Adding %{public}@ to displayed list", buf, 0xCu);
          }

          displayedDeviceNames2 = [(COSManualPairingViewController *)self displayedDeviceNames];
          [displayedDeviceNames2 addObject:v17];

          v13 = 1;
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (void)beginDiscovery
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[[NRDeviceDiscoveryController sharedInstance] begin]", v4, 2u);
  }

  v3 = +[NRDeviceDiscoveryController sharedInstance];
  [v3 begin];
}

- (void)endDiscovery
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[[NRDeviceDiscoveryController sharedInstance] end]", v4, 2u);
  }

  v3 = +[NRDeviceDiscoveryController sharedInstance];
  [v3 end];
}

- (id)cellNameForRow:(int64_t)row
{
  displayedDeviceNames = [(COSManualPairingViewController *)self displayedDeviceNames];
  v5 = [displayedDeviceNames objectAtIndex:row];

  v6 = PBAdvertisingInfoFromPayload();
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"MANUAL_PAIRING_WATCH_DISPLAY_NAME_%@" value:&stru_10026E598 table:@"Localizable"];
  v9 = [v6 objectForKeyedSubscript:PBBridgeAdvertisingNameKey];
  v10 = [NSString stringWithFormat:v8, v9];

  return v10;
}

- (id)_discoveredNRDeviceForAdvertisedName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10012D278;
    v8[3] = &unk_10026ACC8;
    v9 = nameCopy;
    v5 = [v4 getAllDevicesWithArchivedDevicesMatching:v8];

    firstObject = [v5 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  displayedDeviceNames = [(COSManualPairingViewController *)self displayedDeviceNames];
  v6 = [pathCopy row];

  v7 = [displayedDeviceNames objectAtIndex:v6];

  v8 = [(COSSecurePairingViewController *)self _discoveredNRDeviceForAdvertisedName:v7];
  if (v8)
  {
    v9 = [[COSSecurePairingPasskeyEntryViewController alloc] initWithDevice:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  displayedDeviceNames = [(COSManualPairingViewController *)self displayedDeviceNames];
  v9 = [displayedDeviceNames objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  v10 = [(COSSecurePairingViewController *)self _discoveredNRDeviceForAdvertisedName:v9];
  if (v10)
  {
    v11.receiver = self;
    v11.super_class = COSSecurePairingViewController;
    [(COSManualPairingViewController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  }
}

@end
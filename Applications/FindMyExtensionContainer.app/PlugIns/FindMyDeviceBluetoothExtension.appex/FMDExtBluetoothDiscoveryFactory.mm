@interface FMDExtBluetoothDiscoveryFactory
+ (id)configurationDictWithBleDevice:(id)device;
- (BOOL)isDiscoveryActive;
- (FMDExtBluetoothDiscoveryFactory)init;
- (id)newDiscovery;
- (void)didDiscoverDevice:(id)device;
- (void)didLoseDevice:(id)device;
- (void)setAllAudioChannelsActive:(BOOL)active;
- (void)setupDiscovery;
@end

@implementation FMDExtBluetoothDiscoveryFactory

- (FMDExtBluetoothDiscoveryFactory)init
{
  v5.receiver = self;
  v5.super_class = FMDExtBluetoothDiscoveryFactory;
  v2 = [(FMDExtBluetoothDiscoveryFactory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDExtBluetoothDiscoveryFactory *)v2 setupDiscovery];
  }

  return v3;
}

- (id)newDiscovery
{
  discoveryCoordinator = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  newDiscovery = [discoveryCoordinator newDiscovery];

  return newDiscovery;
}

- (BOOL)isDiscoveryActive
{
  discoveryCoordinator = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  isDiscoveryActive = [discoveryCoordinator isDiscoveryActive];

  return isDiscoveryActive;
}

- (void)setupDiscovery
{
  v3 = objc_alloc_init(FMDBluetoothDiscoveryXPCProxy);
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.icloud.FindMyDevice.FindMyExtensionContainer.FindMyDeviceBluetoothExtension.bluetoothdiscoveryqueue", v4);
  [(FMDExtBluetoothDiscoveryFactory *)self setBluetoothDiscoveryQueue:v5];

  v6 = [[FMDBluetoothDiscoveryCoordinator alloc] initWithDiscovery:v3];
  [(FMDExtBluetoothDiscoveryFactory *)self setDiscoveryCoordinator:v6];

  objc_initWeak(&location, self);
  v7 = sub_100003F1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "starting up discovery %@", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100009E6C;
  v18[3] = &unk_10001D3E0;
  objc_copyWeak(&v19, &location);
  discoveryCoordinator = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  [discoveryCoordinator setDidDiscoverDevice:v18];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100009FDC;
  v16[3] = &unk_10001D3E0;
  objc_copyWeak(&v17, &location);
  discoveryCoordinator2 = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  [discoveryCoordinator2 setDidLoseDevice:v16];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000A14C;
  v14[3] = &unk_10001D430;
  objc_copyWeak(&v15, &location);
  discoveryCoordinator3 = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  [discoveryCoordinator3 setDidEndDiscovery:v14];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000A260;
  v12[3] = &unk_10001D330;
  objc_copyWeak(&v13, &location);
  discoveryCoordinator4 = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  [discoveryCoordinator4 setDidStartDiscovery:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)setAllAudioChannelsActive:(BOOL)active
{
  activeCopy = active;
  delegate = [(FMDExtBluetoothDiscoveryFactory *)self delegate];
  accessoryId = [(FMDExtBluetoothDiscoveryFactory *)self accessoryId];
  if (activeCopy)
  {
    v6 = &off_1000207A8;
    v7 = &stru_10001D450;
  }

  else
  {
    v6 = &off_1000207D0;
    v7 = &stru_10001D470;
  }

  [delegate availabilitydidChangeFor:accessoryId status:v6 withCompletion:v7];
}

- (void)didDiscoverDevice:(id)device
{
  deviceCopy = device;
  bluetoothAddress = [deviceCopy bluetoothAddress];
  fm_MACAddressString = [bluetoothAddress fm_MACAddressString];
  address = [(FMDExtBluetoothDiscoveryFactory *)self address];
  v8 = [fm_MACAddressString isEqualToString:address];

  if (v8)
  {
    v9 = [objc_opt_class() configurationDictWithBleDevice:deviceCopy];
    v10 = sub_100003F1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      advertisementFields = [deviceCopy advertisementFields];
      v14 = 138412546;
      v15 = advertisementFields;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didDiscoverDevice = %@ %@", &v14, 0x16u);
    }

    if (v9)
    {
      delegate = [(FMDExtBluetoothDiscoveryFactory *)self delegate];
      accessoryId = [(FMDExtBluetoothDiscoveryFactory *)self accessoryId];
      [delegate availabilitydidChangeFor:accessoryId status:v9 withCompletion:&stru_10001D490];
    }
  }
}

- (void)didLoseDevice:(id)device
{
  deviceCopy = device;
  bluetoothAddress = [deviceCopy bluetoothAddress];
  fm_MACAddressString = [bluetoothAddress fm_MACAddressString];
  address = [(FMDExtBluetoothDiscoveryFactory *)self address];
  v8 = [fm_MACAddressString isEqualToString:address];

  if (v8)
  {
    v9 = [objc_opt_class() configurationDictWithBleDevice:deviceCopy];
    v10 = sub_100003F1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      advertisementFields = [deviceCopy advertisementFields];
      v14 = 138412546;
      v15 = advertisementFields;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didLoseDevice = %@ %@", &v14, 0x16u);
    }

    if (v9)
    {
      delegate = [(FMDExtBluetoothDiscoveryFactory *)self delegate];
      accessoryId = [(FMDExtBluetoothDiscoveryFactory *)self accessoryId];
      [delegate availabilitydidChangeFor:accessoryId status:v9 withCompletion:&stru_10001D4B0];
    }
  }
}

+ (id)configurationDictWithBleDevice:(id)device
{
  advertisementFields = [device advertisementFields];
  v4 = [advertisementFields objectForKeyedSubscript:@"aState"];
  v5 = v4;
  v6 = &off_1000207F8;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v32 = [v7 isEqualToNumber:&off_100020810];
  v8 = [advertisementFields objectForKeyedSubscript:@"hsStatus"];
  unsignedIntValue = [v8 unsignedIntValue];
  v10 = dword_10002873C & unsignedIntValue;
  v11 = dword_100028720 & unsignedIntValue;
  v12 = dword_100028724 & unsignedIntValue;
  v13 = dword_100028730 & unsignedIntValue;
  v14 = dword_100028728 & unsignedIntValue;
  v15 = dword_100028734 & unsignedIntValue;
  v16 = dword_100028740 & unsignedIntValue;
  v17 = sub_100003BEC();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110656;
    v36 = v10 != 0;
    v37 = 1024;
    v38 = v16 != 0;
    v39 = 1024;
    v40 = v11 != 0;
    v41 = 1024;
    v42 = v12 != 0;
    v43 = 1024;
    v44 = v13 != 0;
    v45 = 1024;
    v46 = v14 != 0;
    v47 = 1024;
    v48 = v15 != 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MainHSSTATUS L %i P %i U %i C %i OC %i E %i OE %i", buf, 0x2Cu);
  }

  if (v16)
  {
    v18 = v12 != 0;
    if (!v13)
    {
      v18 = 0;
    }

    if (!(v12 | v13))
    {
      v18 = 1;
    }

    if (v14 | v15)
    {
      v19 = 1;
    }

    else
    {
      v19 = v11 == 0;
    }

    v20 = !v19 && v18;
    if (v13)
    {
      v21 = v20;
    }

    else
    {
      v21 = 1;
    }

    if (v10)
    {
      v22 = @"right";
    }

    else
    {
      v22 = @"left";
    }

    if (v10)
    {
      v23 = @"left";
    }

    else
    {
      v23 = @"right";
    }

    v24 = v22;
    v25 = v23;
    v26 = objc_alloc_init(NSMutableArray);
    v27 = v26;
    if ((v20 & 1) != 0 || !v12)
    {
      [v26 addObject:v25];
    }

    if (((v11 != 0) & v21) == 1)
    {
      [v27 addObject:v24];
    }

    if (v32)
    {
      v28 = v27;
    }

    else
    {
      v28 = &__NSArray0__struct;
    }

    v33[0] = @"components";
    v33[1] = @"playing";
    v34[0] = v27;
    v34[1] = v28;
    v33[2] = @"statusUpdateTime";
    v30 = +[NSDate date];
    v34[2] = v30;
    v29 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
  }

  else
  {
    v24 = sub_100003F1C();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "ignoring advertisement from non primary bud", buf, 2u);
    }

    v29 = 0;
  }

  return v29;
}

@end
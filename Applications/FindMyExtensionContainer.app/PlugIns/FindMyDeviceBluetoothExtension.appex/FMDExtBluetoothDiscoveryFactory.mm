@interface FMDExtBluetoothDiscoveryFactory
+ (id)configurationDictWithBleDevice:(id)a3;
- (BOOL)isDiscoveryActive;
- (FMDExtBluetoothDiscoveryFactory)init;
- (id)newDiscovery;
- (void)didDiscoverDevice:(id)a3;
- (void)didLoseDevice:(id)a3;
- (void)setAllAudioChannelsActive:(BOOL)a3;
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
  v2 = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  v3 = [v2 newDiscovery];

  return v3;
}

- (BOOL)isDiscoveryActive
{
  v2 = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  v3 = [v2 isDiscoveryActive];

  return v3;
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
  v8 = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  [v8 setDidDiscoverDevice:v18];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100009FDC;
  v16[3] = &unk_10001D3E0;
  objc_copyWeak(&v17, &location);
  v9 = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  [v9 setDidLoseDevice:v16];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000A14C;
  v14[3] = &unk_10001D430;
  objc_copyWeak(&v15, &location);
  v10 = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  [v10 setDidEndDiscovery:v14];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000A260;
  v12[3] = &unk_10001D330;
  objc_copyWeak(&v13, &location);
  v11 = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  [v11 setDidStartDiscovery:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)setAllAudioChannelsActive:(BOOL)a3
{
  v3 = a3;
  v8 = [(FMDExtBluetoothDiscoveryFactory *)self delegate];
  v5 = [(FMDExtBluetoothDiscoveryFactory *)self accessoryId];
  if (v3)
  {
    v6 = &off_1000207A8;
    v7 = &stru_10001D450;
  }

  else
  {
    v6 = &off_1000207D0;
    v7 = &stru_10001D470;
  }

  [v8 availabilitydidChangeFor:v5 status:v6 withCompletion:v7];
}

- (void)didDiscoverDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 bluetoothAddress];
  v6 = [v5 fm_MACAddressString];
  v7 = [(FMDExtBluetoothDiscoveryFactory *)self address];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [objc_opt_class() configurationDictWithBleDevice:v4];
    v10 = sub_100003F1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 advertisementFields];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didDiscoverDevice = %@ %@", &v14, 0x16u);
    }

    if (v9)
    {
      v12 = [(FMDExtBluetoothDiscoveryFactory *)self delegate];
      v13 = [(FMDExtBluetoothDiscoveryFactory *)self accessoryId];
      [v12 availabilitydidChangeFor:v13 status:v9 withCompletion:&stru_10001D490];
    }
  }
}

- (void)didLoseDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 bluetoothAddress];
  v6 = [v5 fm_MACAddressString];
  v7 = [(FMDExtBluetoothDiscoveryFactory *)self address];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [objc_opt_class() configurationDictWithBleDevice:v4];
    v10 = sub_100003F1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 advertisementFields];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didLoseDevice = %@ %@", &v14, 0x16u);
    }

    if (v9)
    {
      v12 = [(FMDExtBluetoothDiscoveryFactory *)self delegate];
      v13 = [(FMDExtBluetoothDiscoveryFactory *)self accessoryId];
      [v12 availabilitydidChangeFor:v13 status:v9 withCompletion:&stru_10001D4B0];
    }
  }
}

+ (id)configurationDictWithBleDevice:(id)a3
{
  v3 = [a3 advertisementFields];
  v4 = [v3 objectForKeyedSubscript:@"aState"];
  v5 = v4;
  v6 = &off_1000207F8;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v32 = [v7 isEqualToNumber:&off_100020810];
  v8 = [v3 objectForKeyedSubscript:@"hsStatus"];
  v9 = [v8 unsignedIntValue];
  v10 = dword_10002873C & v9;
  v11 = dword_100028720 & v9;
  v12 = dword_100028724 & v9;
  v13 = dword_100028730 & v9;
  v14 = dword_100028728 & v9;
  v15 = dword_100028734 & v9;
  v16 = dword_100028740 & v9;
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
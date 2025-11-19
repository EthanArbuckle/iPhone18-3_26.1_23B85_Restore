@interface FMDBluetoothExtensionMain
- (FMDExtSoundController)soundController;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)connectionStatusForAccessory:(id)a3 withCompletion:(id)a4;
- (void)fetchAllAccessoriesInfoWithInfo:(id)a3 withCompletion:(id)a4;
- (void)forceConnectToAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5;
- (void)getStyleForAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5;
- (void)playSoundForAccessory:(id)a3 info:(id)a4 duration:(double)a5 rampUpDuration:(double)a6 channels:(id)a7 withCompletion:(id)a8;
- (void)safetyAlertForAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5;
- (void)startDiscoveryForAccessory:(id)a3 duration:(double)a4 info:(id)a5 withCompletion:(id)a6;
- (void)stopDiscoveryForAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5;
- (void)stopSoundForAccessory:(id)a3 info:(id)a4 rampDownDuration:(double)a5 withCompletion:(id)a6;
@end

@implementation FMDBluetoothExtensionMain

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  v5 = sub_100003F1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = v4;
    v21 = 2112;
    v22 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "beginRequestWithExtensionCalled with context %@ and accessory provider = %@", &v19, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = sub_100003F1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v19 = 138412290;
      v20 = v7;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "beginRequestWithExtensionCalled with context %@", &v19, 0xCu);
    }

    [v4 setAccessoryProvider:self];
  }

  v9 = [v4 _auxiliaryConnection];
  v10 = [v9 remoteObjectProxy];
  v11 = v10;
  if (v10 && [v10 conformsToProtocol:&OBJC_PROTOCOL___FMDExtAccessoryDelegateProtocol])
  {
    [(FMDBluetoothExtensionMain *)self setHostProxy:v11];
  }

  else
  {
    v12 = sub_100003F1C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000D88C(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }
}

- (void)fetchAllAccessoriesInfoWithInfo:(id)a3 withCompletion:(id)a4
{
  v26 = a4;
  v4 = +[FMDExtBluetoothManager classicPairedAppleAccessories];
  v5 = sub_100003F1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth manager paired devices %@", buf, 0xCu);
  }

  v28 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 btAddressData];
        v12 = [v11 fm_MACAddressString];
        v13 = [FMDExtHelper deviceIDFromAddress:v12];

        v14 = +[FMDExtHelper deviceTypeFromVendorId:productId:](FMDExtHelper, "deviceTypeFromVendorId:productId:", [v10 vendorID], objc_msgSend(v10, "productID"));
        v15 = objc_alloc_init(FMDExtAccessoryInfo);
        [v15 setAccessoryIdentifier:v13];
        [v15 setAccessoryType:v14];
        v16 = [v10 name];
        [v15 setName:v16];

        [v15 setAdditionalInfo:0];
        v17 = [v10 btAddressData];
        v18 = [v17 fm_MACAddressString];
        [v15 setDeviceDiscoveryId:v18];

        v19 = [[NSMutableDictionary alloc] initWithCapacity:3];
        v20 = [v10 serialNumber];
        [v19 fm_safeSetObject:v20 forKey:@"systemSerialNumber"];

        v21 = [v10 serialNumberLeft];
        [v19 fm_safeSetObject:v21 forKey:@"leftSerialNumber"];

        v22 = [v10 serialNumberRight];
        [v19 fm_safeSetObject:v22 forKey:@"rightSerialNumber"];

        [v15 setSerialNumbers:v19];
        v23 = [v10 firmwareVersion];
        [v15 setFirmwareVersion:v23];

        [v28 addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  v24 = sub_100003F1C();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v28;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Bluetooth manager paired devices %@", buf, 0xCu);
  }

  v25 = [NSArray arrayWithArray:v28];
  v26[2](v26, v25, 0);
}

- (void)connectionStatusForAccessory:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [FMDExtBluetoothManager pairedAccessoryWithID:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 connectedServices];
    v10 = [v8 discoveryFlags];
    v11 = v10 & 0x200000;
    v12 = sub_100003F1C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 name];
      *buf = 138413058;
      v18 = v13;
      v19 = 1024;
      v20 = v11 >> 21;
      v21 = 1024;
      v22 = v9;
      v23 = 2048;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bluetooth accessory %@ connection status = %u serviceFlags %x discoveryFlags %llx", buf, 0x22u);
    }

    v6[2](v6, v11 != 0, 0);
  }

  else
  {
    v14 = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", v5];
    v15 = [NSError errorWithMessage:v14];
    v16 = sub_100003F1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000D8F8();
    }

    (v6)[2](v6, 0, v15);
    v6 = v14;
  }
}

- (void)forceConnectToAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [FMDExtBluetoothManager pairedAccessoryWithID:v7];
  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:@"timeout"];
    v12 = 0.5;
    if (v11)
    {
      v13 = v11;
      v14 = [v8 objectForKeyedSubscript:@"timeout"];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = [v8 objectForKeyedSubscript:@"timeout"];
        [v16 doubleValue];
        v12 = v17;
      }
    }

    v18 = [v8 objectForKeyedSubscript:@"retryCount"];
    if (v18 && (v19 = v18, [v8 objectForKeyedSubscript:@"retryCount"], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_opt_respondsToSelector(), v20, v19, (v21 & 1) != 0))
    {
      v22 = [v8 objectForKeyedSubscript:@"retryCount"];
      v23 = [v22 intValue];
    }

    else
    {
      v23 = 10;
    }

    v24 = sub_100003F1C();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v10 name];
      *buf = 138412802;
      v41 = v25;
      v42 = 2048;
      v43 = v12;
      v44 = 1024;
      v45 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Accessory %@ connection timeout = %lf retryCount %d", buf, 0x1Cu);
    }

    v26 = objc_alloc_init(CBConnection);
    [v26 setPeerDevice:v10];
    [v26 setServiceFlags:4294956991];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000087C4;
    v38[3] = &unk_10001D380;
    v27 = v26;
    v39 = v27;
    [v27 activateWithCompletion:v38];
    if (v23 >= 1)
    {
      if ([v10 connectedServices])
      {
        v28 = 0.0;
        v29 = 1;
LABEL_21:
        v33 = sub_100003F1C();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v10 name];
          *buf = 138412546;
          v41 = v34;
          v42 = 2048;
          v43 = v12 * v28;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Accessory %@ connected after %f", buf, 0x16u);
        }

        v35 = sub_100003F1C();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [v10 name];
          *buf = 138412290;
          v41 = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Bluetooth accessory %@ force connection success", buf, 0xCu);
        }

        goto LABEL_28;
      }

      v32 = 0;
      while (1)
      {
        [NSThread sleepForTimeInterval:v12];
        if (v23 - 1 == v32)
        {
          break;
        }

        ++v32;
        if ([v10 connectedServices])
        {
          v29 = v32 < v23;
          v28 = v32;
          goto LABEL_21;
        }
      }
    }

    v35 = sub_100003F1C();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v10 name];
      *buf = 138412290;
      v41 = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Bluetooth accessory %@ force connection failed", buf, 0xCu);
    }

    v29 = 0;
LABEL_28:

    v9[2](v9, v29, 0);
    v30 = v39;
    goto LABEL_29;
  }

  v27 = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", v7];
  v30 = [NSError errorWithMessage:v27];
  v31 = sub_100003F1C();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_10000D96C();
  }

  (v9)[2](v9, 0, v30);
LABEL_29:
}

- (void)getStyleForAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [FMDExtBluetoothManager pairedAccessoryWithID:v7];
  v11 = v10;
  if (!v10)
  {
    v15 = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", v7];
    v16 = [NSError errorWithMessage:v15];
    v17 = sub_100003F1C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000DAC0();
    }

    v9[2](v9, 0, v16);
    goto LABEL_12;
  }

  v12 = [v10 colorCodeBest];
  v13 = sub_100003F1C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v11 name];
    *buf = 138412546;
    v21 = v14;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "color for accessory %@ = %u", buf, 0x12u);
  }

  v15 = [FMDExtHelper parseStyle:v12 info:v8];
  if (!v15)
  {
    v16 = [NSString stringWithFormat:@"parsing failed %u %@", v12, v8];
    v18 = [NSError errorWithMessage:v16];
    v19 = sub_100003F1C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000DA4C();
    }

    v9[2](v9, 0, v18);
LABEL_12:

    goto LABEL_13;
  }

  (v9)[2](v9, v15, 0);
LABEL_13:
}

- (void)safetyAlertForAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [FMDExtBluetoothManager pairedAccessoryWithID:v6];
  v9 = v8;
  if (v8)
  {
    v10 = +[CBProductInfo productInfoWithProductID:](CBProductInfo, "productInfoWithProductID:", [v8 productID]);
    if (([v10 flags] & 0x100) != 0)
    {
      v17 = [v9 primaryPlacement];
      v18 = [v9 secondaryPlacement];
      v19 = sub_100003F1C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v9 name];
        *buf = 138412290;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "In ear detection available for accessory %@", buf, 0xCu);
      }

      v21 = sub_100003F1C();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v25 = v6;
        v26 = 1024;
        v27 = v17;
        v28 = 1024;
        v29 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "accessory %@ primaryEarStatus %u secondaryEarStatus = %u", buf, 0x18u);
      }

      v22 = v17 != 0 && v18 != 0;
      v23 = @"Unknown";
      if (v22)
      {
        v23 = @"Safe";
      }

      if (v18 == 1)
      {
        v23 = @"InEar";
        v22 = 0;
      }

      if (v17 == 1)
      {
        v14 = @"InEar";
      }

      else
      {
        v14 = v23;
      }

      v13 = v17 != 1 && v22;
    }

    else
    {
      v11 = sub_100003F1C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v9 name];
        *buf = 138412290;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "In ear detection not available for accessory %@", buf, 0xCu);
      }

      v13 = 0;
      v14 = @"InEarDetectUnavailable";
    }

    v7[2](v7, v13, v14, 0);
    v15 = v7;
  }

  else
  {
    v10 = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", v6];
    v15 = [NSError errorWithMessage:v10];
    v16 = sub_100003F1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000DB34();
    }

    (v7)[2](v7, 0, @"Unavailable", v15);
  }
}

- (void)startDiscoveryForAccessory:(id)a3 duration:(double)a4 info:(id)a5 withCompletion:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [FMDExtBluetoothManager pairedAccessoryWithID:v9];
  if (v11)
  {
    v12 = [(FMDBluetoothExtensionMain *)self discoveryFactory];

    if (!v12)
    {
      v13 = objc_alloc_init(FMDExtBluetoothDiscoveryFactory);
      [(FMDBluetoothExtensionMain *)self setDiscoveryFactory:v13];

      hostProxy = self->_hostProxy;
      v15 = [(FMDBluetoothExtensionMain *)self discoveryFactory];
      [v15 setDelegate:hostProxy];

      v16 = [(FMDBluetoothExtensionMain *)self discoveryFactory];
      [v16 setAccessoryId:v9];

      v17 = [v11 btAddressData];
      v18 = [v17 fm_MACAddressString];
      v19 = [(FMDBluetoothExtensionMain *)self discoveryFactory];
      [v19 setAddress:v18];
    }

    v20 = [(FMDBluetoothExtensionMain *)self discoveryFactory];
    v21 = [v20 newDiscovery];
    [(FMDBluetoothExtensionMain *)self setDiscovery:v21];

    v22 = sub_100003F1C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = a4;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "starting discovery for %lf", buf, 0xCu);
    }

    v23 = [(FMDBluetoothExtensionMain *)self discovery];
    [v23 startDiscoveryForDuration:a4];

    v10[2](v10, 0);
  }

  else
  {
    v24 = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", v9];
    v25 = [NSError errorWithMessage:v24];
    v26 = sub_100003FA4();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10000DBA8();
    }

    (v10)[2](v10, v25);
    v10 = v24;
  }
}

- (void)stopDiscoveryForAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(FMDBluetoothExtensionMain *)self discoveryFactory];
  if (v9)
  {
    v10 = v9;
    v11 = [(FMDBluetoothExtensionMain *)self discovery];

    if (v11)
    {
      v12 = [(FMDBluetoothExtensionMain *)self discoveryFactory];
      v13 = [v12 accessoryId];
      v14 = [v13 isEqualToString:v7];

      if (v14)
      {
        v15 = [(FMDBluetoothExtensionMain *)self discovery];
        [v15 stopDiscovery];

        [(FMDBluetoothExtensionMain *)self setDiscovery:0];
        [(FMDBluetoothExtensionMain *)self setDiscoveryFactory:0];
      }

      else
      {
        v16 = sub_100003F1C();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10000DC1C(v7, self, v16);
        }
      }
    }
  }

  v8[2](v8, 0);
}

- (void)playSoundForAccessory:(id)a3 info:(id)a4 duration:(double)a5 rampUpDuration:(double)a6 channels:(id)a7 withCompletion:(id)a8
{
  v13 = a3;
  v49 = a4;
  v14 = a7;
  v15 = a8;
  v16 = sub_100003FA4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = +[NSDate date];
    *buf = 138412546;
    v51 = v17;
    v52 = 2112;
    v53 = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PLAY_SOUND play sound started at %@ by %@", buf, 0x16u);
  }

  v18 = [FMDExtBluetoothManager pairedAccessoryWithID:v13];
  if (v18)
  {
    v19 = [[FMDAccessoryIdentifier alloc] initWithString:v13];
    v20 = [v18 btAddressData];
    v21 = [v20 fm_MACAddressString];

    v22 = [v49 objectForKeyedSubscript:@"soundFileID"];
    v47 = v22;
    if (v22)
    {
      v23 = v22;
      v46 = v14;
      v24 = sub_100003FA4();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "got soundFileID = %@", buf, 0xCu);
      }

      v25 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
      v26 = [v25 pathForResource:v23 ofType:@"wav"];
      if (v26)
      {
        v27 = [NSURL fileURLWithPath:v26];
        v28 = sub_100003FA4();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v27;
          v51 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "got audioURL = %@", buf, 0xCu);
        }

        else
        {
          v29 = v27;
        }
      }

      else
      {
        v28 = sub_100003FA4();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10000DCE0(v47, v28, v31, v32, v33, v34, v35, v36);
        }

        v29 = 0;
      }

      v14 = v46;
    }

    else
    {
      v29 = 0;
    }

    v37 = [v49 objectForKeyedSubscript:@"supportsChangingListeningMode"];
    if (v37)
    {
      v38 = v15;
      v39 = v14;
      v40 = [v49 objectForKeyedSubscript:@"supportsChangingListeningMode"];
      v41 = objc_opt_respondsToSelector();

      if (v41)
      {
        v42 = [v49 objectForKeyedSubscript:@"supportsChangingListeningMode"];
        v37 = [v42 BOOLValue];
      }

      else
      {
        v37 = 0;
      }

      v14 = v39;
      v15 = v38;
    }

    v43 = [[FMDGenericAudioAccessory alloc] initWithAccessoryId:v19 audioRoutingIdentifier:v21 audioURL:v29 audioAccessoryInfo:0 supportsChangingListeningMode:v37];
    v44 = sub_100003FA4();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v51 = v14;
      v52 = 2112;
      v53 = v29;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "play sound with chanels %@ and audio url %@", buf, 0x16u);
    }

    v45 = [(FMDBluetoothExtensionMain *)self soundController];
    [v45 startPlayingSoundForAccessory:v43 duration:v14 rampUpDuration:v15 channels:a5 completion:a6];
  }

  else
  {
    v19 = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", v13];
    v21 = [NSError errorWithMessage:v19];
    v30 = sub_100003FA4();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10000DD4C();
    }

    v15[2](v15, v21);
  }
}

- (void)stopSoundForAccessory:(id)a3 info:(id)a4 rampDownDuration:(double)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = sub_100003FA4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = +[NSDate date];
    *buf = 138412546;
    v26 = v14;
    v27 = 2112;
    v28 = self;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "STOP_SOUND stop sound started at %@ %@", buf, 0x16u);
  }

  v15 = [FMDExtBluetoothManager pairedAccessoryWithID:v10];
  if (v15)
  {
    v16 = [[FMDAccessoryIdentifier alloc] initWithString:v10];
    v17 = [v15 identifier];
    v18 = [v11 objectForKeyedSubscript:@"supportsChangingListeningMode"];
    if (v18)
    {
      v19 = [v11 objectForKeyedSubscript:@"supportsChangingListeningMode"];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = [v11 objectForKeyedSubscript:@"supportsChangingListeningMode"];
        v18 = [v21 BOOLValue];
      }

      else
      {
        v18 = 0;
      }
    }

    v23 = [[FMDGenericAudioAccessory alloc] initWithAccessoryId:v16 audioRoutingIdentifier:v17 audioURL:0 audioAccessoryInfo:0 supportsChangingListeningMode:v18];
    v24 = [(FMDBluetoothExtensionMain *)self soundController];
    [v24 stopPlayingSoundForAccessory:v23 rampDownDuration:v12 completion:a5];
  }

  else
  {
    v16 = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", v10];
    v17 = [NSError errorWithMessage:v16];
    v22 = sub_100003F1C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10000DDC0();
    }

    v12[2](v12, v17);
  }
}

- (FMDExtSoundController)soundController
{
  soundController = self->_soundController;
  if (!soundController)
  {
    v4 = objc_alloc_init(FMDExtSoundController);
    v5 = self->_soundController;
    self->_soundController = v4;

    soundController = self->_soundController;
  }

  return soundController;
}

@end
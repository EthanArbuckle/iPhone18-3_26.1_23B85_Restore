@interface FMDBluetoothExtensionMain
- (FMDExtSoundController)soundController;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)connectionStatusForAccessory:(id)accessory withCompletion:(id)completion;
- (void)fetchAllAccessoriesInfoWithInfo:(id)info withCompletion:(id)completion;
- (void)forceConnectToAccessory:(id)accessory info:(id)info withCompletion:(id)completion;
- (void)getStyleForAccessory:(id)accessory info:(id)info withCompletion:(id)completion;
- (void)playSoundForAccessory:(id)accessory info:(id)info duration:(double)duration rampUpDuration:(double)upDuration channels:(id)channels withCompletion:(id)completion;
- (void)safetyAlertForAccessory:(id)accessory info:(id)info withCompletion:(id)completion;
- (void)startDiscoveryForAccessory:(id)accessory duration:(double)duration info:(id)info withCompletion:(id)completion;
- (void)stopDiscoveryForAccessory:(id)accessory info:(id)info withCompletion:(id)completion;
- (void)stopSoundForAccessory:(id)accessory info:(id)info rampDownDuration:(double)duration withCompletion:(id)completion;
@end

@implementation FMDBluetoothExtensionMain

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  v5 = sub_100003F1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = contextCopy;
    v21 = 2112;
    selfCopy = self;
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

    [contextCopy setAccessoryProvider:self];
  }

  _auxiliaryConnection = [contextCopy _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  v11 = remoteObjectProxy;
  if (remoteObjectProxy && [remoteObjectProxy conformsToProtocol:&OBJC_PROTOCOL___FMDExtAccessoryDelegateProtocol])
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

- (void)fetchAllAccessoriesInfoWithInfo:(id)info withCompletion:(id)completion
{
  completionCopy = completion;
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
        btAddressData = [v10 btAddressData];
        fm_MACAddressString = [btAddressData fm_MACAddressString];
        v13 = [FMDExtHelper deviceIDFromAddress:fm_MACAddressString];

        v14 = +[FMDExtHelper deviceTypeFromVendorId:productId:](FMDExtHelper, "deviceTypeFromVendorId:productId:", [v10 vendorID], objc_msgSend(v10, "productID"));
        v15 = objc_alloc_init(FMDExtAccessoryInfo);
        [v15 setAccessoryIdentifier:v13];
        [v15 setAccessoryType:v14];
        name = [v10 name];
        [v15 setName:name];

        [v15 setAdditionalInfo:0];
        btAddressData2 = [v10 btAddressData];
        fm_MACAddressString2 = [btAddressData2 fm_MACAddressString];
        [v15 setDeviceDiscoveryId:fm_MACAddressString2];

        v19 = [[NSMutableDictionary alloc] initWithCapacity:3];
        serialNumber = [v10 serialNumber];
        [v19 fm_safeSetObject:serialNumber forKey:@"systemSerialNumber"];

        serialNumberLeft = [v10 serialNumberLeft];
        [v19 fm_safeSetObject:serialNumberLeft forKey:@"leftSerialNumber"];

        serialNumberRight = [v10 serialNumberRight];
        [v19 fm_safeSetObject:serialNumberRight forKey:@"rightSerialNumber"];

        [v15 setSerialNumbers:v19];
        firmwareVersion = [v10 firmwareVersion];
        [v15 setFirmwareVersion:firmwareVersion];

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
  completionCopy[2](completionCopy, v25, 0);
}

- (void)connectionStatusForAccessory:(id)accessory withCompletion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v7 = [FMDExtBluetoothManager pairedAccessoryWithID:accessoryCopy];
  v8 = v7;
  if (v7)
  {
    connectedServices = [v7 connectedServices];
    discoveryFlags = [v8 discoveryFlags];
    v11 = discoveryFlags & 0x200000;
    v12 = sub_100003F1C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      name = [v8 name];
      *buf = 138413058;
      v18 = name;
      v19 = 1024;
      v20 = v11 >> 21;
      v21 = 1024;
      v22 = connectedServices;
      v23 = 2048;
      v24 = discoveryFlags;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bluetooth accessory %@ connection status = %u serviceFlags %x discoveryFlags %llx", buf, 0x22u);
    }

    completionCopy[2](completionCopy, v11 != 0, 0);
  }

  else
  {
    accessoryCopy = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", accessoryCopy];
    v15 = [NSError errorWithMessage:accessoryCopy];
    v16 = sub_100003F1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000D8F8();
    }

    (completionCopy)[2](completionCopy, 0, v15);
    completionCopy = accessoryCopy;
  }
}

- (void)forceConnectToAccessory:(id)accessory info:(id)info withCompletion:(id)completion
{
  accessoryCopy = accessory;
  infoCopy = info;
  completionCopy = completion;
  v10 = [FMDExtBluetoothManager pairedAccessoryWithID:accessoryCopy];
  if (v10)
  {
    v11 = [infoCopy objectForKeyedSubscript:@"timeout"];
    v12 = 0.5;
    if (v11)
    {
      v13 = v11;
      v14 = [infoCopy objectForKeyedSubscript:@"timeout"];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = [infoCopy objectForKeyedSubscript:@"timeout"];
        [v16 doubleValue];
        v12 = v17;
      }
    }

    v18 = [infoCopy objectForKeyedSubscript:@"retryCount"];
    if (v18 && (v19 = v18, [infoCopy objectForKeyedSubscript:@"retryCount"], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_opt_respondsToSelector(), v20, v19, (v21 & 1) != 0))
    {
      v22 = [infoCopy objectForKeyedSubscript:@"retryCount"];
      intValue = [v22 intValue];
    }

    else
    {
      intValue = 10;
    }

    v24 = sub_100003F1C();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      name = [v10 name];
      *buf = 138412802;
      v41 = name;
      v42 = 2048;
      v43 = v12;
      v44 = 1024;
      v45 = intValue;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Accessory %@ connection timeout = %lf retryCount %d", buf, 0x1Cu);
    }

    v26 = objc_alloc_init(CBConnection);
    [v26 setPeerDevice:v10];
    [v26 setServiceFlags:4294956991];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000087C4;
    v38[3] = &unk_10001D380;
    accessoryCopy = v26;
    v39 = accessoryCopy;
    [accessoryCopy activateWithCompletion:v38];
    if (intValue >= 1)
    {
      if ([v10 connectedServices])
      {
        v28 = 0.0;
        v29 = 1;
LABEL_21:
        v33 = sub_100003F1C();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          name2 = [v10 name];
          *buf = 138412546;
          v41 = name2;
          v42 = 2048;
          v43 = v12 * v28;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Accessory %@ connected after %f", buf, 0x16u);
        }

        v35 = sub_100003F1C();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          name3 = [v10 name];
          *buf = 138412290;
          v41 = name3;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Bluetooth accessory %@ force connection success", buf, 0xCu);
        }

        goto LABEL_28;
      }

      v32 = 0;
      while (1)
      {
        [NSThread sleepForTimeInterval:v12];
        if (intValue - 1 == v32)
        {
          break;
        }

        ++v32;
        if ([v10 connectedServices])
        {
          v29 = v32 < intValue;
          v28 = v32;
          goto LABEL_21;
        }
      }
    }

    v35 = sub_100003F1C();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      name4 = [v10 name];
      *buf = 138412290;
      v41 = name4;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Bluetooth accessory %@ force connection failed", buf, 0xCu);
    }

    v29 = 0;
LABEL_28:

    completionCopy[2](completionCopy, v29, 0);
    v30 = v39;
    goto LABEL_29;
  }

  accessoryCopy = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", accessoryCopy];
  v30 = [NSError errorWithMessage:accessoryCopy];
  v31 = sub_100003F1C();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_10000D96C();
  }

  (completionCopy)[2](completionCopy, 0, v30);
LABEL_29:
}

- (void)getStyleForAccessory:(id)accessory info:(id)info withCompletion:(id)completion
{
  accessoryCopy = accessory;
  infoCopy = info;
  completionCopy = completion;
  v10 = [FMDExtBluetoothManager pairedAccessoryWithID:accessoryCopy];
  v11 = v10;
  if (!v10)
  {
    accessoryCopy = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", accessoryCopy];
    infoCopy = [NSError errorWithMessage:accessoryCopy];
    v17 = sub_100003F1C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000DAC0();
    }

    completionCopy[2](completionCopy, 0, infoCopy);
    goto LABEL_12;
  }

  colorCodeBest = [v10 colorCodeBest];
  v13 = sub_100003F1C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    name = [v11 name];
    *buf = 138412546;
    v21 = name;
    v22 = 1024;
    v23 = colorCodeBest;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "color for accessory %@ = %u", buf, 0x12u);
  }

  accessoryCopy = [FMDExtHelper parseStyle:colorCodeBest info:infoCopy];
  if (!accessoryCopy)
  {
    infoCopy = [NSString stringWithFormat:@"parsing failed %u %@", colorCodeBest, infoCopy];
    v18 = [NSError errorWithMessage:infoCopy];
    v19 = sub_100003F1C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000DA4C();
    }

    completionCopy[2](completionCopy, 0, v18);
LABEL_12:

    goto LABEL_13;
  }

  (completionCopy)[2](completionCopy, accessoryCopy, 0);
LABEL_13:
}

- (void)safetyAlertForAccessory:(id)accessory info:(id)info withCompletion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v8 = [FMDExtBluetoothManager pairedAccessoryWithID:accessoryCopy];
  v9 = v8;
  if (v8)
  {
    accessoryCopy = +[CBProductInfo productInfoWithProductID:](CBProductInfo, "productInfoWithProductID:", [v8 productID]);
    if (([accessoryCopy flags] & 0x100) != 0)
    {
      primaryPlacement = [v9 primaryPlacement];
      secondaryPlacement = [v9 secondaryPlacement];
      v19 = sub_100003F1C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        name = [v9 name];
        *buf = 138412290;
        v25 = name;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "In ear detection available for accessory %@", buf, 0xCu);
      }

      v21 = sub_100003F1C();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v25 = accessoryCopy;
        v26 = 1024;
        v27 = primaryPlacement;
        v28 = 1024;
        v29 = secondaryPlacement;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "accessory %@ primaryEarStatus %u secondaryEarStatus = %u", buf, 0x18u);
      }

      v22 = primaryPlacement != 0 && secondaryPlacement != 0;
      v23 = @"Unknown";
      if (v22)
      {
        v23 = @"Safe";
      }

      if (secondaryPlacement == 1)
      {
        v23 = @"InEar";
        v22 = 0;
      }

      if (primaryPlacement == 1)
      {
        v14 = @"InEar";
      }

      else
      {
        v14 = v23;
      }

      v13 = primaryPlacement != 1 && v22;
    }

    else
    {
      v11 = sub_100003F1C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [v9 name];
        *buf = 138412290;
        v25 = name2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "In ear detection not available for accessory %@", buf, 0xCu);
      }

      v13 = 0;
      v14 = @"InEarDetectUnavailable";
    }

    completionCopy[2](completionCopy, v13, v14, 0);
    v15 = completionCopy;
  }

  else
  {
    accessoryCopy = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", accessoryCopy];
    v15 = [NSError errorWithMessage:accessoryCopy];
    v16 = sub_100003F1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000DB34();
    }

    (completionCopy)[2](completionCopy, 0, @"Unavailable", v15);
  }
}

- (void)startDiscoveryForAccessory:(id)accessory duration:(double)duration info:(id)info withCompletion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v11 = [FMDExtBluetoothManager pairedAccessoryWithID:accessoryCopy];
  if (v11)
  {
    discoveryFactory = [(FMDBluetoothExtensionMain *)self discoveryFactory];

    if (!discoveryFactory)
    {
      v13 = objc_alloc_init(FMDExtBluetoothDiscoveryFactory);
      [(FMDBluetoothExtensionMain *)self setDiscoveryFactory:v13];

      hostProxy = self->_hostProxy;
      discoveryFactory2 = [(FMDBluetoothExtensionMain *)self discoveryFactory];
      [discoveryFactory2 setDelegate:hostProxy];

      discoveryFactory3 = [(FMDBluetoothExtensionMain *)self discoveryFactory];
      [discoveryFactory3 setAccessoryId:accessoryCopy];

      btAddressData = [v11 btAddressData];
      fm_MACAddressString = [btAddressData fm_MACAddressString];
      discoveryFactory4 = [(FMDBluetoothExtensionMain *)self discoveryFactory];
      [discoveryFactory4 setAddress:fm_MACAddressString];
    }

    discoveryFactory5 = [(FMDBluetoothExtensionMain *)self discoveryFactory];
    newDiscovery = [discoveryFactory5 newDiscovery];
    [(FMDBluetoothExtensionMain *)self setDiscovery:newDiscovery];

    v22 = sub_100003F1C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      durationCopy = duration;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "starting discovery for %lf", buf, 0xCu);
    }

    discovery = [(FMDBluetoothExtensionMain *)self discovery];
    [discovery startDiscoveryForDuration:duration];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    accessoryCopy = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", accessoryCopy];
    v25 = [NSError errorWithMessage:accessoryCopy];
    v26 = sub_100003FA4();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10000DBA8();
    }

    (completionCopy)[2](completionCopy, v25);
    completionCopy = accessoryCopy;
  }
}

- (void)stopDiscoveryForAccessory:(id)accessory info:(id)info withCompletion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  discoveryFactory = [(FMDBluetoothExtensionMain *)self discoveryFactory];
  if (discoveryFactory)
  {
    v10 = discoveryFactory;
    discovery = [(FMDBluetoothExtensionMain *)self discovery];

    if (discovery)
    {
      discoveryFactory2 = [(FMDBluetoothExtensionMain *)self discoveryFactory];
      accessoryId = [discoveryFactory2 accessoryId];
      v14 = [accessoryId isEqualToString:accessoryCopy];

      if (v14)
      {
        discovery2 = [(FMDBluetoothExtensionMain *)self discovery];
        [discovery2 stopDiscovery];

        [(FMDBluetoothExtensionMain *)self setDiscovery:0];
        [(FMDBluetoothExtensionMain *)self setDiscoveryFactory:0];
      }

      else
      {
        v16 = sub_100003F1C();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10000DC1C(accessoryCopy, self, v16);
        }
      }
    }
  }

  completionCopy[2](completionCopy, 0);
}

- (void)playSoundForAccessory:(id)accessory info:(id)info duration:(double)duration rampUpDuration:(double)upDuration channels:(id)channels withCompletion:(id)completion
{
  accessoryCopy = accessory;
  infoCopy = info;
  channelsCopy = channels;
  completionCopy = completion;
  v16 = sub_100003FA4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = +[NSDate date];
    *buf = 138412546;
    v51 = v17;
    v52 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PLAY_SOUND play sound started at %@ by %@", buf, 0x16u);
  }

  v18 = [FMDExtBluetoothManager pairedAccessoryWithID:accessoryCopy];
  if (v18)
  {
    accessoryCopy = [[FMDAccessoryIdentifier alloc] initWithString:accessoryCopy];
    btAddressData = [v18 btAddressData];
    fm_MACAddressString = [btAddressData fm_MACAddressString];

    v22 = [infoCopy objectForKeyedSubscript:@"soundFileID"];
    v47 = v22;
    if (v22)
    {
      v23 = v22;
      v46 = channelsCopy;
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

      channelsCopy = v46;
    }

    else
    {
      v29 = 0;
    }

    bOOLValue = [infoCopy objectForKeyedSubscript:@"supportsChangingListeningMode"];
    if (bOOLValue)
    {
      v38 = completionCopy;
      v39 = channelsCopy;
      v40 = [infoCopy objectForKeyedSubscript:@"supportsChangingListeningMode"];
      v41 = objc_opt_respondsToSelector();

      if (v41)
      {
        v42 = [infoCopy objectForKeyedSubscript:@"supportsChangingListeningMode"];
        bOOLValue = [v42 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      channelsCopy = v39;
      completionCopy = v38;
    }

    v43 = [[FMDGenericAudioAccessory alloc] initWithAccessoryId:accessoryCopy audioRoutingIdentifier:fm_MACAddressString audioURL:v29 audioAccessoryInfo:0 supportsChangingListeningMode:bOOLValue];
    v44 = sub_100003FA4();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v51 = channelsCopy;
      v52 = 2112;
      selfCopy = v29;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "play sound with chanels %@ and audio url %@", buf, 0x16u);
    }

    soundController = [(FMDBluetoothExtensionMain *)self soundController];
    [soundController startPlayingSoundForAccessory:v43 duration:channelsCopy rampUpDuration:completionCopy channels:duration completion:upDuration];
  }

  else
  {
    accessoryCopy = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", accessoryCopy];
    fm_MACAddressString = [NSError errorWithMessage:accessoryCopy];
    v30 = sub_100003FA4();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10000DD4C();
    }

    completionCopy[2](completionCopy, fm_MACAddressString);
  }
}

- (void)stopSoundForAccessory:(id)accessory info:(id)info rampDownDuration:(double)duration withCompletion:(id)completion
{
  accessoryCopy = accessory;
  infoCopy = info;
  completionCopy = completion;
  v13 = sub_100003FA4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = +[NSDate date];
    *buf = 138412546;
    v26 = v14;
    v27 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "STOP_SOUND stop sound started at %@ %@", buf, 0x16u);
  }

  v15 = [FMDExtBluetoothManager pairedAccessoryWithID:accessoryCopy];
  if (v15)
  {
    accessoryCopy = [[FMDAccessoryIdentifier alloc] initWithString:accessoryCopy];
    identifier = [v15 identifier];
    bOOLValue = [infoCopy objectForKeyedSubscript:@"supportsChangingListeningMode"];
    if (bOOLValue)
    {
      v19 = [infoCopy objectForKeyedSubscript:@"supportsChangingListeningMode"];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = [infoCopy objectForKeyedSubscript:@"supportsChangingListeningMode"];
        bOOLValue = [v21 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    v23 = [[FMDGenericAudioAccessory alloc] initWithAccessoryId:accessoryCopy audioRoutingIdentifier:identifier audioURL:0 audioAccessoryInfo:0 supportsChangingListeningMode:bOOLValue];
    soundController = [(FMDBluetoothExtensionMain *)self soundController];
    [soundController stopPlayingSoundForAccessory:v23 rampDownDuration:completionCopy completion:duration];
  }

  else
  {
    accessoryCopy = [NSString stringWithFormat:@"bluetooth accessory with identifier %@ not found", accessoryCopy];
    identifier = [NSError errorWithMessage:accessoryCopy];
    v22 = sub_100003F1C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10000DDC0();
    }

    completionCopy[2](completionCopy, identifier);
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
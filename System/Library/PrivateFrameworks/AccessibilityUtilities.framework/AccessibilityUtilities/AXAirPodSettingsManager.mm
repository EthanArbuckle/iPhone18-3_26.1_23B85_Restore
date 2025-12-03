@interface AXAirPodSettingsManager
+ (id)sharedInstance;
- (BOOL)_supportsCapability:(int)capability forDeviceAddress:(id)address capabilityName:(id)name;
- (BOOL)_supportsCaseTonesForDeviceAddress:(id)address;
- (BOOL)_supportsCaseTonesVolumeForDeviceAddress:(id)address;
- (BOOL)isAirPodProduct:(id)product;
- (BOOL)nps_caseTonesEnabledForDeviceAddress:(id)address;
- (BOOL)nps_noiseCancellationEnabledWithOneUnitForDeviceAddress:(id)address;
- (BOOL)nps_volumeSwipeEnabledForDeviceAddress:(id)address;
- (BOOL)pairedAirPodsSupportSpatialAudio;
- (BOOL)supportsCaseTonesForDeviceAddress:(id)address;
- (BOOL)supportsCaseTonesVolumeForDeviceAddress:(id)address;
- (BOOL)supportsHoldDurationForDeviceAddress:(id)address;
- (BOOL)supportsNoiseCancellationEnabledForDeviceAddress:(id)address;
- (BOOL)supportsSpatialAudio;
- (BOOL)supportsSpatialAudioForDeviceAddress:(id)address;
- (BOOL)supportsTapSpeedForDeviceAddress:(id)address;
- (BOOL)supportsVolumeSwipeForDeviceAddress:(id)address;
- (NSArray)pairedAirPods;
- (float)nps_caseTonesVolumeForDeviceAddress:(id)address;
- (float)nps_holdDurationForDeviceAddress:(id)address;
- (float)nps_tapSpeedForDeviceAddress:(id)address;
- (float)nps_toneVolumeForDeviceAddress:(id)address;
- (float)nps_volumeSwipeDurationForDeviceAddress:(id)address;
- (id)_deviceWithDeviceAddress:(id)address;
- (id)_nps_airPodsDictionaryForPreference:(id)preference;
- (id)_pairedAirPods;
- (id)_productIdentifierForBTDevice:(id)device;
- (id)accessibilityDomainAccessor;
- (id)disambiguationString;
- (id)initSharedInstance;
- (id)titleAndAssetNameForSettings;
- (id)titleForSettings;
- (int64_t)_pairedProductsFlags;
- (unsigned)caseTonesVolumeForDeviceAddress:(id)address;
- (unsigned)nps_defaultToneVolumeForDeviceAddress:(id)address;
- (void)_accessoryEventForManager:(BTAccessoryManagerImpl *)manager event:(int)event device:(BTDeviceImpl *)device state:(int)state;
- (void)_applySettings;
- (void)_applySettingsForAddress:(id)address;
- (void)_didConnectWithSession:(BTSessionImpl *)session;
- (void)_didDisconnect;
- (void)_nps_updateAirPodsDictionaryForPreference:(id)preference deviceAddress:(id)address value:(id)value;
- (void)_probeAccessories;
- (void)_retrieveSettingsForAddress:(id)address;
- (void)_retrieveSettingsFromDevices:(id)devices;
- (void)_saveDeviceInfoForAddress:(id)address productID:(unsigned int)d bluetoothDevice:(BTDeviceImpl *)device;
- (void)_serviceEventForDevice:(BTDeviceImpl *)device serviceMask:(unsigned int)mask eventType:(int)type specificEvent:(unsigned int)event result:(int)result;
- (void)_sessionEventForSession:(BTSessionImpl *)session event:(int)event result:(int)result;
- (void)dealloc;
- (void)nps_setCaseTonesEnabled:(BOOL)enabled forDeviceAddress:(id)address;
- (void)nps_setCaseTonesVolume:(float)volume forDeviceAddress:(id)address;
- (void)nps_setHoldDuration:(float)duration forDeviceAddress:(id)address;
- (void)nps_setNoiseCancellationEnabledWithOneUnit:(BOOL)unit forDeviceAddress:(id)address;
- (void)nps_setTapSpeed:(float)speed forDeviceAddress:(id)address;
- (void)nps_setToneVolume:(float)volume forDeviceAddress:(id)address;
- (void)nps_setVolumeSwipeDuration:(float)duration forDeviceAddress:(id)address;
- (void)nps_setVolumeSwipeEnabled:(BOOL)enabled forDeviceAddress:(id)address;
- (void)setCaseTonesEnabled:(BOOL)enabled forDeviceAddress:(id)address;
- (void)setCaseTonesVolume:(unsigned int)volume forDeviceAddress:(id)address;
- (void)setHoldDuration:(float)duration forDeviceAddress:(id)address;
- (void)setNoiseCancellationEnabledWithOneUnit:(BOOL)unit forDeviceAddress:(id)address;
- (void)setTapSpeed:(float)speed forDeviceAddress:(id)address;
- (void)setToneVolume:(unsigned int)volume forDeviceAddress:(id)address;
- (void)setVolumeSwipeDuration:(float)duration forDeviceAddress:(id)address;
- (void)setVolumeSwipeEnabled:(BOOL)enabled forDeviceAddress:(id)address;
- (void)startWithCallback:(id)callback;
@end

@implementation AXAirPodSettingsManager

- (id)_productIdentifierForBTDevice:(id)device
{
  v3 = MEMORY[0x1E696AEC0];
  deviceCopy = device;
  vendorId = [deviceCopy vendorId];
  productId = [deviceCopy productId];

  return [v3 stringWithFormat:@"%d, %d", vendorId, productId];
}

- (NSArray)pairedAirPods
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    _pairedAirPods = [(AXAirPodSettingsManager *)self _pairedAirPods];
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__3;
    v12 = __Block_byref_object_dispose__3;
    v13 = 0;
    v4 = dispatch_semaphore_create(0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__AXAirPodSettingsManager_pairedAirPods__block_invoke;
    v7[3] = &unk_1E71EA1D8;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
    v5 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v4, v5);
    _pairedAirPods = v9[5];

    _Block_object_dispose(&v8, 8);
  }

  return _pairedAirPods;
}

uint64_t __40__AXAirPodSettingsManager_pairedAirPods__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _pairedAirPods];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_pairedAirPods
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = AXLogAirPodSettings();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x1E696AD98];
    mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
    v5 = [v3 numberWithBool:{objc_msgSend(mEMORY[0x1E698F468], "enabled")}];
    v6 = MEMORY[0x1E696AD98];
    mEMORY[0x1E698F468]2 = [MEMORY[0x1E698F468] sharedInstance];
    v8 = [v6 numberWithUnsignedInt:{objc_msgSend(mEMORY[0x1E698F468]2, "bluetoothState")}];
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_18B15E000, v2, OS_LOG_TYPE_DEFAULT, "state: %@ %@", buf, 0x16u);
  }

  array = [MEMORY[0x1E695DF70] array];
  mEMORY[0x1E698F468]3 = [MEMORY[0x1E698F468] sharedInstance];
  pairedDevices = [mEMORY[0x1E698F468]3 pairedDevices];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__AXAirPodSettingsManager__pairedAirPods__block_invoke;
  v15[3] = &unk_1E71EA6B0;
  v12 = array;
  v16 = v12;
  [pairedDevices enumerateObjectsUsingBlock:v15];

  v13 = AXLogAirPodSettings();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v12;
    _os_log_impl(&dword_18B15E000, v13, OS_LOG_TYPE_INFO, "Air!: %@", buf, 0xCu);
  }

  return v12;
}

void __41__AXAirPodSettingsManager__pairedAirPods__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AXLogAirPodSettings();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "vendorId")}];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "productId")}];
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_INFO, "BT device: %@ %@ %@", &v8, 0x20u);
  }

  if ([v3 vendorId] == 76 && (objc_msgSend(v3, "productId") == 8206 || objc_msgSend(v3, "productId") == 8202 || objc_msgSend(v3, "productId") == 8211 || objc_msgSend(v3, "productId") == 8212 || objc_msgSend(v3, "productId") == 8228 || objc_msgSend(v3, "productId") == 8231 || objc_msgSend(v3, "productId") == 8217 || objc_msgSend(v3, "productId") == 8219 || objc_msgSend(v3, "productId") == 8222 || objc_msgSend(v3, "productId") == 8223 || AXIsBeatsProductId(v3)))
  {
    v7 = AXLogAirPodSettings();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_INFO, "Air!: %@", &v8, 0xCu);
    }

    [*(a1 + 32) addObject:v3];
  }
}

- (BOOL)supportsSpatialAudio
{
  if (supportsSpatialAudio_onceToken != -1)
  {
    [AXAirPodSettingsManager supportsSpatialAudio];
  }

  return supportsSpatialAudio_SupportsSpatialAudio;
}

uint64_t __47__AXAirPodSettingsManager_supportsSpatialAudio__block_invoke()
{
  result = MGIsDeviceOneOfType();
  supportsSpatialAudio_SupportsSpatialAudio = result ^ 1;
  return result;
}

- (BOOL)pairedAirPodsSupportSpatialAudio
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  pairedAirPods = [(AXAirPodSettingsManager *)self pairedAirPods];
  v3 = [pairedAirPods countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(pairedAirPods);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 vendorId] != 76 || objc_msgSend(v7, "productId") != 8203)
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v4 = [pairedAirPods countByEnumeratingWithState:&v10 objects:v14 count:16];
      v8 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (int64_t)_pairedProductsFlags
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  pairedAirPods = [(AXAirPodSettingsManager *)self pairedAirPods];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AXAirPodSettingsManager__pairedProductsFlags__block_invoke;
  v5[3] = &unk_1E71EA6D8;
  v5[4] = &v6;
  [pairedAirPods enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __47__AXAirPodSettingsManager__pairedProductsFlags__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 productId] == 8206 || objc_msgSend(v5, "productId") == 8202 || objc_msgSend(v5, "productId") == 8211 || objc_msgSend(v5, "productId") == 8212 || objc_msgSend(v5, "productId") == 8228 || objc_msgSend(v5, "productId") == 8217 || objc_msgSend(v5, "productId") == 8219 || objc_msgSend(v5, "productId") == 8222 || objc_msgSend(v5, "productId") == 8231 || objc_msgSend(v5, "productId") == 8223)
  {
    v3 = 1;
LABEL_12:
    *(*(*(a1 + 32) + 8) + 24) |= v3;
    goto LABEL_13;
  }

  if (AXIsBeatsProductId(v5))
  {
    v3 = 2;
    goto LABEL_12;
  }

LABEL_13:

  return MEMORY[0x1EEE66BB8]();
}

- (id)titleForSettings
{
  v3 = AXAirPodsLocalizedStringForKey(@"AirPodTitle");
  _pairedProductsFlags = [(AXAirPodSettingsManager *)self _pairedProductsFlags];
  if ((_pairedProductsFlags & 2) != 0)
  {
    if (_pairedProductsFlags)
    {
      v5 = @"AirPodTitleBoth";
    }

    else
    {
      v5 = @"AirPodTitleBeats";
    }

    v6 = AXAirPodsB494LocalizedStringForKey(v5);

    v3 = v6;
  }

  return v3;
}

- (id)titleAndAssetNameForSettings
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = AXAirPodsLocalizedStringForKey(@"AirPodTitle");
  _pairedProductsFlags = [(AXAirPodSettingsManager *)self _pairedProductsFlags];
  v5 = @"airpods";
  if ((_pairedProductsFlags & 2) != 0)
  {
    v6 = (_pairedProductsFlags & 1) == 0;
    if (_pairedProductsFlags)
    {
      v7 = @"AirPodTitleBoth";
    }

    else
    {
      v7 = @"AirPodTitleBeats";
    }

    if (v6)
    {
      v5 = @"beats";
    }

    v8 = AXAirPodsB494LocalizedStringForKey(v7);

    v3 = v8;
  }

  v11[0] = v3;
  v11[1] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  return v9;
}

- (id)disambiguationString
{
  v3 = AXAirPodsLocalizedStringForKey(@"AirPodSelection");
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  pairedAirPods = [(AXAirPodSettingsManager *)self pairedAirPods];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__AXAirPodSettingsManager_disambiguationString__block_invoke;
  v8[3] = &unk_1E71EA700;
  v8[4] = &v13;
  v8[5] = &v9;
  [pairedAirPods enumerateObjectsUsingBlock:v8];

  if (*(v10 + 24) == 1)
  {
    if (*(v14 + 24))
    {
      v5 = @"AirPodSelectionBoth";
    }

    else
    {
      v5 = @"AirPodSelectionBeats";
    }

    v6 = AXAirPodsB494LocalizedStringForKey(v5);

    v3 = v6;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v3;
}

uint64_t __47__AXAirPodSettingsManager_disambiguationString__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 productId] == 8206 || objc_msgSend(v5, "productId") == 8202 || objc_msgSend(v5, "productId") == 8211 || objc_msgSend(v5, "productId") == 8212 || objc_msgSend(v5, "productId") == 8228 || objc_msgSend(v5, "productId") == 8217 || objc_msgSend(v5, "productId") == 8219 || objc_msgSend(v5, "productId") == 8222 || objc_msgSend(v5, "productId") == 8231 || objc_msgSend(v5, "productId") == 8223)
  {
    v3 = 32;
LABEL_12:
    *(*(*(a1 + v3) + 8) + 24) = 1;
    goto LABEL_13;
  }

  if (AXIsBeatsProductId(v5))
  {
    v3 = 40;
    goto LABEL_12;
  }

LABEL_13:

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isAirPodProduct:(id)product
{
  productCopy = product;
  v4 = [productCopy vendorId] == 76 && (objc_msgSend(productCopy, "productId") == 8206 || objc_msgSend(productCopy, "productId") == 8202 || objc_msgSend(productCopy, "productId") == 8211 || objc_msgSend(productCopy, "productId") == 8212 || objc_msgSend(productCopy, "productId") == 8228 || objc_msgSend(productCopy, "productId") == 8217 || objc_msgSend(productCopy, "productId") == 8219 || objc_msgSend(productCopy, "productId") == 8222 || objc_msgSend(productCopy, "productId") == 8231 || objc_msgSend(productCopy, "productId") == 8223);

  return v4;
}

- (id)_deviceWithDeviceAddress:(id)address
{
  addressCopy = address;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  pairedAirPods = [(AXAirPodSettingsManager *)self pairedAirPods];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__AXAirPodSettingsManager__deviceWithDeviceAddress___block_invoke;
  v9[3] = &unk_1E71EA728;
  v6 = addressCopy;
  v10 = v6;
  v11 = &v12;
  [pairedAirPods enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__AXAirPodSettingsManager__deviceWithDeviceAddress___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 address];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)_supportsCapability:(int)capability forDeviceAddress:(id)address capabilityName:(id)name
{
  v6 = *&capability;
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v9 = [(AXAirPodSettingsManager *)self _deviceWithDeviceAddress:address];
  v10 = [v9 getAACPCapabilityInteger:v6];
  connected = [v9 connected];
  v12 = AXLogAirPodSettings();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:connected];
    v17 = 138413058;
    v18 = nameCopy;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_18B15E000, v12, OS_LOG_TYPE_DEFAULT, "BT Device has AACP Capability %@: %@ = %@ and connected %@", &v17, 0x2Au);
  }

  if (v10)
  {
    v15 = connected;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)supportsTapSpeedForDeviceAddress:(id)address
{
  selfCopy = self;
  v4 = [(AXAirPodSettingsManager *)self _deviceWithDeviceAddress:address];
  LOBYTE(selfCopy) = [(AXAirPodSettingsManager *)selfCopy isAirPodProduct:v4];

  return selfCopy;
}

- (void)setTapSpeed:(float)speed forDeviceAddress:(id)address
{
  addressCopy = address;
  _AXSSetAirPodsTapSpeed();
  *&v6 = speed;
  [(AXAirPodSettingsManager *)self nps_setTapSpeed:addressCopy forDeviceAddress:v6];
}

- (BOOL)supportsNoiseCancellationEnabledForDeviceAddress:(id)address
{
  v3 = [(AXAirPodSettingsManager *)self _deviceWithDeviceAddress:address];
  v4 = [v3 vendorId] == 76 && (objc_msgSend(v3, "productId") == 8206 || objc_msgSend(v3, "productId") == 8210 || objc_msgSend(v3, "productId") == 8212 || objc_msgSend(v3, "productId") == 8228 || objc_msgSend(v3, "productId") == 8219 || objc_msgSend(v3, "productId") == 8231 || objc_msgSend(v3, "productId") == 8221 || objc_msgSend(v3, "productId") == 8239);

  return v4;
}

- (void)setNoiseCancellationEnabledWithOneUnit:(BOOL)unit forDeviceAddress:(id)address
{
  unitCopy = unit;
  v13 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v7 = AXLogAirPodSettings();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:unitCopy];
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = addressCopy;
    _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_DEFAULT, "Setting noise cancellation with one bud enabled: %@ for: %@", &v9, 0x16u);
  }

  _AXSSetAirPodsNoiseCancellationWithOneUnit();
  [(AXAirPodSettingsManager *)self nps_setNoiseCancellationEnabledWithOneUnit:unitCopy forDeviceAddress:addressCopy];
}

- (BOOL)_supportsCaseTonesForDeviceAddress:(id)address
{
  if (!address)
  {
    return 0;
  }

  v3 = [(NSMutableDictionary *)self->_deviceInfo objectForKey:?];
  v4 = [v3 objectForKey:@"CaseTonesKey"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCaseTonesForDeviceAddress:(id)address
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(AXAirPodSettingsManager *)self _deviceWithDeviceAddress:address];
  v5 = -[AXAirPodSettingsManager _supportsCaseTonesForProductID:](self, "_supportsCaseTonesForProductID:", [v4 productId]);
  connected = [v4 connected];
  v7 = AXLogAirPodSettings();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:connected];
    v11 = 138412802;
    v12 = v4;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_DEFAULT, "BT Device supports Case Tones: %@ = %@ and connected %@", &v11, 0x20u);
  }

  return connected & v5;
}

- (void)setCaseTonesEnabled:(BOOL)enabled forDeviceAddress:(id)address
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v7 = AXLogAirPodSettings();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = addressCopy;
    _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_DEFAULT, "Setting case tones enabled %@ for %@", &v9, 0x16u);
  }

  _AXSSetHeadsetCaseTonesEnabled();
  [(AXAirPodSettingsManager *)self nps_setCaseTonesEnabled:enabledCopy forDeviceAddress:addressCopy];
}

- (BOOL)_supportsCaseTonesVolumeForDeviceAddress:(id)address
{
  v19 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  if (addressCopy)
  {
    v5 = [(NSMutableDictionary *)self->_deviceInfo objectForKey:addressCopy];
    v6 = [v5 objectForKey:@"CaseTonesKey"];
    bOOLValue = [v6 BOOLValue];

    v8 = [v5 objectForKey:@"CaseTonesVolumeKey"];
    bOOLValue2 = [v8 BOOLValue];

    v10 = AXLogAirPodSettings();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = addressCopy;
      v15 = 1024;
      v16 = bOOLValue;
      v17 = 1024;
      v18 = bOOLValue2;
      _os_log_impl(&dword_18B15E000, v10, OS_LOG_TYPE_DEFAULT, "BT Device has AACP Capability Case Tones Volume: %@ = %d, %d", &v13, 0x18u);
    }

    v11 = bOOLValue & bOOLValue2;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)supportsCaseTonesVolumeForDeviceAddress:(id)address
{
  addressCopy = address;
  if ([(AXAirPodSettingsManager *)self supportsCaseTonesForDeviceAddress:addressCopy])
  {
    v5 = [(AXAirPodSettingsManager *)self _supportsCapability:51 forDeviceAddress:addressCopy capabilityName:@"Case Tones Volume"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)caseTonesVolumeForDeviceAddress:(id)address
{
  addressCopy = address;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 headsetCaseTonesVolumeForDeviceAddress:addressCopy];

  return v5;
}

- (void)setCaseTonesVolume:(unsigned int)volume forDeviceAddress:(id)address
{
  v4 = *&volume;
  v15 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v7 = AXLogAirPodSettings();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = addressCopy;
    _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_DEFAULT, "Setting case tones volume %@ for %@", &v11, 0x16u);
  }

  v9 = +[AXSettings sharedInstance];
  [v9 setHeadsetCaseTonesVolume:v4 forDeviceAddress:addressCopy];

  *&v10 = v4;
  [(AXAirPodSettingsManager *)self nps_setCaseTonesVolume:addressCopy forDeviceAddress:v10];
}

- (void)setToneVolume:(unsigned int)volume forDeviceAddress:(id)address
{
  v4 = *&volume;
  v14 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v7 = AXLogAirPodSettings();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = addressCopy;
    _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_DEFAULT, "Setting tone volume %@ for %@", &v10, 0x16u);
  }

  _AXSSetAirPodsToneVolume();
  *&v9 = v4;
  [(AXAirPodSettingsManager *)self nps_setToneVolume:addressCopy forDeviceAddress:v9];
}

- (BOOL)supportsHoldDurationForDeviceAddress:(id)address
{
  selfCopy = self;
  v4 = [(AXAirPodSettingsManager *)self _deviceWithDeviceAddress:address];
  LOBYTE(selfCopy) = [(AXAirPodSettingsManager *)selfCopy isAirPodProduct:v4];

  return selfCopy;
}

- (void)setHoldDuration:(float)duration forDeviceAddress:(id)address
{
  addressCopy = address;
  _AXSSetAirPodsHoldDuration();
  *&v6 = duration;
  [(AXAirPodSettingsManager *)self nps_setHoldDuration:addressCopy forDeviceAddress:v6];
}

- (BOOL)supportsVolumeSwipeForDeviceAddress:(id)address
{
  v3 = [(AXAirPodSettingsManager *)self _deviceWithDeviceAddress:address];
  v4 = [v3 vendorId] == 76 && (objc_msgSend(v3, "productId") == 8212 || objc_msgSend(v3, "productId") == 8228 || objc_msgSend(v3, "productId") == 8231);

  return v4;
}

- (void)setVolumeSwipeEnabled:(BOOL)enabled forDeviceAddress:(id)address
{
  enabledCopy = enabled;
  addressCopy = address;
  _AXSSetAirPodsVolumeSwipeEnabled();
  [(AXAirPodSettingsManager *)self nps_setVolumeSwipeEnabled:enabledCopy forDeviceAddress:addressCopy];
}

- (void)setVolumeSwipeDuration:(float)duration forDeviceAddress:(id)address
{
  addressCopy = address;
  _AXSSetAirPodsVolumeSwipeDuration();
  *&v6 = duration;
  [(AXAirPodSettingsManager *)self nps_setVolumeSwipeDuration:addressCopy forDeviceAddress:v6];
}

- (BOOL)supportsSpatialAudioForDeviceAddress:(id)address
{
  v3 = [(AXAirPodSettingsManager *)self _deviceWithDeviceAddress:address];
  v4 = [v3 vendorId] != 76 || objc_msgSend(v3, "productId") != 8203 && objc_msgSend(v3, "productId") != 8230 && objc_msgSend(v3, "productId") != 8218;

  return v4;
}

- (id)accessibilityDomainAccessor
{
  mEMORY[0x1E69B36C0] = [MEMORY[0x1E69B36C0] sharedInstance];
  getActivePairedDevice = [mEMORY[0x1E69B36C0] getActivePairedDevice];

  if (getActivePairedDevice && ([getActivePairedDevice valueForProperty:*MEMORY[0x1E69B35D8]], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLValue"), v4, (v5 & 1) == 0))
  {
    v7 = objc_alloc(MEMORY[0x1E69B3588]);
    v6 = [v7 initWithDomain:*MEMORY[0x1E69E4BB0] pairedDevice:getActivePairedDevice];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_nps_airPodsDictionaryForPreference:(id)preference
{
  preferenceCopy = preference;
  accessibilityDomainAccessor = [(AXAirPodSettingsManager *)self accessibilityDomainAccessor];
  synchronize = [accessibilityDomainAccessor synchronize];
  v7 = [accessibilityDomainAccessor dictionaryForKey:preferenceCopy];

  return v7;
}

- (void)_nps_updateAirPodsDictionaryForPreference:(id)preference deviceAddress:(id)address value:(id)value
{
  v30 = *MEMORY[0x1E69E9840];
  preferenceCopy = preference;
  addressCopy = address;
  valueCopy = value;
  v11 = AXLogAirPodSettings();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v25 = addressCopy;
    v26 = 2112;
    v27 = preferenceCopy;
    v28 = 2112;
    v29 = valueCopy;
    _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_INFO, "[NPS] Updating device %@, %@ => %@", buf, 0x20u);
  }

  if ([preferenceCopy length] && (v12 = objc_msgSend(addressCopy, "length"), valueCopy) && v12)
  {
    accessibilityDomainAccessor = [(AXAirPodSettingsManager *)self accessibilityDomainAccessor];
    if (accessibilityDomainAccessor)
    {
      v14 = [(AXAirPodSettingsManager *)self _nps_airPodsDictionaryForPreference:preferenceCopy];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dictionary = [v14 mutableCopy];
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      v16 = dictionary;
      [dictionary setObject:valueCopy forKeyedSubscript:addressCopy];
      [accessibilityDomainAccessor setObject:v16 forKey:preferenceCopy];
      synchronize = [accessibilityDomainAccessor synchronize];
      v18 = objc_opt_new();
      domain = [accessibilityDomainAccessor domain];
      v20 = MEMORY[0x1E695DFD8];
      v23 = preferenceCopy;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      v22 = [v20 setWithArray:v21];
      [v18 synchronizeNanoDomain:domain keys:v22];
    }

    else
    {
      v16 = AXLogAirPodSettings();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_18B15E000, v16, OS_LOG_TYPE_INFO, "[NPS] No domain accessor!", buf, 2u);
      }
    }
  }

  else
  {
    accessibilityDomainAccessor = AXLogAirPodSettings();
    if (os_log_type_enabled(accessibilityDomainAccessor, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18B15E000, accessibilityDomainAccessor, OS_LOG_TYPE_INFO, "[NPS] invalid parameters!", buf, 2u);
    }
  }
}

- (float)nps_tapSpeedForDeviceAddress:(id)address
{
  v4 = *MEMORY[0x1E69E4C18];
  addressCopy = address;
  v6 = [(AXAirPodSettingsManager *)self _nps_airPodsDictionaryForPreference:v4];
  v7 = [v6 objectForKeyedSubscript:addressCopy];

  v8 = 0.25;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      v8 = v9;
    }
  }

  return v8;
}

- (void)nps_setTapSpeed:(float)speed forDeviceAddress:(id)address
{
  v6 = *MEMORY[0x1E69E4C18];
  v7 = MEMORY[0x1E696AD98];
  addressCopy = address;
  *&v9 = speed;
  v10 = [v7 numberWithFloat:v9];
  [(AXAirPodSettingsManager *)self _nps_updateAirPodsDictionaryForPreference:v6 deviceAddress:addressCopy value:v10];
}

- (BOOL)nps_noiseCancellationEnabledWithOneUnitForDeviceAddress:(id)address
{
  v4 = *MEMORY[0x1E69E4BF8];
  addressCopy = address;
  v6 = [(AXAirPodSettingsManager *)self _nps_airPodsDictionaryForPreference:v4];
  v7 = [v6 objectForKeyedSubscript:addressCopy];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)nps_setNoiseCancellationEnabledWithOneUnit:(BOOL)unit forDeviceAddress:(id)address
{
  unitCopy = unit;
  v6 = *MEMORY[0x1E69E4BF8];
  v7 = MEMORY[0x1E696AD98];
  addressCopy = address;
  v9 = [v7 numberWithBool:unitCopy];
  [(AXAirPodSettingsManager *)self _nps_updateAirPodsDictionaryForPreference:v6 deviceAddress:addressCopy value:v9];
}

- (float)nps_holdDurationForDeviceAddress:(id)address
{
  v4 = *MEMORY[0x1E69E4BE8];
  addressCopy = address;
  v6 = [(AXAirPodSettingsManager *)self _nps_airPodsDictionaryForPreference:v4];
  v7 = [v6 objectForKeyedSubscript:addressCopy];

  v8 = 0.5;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      v8 = v9;
    }
  }

  return v8;
}

- (void)nps_setHoldDuration:(float)duration forDeviceAddress:(id)address
{
  v6 = *MEMORY[0x1E69E4BE8];
  v7 = MEMORY[0x1E696AD98];
  addressCopy = address;
  *&v9 = duration;
  v10 = [v7 numberWithFloat:v9];
  [(AXAirPodSettingsManager *)self _nps_updateAirPodsDictionaryForPreference:v6 deviceAddress:addressCopy value:v10];
}

- (unsigned)nps_defaultToneVolumeForDeviceAddress:(id)address
{
  v4 = *MEMORY[0x1E69E4BD8];
  addressCopy = address;
  v6 = [(AXAirPodSettingsManager *)self _nps_airPodsDictionaryForPreference:v4];
  v7 = [v6 objectForKeyedSubscript:addressCopy];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v7 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 80;
  }

  return unsignedIntValue;
}

- (float)nps_toneVolumeForDeviceAddress:(id)address
{
  v4 = *MEMORY[0x1E69E4C10];
  addressCopy = address;
  v6 = [(AXAirPodSettingsManager *)self _nps_airPodsDictionaryForPreference:v4];
  v7 = [v6 objectForKeyedSubscript:addressCopy];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = 80.0;
  }

  return v9;
}

- (void)nps_setToneVolume:(float)volume forDeviceAddress:(id)address
{
  v6 = *MEMORY[0x1E69E4C10];
  v7 = MEMORY[0x1E696AD98];
  addressCopy = address;
  *&v9 = volume;
  v10 = [v7 numberWithFloat:v9];
  [(AXAirPodSettingsManager *)self _nps_updateAirPodsDictionaryForPreference:v6 deviceAddress:addressCopy value:v10];
}

- (BOOL)nps_volumeSwipeEnabledForDeviceAddress:(id)address
{
  v4 = *MEMORY[0x1E69E4C38];
  addressCopy = address;
  v6 = [(AXAirPodSettingsManager *)self _nps_airPodsDictionaryForPreference:v4];
  v7 = [v6 objectForKeyedSubscript:addressCopy];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)nps_setVolumeSwipeEnabled:(BOOL)enabled forDeviceAddress:(id)address
{
  enabledCopy = enabled;
  v6 = *MEMORY[0x1E69E4C38];
  v7 = MEMORY[0x1E696AD98];
  addressCopy = address;
  v9 = [v7 numberWithBool:enabledCopy];
  [(AXAirPodSettingsManager *)self _nps_updateAirPodsDictionaryForPreference:v6 deviceAddress:addressCopy value:v9];
}

- (float)nps_volumeSwipeDurationForDeviceAddress:(id)address
{
  v4 = *MEMORY[0x1E69E4C28];
  addressCopy = address;
  v6 = [(AXAirPodSettingsManager *)self _nps_airPodsDictionaryForPreference:v4];
  v7 = [v6 objectForKeyedSubscript:addressCopy];

  v8 = 0.5;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      v8 = v9;
    }
  }

  return v8;
}

- (void)nps_setVolumeSwipeDuration:(float)duration forDeviceAddress:(id)address
{
  v6 = *MEMORY[0x1E69E4C28];
  v7 = MEMORY[0x1E696AD98];
  addressCopy = address;
  *&v9 = duration;
  v10 = [v7 numberWithFloat:v9];
  [(AXAirPodSettingsManager *)self _nps_updateAirPodsDictionaryForPreference:v6 deviceAddress:addressCopy value:v10];
}

- (BOOL)nps_caseTonesEnabledForDeviceAddress:(id)address
{
  addressCopy = address;
  if (!addressCopy)
  {
    goto LABEL_6;
  }

  v5 = +[AXSettings sharedInstance];
  headsetCaseTonesEnabledPreference = [v5 headsetCaseTonesEnabledPreference];
  v7 = [(AXAirPodSettingsManager *)self _nps_airPodsDictionaryForPreference:headsetCaseTonesEnabledPreference];

  v8 = [v7 objectForKeyedSubscript:addressCopy];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_6:
    v7 = +[AXSettings sharedInstance];
    headsetCaseTonesEnabledDefaultValue = [v7 headsetCaseTonesEnabledDefaultValue];
    goto LABEL_7;
  }

  headsetCaseTonesEnabledDefaultValue = [v8 BOOLValue];

LABEL_7:
  return headsetCaseTonesEnabledDefaultValue;
}

- (void)nps_setCaseTonesEnabled:(BOOL)enabled forDeviceAddress:(id)address
{
  enabledCopy = enabled;
  addressCopy = address;
  v9 = +[AXSettings sharedInstance];
  headsetCaseTonesEnabledPreference = [v9 headsetCaseTonesEnabledPreference];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [(AXAirPodSettingsManager *)self _nps_updateAirPodsDictionaryForPreference:headsetCaseTonesEnabledPreference deviceAddress:addressCopy value:v8];
}

- (float)nps_caseTonesVolumeForDeviceAddress:(id)address
{
  addressCopy = address;
  if (!addressCopy)
  {
    goto LABEL_6;
  }

  v5 = +[AXSettings sharedInstance];
  headsetCaseTonesVolumePreference = [v5 headsetCaseTonesVolumePreference];
  v7 = [(AXAirPodSettingsManager *)self _nps_airPodsDictionaryForPreference:headsetCaseTonesVolumePreference];

  v8 = [v7 objectForKeyedSubscript:addressCopy];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_6:
    v7 = +[AXAirPodSettingsManager sharedInstance];
    v10 = [v7 defaultCaseTonesVolumeForDeviceAddress:addressCopy];
    goto LABEL_7;
  }

  [v8 floatValue];
  v10 = v9;

LABEL_7:
  return v10;
}

- (void)nps_setCaseTonesVolume:(float)volume forDeviceAddress:(id)address
{
  addressCopy = address;
  v10 = +[AXSettings sharedInstance];
  headsetCaseTonesVolumePreference = [v10 headsetCaseTonesVolumePreference];
  *&v8 = volume;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(AXAirPodSettingsManager *)self _nps_updateAirPodsDictionaryForPreference:headsetCaseTonesVolumePreference deviceAddress:addressCopy value:v9];
}

- (void)_serviceEventForDevice:(BTDeviceImpl *)device serviceMask:(unsigned int)mask eventType:(int)type specificEvent:(unsigned int)event result:(int)result
{
  delayTimer = self->_delayTimer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__AXAirPodSettingsManager__serviceEventForDevice_serviceMask_eventType_specificEvent_result___block_invoke;
  v8[3] = &unk_1E71E9B98;
  v8[4] = self;
  [(AXDispatchTimer *)delayTimer afterDelay:v8 processBlock:*&mask, *&type, *&event, *&result, 0.5];
}

- (void)_accessoryEventForManager:(BTAccessoryManagerImpl *)manager event:(int)event device:(BTDeviceImpl *)device state:(int)state
{
  delayTimer = self->_delayTimer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__AXAirPodSettingsManager__accessoryEventForManager_event_device_state___block_invoke;
  v7[3] = &unk_1E71E9B98;
  v7[4] = self;
  [(AXDispatchTimer *)delayTimer afterDelay:v7 processBlock:*&event, device, *&state, 0.5];
}

uint64_t __72__AXAirPodSettingsManager__accessoryEventForManager_event_device_state___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) _probeAccessories];
  v2 = AXLogAirPodSettings();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __72__AXAirPodSettingsManager__accessoryEventForManager_event_device_state___block_invoke_cold_1(v1, v2);
  }

  return [*v1 _retrieveSettingsFromDevices:*(*v1 + 7)];
}

- (void)_sessionEventForSession:(BTSessionImpl *)session event:(int)event result:(int)result
{
  if ((event - 1) >= 3)
  {
    if (event)
    {
      return;
    }

    v9 = SWCHLogHW();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B15E000, v9, OS_LOG_TYPE_DEFAULT, "BTSession attached.", buf, 2u);
    }

    if (!result)
    {
      [(AXAirPodSettingsManager *)self _didConnectWithSession:session];
      return;
    }

    goto LABEL_10;
  }

  v7 = SWCHLogHW();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_DEFAULT, "BTSession detached.", v10, 2u);
  }

  if (self->_session == session)
  {
LABEL_10:
    [(AXAirPodSettingsManager *)self _didDisconnect];
  }
}

- (void)_didConnectWithSession:(BTSessionImpl *)session
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = AXLogAirPodSettings();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = session;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "Connecting to BT session for AirPod settings: %d", buf, 8u);
  }

  if (!self->_session)
  {
    self->_session = session;
    BTAccessoryManagerGetDefault();
    BTLocalDeviceGetDefault();
    v11 = 0;
    v12 = 0;
    v13 = 0;
    *buf = accessoryEventCallback;
    BTAccessoryManagerAddCallbacks();
    BTServiceAddCallbacks();
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AXAirPodSettingsManager__didConnectWithSession___block_invoke;
    block[3] = &unk_1E71E9B98;
    block[4] = self;
    dispatch_async(queue, block);
    readyBlock = [(AXAirPodSettingsManager *)self readyBlock];

    if (readyBlock)
    {
      readyBlock2 = [(AXAirPodSettingsManager *)self readyBlock];
      dispatch_async(MEMORY[0x1E69E96A0], readyBlock2);
    }
  }
}

- (void)_didDisconnect
{
  [(NSMutableSet *)self->_deviceMap removeAllObjects];
  [(NSMutableDictionary *)self->_deviceInfo removeAllObjects];
  if (self->_session)
  {
    BTServiceRemoveCallbacks();
    BTSessionDetachWithQueue();
    self->_session = 0;
  }

  AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t __41__AXAirPodSettingsManager__didDisconnect__block_invoke(uint64_t a1)
{
  v2 = AXLogAirPodSettings();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B15E000, v2, OS_LOG_TYPE_DEFAULT, "BT disconnected, restarting session", v4, 2u);
  }

  return [*(a1 + 32) start];
}

- (void)_probeAccessories
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "BTLocalDeviceGetConnectedDevices failed: %d", v2, 8u);
}

- (void)_saveDeviceInfoForAddress:(id)address productID:(unsigned int)d bluetoothDevice:(BTDeviceImpl *)device
{
  v5 = *&d;
  v20[2] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  if (addressCopy)
  {
    if ([(AXAirPodSettingsManager *)self _supportsCaseTonesForProductID:v5])
    {
      AACPCapabilityInteger = BTAccessoryManagerGetAACPCapabilityInteger();
      v19[0] = @"CaseTonesKey";
      v19[1] = @"CaseTonesVolumeKey";
      v20[0] = MEMORY[0x1E695E118];
      v9 = [MEMORY[0x1E696AD98] numberWithBool:0];
      v20[1] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

      [(NSMutableDictionary *)self->_deviceInfo setValue:v10 forKey:addressCopy];
      v11 = AXLogAirPodSettings();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [MEMORY[0x1E696AD98] numberWithInt:AACPCapabilityInteger];
        *buf = 138412802;
        v14 = addressCopy;
        v15 = 1024;
        v16 = 0;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_DEFAULT, "BT Device has AACP Capability Case Tones Volume: %@ = %d, result: %@", buf, 0x1Cu);
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_deviceInfo removeObjectForKey:addressCopy];
    }
  }
}

- (void)_retrieveSettingsFromDevices:(id)devices
{
  v14 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [devicesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(devicesCopy);
        }

        [(AXAirPodSettingsManager *)self _retrieveSettingsForAddress:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [devicesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_applySettings
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(NSMutableSet *)self->_deviceMap count])
  {
    v3 = AXLogAirPodSettings();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_DEFAULT, "Trying to apply settings, but no devices, so probing immediately", buf, 2u);
    }

    [(AXAirPodSettingsManager *)self _probeAccessories];
  }

  v4 = AXLogAirPodSettings();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    deviceMap = self->_deviceMap;
    *buf = 138412290;
    v17 = deviceMap;
    _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_DEFAULT, "Applying airpod settings to: %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_deviceMap;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AXAirPodSettingsManager *)self _applySettingsForAddress:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_retrieveSettingsForAddress:(id)address
{
  v37 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  [addressCopy UTF8String];
  BTDeviceAddressFromString();
  if (!BTDeviceFromAddress())
  {
    [(AXAirPodSettingsManager *)self setIgnoreSettingNotifications:1];
    ControlCommand = BTAccessoryManagerGetControlCommand();
    if (ControlCommand)
    {
      v7 = ControlCommand;
      v8 = AXLogAirPodSettings();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v35 = v7;
        *&v35[4] = 2112;
        *&v35[6] = addressCopy;
        *&v35[14] = 1024;
        *&v35[16] = 0;
        _os_log_error_impl(&dword_18B15E000, v8, OS_LOG_TYPE_ERROR, "could not get click speed [%d] for air pods: %@ -> [%d]", buf, 0x18u);
      }
    }

    else
    {
      _AXSAirPodsTapSpeed();
      if (v9 != 0.25)
      {
        _AXSSetAirPodsTapSpeed();
      }

      v8 = AXLogAirPodSettings();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v35 = addressCopy;
        *&v35[8] = 1024;
        *&v35[10] = 0;
        _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_DEFAULT, "retrieved click speed for air pods: %@ -> [%d]", buf, 0x12u);
      }
    }

    if (BTAccessoryManagerGetControlCommand())
    {
      v10 = AXLogAirPodSettings();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AXAirPodSettingsManager _retrieveSettingsForAddress:];
      }
    }

    else
    {
      v10 = AXLogAirPodSettings();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AXAirPodSettingsManager _retrieveSettingsForAddress:];
      }
    }

    v11 = BTAccessoryManagerGetControlCommand();
    if (v11)
    {
      v12 = v11;
      v13 = AXLogAirPodSettings();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v35 = v12;
        *&v35[4] = 2112;
        *&v35[6] = addressCopy;
        *&v35[14] = 1024;
        *&v35[16] = 0;
        _os_log_error_impl(&dword_18B15E000, v13, OS_LOG_TYPE_ERROR, "could not get hold duration [%d] for air pods: %@ -> [%d]", buf, 0x18u);
      }
    }

    else
    {
      _AXSAirPodsHoldDuration();
      if (v14 != 0.5)
      {
        _AXSSetAirPodsHoldDuration();
      }

      v13 = AXLogAirPodSettings();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v35 = addressCopy;
        *&v35[8] = 1024;
        *&v35[10] = 0;
        _os_log_impl(&dword_18B15E000, v13, OS_LOG_TYPE_DEFAULT, "retrieved hold duration for air pods: %@ -> [%d]", buf, 0x12u);
      }
    }

    v15 = BTAccessoryManagerGetControlCommand();
    if (v15)
    {
      v16 = v15;
      v17 = AXLogAirPodSettings();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v35 = v16;
        *&v35[4] = 2112;
        *&v35[6] = addressCopy;
        *&v35[14] = 1024;
        *&v35[16] = 2;
        _os_log_error_impl(&dword_18B15E000, v17, OS_LOG_TYPE_ERROR, "could not get one bud mode[%d]: %@ -> %d", buf, 0x18u);
      }
    }

    else
    {
      if (_AXSAirPodsNoiseCancellationWithOneUnit())
      {
        _AXSSetAirPodsNoiseCancellationWithOneUnit();
      }

      v17 = AXLogAirPodSettings();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v35 = addressCopy;
        *&v35[8] = 1024;
        *&v35[10] = 2;
        _os_log_impl(&dword_18B15E000, v17, OS_LOG_TYPE_DEFAULT, "retrieved one bud noise cancel for air pods: %@ -> [%d]", buf, 0x12u);
      }
    }

    v18 = BTAccessoryManagerGetControlCommand();
    if (v18)
    {
      v20 = AXLogAirPodSettings();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v35 = v18;
        *&v35[4] = 2112;
        *&v35[6] = addressCopy;
        *&v35[14] = 1024;
        *&v35[16] = 2;
        _os_log_error_impl(&dword_18B15E000, v20, OS_LOG_TYPE_ERROR, "could not get volume swipe mode[%d]: %@ -> %d", buf, 0x18u);
      }
    }

    else
    {
      v19 = 2;
      if (_AXSAirPodsVolumeSwipeEnabled() != (v19 == 1))
      {
        _AXSSetAirPodsVolumeSwipeEnabled();
      }

      v20 = AXLogAirPodSettings();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v35 = addressCopy;
        *&v35[8] = 1024;
        *&v35[10] = 2;
        _os_log_impl(&dword_18B15E000, v20, OS_LOG_TYPE_DEFAULT, "retrieved volume swipe enabled for air pods: %@ -> [%d]", buf, 0x12u);
      }
    }

    v21 = BTAccessoryManagerGetControlCommand();
    if (v21)
    {
      v22 = v21;
      v23 = AXLogAirPodSettings();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v35 = v22;
        *&v35[4] = 2112;
        *&v35[6] = addressCopy;
        *&v35[14] = 1024;
        *&v35[16] = 0;
        _os_log_error_impl(&dword_18B15E000, v23, OS_LOG_TYPE_ERROR, "could not get volume swipe duration [%d] for air pods: %@ -> [%d]", buf, 0x18u);
      }
    }

    else
    {
      _AXSAirPodsVolumeSwipeDuration();
      if (v24 != 0.5)
      {
        _AXSSetAirPodsVolumeSwipeDuration();
      }

      v23 = AXLogAirPodSettings();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v35 = addressCopy;
        *&v35[8] = 1024;
        *&v35[10] = 0;
        _os_log_impl(&dword_18B15E000, v23, OS_LOG_TYPE_DEFAULT, "retrieved volume swipe duration for air pods: %@ -> [%d]", buf, 0x12u);
      }
    }

    if (![(AXAirPodSettingsManager *)self _supportsCaseTonesForDeviceAddress:addressCopy])
    {
      goto LABEL_57;
    }

    HIDWORD(v33) = 2;
    v25 = BTAccessoryManagerGetControlCommand();
    if (v25)
    {
      v27 = AXLogAirPodSettings();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v35 = v25;
        *&v35[4] = 2112;
        *&v35[6] = addressCopy;
        *&v35[14] = 1024;
        *&v35[16] = 2;
        _os_log_error_impl(&dword_18B15E000, v27, OS_LOG_TYPE_ERROR, "could not get case tones mode[%d]: %@ -> %d, ignoring case tones volume", buf, 0x18u);
      }
    }

    else
    {
      if (_AXSHeadsetCaseTonesEnabled())
      {
        _AXSSetHeadsetCaseTonesEnabled();
      }

      v26 = AXLogAirPodSettings();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v35 = addressCopy;
        *&v35[8] = 1024;
        *&v35[10] = 0;
        _os_log_impl(&dword_18B15E000, v26, OS_LOG_TYPE_DEFAULT, "retrieved case tones enabled for beats: %@ -> [%d]", buf, 0x12u);
      }

      if (![(AXAirPodSettingsManager *)self _supportsCaseTonesVolumeForDeviceAddress:addressCopy])
      {
        goto LABEL_57;
      }

      LODWORD(v33) = 0;
      if (BTAccessoryManagerGetControlCommand())
      {
        v27 = AXLogAirPodSettings();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [AXAirPodSettingsManager _retrieveSettingsForAddress:];
        }
      }

      else
      {
        v28 = +[AXSettings sharedInstance];
        v29 = [v28 headsetCaseTonesVolumeForDeviceAddress:addressCopy];

        if (v29)
        {
          v30 = +[AXSettings sharedInstance];
          [v30 setHeadsetCaseTonesVolume:0 forDeviceAddress:addressCopy];
        }

        v27 = AXLogAirPodSettings();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
          v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v29];
          *buf = 138412802;
          *v35 = addressCopy;
          *&v35[8] = 2112;
          *&v35[10] = v31;
          *&v35[18] = 2112;
          v36 = v32;
          _os_log_impl(&dword_18B15E000, v27, OS_LOG_TYPE_DEFAULT, "retrieved case tones volume for air pods: %@ -> [%@], previous: %@", buf, 0x20u);
        }
      }
    }

LABEL_57:
    [(AXAirPodSettingsManager *)self setIgnoreSettingNotifications:0, v33];
    goto LABEL_58;
  }

  v5 = AXLogAirPodSettings();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AXAirPodSettingsManager _retrieveSettingsForAddress:];
  }

LABEL_58:
}

- (void)_applySettingsForAddress:(id)address
{
  v68 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v5 = AXLogAirPodSettings();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v59 = addressCopy;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "Applying AirPod settings for %@", buf, 0xCu);
  }

  WORD2(v57) = 0;
  LODWORD(v57) = 0;
  [addressCopy UTF8String];
  BTDeviceAddressFromString();
  v56 = 0;
  if (BTDeviceFromAddress())
  {
    v6 = AXLogAirPodSettings();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXAirPodSettingsManager _retrieveSettingsForAddress:];
    }

LABEL_6:

    goto LABEL_85;
  }

  v7 = _AXSAirPodsToneVolume();
  v8 = _AXSAirPodsDefaultToneVolume();
  v9 = v7 | (v8 << 8);
  v10 = BTAccessoryManagerSendControlCommand();
  v11 = AXLogAirPodSettings();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{v9, 0, v57}];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
    *buf = 138413058;
    *v59 = v12;
    *&v59[8] = 2112;
    *&v59[10] = v13;
    *&v59[18] = 2112;
    *&v59[20] = v14;
    v60 = 2112;
    v61 = addressCopy;
    _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_DEFAULT, "Set tone volume: %@ (%@/%@) on %@", buf, 0x2Au);
  }

  if (v10)
  {
    v15 = AXLogAirPodSettings();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(AXAirPodSettingsManager *)addressCopy _applySettingsForAddress:v9];
    }
  }

  _AXSAirPodsTapSpeed();
  v17 = v16;
  if (fabs(v16 + -0.25) < 0.001)
  {
    goto LABEL_14;
  }

  if (fabs(v17 + -0.45) >= 0.001)
  {
    if (fabs(v17 + -0.65) >= 0.001)
    {
LABEL_14:
      v18 = 0;
      goto LABEL_19;
    }

    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

LABEL_19:
  v19 = BTAccessoryManagerSendControlCommand();
  v20 = AXLogAirPodSettings();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *v59 = v17;
    *&v59[8] = 1024;
    *&v59[10] = v18;
    *&v59[14] = 2112;
    *&v59[16] = addressCopy;
    _os_log_impl(&dword_18B15E000, v20, OS_LOG_TYPE_DEFAULT, "Set click speed: [%f > %d] on %@", buf, 0x1Cu);
  }

  if (v19)
  {
    v21 = AXLogAirPodSettings();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v59 = addressCopy;
      *&v59[8] = 2048;
      *&v59[10] = v17;
      *&v59[18] = 1024;
      *&v59[20] = v18;
      _os_log_error_impl(&dword_18B15E000, v21, OS_LOG_TYPE_ERROR, "could not set click speed for air pods: %@ -> [%f > %d]", buf, 0x1Cu);
    }
  }

  _AXSAirPodsHoldDuration();
  v23 = v22;
  if (fabs(v22 + -0.5) < 0.001)
  {
    goto LABEL_26;
  }

  if (fabs(v23 + -0.4) >= 0.001)
  {
    if (fabs(v23 + -0.35) >= 0.001)
    {
LABEL_26:
      v24 = 0;
      goto LABEL_31;
    }

    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

LABEL_31:
  v25 = BTAccessoryManagerSendControlCommand();
  v26 = AXLogAirPodSettings();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v59 = v24;
    *&v59[4] = 2112;
    *&v59[6] = addressCopy;
    _os_log_impl(&dword_18B15E000, v26, OS_LOG_TYPE_DEFAULT, "Set hold duration mode: %d on %@", buf, 0x12u);
  }

  if (v25)
  {
    v27 = AXLogAirPodSettings();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v59 = addressCopy;
      *&v59[8] = 2048;
      *&v59[10] = v23;
      *&v59[18] = 1024;
      *&v59[20] = v24;
      _os_log_error_impl(&dword_18B15E000, v27, OS_LOG_TYPE_ERROR, "could not set hold duration for air pods: %@ -> [%f > %d]", buf, 0x1Cu);
    }
  }

  v28 = _AXSAirPodsNoiseCancellationWithOneUnit();
  if (v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  v30 = AXLogAirPodSettings();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v59 = v28;
    *&v59[4] = 1024;
    *&v59[6] = v29;
    *&v59[10] = 2112;
    *&v59[12] = addressCopy;
    _os_log_impl(&dword_18B15E000, v30, OS_LOG_TYPE_DEFAULT, "Set noise cancellation with one bud, enabled: %d, BT value: %d on %@", buf, 0x18u);
  }

  if (BTAccessoryManagerSendControlCommand())
  {
    v31 = AXLogAirPodSettings();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [AXAirPodSettingsManager _applySettingsForAddress:];
    }
  }

  v32 = _AXSAirPodsVolumeSwipeEnabled();
  if (v32)
  {
    v33 = 1;
  }

  else
  {
    v33 = 2;
  }

  v34 = AXLogAirPodSettings();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v33];
    *buf = 138412290;
    *v59 = v35;
    _os_log_impl(&dword_18B15E000, v34, OS_LOG_TYPE_DEFAULT, "Set volume swipe enabled: %@", buf, 0xCu);
  }

  if (BTAccessoryManagerSendControlCommand())
  {
    v36 = AXLogAirPodSettings();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [AXAirPodSettingsManager _applySettingsForAddress:];
    }
  }

  _AXSAirPodsVolumeSwipeDuration();
  v38 = v37;
  if (fabs(v37 + -0.5) < 0.001)
  {
    goto LABEL_56;
  }

  if (fabs(v38 + -0.4) >= 0.001)
  {
    if (fabs(v38 + -0.35) >= 0.001)
    {
LABEL_56:
      v39 = 0;
      goto LABEL_61;
    }

    v39 = 2;
  }

  else
  {
    v39 = 1;
  }

LABEL_61:
  v40 = BTAccessoryManagerSendControlCommand();
  v41 = AXLogAirPodSettings();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v59 = v39;
    *&v59[4] = 2112;
    *&v59[6] = addressCopy;
    _os_log_impl(&dword_18B15E000, v41, OS_LOG_TYPE_DEFAULT, "Set volume swipe duration mode: %d on %@", buf, 0x12u);
  }

  if (v40)
  {
    v42 = AXLogAirPodSettings();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v59 = addressCopy;
      *&v59[8] = 2048;
      *&v59[10] = v38;
      *&v59[18] = 1024;
      *&v59[20] = v39;
      _os_log_error_impl(&dword_18B15E000, v42, OS_LOG_TYPE_ERROR, "could not set volume swipe duration for air pods: %@ -> [%f > %d]", buf, 0x1Cu);
    }
  }

  v43 = AXLogAirPodSettings();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v29];
    *buf = 138413826;
    *v59 = addressCopy;
    *&v59[8] = 2048;
    *&v59[10] = v17;
    *&v59[18] = 2048;
    *&v59[20] = v23;
    v60 = 2112;
    v61 = v44;
    v62 = 1024;
    v63 = v28;
    v64 = 1024;
    v65 = v32;
    v66 = 2048;
    v67 = v38;
    _os_log_impl(&dword_18B15E000, v43, OS_LOG_TYPE_DEFAULT, "Set click and hold speed for AirPods: %@ [click %f, hold %f, ANC: (BT:%@, setting:%d)] Vol Swipe [%d, %lf]", buf, 0x40u);
  }

  if ([(AXAirPodSettingsManager *)self _supportsCaseTonesForDeviceAddress:addressCopy])
  {
    v45 = _AXSHeadsetCaseTonesEnabled();
    if (v45)
    {
      v46 = 1;
    }

    else
    {
      v46 = 2;
    }

    v47 = AXLogAirPodSettings();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v45];
      v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v46];
      *buf = 138412546;
      *v59 = v48;
      *&v59[8] = 2112;
      *&v59[10] = v49;
      _os_log_impl(&dword_18B15E000, v47, OS_LOG_TYPE_DEFAULT, "Set case tones enabled: %@, BT value: %@", buf, 0x16u);
    }

    if (BTAccessoryManagerSendControlCommand())
    {
      v50 = AXLogAirPodSettings();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        [AXAirPodSettingsManager _applySettingsForAddress:];
      }
    }

    if ([(AXAirPodSettingsManager *)self _supportsCaseTonesVolumeForDeviceAddress:addressCopy, v56])
    {
      v51 = +[AXSettings sharedInstance];
      v52 = [v51 headsetCaseTonesVolumeForDeviceAddress:addressCopy];

      v53 = BTAccessoryManagerSendControlCommand();
      v54 = AXLogAirPodSettings();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v52];
        *buf = 138412546;
        *v59 = v55;
        *&v59[8] = 2112;
        *&v59[10] = addressCopy;
        _os_log_impl(&dword_18B15E000, v54, OS_LOG_TYPE_DEFAULT, "Set case tones volume: %@ on %@", buf, 0x16u);
      }

      if (v53)
      {
        v6 = AXLogAirPodSettings();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [(AXAirPodSettingsManager *)addressCopy _applySettingsForAddress:v52];
        }

        goto LABEL_6;
      }
    }
  }

LABEL_85:
}

- (id)initSharedInstance
{
  v12.receiver = self;
  v12.super_class = AXAirPodSettingsManager;
  v2 = [(AXAirPodSettingsManager *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deviceMap = v2->_deviceMap;
    v2->_deviceMap = v3;

    v5 = objc_opt_new();
    deviceInfo = v2->_deviceInfo;
    v2->_deviceInfo = v5;

    v7 = dispatch_queue_create("airpod-bt-monitor-queue", 0);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = [objc_alloc(MEMORY[0x1E6988780]) initWithTargetSerialQueue:v2->_queue];
    delayTimer = v2->_delayTimer;
    v2->_delayTimer = v9;

    [(AXDispatchTimer *)v2->_delayTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return v2;
}

- (void)startWithCallback:(id)callback
{
  [(AXAirPodSettingsManager *)self setReadyBlock:callback];
  v17 = sessionEventCallback;
  if (BTSessionAttachWithQueue())
  {
    v3 = AXLogAirPodSettings();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AXAirPodSettingsManager startWithCallback:v3];
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _prefChangedCallback, *MEMORY[0x1E69E4C00], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, 0, _prefChangedCallback, *MEMORY[0x1E69E4BE0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, 0, _prefChangedCallback, *MEMORY[0x1E69E4BF0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v7, 0, _prefChangedCallback, *MEMORY[0x1E69E4C08], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v8, 0, _prefChangedCallback, *MEMORY[0x1E69E4BD0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v9, 0, _prefChangedCallback, *MEMORY[0x1E69E4C30], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v10, 0, _prefChangedCallback, *MEMORY[0x1E69E4C20], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v11, 0, _prefChangedCallback, *MEMORY[0x1E69E4D88], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v12 = CFNotificationCenterGetDarwinNotifyCenter();
  v13 = +[AXSettings sharedInstance];
  headsetCaseTonesVolumeChangedNotification = [v13 headsetCaseTonesVolumeChangedNotification];
  CFNotificationCenterAddObserver(v12, 0, _prefChangedCallback, headsetCaseTonesVolumeChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v15 = AXLogAirPodSettings();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_INFO, "Listening for AirPods and Beats", v16, 2u);
  }
}

- (void)dealloc
{
  if (self->_session)
  {
    BTSessionDetachWithQueue();
  }

  v3.receiver = self;
  v3.super_class = AXAirPodSettingsManager;
  [(AXAirPodSettingsManager *)&v3 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXAirPodSettingsManager sharedInstance];
  }

  v3 = sharedInstance_shared;

  return v3;
}

uint64_t __41__AXAirPodSettingsManager_sharedInstance__block_invoke()
{
  sharedInstance_shared = [[AXAirPodSettingsManager alloc] initSharedInstance];

  return MEMORY[0x1EEE66BB8]();
}

void __72__AXAirPodSettingsManager__accessoryEventForManager_event_device_state___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 56);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_18B15E000, a2, OS_LOG_TYPE_DEBUG, "Will retrieve Settings from devices: %@", &v3, 0xCu);
}

- (void)_retrieveSettingsForAddress:.cold.3()
{
  v0 = [MEMORY[0x1E696AD98] numberWithInt:0];
  OUTLINED_FUNCTION_2(&dword_18B15E000, v1, v2, "default tone volume is not valid [%@] for air pods: %@", v3, v4, v5, v6, 2u);
}

- (void)_applySettingsForAddress:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_18B15E000, v3, v4, "could not set tone volume for air pods: %@ -> [%@]", v5, v6, v7, v8, v9);
}

- (void)_applySettingsForAddress:(uint64_t)a1 .cold.6(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_18B15E000, v3, v4, "could not set case tones volume for headset: %@ -> [%@]", v5, v6, v7, v8, v9);
}

@end
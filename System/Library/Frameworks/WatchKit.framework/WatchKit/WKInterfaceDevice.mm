@interface WKInterfaceDevice
+ (id)currentDevice;
- (BOOL)addCachedImage:(id)a3 name:(id)a4;
- (BOOL)addCachedImageWithData:(id)a3 name:(id)a4;
- (CGRect)screenBounds;
- (NSDictionary)cachedImages;
- (NSString)localizedModel;
- (NSString)model;
- (NSString)name;
- (NSString)systemName;
- (NSString)systemVersion;
- (void)name;
- (void)removeAllCachedImages;
- (void)removeCachedImageWithName:(id)a3;
- (void)systemName;
- (void)systemVersion;
@end

@implementation WKInterfaceDevice

+ (id)currentDevice
{
  if (currentDevice_onceToken != -1)
  {
    +[WKInterfaceDevice currentDevice];
  }

  v3 = currentDevice___currentDevice;

  return v3;
}

void __34__WKInterfaceDevice_currentDevice__block_invoke()
{
  v0 = objc_alloc_init(WKInterfaceDevice);
  v1 = currentDevice___currentDevice;
  currentDevice___currentDevice = v0;

  v2 = [getNRPairedDeviceRegistryClass() sharedInstance];
  v3 = [v2 getDevices];
  v4 = [v3 firstObject];

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v5 = getNRDevicePropertyMainScreenWidthSymbolLoc_ptr;
  v35 = getNRDevicePropertyMainScreenWidthSymbolLoc_ptr;
  if (!getNRDevicePropertyMainScreenWidthSymbolLoc_ptr)
  {
    v6 = NanoRegistryLibrary();
    v33[3] = dlsym(v6, "NRDevicePropertyMainScreenWidth");
    getNRDevicePropertyMainScreenWidthSymbolLoc_ptr = v33[3];
    v5 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v5)
  {
    __34__WKInterfaceDevice_currentDevice__block_invoke_cold_5();
  }

  v7 = [v4 valueForProperty:*v5];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v8 = getNRDevicePropertyMainScreenHeightSymbolLoc_ptr;
  v35 = getNRDevicePropertyMainScreenHeightSymbolLoc_ptr;
  if (!getNRDevicePropertyMainScreenHeightSymbolLoc_ptr)
  {
    v9 = NanoRegistryLibrary();
    v33[3] = dlsym(v9, "NRDevicePropertyMainScreenHeight");
    getNRDevicePropertyMainScreenHeightSymbolLoc_ptr = v33[3];
    v8 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v8)
  {
    __34__WKInterfaceDevice_currentDevice__block_invoke_cold_4();
  }

  v10 = [v4 valueForProperty:*v8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v11 = getNRDevicePropertyScreenScaleSymbolLoc_ptr;
  v35 = getNRDevicePropertyScreenScaleSymbolLoc_ptr;
  if (!getNRDevicePropertyScreenScaleSymbolLoc_ptr)
  {
    v12 = NanoRegistryLibrary();
    v33[3] = dlsym(v12, "NRDevicePropertyScreenScale");
    getNRDevicePropertyScreenScaleSymbolLoc_ptr = v33[3];
    v11 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v11)
  {
    __34__WKInterfaceDevice_currentDevice__block_invoke_cold_3();
  }

  v13 = [v4 valueForProperty:*v11];
  v14 = v13;
  if (v13)
  {
    [v13 floatValue];
    v16 = v15;
  }

  else
  {
    v16 = 2.0;
  }

  [currentDevice___currentDevice setScreenScale:v16];
  v17 = MEMORY[0x277CBF348];
  if (v7)
  {
    [v7 floatValue];
    v19 = v18;
    [currentDevice___currentDevice screenScale];
    v21 = v19 / v20;
  }

  else
  {
    v21 = 156.0;
  }

  v22 = *v17;
  v23 = v17[1];
  v24 = 195.0;
  if (v10)
  {
    [v10 floatValue];
    v26 = v25;
    [currentDevice___currentDevice screenScale];
    v24 = v26 / v27;
  }

  [currentDevice___currentDevice setScreenBounds:{v22, v23, v21, v24}];
  [currentDevice___currentDevice screenBounds];
  if (v28 < 195.0)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v29 = getUIContentSizeCategorySmallSymbolLoc_ptr;
    v35 = getUIContentSizeCategorySmallSymbolLoc_ptr;
    if (!getUIContentSizeCategorySmallSymbolLoc_ptr)
    {
      v31 = UIKitLibrary();
      v33[3] = dlsym(v31, "UIContentSizeCategorySmall");
      getUIContentSizeCategorySmallSymbolLoc_ptr = v33[3];
      v29 = v33[3];
    }

    _Block_object_dispose(&v32, 8);
    if (!v29)
    {
      __34__WKInterfaceDevice_currentDevice__block_invoke_cold_1();
    }
  }

  else
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v29 = getUIContentSizeCategoryLargeSymbolLoc_ptr;
    v35 = getUIContentSizeCategoryLargeSymbolLoc_ptr;
    if (!getUIContentSizeCategoryLargeSymbolLoc_ptr)
    {
      v30 = UIKitLibrary();
      v33[3] = dlsym(v30, "UIContentSizeCategoryLarge");
      getUIContentSizeCategoryLargeSymbolLoc_ptr = v33[3];
      v29 = v33[3];
    }

    _Block_object_dispose(&v32, 8);
    if (!v29)
    {
      __34__WKInterfaceDevice_currentDevice__block_invoke_cold_2();
    }
  }

  [currentDevice___currentDevice setPreferredContentSizeCategory:*v29];
}

- (NSString)systemVersion
{
  deviceSystemVersion = self->_deviceSystemVersion;
  if (!deviceSystemVersion)
  {
    v4 = [getNRPairedDeviceRegistryClass() sharedInstance];
    v5 = [v4 getDevices];
    v6 = [v5 firstObject];

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v7 = getNRDevicePropertySystemVersionSymbolLoc_ptr;
    v16 = getNRDevicePropertySystemVersionSymbolLoc_ptr;
    if (!getNRDevicePropertySystemVersionSymbolLoc_ptr)
    {
      v8 = NanoRegistryLibrary();
      v14[3] = dlsym(v8, "NRDevicePropertySystemVersion");
      getNRDevicePropertySystemVersionSymbolLoc_ptr = v14[3];
      v7 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v7)
    {
      [WKInterfaceDevice systemVersion];
    }

    v9 = *v7;
    v10 = [v6 valueForProperty:v9];
    v11 = self->_deviceSystemVersion;
    self->_deviceSystemVersion = v10;

    deviceSystemVersion = self->_deviceSystemVersion;
  }

  return deviceSystemVersion;
}

- (NSString)name
{
  deviceName = self->_deviceName;
  if (!deviceName)
  {
    v4 = [getNRPairedDeviceRegistryClass() sharedInstance];
    v5 = [v4 getDevices];
    v6 = [v5 firstObject];

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v7 = getNRDevicePropertyNameSymbolLoc_ptr;
    v16 = getNRDevicePropertyNameSymbolLoc_ptr;
    if (!getNRDevicePropertyNameSymbolLoc_ptr)
    {
      v8 = NanoRegistryLibrary();
      v14[3] = dlsym(v8, "NRDevicePropertyName");
      getNRDevicePropertyNameSymbolLoc_ptr = v14[3];
      v7 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v7)
    {
      [WKInterfaceDevice name];
    }

    v9 = *v7;
    v10 = [v6 valueForProperty:v9];
    v11 = self->_deviceName;
    self->_deviceName = v10;

    deviceName = self->_deviceName;
  }

  return deviceName;
}

- (NSString)model
{
  deviceModel = self->_deviceModel;
  if (!deviceModel)
  {
    v4 = [getNRPairedDeviceRegistryClass() sharedInstance];
    v5 = [v4 getDevices];
    v6 = [v5 firstObject];

    v7 = getNRDevicePropertyLocalizedModel();
    v8 = [v6 valueForProperty:v7];
    v9 = self->_deviceModel;
    self->_deviceModel = v8;

    deviceModel = self->_deviceModel;
  }

  return deviceModel;
}

- (NSString)localizedModel
{
  deviceLocalizedModel = self->_deviceLocalizedModel;
  if (!deviceLocalizedModel)
  {
    v4 = [getNRPairedDeviceRegistryClass() sharedInstance];
    v5 = [v4 getDevices];
    v6 = [v5 firstObject];

    v7 = getNRDevicePropertyLocalizedModel();
    v8 = [v6 valueForProperty:v7];
    v9 = self->_deviceLocalizedModel;
    self->_deviceLocalizedModel = v8;

    deviceLocalizedModel = self->_deviceLocalizedModel;
  }

  return deviceLocalizedModel;
}

- (NSString)systemName
{
  deviceSystemName = self->_deviceSystemName;
  if (!deviceSystemName)
  {
    v4 = [getNRPairedDeviceRegistryClass() sharedInstance];
    v5 = [v4 getDevices];
    v6 = [v5 firstObject];

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v7 = getNRDevicePropertySystemNameSymbolLoc_ptr;
    v17 = getNRDevicePropertySystemNameSymbolLoc_ptr;
    if (!getNRDevicePropertySystemNameSymbolLoc_ptr)
    {
      v8 = NanoRegistryLibrary();
      v15[3] = dlsym(v8, "NRDevicePropertySystemName");
      getNRDevicePropertySystemNameSymbolLoc_ptr = v15[3];
      v7 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (!v7)
    {
      [WKInterfaceDevice systemName];
    }

    v9 = *v7;
    v10 = [v6 valueForProperty:v9];
    v11 = self->_deviceSystemName;
    self->_deviceSystemName = v10;

    if ([(NSString *)self->_deviceSystemName isEqualToString:@"Watch OS"])
    {
      v12 = self->_deviceSystemName;
      self->_deviceSystemName = @"watchOS";
    }

    deviceSystemName = self->_deviceSystemName;
  }

  return deviceSystemName;
}

- (BOOL)addCachedImage:(id)a3 name:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [SPRemoteInterface SerializablePropertyValue:a3];
    v7 = +[SPCompanionAssetCache sharedInstance];
    v8 = [v5 copy];
    v9 = [v7 addImageToPermanentCache:v6 withName:v8];
  }

  else
  {
    v10 = wk_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceDevice addCachedImage:name:];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)addCachedImageWithData:(id)a3 name:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = +[SPCompanionAssetCache sharedInstance];
    v8 = [v5 copy];
    v9 = [v6 copy];
    v10 = [v7 addImageToPermanentCache:v8 withName:v9];
  }

  else
  {
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceDevice addCachedImageWithData:name:];
    }

    v10 = 0;
  }

  return v10;
}

- (void)removeCachedImageWithName:(id)a3
{
  v3 = a3;
  v5 = +[SPCompanionAssetCache sharedInstance];
  v4 = [v3 copy];

  [v5 removeImageFromPermanentCacheWithName:v4];
}

- (void)removeAllCachedImages
{
  v2 = +[SPCompanionAssetCache sharedInstance];
  [v2 removeAllImagesFromPermanentCache];
}

- (NSDictionary)cachedImages
{
  v2 = +[SPCompanionAssetCache sharedInstance];
  v3 = [v2 cachedImages];

  return v3;
}

- (CGRect)screenBounds
{
  x = self->_screenBounds.origin.x;
  y = self->_screenBounds.origin.y;
  width = self->_screenBounds.size.width;
  height = self->_screenBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

void __34__WKInterfaceDevice_currentDevice__block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getUIContentSizeCategorySmall(void)"];
  [v0 handleFailureInFunction:v1 file:@"WKInterfaceDevice.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

void __34__WKInterfaceDevice_currentDevice__block_invoke_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getUIContentSizeCategoryLarge(void)"];
  [v0 handleFailureInFunction:v1 file:@"WKInterfaceDevice.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

void __34__WKInterfaceDevice_currentDevice__block_invoke_cold_3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertyScreenScale(void)"];
  [v0 handleFailureInFunction:v1 file:@"WKInterfaceDevice.m" lineNumber:43 description:{@"%s", dlerror()}];

  __break(1u);
}

void __34__WKInterfaceDevice_currentDevice__block_invoke_cold_4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertyMainScreenHeight(void)"];
  [v0 handleFailureInFunction:v1 file:@"WKInterfaceDevice.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

void __34__WKInterfaceDevice_currentDevice__block_invoke_cold_5()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertyMainScreenWidth(void)"];
  [v0 handleFailureInFunction:v1 file:@"WKInterfaceDevice.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)systemVersion
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertySystemVersion(void)"];
  [v0 handleFailureInFunction:v1 file:@"WKInterfaceDevice.m" lineNumber:44 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)name
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertyName(void)"];
  [v0 handleFailureInFunction:v1 file:@"WKInterfaceDevice.m" lineNumber:45 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)systemName
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertySystemName(void)"];
  [v0 handleFailureInFunction:v1 file:@"WKInterfaceDevice.m" lineNumber:47 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)addCachedImage:name:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 253;
  _os_log_error_impl(&dword_23B338000, v0, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error: WKInterfaceDevice, addCachedImageWithData - image is nil", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addCachedImageWithData:name:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 269;
  _os_log_error_impl(&dword_23B338000, v0, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error: WKInterfaceDevice addCachedImageWithData:name: - imageData is nil", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end
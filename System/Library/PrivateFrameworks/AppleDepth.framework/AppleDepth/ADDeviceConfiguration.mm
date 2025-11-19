@interface ADDeviceConfiguration
+ (BOOL)BOOLForKey:(id)a3;
+ (BOOL)deviceList:(id)a3 containsDeviceName:(id)a4;
+ (BOOL)hasLidarToColorIncreasedBaseline:(id)a3;
+ (double)doubleForKey:(id)a3;
+ (float)floatForKey:(id)a3;
+ (id)getDeviceName;
+ (id)getRealDeviceName;
+ (id)listForKey:(id)a3;
+ (id)numberForKey:(id)a3;
+ (id)preferencesWithDefaultValues:(id)a3;
+ (id)sharedConfiguration;
+ (id)stringForKey:(id)a3;
+ (int64_t)integerForKey:(id)a3;
+ (unint64_t)getLidarType:(id)a3;
+ (void)registerVerbosityConfigurationUpdate;
- (ADDeviceConfiguration)init;
@end

@implementation ADDeviceConfiguration

+ (id)getDeviceName
{
  v2 = +[ADDeviceConfiguration sharedConfiguration];
  v3 = [v2 stringForKey:kADDeviceConfigurationKeyOverrideDeviceName];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = +[ADDeviceConfiguration getRealDeviceName];
  }

  v5 = v4;

  return v5;
}

+ (id)getRealDeviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)sharedConfiguration
{
  v2 = +[ADDeviceConfiguration sharedConfiguration]::defaults;
  if (!+[ADDeviceConfiguration sharedConfiguration]::defaults)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__ADDeviceConfiguration_sharedConfiguration__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (+[ADDeviceConfiguration sharedConfiguration]::onceToken != -1)
    {
      dispatch_once(&+[ADDeviceConfiguration sharedConfiguration]::onceToken, block);
    }

    v2 = +[ADDeviceConfiguration sharedConfiguration]::defaults;
  }

  return v2;
}

- (ADDeviceConfiguration)init
{
  v15[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB68] null];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 bundleIdentifier];

  [v5 UTF8String];
  if (os_variant_allows_internal_security_policies())
  {
    v6 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 2uLL, 1);
    v7 = [v6 objectAtIndex:0];
    v8 = [v7 stringByAppendingPathComponent:v5];

    v3 = v8;
  }

  v14[0] = kADDeviceConfigurationKeyOverrideDeviceName;
  v9 = [MEMORY[0x277CBEB68] null];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = kADDeviceConfigurationKeyModelConfigurationFolder;
  v14[2] = kADDeviceConfigurationKeyVerboseLogs;
  v14[3] = kADDeviceConfigurationKeyWriteCoverage;
  v15[2] = MEMORY[0x277CBEC28];
  v15[3] = &unk_28524A860;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v13.receiver = self;
  v13.super_class = ADDeviceConfiguration;
  v11 = [(ADPreferences *)&v13 initWithDomain:kADDeviceConfigurationDomainName defaultValues:v10];

  return v11;
}

+ (id)preferencesWithDefaultValues:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CED108]);
  v5 = [v4 initWithDomain:kADDeviceConfigurationDomainName defaultValues:v3];

  return v5;
}

+ (id)listForKey:(id)a3
{
  v3 = a3;
  v4 = +[ADDeviceConfiguration sharedConfiguration];
  v5 = [v4 listForKey:v3];

  return v5;
}

+ (id)numberForKey:(id)a3
{
  v3 = a3;
  v4 = +[ADDeviceConfiguration sharedConfiguration];
  v5 = [v4 numberForKey:v3];

  return v5;
}

+ (id)stringForKey:(id)a3
{
  v3 = a3;
  v4 = +[ADDeviceConfiguration sharedConfiguration];
  v5 = [v4 stringForKey:v3];

  return v5;
}

+ (double)doubleForKey:(id)a3
{
  v3 = a3;
  v4 = +[ADDeviceConfiguration sharedConfiguration];
  [v4 doubleForKey:v3];
  v6 = v5;

  return v6;
}

+ (float)floatForKey:(id)a3
{
  v3 = a3;
  v4 = +[ADDeviceConfiguration sharedConfiguration];
  [v4 floatForKey:v3];
  v6 = v5;

  return v6;
}

+ (int64_t)integerForKey:(id)a3
{
  v3 = a3;
  v4 = +[ADDeviceConfiguration sharedConfiguration];
  v5 = [v4 integerForKey:v3];

  return v5;
}

+ (BOOL)BOOLForKey:(id)a3
{
  v3 = a3;
  v4 = +[ADDeviceConfiguration sharedConfiguration];
  v5 = [v4 BOOLForKey:v3];

  return v5;
}

+ (unint64_t)getLidarType:(id)a3
{
  v3 = a3;
  v4 = [v3 uppercaseString];

  if (!+[ADDeviceConfiguration getLidarType:]::supportedJasperDevices)
  {
    +[ADDeviceConfiguration getLidarType:]::supportedJasperDevices = &unk_28524AB60;
  }

  v5 = +[ADDeviceConfiguration getLidarType:]::supportedPeridotDevices;
  if (!+[ADDeviceConfiguration getLidarType:]::supportedPeridotDevices)
  {
    v5 = &unk_28524AB78;
    +[ADDeviceConfiguration getLidarType:]::supportedPeridotDevices = &unk_28524AB78;
  }

  if ([ADDeviceConfiguration deviceList:v5 containsDeviceName:v4])
  {
    v6 = 2;
  }

  else
  {
    v6 = +[ADDeviceConfiguration deviceList:containsDeviceName:](ADDeviceConfiguration, "deviceList:containsDeviceName:", +[ADDeviceConfiguration getLidarType:]::supportedJasperDevices, v4);
  }

  return v6;
}

+ (BOOL)hasLidarToColorIncreasedBaseline:(id)a3
{
  v3 = a3;
  v4 = +[ADDeviceConfiguration hasLidarToColorIncreasedBaseline:]::increasedBaselineDevices;
  if (!+[ADDeviceConfiguration hasLidarToColorIncreasedBaseline:]::increasedBaselineDevices)
  {
    v4 = &unk_28524AB48;
    +[ADDeviceConfiguration hasLidarToColorIncreasedBaseline:]::increasedBaselineDevices = &unk_28524AB48;
  }

  v5 = [ADDeviceConfiguration deviceList:v4 containsDeviceName:v3];

  return v5;
}

+ (BOOL)deviceList:(id)a3 containsDeviceName:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([v6 hasPrefix:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

+ (void)registerVerbosityConfigurationUpdate
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = +[ADDeviceConfiguration sharedConfiguration];
  v4[0] = kADDeviceConfigurationKeyVerboseLogs;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 registerUpdateHandlerForKeys:v3 invokeOnRegistration:1 scopeObject:0 handlerBlock:&__block_literal_global_4768];
}

void __61__ADDeviceConfiguration_registerVerbosityConfigurationUpdate__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v2 = +[ADDeviceConfiguration sharedConfiguration];
  v3 = [v2 BOOLForKey:v4];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = v3;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "setting verboseLogs: %d", buf, 8u);
  }

  ADDebugUtilsADVerboseLogsEnabled = v3;
}

void __44__ADDeviceConfiguration_sharedConfiguration__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = AppleDepthRuntimeVersionString;
    v3 = [objc_opt_class() getRealDeviceName];
    *buf = 138412546;
    v22 = v2;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Initializing default configuration for AppleDepth-%@ for device %@", buf, 0x16u);
  }

  v4 = objc_alloc_init(*(a1 + 32));
  v5 = +[ADDeviceConfiguration sharedConfiguration]::defaults;
  +[ADDeviceConfiguration sharedConfiguration]::defaults = v4;

  +[ADDeviceConfiguration registerVerbosityConfigurationUpdate];
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [objc_opt_class() getRealDeviceName];
    v8 = [v6 getLidarType:v7];
    *buf = 134217984;
    v22 = v8;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "lidar type: %lu", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 infoDictionary];
  v11 = [v10 objectForKeyedSubscript:@"BuildInformationString"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v11;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleDepth build information: %@", buf, 0xCu);
  }

  if (([(__CFString *)v11 hasSuffix:@"(AppleDepth-)"]& 1) != 0)
  {
    v12 = @"official";
  }

  else if ([(__CFString *)v11 isEqualToString:@"unknown"])
  {
    v12 = @"local build";
  }

  else
  {
    v12 = @"root";
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v12;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleDepth source: %@", buf, 0xCu);
  }

  v13 = [v9 bundleIdentifier];
  v14 = v13;
  [v13 UTF8String];
  v15 = os_variant_allows_internal_security_policies();

  if (v15)
  {
    [@"enforceModelSignatureChecks" UTF8String];
    os_parse_boot_arg_int();
    v16 = [(__CFString *)v12 isEqualToString:@"official"];
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v17)
      {
        *buf = 138412546;
        v22 = @"enforceModelSignatureChecks";
        v23 = 2112;
        v24 = @"not ";
        v18 = MEMORY[0x277D86220];
        v19 = "%@=0 is %@set";
        v20 = 22;
LABEL_21:
        _os_log_impl(&dword_2402F6000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
      }
    }

    else if (v17)
    {
      *buf = 138412290;
      v22 = @"enforceModelSignatureChecks";
      v18 = MEMORY[0x277D86220];
      v19 = "Missing required boot-arg: %@=0";
      v20 = 12;
      goto LABEL_21;
    }
  }
}

@end
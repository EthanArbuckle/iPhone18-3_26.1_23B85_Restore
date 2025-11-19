@interface ADCoreDeviceConfiguration
+ (id)sharedConfiguration;
+ (void)registerVerbosityConfigurationUpdate;
- (ADCoreDeviceConfiguration)init;
@end

@implementation ADCoreDeviceConfiguration

- (ADCoreDeviceConfiguration)init
{
  v10[4] = *MEMORY[0x277D85DE8];
  v10[0] = MEMORY[0x277CBEC28];
  v9[0] = kADCoreDeviceConfigurationKeyVerboseLogs;
  v9[1] = kADCoreDeviceConfigurationKeyJasperPerformanceOverridePath;
  v3 = [MEMORY[0x277CBEB68] null];
  v10[1] = v3;
  v9[2] = kADCoreDeviceConfigurationKeyJasperPerformanceEmulatedDevice;
  v4 = [MEMORY[0x277CBEB68] null];
  v9[3] = kADCoreDeviceConfigurationKeyWriteCoverage;
  v10[2] = v4;
  v10[3] = &unk_2852520B8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v8.receiver = self;
  v8.super_class = ADCoreDeviceConfiguration;
  v6 = [(ADPreferences *)&v8 initWithDomain:@"com.apple.AppleDepthCore" defaultValues:v5];

  return v6;
}

+ (void)registerVerbosityConfigurationUpdate
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = +[ADCoreDeviceConfiguration sharedConfiguration];
  v4[0] = kADCoreDeviceConfigurationKeyVerboseLogs;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 registerUpdateHandlerForKeys:v3 invokeOnRegistration:1 scopeObject:0 handlerBlock:&__block_literal_global_750];
}

void __65__ADCoreDeviceConfiguration_registerVerbosityConfigurationUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[ADCoreDeviceConfiguration sharedConfiguration];
  ADDebugUtils::setVerboseLogsEnabled([v2 BOOLForKey:v3]);
}

+ (id)sharedConfiguration
{
  v2 = +[ADCoreDeviceConfiguration sharedConfiguration]::defaults;
  if (!+[ADCoreDeviceConfiguration sharedConfiguration]::defaults)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ADCoreDeviceConfiguration_sharedConfiguration__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (+[ADCoreDeviceConfiguration sharedConfiguration]::onceToken != -1)
    {
      dispatch_once(&+[ADCoreDeviceConfiguration sharedConfiguration]::onceToken, block);
    }

    v2 = +[ADCoreDeviceConfiguration sharedConfiguration]::defaults;
  }

  return v2;
}

uint64_t __48__ADCoreDeviceConfiguration_sharedConfiguration__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = +[ADCoreDeviceConfiguration sharedConfiguration]::defaults;
  +[ADCoreDeviceConfiguration sharedConfiguration]::defaults = v1;

  return +[ADCoreDeviceConfiguration registerVerbosityConfigurationUpdate];
}

@end
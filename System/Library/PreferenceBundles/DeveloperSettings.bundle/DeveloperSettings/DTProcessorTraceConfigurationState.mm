@interface DTProcessorTraceConfigurationState
+ (DTProcessorTraceConfigurationState)shared;
- (BOOL)setBufferEnabled:(BOOL)a3;
- (DTProcessorTraceConfigurationState)init;
- (void)dealloc;
@end

@implementation DTProcessorTraceConfigurationState

+ (DTProcessorTraceConfigurationState)shared
{
  if (qword_49E80 != -1)
  {
    sub_26ADC();
  }

  v3 = qword_49E78;

  return v3;
}

- (DTProcessorTraceConfigurationState)init
{
  v15.receiver = self;
  v15.super_class = DTProcessorTraceConfigurationState;
  v2 = [(DTProcessorTraceConfigurationState *)&v15 init];
  if (!v2)
  {
LABEL_14:
    v6 = v2;
    goto LABEL_15;
  }

  v3 = IOServiceMatching("AppleProcessorTraceNub");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  v5 = MatchingService;
  if (!MatchingService)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_26B38();
    }

    goto LABEL_9;
  }

  if (!IOServiceOpen(MatchingService, mach_task_self_, 0, &v2->_connect))
  {
    CFProperty = IORegistryEntryCreateCFProperty(v5, @"AllocatedBufferSize", kCFAllocatorDefault, 0);
    v8 = IORegistryEntryCreateCFProperty(v5, @"DeviceCapabilities", kCFAllocatorDefault, 0);
    v9 = [v8 objectForKeyedSubscript:@"ProductionTrace"];
    v10 = [v8 objectForKeyedSubscript:@"DevelopmentTrace"];
    if ([v9 BOOLValue])
    {
      v11 = 1;
    }

    else
    {
      v11 = [v10 BOOLValue];
    }

    v2->_hardwareSupported = v11;
    v2->_hardwareConfigured = [CFProperty unsignedLongLongValue] != 0;
    v12 = [v8 objectForKeyedSubscript:@"FeatureFlags"];
    v13 = [v12 unsignedIntegerValue];
    v2->_supportsStreaming = (v13 & 8) != 0;
    v2->_supportsVirtualBuffer = (v13 & 4) != 0;
    IOObjectRelease(v5);

    goto LABEL_14;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_26AF0();
  }

  IOObjectRelease(v5);
LABEL_9:
  v6 = 0;
LABEL_15:

  return v6;
}

- (void)dealloc
{
  IOServiceClose(self->_connect);
  v3.receiver = self;
  v3.super_class = DTProcessorTraceConfigurationState;
  [(DTProcessorTraceConfigurationState *)&v3 dealloc];
}

- (BOOL)setBufferEnabled:(BOOL)a3
{
  v5 = 0;
  v6 = -1;
  if (a3)
  {
    v3 = &v6;
  }

  else
  {
    v3 = &v5;
  }

  return IOConnectCallScalarMethod(self->_connect, 8u, v3, 1u, 0, 0) == 0;
}

@end
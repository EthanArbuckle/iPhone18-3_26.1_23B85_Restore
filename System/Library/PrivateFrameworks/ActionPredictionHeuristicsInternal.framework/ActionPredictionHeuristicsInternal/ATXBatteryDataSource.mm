@interface ATXBatteryDataSource
- (ATXBatteryDataSource)initWithDevice:(id)device;
- (void)batteryInformationWithCallback:(id)callback;
@end

@implementation ATXBatteryDataSource

- (ATXBatteryDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXBatteryDataSource;
  v6 = [(ATXBatteryDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)batteryInformationWithCallback:(id)callback
{
  v7 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  IOPSCopyPowerSourcesByTypePrecise();
  v4 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXBatteryDataSource batteryInformationWithCallback:v4];
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:4 userInfo:0];
  callbackCopy[2](callbackCopy, 0, v5);

  v6 = *MEMORY[0x277D85DE8];
}

@end
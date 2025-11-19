@interface ATXBatteryDataSource
- (ATXBatteryDataSource)initWithDevice:(id)a3;
- (void)batteryInformationWithCallback:(id)a3;
@end

@implementation ATXBatteryDataSource

- (ATXBatteryDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXBatteryDataSource;
  v6 = [(ATXBatteryDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)batteryInformationWithCallback:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  IOPSCopyPowerSourcesByTypePrecise();
  v4 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXBatteryDataSource batteryInformationWithCallback:v4];
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:4 userInfo:0];
  v3[2](v3, 0, v5);

  v6 = *MEMORY[0x277D85DE8];
}

@end
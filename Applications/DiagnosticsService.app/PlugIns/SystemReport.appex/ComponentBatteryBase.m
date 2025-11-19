@interface ComponentBatteryBase
- (id)generatePowerSourceData;
@end

@implementation ComponentBatteryBase

- (id)generatePowerSourceData
{
  v9[0] = @"serviceBatteryWarning";
  v9[1] = @"serviceBatteryFlags";
  v10[0] = &off_1000C8E10;
  v10[1] = &off_1000C8E10;
  v9[2] = @"maximumCapacityPercent";
  v10[2] = &off_1000C8E10;
  v2 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v3 = IOPSCopyPowerSourcesByTypePrecise();
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    v8 = v3;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Could not retrieve power sources info. Error code: %03X", buf, 8u);
  }

  v5 = v2;

  return v5;
}

@end
@interface FMDBluetoothFrameworkBTManagingFactory
+ (BOOL)isAutomationActive;
+ (id)bluetoothManagerWithQueue:(id)queue delegate:(id)delegate;
@end

@implementation FMDBluetoothFrameworkBTManagingFactory

+ (BOOL)isAutomationActive
{
  if (qword_100028D20 != -1)
  {
    sub_10000D21C();
  }

  v2 = sub_100003BEC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_100028D18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAutomationBluetoothManager: isAutomationActive: %d", v4, 8u);
  }

  return byte_100028D18;
}

+ (id)bluetoothManagerWithQueue:(id)queue delegate:(id)delegate
{
  delegateCopy = delegate;
  if (+[FMDBluetoothFrameworkBTManagingFactory isAutomationActive])
  {
    if (qword_100028D30 != -1)
    {
      sub_10000D230();
    }

    [qword_100028D28 setBluetoothManager:delegateCopy];
    v5 = qword_100028D28;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
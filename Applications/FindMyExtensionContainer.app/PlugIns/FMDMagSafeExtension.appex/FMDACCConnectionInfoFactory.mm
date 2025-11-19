@interface FMDACCConnectionInfoFactory
+ (BOOL)isAutomationActive;
+ (id)connectionInfo;
@end

@implementation FMDACCConnectionInfoFactory

+ (BOOL)isAutomationActive
{
  if (qword_100030B20 != -1)
  {
    sub_10001540C();
  }

  v2 = sub_1000011D8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_100030B18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDACCConnectionInfoFactory: isAutomationActive: %d", v4, 8u);
  }

  return byte_100030B18;
}

+ (id)connectionInfo
{
  if (+[FMDACCConnectionInfoFactory isAutomationActive])
  {
    if (qword_100030B30 != -1)
    {
      sub_100015420();
    }

    v2 = qword_100030B28;
  }

  else
  {
    v2 = +[ACCConnectionInfo sharedInstance];
  }

  return v2;
}

@end
@interface FMDACCConnectionInfoFactory
+ (BOOL)isAutomationActive;
+ (id)connectionInfo;
@end

@implementation FMDACCConnectionInfoFactory

+ (BOOL)isAutomationActive
{
  if (qword_100045F38 != -1)
  {
    sub_10001E8CC();
  }

  v2 = sub_10000EE80();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_100045F30;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDACCConnectionInfoFactory: isAutomationActive: %d", v4, 8u);
  }

  return byte_100045F30;
}

+ (id)connectionInfo
{
  if (+[FMDACCConnectionInfoFactory isAutomationActive])
  {
    if (qword_100045F48 != -1)
    {
      sub_10001E8E0();
    }

    v2 = qword_100045F40;
  }

  else
  {
    v2 = +[ACCConnectionInfo sharedInstance];
  }

  return v2;
}

@end
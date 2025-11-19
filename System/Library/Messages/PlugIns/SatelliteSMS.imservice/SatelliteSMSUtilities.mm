@interface SatelliteSMSUtilities
+ (OS_os_log)logger;
@end

@implementation SatelliteSMSUtilities

+ (OS_os_log)logger
{
  if (qword_19310[0] != -1)
  {
    sub_BC4C();
  }

  v3 = qword_19308;

  return v3;
}

@end
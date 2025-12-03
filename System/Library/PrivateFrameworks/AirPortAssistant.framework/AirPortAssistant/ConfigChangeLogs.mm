@interface ConfigChangeLogs
+ (int)writeConfigChangeLog:(_BaseStation *)log;
@end

@implementation ConfigChangeLogs

+ (int)writeConfigChangeLog:(_BaseStation *)log
{
  if (log)
  {
    return 0;
  }

  else
  {
    return -6705;
  }
}

@end
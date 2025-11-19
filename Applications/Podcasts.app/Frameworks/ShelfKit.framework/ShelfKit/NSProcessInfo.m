@interface NSProcessInfo
+ (double)ask_processStartTime;
@end

@implementation NSProcessInfo

+ (double)ask_processStartTime
{
  if (ask_processStartTime_onceToken != -1)
  {
    +[NSProcessInfo(LaunchTime) ask_processStartTime];
  }

  return *&ask_processStartTime_processStartTime;
}

void __49__NSProcessInfo_LaunchTime__ask_processStartTime__block_invoke(id a1)
{
  *v5 = 0xE00000001;
  v6 = 1;
  v7 = getpid();
  memset(v4, 0, 512);
  v3 = 648;
  if (sysctl(v5, 4u, v4, &v3, 0, 0))
  {
    v1 = +[NSDate date];
    [v1 timeIntervalSince1970];
    ask_processStartTime_processStartTime = v2;
  }

  else
  {
    *&ask_processStartTime_processStartTime = SDWORD2(v4[0]) / 1000000.0 + *&v4[0];
  }
}

@end
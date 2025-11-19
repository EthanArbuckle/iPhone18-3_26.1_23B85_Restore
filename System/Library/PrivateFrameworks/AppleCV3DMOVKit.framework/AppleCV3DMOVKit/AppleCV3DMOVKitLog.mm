@interface AppleCV3DMOVKitLog
+ (BOOL)debugEnabled;
+ (OS_os_log)defaultLog;
+ (void)recheckDebugEnabled;
@end

@implementation AppleCV3DMOVKitLog

+ (void)recheckDebugEnabled
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AppleCV3DMOVKit.framework"];
  byte_27E3C84D0 = [v2 BOOLForKey:@"DEBUG_LOG"];

  objc_sync_exit(obj);
}

+ (BOOL)debugEnabled
{
  if (qword_27E3C84D8 != -1)
  {
    sub_24019CA88();
  }

  return byte_27E3C84D0;
}

+ (OS_os_log)defaultLog
{
  if (qword_27E3C84E8 == -1)
  {
    v3 = qword_27E3C84E0;
  }

  else
  {
    sub_24019CA9C();
    v3 = qword_27E3C84E0;
  }

  return v3;
}

@end
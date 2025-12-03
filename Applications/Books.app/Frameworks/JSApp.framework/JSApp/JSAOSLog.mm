@interface JSAOSLog
+ (void)logFault:(id)fault;
@end

@implementation JSAOSLog

+ (void)logFault:(id)fault
{
  faultCopy = fault;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_7EF64(faultCopy, v4);
  }
}

@end
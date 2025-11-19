@interface LSPluginFaultLog
@end

@implementation LSPluginFaultLog

void ___LSPluginFaultLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "pluginfault");
  v1 = _LSPluginFaultLog_result;
  _LSPluginFaultLog_result = v0;
}

@end
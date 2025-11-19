@interface IOCFPlugInLog
@end

@implementation IOCFPlugInLog

os_log_t ____IOCFPlugInLog_block_invoke()
{
  result = os_log_create("com.apple.iokit.cfplugin", "default");
  __IOCFPlugInLog_log = result;
  return result;
}

@end
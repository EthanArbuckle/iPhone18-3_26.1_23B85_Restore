@interface IOMIGMachPortLog
@end

@implementation IOMIGMachPortLog

os_log_t ____IOMIGMachPortLog_block_invoke()
{
  result = os_log_create("com.apple.iokit.iomigmachport", "default");
  __IOMIGMachPortLog_log = result;
  return result;
}

@end
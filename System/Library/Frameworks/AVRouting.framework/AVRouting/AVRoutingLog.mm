@interface AVRoutingLog
@end

@implementation AVRoutingLog

os_log_t ___AVRoutingLog_block_invoke()
{
  result = os_log_create("com.apple.avrouting", "AVRouting");
  _log = result;
  return result;
}

@end
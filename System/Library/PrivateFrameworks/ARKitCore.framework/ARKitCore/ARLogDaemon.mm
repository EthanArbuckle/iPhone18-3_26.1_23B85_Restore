@interface ARLogDaemon
@end

@implementation ARLogDaemon

void ___ARLogDaemon_block_invoke()
{
  v0 = os_log_create("com.apple.ARKit", "Daemon");
  v1 = _ARLogDaemon_logObj;
  _ARLogDaemon_logObj = v0;
}

@end
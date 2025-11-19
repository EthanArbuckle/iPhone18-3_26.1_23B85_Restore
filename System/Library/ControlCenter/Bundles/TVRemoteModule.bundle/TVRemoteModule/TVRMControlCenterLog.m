@interface TVRMControlCenterLog
@end

@implementation TVRMControlCenterLog

uint64_t ___TVRMControlCenterLog_block_invoke()
{
  _TVRMControlCenterLog_log = os_log_create("com.apple.TVRemoteModule", "ControlCenter");

  return MEMORY[0x2A1C71028]();
}

@end
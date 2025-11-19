@interface AALog
@end

@implementation AALog

uint64_t ___AALog_block_invoke()
{
  v0 = os_log_create("com.apple.AttentionAwareness", "AttentionAwareness");
  v1 = _AALog_log;
  _AALog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
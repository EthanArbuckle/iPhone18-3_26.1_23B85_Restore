@interface UTSetRuntimeIssueCatcher
@end

@implementation UTSetRuntimeIssueCatcher

uint64_t (*___UTSetRuntimeIssueCatcher_block_invoke())(void)
{
  result = os_log_set_fault_callback();
  off_1ED40DC60 = result;
  return result;
}

@end
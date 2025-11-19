@interface LTOSLogUserFeedback
@end

@implementation LTOSLogUserFeedback

uint64_t ___LTOSLogUserFeedback_block_invoke()
{
  _LTOSLogUserFeedback_log = os_log_create("com.apple.Translation", "UserFeedback");

  return MEMORY[0x2821F96F8]();
}

@end
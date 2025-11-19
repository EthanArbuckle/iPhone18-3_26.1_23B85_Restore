@interface AAFLogSystemAnalytics
@end

@implementation AAFLogSystemAnalytics

uint64_t ___AAFLogSystemAnalytics_block_invoke()
{
  _AAFLogSystemAnalytics_log = os_log_create("com.apple.aaafoundation", "analytics");

  return MEMORY[0x1EEE66BB8]();
}

@end
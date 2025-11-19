@interface HKLogPersistedSignposts
@end

@implementation HKLogPersistedSignposts

os_log_t ___HKLogPersistedSignposts_block_invoke()
{
  result = os_log_create("com.apple.HealthKit", "persisted_signposts");
  _HKLogPersistedSignposts_category = result;
  return result;
}

@end
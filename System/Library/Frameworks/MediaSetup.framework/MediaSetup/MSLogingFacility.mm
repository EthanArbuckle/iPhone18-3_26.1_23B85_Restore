@interface MSLogingFacility
@end

@implementation MSLogingFacility

uint64_t ___MSLogingFacility_block_invoke()
{
  _MSLogingFacility_oslog = os_log_create("com.apple.mediasetup.framework", "log");

  return MEMORY[0x2821F96F8]();
}

@end
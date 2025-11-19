@interface CLKTimeFormatterCache
@end

@implementation CLKTimeFormatterCache

uint64_t __40___CLKTimeFormatterCache_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___sharedInstance_0;
  sharedInstance___sharedInstance_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
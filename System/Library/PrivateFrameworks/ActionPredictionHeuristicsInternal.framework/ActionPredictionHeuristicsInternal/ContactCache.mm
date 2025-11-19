@interface ContactCache
@end

@implementation ContactCache

uint64_t ___ContactCache_block_invoke()
{
  _ContactCache_contactCache = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:100];

  return MEMORY[0x2821F96F8]();
}

@end
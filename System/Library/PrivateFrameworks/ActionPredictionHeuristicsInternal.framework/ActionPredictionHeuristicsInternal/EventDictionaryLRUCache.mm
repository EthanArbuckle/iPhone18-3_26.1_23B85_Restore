@interface EventDictionaryLRUCache
@end

@implementation EventDictionaryLRUCache

uint64_t ___EventDictionaryLRUCache_block_invoke()
{
  _EventDictionaryLRUCache_cache = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:50];

  return MEMORY[0x2821F96F8]();
}

@end
@interface AXInitializeObserverAccess
@end

@implementation AXInitializeObserverAccess

CFMutableDictionaryRef ___AXInitializeObserverAccess_block_invoke()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  ObserverDictionary = result;
  return result;
}

@end
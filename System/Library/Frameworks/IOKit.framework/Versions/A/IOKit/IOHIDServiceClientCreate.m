@interface IOHIDServiceClientCreate
@end

@implementation IOHIDServiceClientCreate

CFSetRef ___IOHIDServiceClientCreate_block_invoke()
{
  result = CFSetCreate(*MEMORY[0x1E695E480], _servicePropertyCacheKeys, 15, MEMORY[0x1E695E9F8]);
  __serviceKeysSet = result;
  return result;
}

@end
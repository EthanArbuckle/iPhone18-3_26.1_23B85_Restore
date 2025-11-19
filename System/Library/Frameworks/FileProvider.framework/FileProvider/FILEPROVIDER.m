@interface FILEPROVIDER
@end

@implementation FILEPROVIDER

uint64_t ____FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS___block_invoke()
{
  result = dyld_program_sdk_at_least();
  __FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS___isFatal = result;
  return result;
}

@end
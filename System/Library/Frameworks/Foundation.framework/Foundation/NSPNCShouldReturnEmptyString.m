@interface NSPNCShouldReturnEmptyString
@end

@implementation NSPNCShouldReturnEmptyString

uint64_t ____NSPNCShouldReturnEmptyString_block_invoke()
{
  byte_1ED43F461 = 1;
  result = dyld_program_sdk_at_least();
  byte_1ED43F461 = result;
  return result;
}

@end
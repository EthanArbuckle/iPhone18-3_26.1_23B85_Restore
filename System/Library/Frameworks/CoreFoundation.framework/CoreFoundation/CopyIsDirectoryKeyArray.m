@interface CopyIsDirectoryKeyArray
@end

@implementation CopyIsDirectoryKeyArray

CFArrayRef ___CopyIsDirectoryKeyArray_block_invoke(uint64_t a1)
{
  result = CFArrayCreate(0, &kCFURLIsDirectoryKey, 1, &kCFTypeArrayCallBacks);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end
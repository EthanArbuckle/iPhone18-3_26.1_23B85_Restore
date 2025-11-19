@interface NSXPCSerializationDebugSizeForObject
@end

@implementation NSXPCSerializationDebugSizeForObject

uint64_t ___NSXPCSerializationDebugSizeForObject_block_invoke_2(uint64_t a1)
{
  v2 = _NSXPCSerializationDebugSizeForObject(*(a1 + 40));
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) += v2;
  *(*(*(a1 + 32) + 8) + 24) += _NSXPCSerializationDebugSizeForObject(v3);
  return 1;
}

@end
@interface SCDynamicStoreReconnect
@end

@implementation SCDynamicStoreReconnect

uint64_t ____SCDynamicStoreReconnect_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = __SCDynamicStoreAddSession(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end
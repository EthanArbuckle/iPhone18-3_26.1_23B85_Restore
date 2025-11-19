@interface SCThreadSpecificKeyInitialize
@end

@implementation SCThreadSpecificKeyInitialize

uint64_t ____SCThreadSpecificKeyInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return pthread_key_create(&tsDataKey, __SCThreadSpecificDataFinalize);
}

@end
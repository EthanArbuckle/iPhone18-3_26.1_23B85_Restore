@interface SCDynamicStoreDeallocate
@end

@implementation SCDynamicStoreDeallocate

void ____SCDynamicStoreDeallocate_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = _sc_store_sessions;
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E69E9840];

  CFSetRemoveValue(v2, v3);
}

@end
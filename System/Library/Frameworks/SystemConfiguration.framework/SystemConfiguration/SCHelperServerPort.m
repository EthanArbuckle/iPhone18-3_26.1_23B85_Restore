@interface SCHelperServerPort
@end

@implementation SCHelperServerPort

void ____SCHelperServerPort_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  __SCHelperServerPort_sb_type = 2;
  if (_SC_isAppleInternal_once_4 != -1)
  {
    ____SCHelperServerPort_block_invoke_cold_1();
  }

  if (!_SC_isAppleInternal_isInternal_4)
  {
    __SCHelperServerPort_sb_type |= *MEMORY[0x1E69E9BD0];
  }

  v0 = *MEMORY[0x1E69E9840];
}

void ____SCHelperServerPort_block_invoke_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&_SC_isAppleInternal_once_4, &__block_literal_global_6);
}

@end
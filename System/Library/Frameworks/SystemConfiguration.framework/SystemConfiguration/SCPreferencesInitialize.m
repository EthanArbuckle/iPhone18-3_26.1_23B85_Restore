@interface SCPreferencesInitialize
@end

@implementation SCPreferencesInitialize

uint64_t ____SCPreferencesInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _CFRuntimeRegisterClass();
  __kSCPreferencesTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end
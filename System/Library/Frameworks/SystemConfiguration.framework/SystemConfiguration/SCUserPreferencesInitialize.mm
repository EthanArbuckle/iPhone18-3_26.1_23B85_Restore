@interface SCUserPreferencesInitialize
@end

@implementation SCUserPreferencesInitialize

uint64_t ____SCUserPreferencesInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _CFRuntimeRegisterClass();
  __kSCUserPreferencesTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end
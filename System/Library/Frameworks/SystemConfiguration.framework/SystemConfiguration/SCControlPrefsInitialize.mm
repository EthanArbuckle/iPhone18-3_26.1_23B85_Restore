@interface SCControlPrefsInitialize
@end

@implementation SCControlPrefsInitialize

uint64_t ____SCControlPrefsInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _CFRuntimeRegisterClass();
  __kSCControlPrefsTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end
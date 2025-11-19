@interface SCNetworkCategoryManagerInitialize
@end

@implementation SCNetworkCategoryManagerInitialize

uint64_t ____SCNetworkCategoryManagerInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _CFRuntimeRegisterClass();
  __kSCNetworkCategoryManagerTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end
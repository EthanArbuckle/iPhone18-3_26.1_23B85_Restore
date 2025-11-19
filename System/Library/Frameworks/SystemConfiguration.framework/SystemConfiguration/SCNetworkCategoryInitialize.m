@interface SCNetworkCategoryInitialize
@end

@implementation SCNetworkCategoryInitialize

uint64_t ____SCNetworkCategoryInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _CFRuntimeRegisterClass();
  __kSCNetworkCategoryTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end
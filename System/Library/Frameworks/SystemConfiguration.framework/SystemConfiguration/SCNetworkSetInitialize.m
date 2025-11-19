@interface SCNetworkSetInitialize
@end

@implementation SCNetworkSetInitialize

uint64_t ____SCNetworkSetInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _CFRuntimeRegisterClass();
  __kSCNetworkSetTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end
@interface SCNetworkServiceInitialize
@end

@implementation SCNetworkServiceInitialize

uint64_t ____SCNetworkServiceInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _CFRuntimeRegisterClass();
  __kSCNetworkServiceTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end
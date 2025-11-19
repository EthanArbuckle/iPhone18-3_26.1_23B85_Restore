@interface SCNetworkInterfaceProviderRegisterClass
@end

@implementation SCNetworkInterfaceProviderRegisterClass

uint64_t ____SCNetworkInterfaceProviderRegisterClass_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _CFRuntimeRegisterClass();
  __kSCNetworkInterfaceProviderTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end
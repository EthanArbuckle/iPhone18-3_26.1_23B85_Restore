@interface SCNetworkSettingsInitialize
@end

@implementation SCNetworkSettingsInitialize

uint64_t ____SCNetworkSettingsInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  __kSCNSManagerTypeID = _CFRuntimeRegisterClass();
  result = _CFRuntimeRegisterClass();
  __kSCNSServiceTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end
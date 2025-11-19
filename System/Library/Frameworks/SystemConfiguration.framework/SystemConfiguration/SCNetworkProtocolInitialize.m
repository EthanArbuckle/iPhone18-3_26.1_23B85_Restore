@interface SCNetworkProtocolInitialize
@end

@implementation SCNetworkProtocolInitialize

uint64_t ____SCNetworkProtocolInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _CFRuntimeRegisterClass();
  __kSCNetworkProtocolTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end
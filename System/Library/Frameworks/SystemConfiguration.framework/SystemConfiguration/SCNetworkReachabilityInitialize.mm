@interface SCNetworkReachabilityInitialize
@end

@implementation SCNetworkReachabilityInitialize

uint64_t ____SCNetworkReachabilityInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  __kSCNetworkReachabilityTypeID = _CFRuntimeRegisterClass();
  pthread_mutexattr_init(&lock_attr);
  v0 = *MEMORY[0x1E69E9840];

  return pthread_mutexattr_settype(&lock_attr, 1);
}

@end
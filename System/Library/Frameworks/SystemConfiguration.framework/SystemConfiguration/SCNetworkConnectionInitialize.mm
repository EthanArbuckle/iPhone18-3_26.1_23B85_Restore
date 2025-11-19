@interface SCNetworkConnectionInitialize
@end

@implementation SCNetworkConnectionInitialize

uint64_t ____SCNetworkConnectionInitialize_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = getenv("PPPDebug");
  if (v0 && sscanf(v0, "%d", &debug) != 1)
  {
    debug = 1;
  }

  __kSCNetworkConnectionTypeID = _CFRuntimeRegisterClass();
  v1 = *MEMORY[0x1E69E9840];

  return pthread_atfork(0, 0, childForkHandler_0);
}

@end
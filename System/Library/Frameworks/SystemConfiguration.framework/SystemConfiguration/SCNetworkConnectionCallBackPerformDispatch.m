@interface SCNetworkConnectionCallBackPerformDispatch
@end

@implementation SCNetworkConnectionCallBackPerformDispatch

void ____SCNetworkConnectionCallBackPerformDispatch_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  __SCNetworkConnectionNotify(*(a1 + 32), *(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E69E9840];

  CFRelease(v2);
}

@end
@interface APConnectivityHelperDispatchEventToClient
@end

@implementation APConnectivityHelperDispatchEventToClient

void ___APConnectivityHelperDispatchEventToClient_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(*(a1 + 40));
  v3 = *(a1 + 56);

  CFRelease(v3);
}

@end
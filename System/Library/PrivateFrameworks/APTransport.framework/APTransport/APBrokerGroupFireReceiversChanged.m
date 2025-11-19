@interface APBrokerGroupFireReceiversChanged
@end

@implementation APBrokerGroupFireReceiversChanged

void ___APBrokerGroupFireReceiversChanged_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  FigSimpleMutexLock();
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  v6 = *(v4 + 24);
  FigSimpleMutexUnlock();
  if (v3 == v5)
  {
    if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || OUTLINED_FUNCTION_8_0()))
    {
      v8 = *(a1 + 32);
      OUTLINED_FUNCTION_7_0();
    }

    (*(a1 + 40))(*(a1 + 32), *(a1 + 48));
  }

  CFRelease(*(a1 + 32));
  v7 = *(a1 + 48);
  if (v7)
  {

    CFRelease(v7);
  }
}

@end
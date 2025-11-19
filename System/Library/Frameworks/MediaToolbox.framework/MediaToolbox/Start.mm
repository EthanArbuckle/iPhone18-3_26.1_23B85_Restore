@interface Start
@end

@implementation Start

void __pwdKeyExchangeSenderAOCP_Start_block_invoke(uint64_t a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = *(a1 + 40);
  *(*(a1 + 32) + 160) = UpTimeNanoseconds;
  FigPWDKeyExchangeSenderAOCP_callCallback(v3, *(a1 + 48), *(a1 + 56), 0);
  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

@end
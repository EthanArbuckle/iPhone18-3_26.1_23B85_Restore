@interface ForgetProcessInfo
@end

@implementation ForgetProcessInfo

void __figXPC_ForgetProcessInfo_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

@end
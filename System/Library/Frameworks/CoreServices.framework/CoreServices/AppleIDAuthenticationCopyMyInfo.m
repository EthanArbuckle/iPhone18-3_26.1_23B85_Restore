@interface AppleIDAuthenticationCopyMyInfo
@end

@implementation AppleIDAuthenticationCopyMyInfo

intptr_t ___AppleIDAuthenticationCopyMyInfo_block_invoke(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *(*(*(a1 + 32) + 8) + 24) = cf;
  if (a3 && *(a1 + 40))
  {
    CFRetain(a3);
    **(a1 + 40) = a3;
  }

  v6 = *(a1 + 48);

  return dispatch_semaphore_signal(v6);
}

@end
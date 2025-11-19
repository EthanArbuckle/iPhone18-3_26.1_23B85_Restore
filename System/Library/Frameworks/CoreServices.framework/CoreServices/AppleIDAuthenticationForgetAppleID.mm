@interface AppleIDAuthenticationForgetAppleID
@end

@implementation AppleIDAuthenticationForgetAppleID

intptr_t ___AppleIDAuthenticationForgetAppleID_block_invoke(void *a1, int a2, int a3, int a4, CFTypeRef cf)
{
  *(*(a1[4] + 8) + 24) = 1;
  v6 = a1[5];
  if (v6)
  {
    if (cf)
    {
      CFRetain(cf);
      v6 = a1[5];
    }

    *v6 = cf;
  }

  v8 = a1[6];

  return dispatch_semaphore_signal(v8);
}

@end
@interface AppleIDAuthenticationCopyAppleIDs
@end

@implementation AppleIDAuthenticationCopyAppleIDs

intptr_t ___AppleIDAuthenticationCopyAppleIDs_block_invoke(void *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *(*(a1[4] + 8) + 24) = cf;
  if (!*(*(a1[4] + 8) + 24))
  {
    v6 = a1[5];
    if (v6)
    {
      if (a3)
      {
        CFRetain(a3);
        v6 = a1[5];
      }

      *v6 = a3;
    }
  }

  v7 = a1[6];

  return dispatch_semaphore_signal(v7);
}

@end
@interface AppleIDAuthenticatePassword
@end

@implementation AppleIDAuthenticatePassword

intptr_t ___AppleIDAuthenticatePassword_block_invoke(void *a1, char a2, CFTypeRef cf)
{
  *(*(a1[4] + 8) + 24) = a2;
  if (!*(*(a1[4] + 8) + 24))
  {
    v4 = a1[5];
    if (v4)
    {
      if (cf)
      {
        CFRetain(cf);
        v4 = a1[5];
      }

      *v4 = cf;
    }
  }

  v6 = a1[6];

  return dispatch_semaphore_signal(v6);
}

@end
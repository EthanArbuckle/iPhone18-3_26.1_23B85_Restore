@interface CSAddAppleIDAccount
@end

@implementation CSAddAppleIDAccount

void ___CSAddAppleIDAccount_block_invoke(uint64_t a1)
{
  _AppleIDAuthenticationAddAppleID(*(a1 + 32), *(a1 + 40), 0, 0);
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

@end
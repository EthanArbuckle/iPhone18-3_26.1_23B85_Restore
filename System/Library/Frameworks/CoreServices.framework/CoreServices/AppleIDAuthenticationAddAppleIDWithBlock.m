@interface AppleIDAuthenticationAddAppleIDWithBlock
@end

@implementation AppleIDAuthenticationAddAppleIDWithBlock

void ___AppleIDAuthenticationAddAppleIDWithBlock_block_invoke(uint64_t a1)
{
  v2 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -114, 0);
  (*(*(a1 + 32) + 16))();
  if (v2)
  {

    CFRelease(v2);
  }
}

@end
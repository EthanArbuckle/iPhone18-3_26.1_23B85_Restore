@interface AppleIDUpdateLinkedIdentityProvisioningWithBlock
@end

@implementation AppleIDUpdateLinkedIdentityProvisioningWithBlock

void ___AppleIDUpdateLinkedIdentityProvisioningWithBlock_block_invoke(uint64_t a1)
{
  cf = 0;
  _CSIdentityUpdateLinkedIdentityProvisioning(*(a1 + 40), &cf);
  (*(*(a1 + 32) + 16))();
  if (cf)
  {
    CFRelease(cf);
  }
}

@end
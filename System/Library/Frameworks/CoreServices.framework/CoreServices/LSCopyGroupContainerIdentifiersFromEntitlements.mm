@interface LSCopyGroupContainerIdentifiersFromEntitlements
@end

@implementation LSCopyGroupContainerIdentifiersFromEntitlements

uint64_t ___LSCopyGroupContainerIdentifiersFromEntitlements_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a2];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKey:v3 ofClass:objc_opt_class()];
    if (v4)
    {
      v5 = _CFXPCCreateXPCObjectFromCFObject();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
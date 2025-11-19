@interface RTIDocumentTraits(AFUIExtras)
- (uint64_t)_isExplicitAutoFillInvocation;
@end

@implementation RTIDocumentTraits(AFUIExtras)

- (uint64_t)_isExplicitAutoFillInvocation
{
  if ([a1 isExplicitAutoFillMode])
  {
    v2 = [a1 autofillMode];
    v3 = 0x282u >> v2;
    if (v2 > 9)
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

@end
@interface RTIDocumentTraits(AFUIExtras)
- (uint64_t)_isExplicitAutoFillInvocation;
@end

@implementation RTIDocumentTraits(AFUIExtras)

- (uint64_t)_isExplicitAutoFillInvocation
{
  if ([self isExplicitAutoFillMode])
  {
    autofillMode = [self autofillMode];
    v3 = 0x282u >> autofillMode;
    if (autofillMode > 9)
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
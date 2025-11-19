@interface NSString(AuthenticationServiceCoreExtras)
- (BOOL)isValidRPIDForHost:()AuthenticationServiceCoreExtras;
- (uint64_t)isValidRPIDForOrigin:()AuthenticationServiceCoreExtras;
@end

@implementation NSString(AuthenticationServiceCoreExtras)

- (uint64_t)isValidRPIDForOrigin:()AuthenticationServiceCoreExtras
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:?];
  v3 = [v2 host];

  if (v3)
  {
    v4 = [a1 isValidRPIDForHost:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isValidRPIDForHost:()AuthenticationServiceCoreExtras
{
  v4 = a3;
  if ([a1 isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [@"." stringByAppendingString:a1];
    v7 = [v4 hasSuffix:v6];

    if (v7)
    {
      v5 = _CFHostIsDomainTopLevel() == 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end
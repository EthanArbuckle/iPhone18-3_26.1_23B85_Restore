@interface NSString(AuthenticationServiceCoreExtras)
- (BOOL)isValidRPIDForHost:()AuthenticationServiceCoreExtras;
- (uint64_t)isValidRPIDForOrigin:()AuthenticationServiceCoreExtras;
@end

@implementation NSString(AuthenticationServiceCoreExtras)

- (uint64_t)isValidRPIDForOrigin:()AuthenticationServiceCoreExtras
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:?];
  host = [v2 host];

  if (host)
  {
    v4 = [self isValidRPIDForHost:host];
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
  if ([self isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [@"." stringByAppendingString:self];
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
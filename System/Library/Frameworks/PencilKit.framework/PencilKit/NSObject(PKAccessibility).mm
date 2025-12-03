@interface NSObject(PKAccessibility)
- (id)pkaxValueForKey:()PKAccessibility;
- (uint64_t)pkaxRespondsToSelector:()PKAccessibility fromExtrasProtocol:;
@end

@implementation NSObject(PKAccessibility)

- (uint64_t)pkaxRespondsToSelector:()PKAccessibility fromExtrasProtocol:
{
  v4 = [self conformsToProtocol:a4];
  if (v4)
  {
    LOBYTE(v4) = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)pkaxValueForKey:()PKAccessibility
{
  v4 = a3;
  v5 = [self valueForKey:v4];

  return v5;
}

@end
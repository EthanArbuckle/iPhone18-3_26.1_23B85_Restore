@interface NSObject(PKAccessibility)
- (id)pkaxValueForKey:()PKAccessibility;
- (uint64_t)pkaxRespondsToSelector:()PKAccessibility fromExtrasProtocol:;
@end

@implementation NSObject(PKAccessibility)

- (uint64_t)pkaxRespondsToSelector:()PKAccessibility fromExtrasProtocol:
{
  v4 = [a1 conformsToProtocol:a4];
  if (v4)
  {
    LOBYTE(v4) = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)pkaxValueForKey:()PKAccessibility
{
  v4 = a3;
  v5 = [a1 valueForKey:v4];

  return v5;
}

@end
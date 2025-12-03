@interface NSMutableDictionary(AppleAccount)
- (id)aa_removeObjectForKey:()AppleAccount;
@end

@implementation NSMutableDictionary(AppleAccount)

- (id)aa_removeObjectForKey:()AppleAccount
{
  v4 = a3;
  v5 = [self objectForKey:v4];
  [self removeObjectForKey:v4];

  return v5;
}

@end
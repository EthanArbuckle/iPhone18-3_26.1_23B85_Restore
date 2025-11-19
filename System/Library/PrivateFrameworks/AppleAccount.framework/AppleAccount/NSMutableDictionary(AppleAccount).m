@interface NSMutableDictionary(AppleAccount)
- (id)aa_removeObjectForKey:()AppleAccount;
@end

@implementation NSMutableDictionary(AppleAccount)

- (id)aa_removeObjectForKey:()AppleAccount
{
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  [a1 removeObjectForKey:v4];

  return v5;
}

@end
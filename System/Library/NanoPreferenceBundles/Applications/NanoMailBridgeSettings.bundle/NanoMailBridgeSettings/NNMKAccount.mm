@interface NNMKAccount
- (id)nmcuiAccount;
@end

@implementation NNMKAccount

- (id)nmcuiAccount
{
  v2 = [[NMCUIAccount alloc] initWithNNMKAccount:self];

  return v2;
}

@end
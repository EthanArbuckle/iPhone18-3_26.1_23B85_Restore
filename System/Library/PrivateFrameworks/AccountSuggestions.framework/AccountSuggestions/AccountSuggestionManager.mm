@interface AccountSuggestionManager
- (void)reloadAccounts;
- (void)reloadDelay:(id)delay;
@end

@implementation AccountSuggestionManager

- (void)reloadDelay:(id)delay
{
  delayCopy = delay;

  sub_23DC7B3BC();
}

- (void)reloadAccounts
{

  sub_23DC6BEEC();
}

@end
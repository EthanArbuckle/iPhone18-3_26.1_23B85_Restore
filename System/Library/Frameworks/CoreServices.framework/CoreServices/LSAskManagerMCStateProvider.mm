@interface LSAskManagerMCStateProvider
- (id)initWithRestrictionsManager:(id *)manager;
@end

@implementation LSAskManagerMCStateProvider

- (id)initWithRestrictionsManager:(id *)manager
{
  v4 = a2;
  if (manager)
  {
    v7.receiver = manager;
    v7.super_class = LSAskManagerMCStateProvider;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    manager = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return manager;
}

@end
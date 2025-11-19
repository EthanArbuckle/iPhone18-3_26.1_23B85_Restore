@interface AMSAccountCachedServerBoolCore
- (BOOL)isStale;
- (NSNumber)value;
- (id)token;
- (void)setToken:(id)a3;
@end

@implementation AMSAccountCachedServerBoolCore

- (BOOL)isStale
{
  v2 = self;
  v3 = AccountCachedServerData.AccountBoolObject.isStale.getter();

  return v3 & 1;
}

- (NSNumber)value
{
  v2 = self;
  v3 = AccountCachedServerData.AccountBoolObject.value.getter();

  return v3;
}

- (id)token
{
  v2 = AccountCachedServerData.AccountBoolObject.token.getter();

  return v2;
}

- (void)setToken:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  AccountCachedServerData.AccountBoolObject.token.setter(a3);
}

@end
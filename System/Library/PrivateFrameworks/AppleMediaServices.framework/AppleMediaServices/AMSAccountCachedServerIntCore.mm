@interface AMSAccountCachedServerIntCore
- (BOOL)isStale;
- (NSNumber)value;
- (id)token;
- (void)setToken:(id)a3;
@end

@implementation AMSAccountCachedServerIntCore

- (BOOL)isStale
{
  v2 = self;
  v3 = AccountCachedServerData.AccountIntObject.isStale.getter();

  return v3 & 1;
}

- (NSNumber)value
{
  v2 = self;
  v3 = AccountCachedServerData.AccountIntObject.value.getter();

  return v3;
}

- (id)token
{
  v2 = AccountCachedServerData.AccountIntObject.token.getter();

  return v2;
}

- (void)setToken:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  AccountCachedServerData.AccountIntObject.token.setter(a3);
}

@end
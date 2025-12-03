@interface AMSAccountCachedServerIntCore
- (BOOL)isStale;
- (NSNumber)value;
- (id)token;
- (void)setToken:(id)token;
@end

@implementation AMSAccountCachedServerIntCore

- (BOOL)isStale
{
  selfCopy = self;
  v3 = AccountCachedServerData.AccountIntObject.isStale.getter();

  return v3 & 1;
}

- (NSNumber)value
{
  selfCopy = self;
  v3 = AccountCachedServerData.AccountIntObject.value.getter();

  return v3;
}

- (id)token
{
  v2 = AccountCachedServerData.AccountIntObject.token.getter();

  return v2;
}

- (void)setToken:(id)token
{
  swift_unknownObjectRetain();
  selfCopy = self;
  AccountCachedServerData.AccountIntObject.token.setter(token);
}

@end
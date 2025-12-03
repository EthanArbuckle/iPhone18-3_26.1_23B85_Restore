@interface AMSAccountCachedServerBoolCore
- (BOOL)isStale;
- (NSNumber)value;
- (id)token;
- (void)setToken:(id)token;
@end

@implementation AMSAccountCachedServerBoolCore

- (BOOL)isStale
{
  selfCopy = self;
  v3 = AccountCachedServerData.AccountBoolObject.isStale.getter();

  return v3 & 1;
}

- (NSNumber)value
{
  selfCopy = self;
  v3 = AccountCachedServerData.AccountBoolObject.value.getter();

  return v3;
}

- (id)token
{
  v2 = AccountCachedServerData.AccountBoolObject.token.getter();

  return v2;
}

- (void)setToken:(id)token
{
  swift_unknownObjectRetain();
  selfCopy = self;
  AccountCachedServerData.AccountBoolObject.token.setter(token);
}

@end
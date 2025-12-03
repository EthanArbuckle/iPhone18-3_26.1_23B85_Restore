@interface AMSAccountCachedServerStringCore
- (BOOL)isStale;
- (NSString)value;
- (id)token;
- (void)setToken:(id)token;
@end

@implementation AMSAccountCachedServerStringCore

- (id)token
{
  v2 = AccountCachedServerData.AccountStringObject.token.getter();

  return v2;
}

- (BOOL)isStale
{
  selfCopy = self;
  v3 = AccountCachedServerData.AccountStringObject.isStale.getter();

  return v3 & 1;
}

- (NSString)value
{
  AccountCachedServerData.AccountStringObject.value.getter();
  if (v2)
  {
    v3 = sub_192F9679C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setToken:(id)token
{
  swift_unknownObjectRetain();
  selfCopy = self;
  AccountCachedServerData.AccountStringObject.token.setter(token);
}

@end
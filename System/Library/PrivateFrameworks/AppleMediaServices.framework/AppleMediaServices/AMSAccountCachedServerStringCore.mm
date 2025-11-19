@interface AMSAccountCachedServerStringCore
- (BOOL)isStale;
- (NSString)value;
- (id)token;
- (void)setToken:(id)a3;
@end

@implementation AMSAccountCachedServerStringCore

- (id)token
{
  v2 = AccountCachedServerData.AccountStringObject.token.getter();

  return v2;
}

- (BOOL)isStale
{
  v2 = self;
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

- (void)setToken:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  AccountCachedServerData.AccountStringObject.token.setter(a3);
}

@end
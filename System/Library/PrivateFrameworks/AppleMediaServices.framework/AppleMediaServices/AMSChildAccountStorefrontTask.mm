@interface AMSChildAccountStorefrontTask
- (ACAccount)parentAccount;
- (AMSBagProtocol)bag;
- (AMSChildAccountStorefrontTask)initWithParentAccount:(id)account childDSID:(id)d bag:(id)bag;
- (AMSURLProtocolDelegate)delegate;
- (NSNumber)childDSID;
- (id)perform;
- (void)setDelegate:(id)delegate;
@end

@implementation AMSChildAccountStorefrontTask

- (ACAccount)parentAccount
{
  v2 = sub_192C71B18();

  return v2;
}

- (NSNumber)childDSID
{
  v2 = sub_192C71B5C();

  return v2;
}

- (AMSBagProtocol)bag
{
  v2 = sub_192C71BA0();

  return v2;
}

- (AMSURLProtocolDelegate)delegate
{
  v2 = sub_192C71BE4();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_192C71C54();
}

- (AMSChildAccountStorefrontTask)initWithParentAccount:(id)account childDSID:(id)d bag:(id)bag
{
  accountCopy = account;
  dCopy = d;
  swift_unknownObjectRetain();
  return sub_192C71C9C(accountCopy, dCopy, bag);
}

- (id)perform
{
  selfCopy = self;
  v3 = sub_192C71D84();

  return v3;
}

@end
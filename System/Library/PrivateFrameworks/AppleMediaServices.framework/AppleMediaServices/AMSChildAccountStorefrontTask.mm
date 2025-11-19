@interface AMSChildAccountStorefrontTask
- (ACAccount)parentAccount;
- (AMSBagProtocol)bag;
- (AMSChildAccountStorefrontTask)initWithParentAccount:(id)a3 childDSID:(id)a4 bag:(id)a5;
- (AMSURLProtocolDelegate)delegate;
- (NSNumber)childDSID;
- (id)perform;
- (void)setDelegate:(id)a3;
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

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_192C71C54();
}

- (AMSChildAccountStorefrontTask)initWithParentAccount:(id)a3 childDSID:(id)a4 bag:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  return sub_192C71C9C(v7, v8, a5);
}

- (id)perform
{
  v2 = self;
  v3 = sub_192C71D84();

  return v3;
}

@end
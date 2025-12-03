@interface AMSCampaignAttributor
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (void)processURL:(NSURL *)l ignoreMarketing:(BOOL)marketing completionHandler:(id)handler;
- (void)setAccount:(id)account;
@end

@implementation AMSCampaignAttributor

- (AMSBagProtocol)bag
{
  v2 = CampaignAttributor.bag.getter();

  return v2;
}

- (ACAccount)account
{
  v2 = CampaignAttributor.account.getter();

  return v2;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  selfCopy = self;
  CampaignAttributor.account.setter(account);
}

- (void)processURL:(NSURL *)l ignoreMarketing:(BOOL)marketing completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = l;
  *(v9 + 24) = marketing;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  lCopy = l;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FC80D8, v9);
}

@end
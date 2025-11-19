@interface AMSCampaignAttributor
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (void)processURL:(NSURL *)a3 ignoreMarketing:(BOOL)a4 completionHandler:(id)a5;
- (void)setAccount:(id)a3;
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

- (void)setAccount:(id)a3
{
  v5 = a3;
  v6 = self;
  CampaignAttributor.account.setter(a3);
}

- (void)processURL:(NSURL *)a3 ignoreMarketing:(BOOL)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  v10 = a3;
  v11 = self;

  sub_1928FB3BC(&unk_192FC80D8, v9);
}

@end
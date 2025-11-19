@interface AMSCampaignAttributionResult
- (AMSCampaignAttributionResult)initWithURL:(id)a3;
@end

@implementation AMSCampaignAttributionResult

- (AMSCampaignAttributionResult)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSCampaignAttributionResult;
  v6 = [(AMSCampaignAttributionResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_redirectURL, a3);
  }

  return v7;
}

@end
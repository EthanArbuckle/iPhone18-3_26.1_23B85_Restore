@interface AMSCampaignAttributionResult
- (AMSCampaignAttributionResult)initWithURL:(id)l;
@end

@implementation AMSCampaignAttributionResult

- (AMSCampaignAttributionResult)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = AMSCampaignAttributionResult;
  v6 = [(AMSCampaignAttributionResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_redirectURL, l);
  }

  return v7;
}

@end
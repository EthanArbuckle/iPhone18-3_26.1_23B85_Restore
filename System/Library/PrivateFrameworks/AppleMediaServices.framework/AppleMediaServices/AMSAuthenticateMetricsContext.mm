@interface AMSAuthenticateMetricsContext
- (AMSAuthenticateMetricsContext)initWithOptions:(id)options account:(id)account;
@end

@implementation AMSAuthenticateMetricsContext

- (AMSAuthenticateMetricsContext)initWithOptions:(id)options account:(id)account
{
  optionsCopy = options;
  accountCopy = account;
  v12.receiver = self;
  v12.super_class = AMSAuthenticateMetricsContext;
  v9 = [(AMSAuthenticateMetricsContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

@end
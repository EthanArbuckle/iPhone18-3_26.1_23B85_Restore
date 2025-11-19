@interface AMSAuthenticateMetricsContext
- (AMSAuthenticateMetricsContext)initWithOptions:(id)a3 account:(id)a4;
@end

@implementation AMSAuthenticateMetricsContext

- (AMSAuthenticateMetricsContext)initWithOptions:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSAuthenticateMetricsContext;
  v9 = [(AMSAuthenticateMetricsContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a4);
    objc_storeStrong(&v10->_options, a3);
  }

  return v10;
}

@end
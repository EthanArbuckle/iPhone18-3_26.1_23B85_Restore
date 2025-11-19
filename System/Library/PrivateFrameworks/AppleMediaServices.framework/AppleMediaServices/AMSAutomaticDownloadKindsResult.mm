@interface AMSAutomaticDownloadKindsResult
- (AMSAutomaticDownloadKindsResult)initWithAccount:(id)a3 andEnabledMediaKinds:(id)a4;
@end

@implementation AMSAutomaticDownloadKindsResult

- (AMSAutomaticDownloadKindsResult)initWithAccount:(id)a3 andEnabledMediaKinds:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AMSAutomaticDownloadKindsResult;
  v9 = [(AMSAutomaticDownloadKindsResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    v11 = [v8 copy];
    enabledMediaKinds = v10->_enabledMediaKinds;
    v10->_enabledMediaKinds = v11;
  }

  return v10;
}

@end
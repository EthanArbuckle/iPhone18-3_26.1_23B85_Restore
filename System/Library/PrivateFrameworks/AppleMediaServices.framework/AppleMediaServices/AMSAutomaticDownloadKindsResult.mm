@interface AMSAutomaticDownloadKindsResult
- (AMSAutomaticDownloadKindsResult)initWithAccount:(id)account andEnabledMediaKinds:(id)kinds;
@end

@implementation AMSAutomaticDownloadKindsResult

- (AMSAutomaticDownloadKindsResult)initWithAccount:(id)account andEnabledMediaKinds:(id)kinds
{
  accountCopy = account;
  kindsCopy = kinds;
  v14.receiver = self;
  v14.super_class = AMSAutomaticDownloadKindsResult;
  v9 = [(AMSAutomaticDownloadKindsResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    v11 = [kindsCopy copy];
    enabledMediaKinds = v10->_enabledMediaKinds;
    v10->_enabledMediaKinds = v11;
  }

  return v10;
}

@end
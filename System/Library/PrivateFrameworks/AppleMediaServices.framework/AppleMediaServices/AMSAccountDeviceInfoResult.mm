@interface AMSAccountDeviceInfoResult
- (AMSAccountDeviceInfoResult)initWithAccount:(id)a3 responseDictionary:(id)a4;
- (NSNumber)isBundleOwner;
- (id)description;
@end

@implementation AMSAccountDeviceInfoResult

- (AMSAccountDeviceInfoResult)initWithAccount:(id)a3 responseDictionary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSAccountDeviceInfoResult;
  v9 = [(AMSAccountDeviceInfoResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_rawResult, a4);
  }

  return v10;
}

- (NSNumber)isBundleOwner
{
  v2 = [(AMSAccountDeviceInfoResult *)self rawResult];
  v3 = [v2 objectForKeyedSubscript:@"isBundleOwner"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v2 = [(AMSAccountDeviceInfoResult *)self rawResult];
  v3 = [v2 description];

  return v3;
}

@end
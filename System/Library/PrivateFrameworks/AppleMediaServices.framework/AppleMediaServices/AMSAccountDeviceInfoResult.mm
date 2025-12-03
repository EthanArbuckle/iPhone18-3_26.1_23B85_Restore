@interface AMSAccountDeviceInfoResult
- (AMSAccountDeviceInfoResult)initWithAccount:(id)account responseDictionary:(id)dictionary;
- (NSNumber)isBundleOwner;
- (id)description;
@end

@implementation AMSAccountDeviceInfoResult

- (AMSAccountDeviceInfoResult)initWithAccount:(id)account responseDictionary:(id)dictionary
{
  accountCopy = account;
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = AMSAccountDeviceInfoResult;
  v9 = [(AMSAccountDeviceInfoResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_rawResult, dictionary);
  }

  return v10;
}

- (NSNumber)isBundleOwner
{
  rawResult = [(AMSAccountDeviceInfoResult *)self rawResult];
  v3 = [rawResult objectForKeyedSubscript:@"isBundleOwner"];

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
  rawResult = [(AMSAccountDeviceInfoResult *)self rawResult];
  v3 = [rawResult description];

  return v3;
}

@end
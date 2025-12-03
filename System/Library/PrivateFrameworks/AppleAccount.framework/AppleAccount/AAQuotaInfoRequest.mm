@interface AAQuotaInfoRequest
- (AAQuotaInfoRequest)initWithAccount:(id)account;
- (id)initDetailedRequestWithAccount:(id)account;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAQuotaInfoRequest

- (id)urlString
{
  aa_personID = [(ACAccount *)self->_account aa_personID];

  if (aa_personID)
  {
    if (self->_isDetailedRequest)
    {
      v4 = @"storageInfoURL";
    }

    else
    {
      v4 = @"quotaInfoURL";
    }

    account = self->_account;
    v6 = v4;
    v7 = [(ACAccount *)account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v8 = [v7 objectForKey:v6];

    aa_personID2 = [(ACAccount *)self->_account aa_personID];
    v10 = [v8 stringByReplacingOccurrencesOfString:@"$DS_PRS_ID$" withString:aa_personID2];

    v11 = +[AADeviceInfo udid];
    v12 = [v10 stringByReplacingOccurrencesOfString:@"$UDID$" withString:v11];

    uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v14 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (AAQuotaInfoRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AAQuotaInfoRequest;
  v6 = [(AAQuotaInfoRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)initDetailedRequestWithAccount:(id)account
{
  result = [(AAQuotaInfoRequest *)self initWithAccount:account];
  if (result)
  {
    *(result + 64) = 1;
  }

  return result;
}

- (id)urlRequest
{
  v13.receiver = self;
  v13.super_class = AAQuotaInfoRequest;
  urlRequest = [(AARequest *)&v13 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"GET"];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
  v5 = +[AADeviceInfo udid];
  [v4 setValue:v5 forHTTPHeaderField:@"X-Client-UDID"];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [infoDictionary objectForKeyedSubscript:@"CFBundleName"];
  v10 = [infoDictionary objectForKeyedSubscript:@"CFBundleVersion"];
  v11 = [v8 stringWithFormat:@"%@/%@ %@/%@", v9, v10, @"ProductName", @"ProductVersion"];

  [v4 addValue:v11 forHTTPHeaderField:@"User-agent"];

  return v4;
}

@end
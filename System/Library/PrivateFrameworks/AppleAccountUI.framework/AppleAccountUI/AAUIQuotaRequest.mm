@interface AAUIQuotaRequest
- (AAUIQuotaRequest)initWithAccount:(id)account;
- (id)initDetailedRequestWithAccount:(id)account;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAUIQuotaRequest

- (AAUIQuotaRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AAUIQuotaRequest;
  v6 = [(AAUIQuotaRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)initDetailedRequestWithAccount:(id)account
{
  result = [(AAUIQuotaRequest *)self initWithAccount:account];
  if (result)
  {
    *(result + 72) = 1;
  }

  return result;
}

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

    v5 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v6 = [v5 objectForKey:v4];

    v7 = *MEMORY[0x1E698BAE0];
    aa_personID2 = [(ACAccount *)self->_account aa_personID];
    v9 = [v6 stringByReplacingOccurrencesOfString:v7 withString:aa_personID2];

    v10 = *MEMORY[0x1E698BAF0];
    udid = [MEMORY[0x1E698B890] udid];
    v12 = [v9 stringByReplacingOccurrencesOfString:v10 withString:udid];

    v13 = [v12 stringByAddingPercentEscapesUsingEncoding:4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)urlRequest
{
  v22.receiver = self;
  v22.super_class = AAUIQuotaRequest;
  urlRequest = [(AARequest *)&v22 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"GET"];
  v5 = MEMORY[0x1E696AEC0];
  aa_personID = [(ACAccount *)self->_account aa_personID];
  aa_authToken = [(ACAccount *)self->_account aa_authToken];
  v21 = [v5 stringWithFormat:@"%@:%@", aa_personID, aa_authToken];

  v8 = [v21 dataUsingEncoding:4];
  v20 = [v8 base64EncodedStringWithOptions:0];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v20];
  [v4 setValue:v9 forHTTPHeaderField:@"Authorization"];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v13 = [v10 objectForKey:@"ProductVersion"];
  v14 = [infoDictionary objectForKey:@"CFBundleName"];
  v15 = [infoDictionary objectForKey:@"CFBundleVersion"];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@ iOS/%@", v14, v15, v13];
  [v4 setValue:v16 forHTTPHeaderField:@"User-agent"];
  clientInfoHeader = [MEMORY[0x1E698B890] clientInfoHeader];
  [v4 setValue:clientInfoHeader forHTTPHeaderField:@"X-MMe-Client-Info"];
  udid = [MEMORY[0x1E698B890] udid];
  [v4 setValue:udid forHTTPHeaderField:@"X-Client-UDID"];

  return v4;
}

@end
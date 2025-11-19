@interface AAUIQuotaRequest
- (AAUIQuotaRequest)initWithAccount:(id)a3;
- (id)initDetailedRequestWithAccount:(id)a3;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAUIQuotaRequest

- (AAUIQuotaRequest)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAUIQuotaRequest;
  v6 = [(AAUIQuotaRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (id)initDetailedRequestWithAccount:(id)a3
{
  result = [(AAUIQuotaRequest *)self initWithAccount:a3];
  if (result)
  {
    *(result + 72) = 1;
  }

  return result;
}

- (id)urlString
{
  v3 = [(ACAccount *)self->_account aa_personID];

  if (v3)
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
    v8 = [(ACAccount *)self->_account aa_personID];
    v9 = [v6 stringByReplacingOccurrencesOfString:v7 withString:v8];

    v10 = *MEMORY[0x1E698BAF0];
    v11 = [MEMORY[0x1E698B890] udid];
    v12 = [v9 stringByReplacingOccurrencesOfString:v10 withString:v11];

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
  v3 = [(AARequest *)&v22 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"GET"];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(ACAccount *)self->_account aa_personID];
  v7 = [(ACAccount *)self->_account aa_authToken];
  v21 = [v5 stringWithFormat:@"%@:%@", v6, v7];

  v8 = [v21 dataUsingEncoding:4];
  v20 = [v8 base64EncodedStringWithOptions:0];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v20];
  [v4 setValue:v9 forHTTPHeaderField:@"Authorization"];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v11 = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [v11 infoDictionary];

  v13 = [v10 objectForKey:@"ProductVersion"];
  v14 = [v12 objectForKey:@"CFBundleName"];
  v15 = [v12 objectForKey:@"CFBundleVersion"];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@ iOS/%@", v14, v15, v13];
  [v4 setValue:v16 forHTTPHeaderField:@"User-agent"];
  v17 = [MEMORY[0x1E698B890] clientInfoHeader];
  [v4 setValue:v17 forHTTPHeaderField:@"X-MMe-Client-Info"];
  v18 = [MEMORY[0x1E698B890] udid];
  [v4 setValue:v18 forHTTPHeaderField:@"X-Client-UDID"];

  return v4;
}

@end
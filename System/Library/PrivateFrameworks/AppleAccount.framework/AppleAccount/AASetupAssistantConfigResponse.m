@interface AASetupAssistantConfigResponse
- (AASetupAssistantConfigResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (BOOL)setupAssistantServerEnabled;
- (NSString)activeEmailDomain;
@end

@implementation AASetupAssistantConfigResponse

- (AASetupAssistantConfigResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v16.receiver = self;
  v16.super_class = AASetupAssistantConfigResponse;
  v4 = [(AAResponse *)&v16 initWithHTTPResponse:a3 data:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(AAResponse *)v4 responseDictionary];

    if (v6)
    {
      v7 = [(AAResponse *)v5 responseDictionary];
      v8 = [v7 objectForKey:@"urls"];
      v9 = [v8 copy];
      urls = v5->_urls;
      v5->_urls = v9;
    }

    else
    {
      v11 = _AALogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Empty response for configuration plist", v15, 2u);
      }

      v7 = [MEMORY[0x1E695DF90] dictionary];
      v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"COMMUNICATIONS_ERROR" value:&stru_1F2EF6280 table:@"Localizable"];
      [v7 setObject:v13 forKey:*MEMORY[0x1E696A578]];

      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.appleaccount" code:0 userInfo:v7];
      [(AAResponse *)v5 setError:v8];
    }
  }

  return v5;
}

- (BOOL)setupAssistantServerEnabled
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:AASetupAssistantServerEnabledKey];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)activeEmailDomain
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:AASetupAssistantActiveEmailDomainKey];

  return v3;
}

@end
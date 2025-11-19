@interface BCServerSideOAuth2Request
- (id)_initWithDictionary:(id)a3;
@end

@implementation BCServerSideOAuth2Request

- (id)_initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"oauth2"];
  v6 = [MEMORY[0x277CBEB68] null];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"oauth2"];

    if (v8)
    {
      v9 = [BCServerSideOAuth2URLProvider URLProviderWithDictionary:v8];
      if (v9)
      {
        v13.receiver = self;
        v13.super_class = BCServerSideOAuth2Request;
        self = [(BCOAuth2Request *)&v13 _initWithDictionary:v4 URLProvider:v9];
        v10 = self;
      }

      else
      {
        v11 = LogCategory_Daemon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_236EA0000, v11, OS_LOG_TYPE_ERROR, "Unable to create  BCOAuth2Parameters: missing 'oauth2' payload is invalid", buf, 2u);
        }

        v10 = 0;
      }

      goto LABEL_13;
    }
  }

  v8 = LogCategory_Daemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_236EA0000, v8, OS_LOG_TYPE_ERROR, "Unable to create  BCOAuth2Parameters: missing 'oauth2' in payload", buf, 2u);
  }

  v10 = 0;
LABEL_13:

  return v10;
}

@end
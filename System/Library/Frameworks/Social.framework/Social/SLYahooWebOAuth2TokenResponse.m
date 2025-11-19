@interface SLYahooWebOAuth2TokenResponse
- (SLYahooWebOAuth2TokenResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5;
@end

@implementation SLYahooWebOAuth2TokenResponse

- (SLYahooWebOAuth2TokenResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "length")}];
  _SLLog(v5, 7, @"SLWebOAuth2TokenResponse initWithData: %@ length urlResponse: %@ error: %@");

  v35.receiver = self;
  v35.super_class = SLYahooWebOAuth2TokenResponse;
  v12 = [(SLYahooWebOAuth2TokenResponse *)&v35 init:v32];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_error, a5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v10 statusCode];
      v13->_statusCode = v14;
      v33 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
      _SLLog(v5, 7, @"SLWebOAuth2TokenResponse httpResponse status code %@");

      if (!v13->_error)
      {
        v34 = 0;
        v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:{&v34, v33}];
        v16 = v34;
        v17 = v34;
        if (v17)
        {
          objc_storeStrong(&v13->_error, v16);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v13->_data, v15);
          v18 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"access_token"];
          token = v13->_token;
          v13->_token = v18;

          v20 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"refresh_token"];
          refreshToken = v13->_refreshToken;
          v13->_refreshToken = v20;

          v22 = MEMORY[0x1E695DF00];
          v23 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"expires_in"];
          v24 = [v22 dateWithTimeIntervalSinceNow:{objc_msgSend(v23, "integerValue")}];
          expiryDate = v13->_expiryDate;
          v13->_expiryDate = v24;

          v26 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"error"];
          objc_opt_class();
          LOBYTE(v23) = objc_opt_isKindOfClass();

          if (v23)
          {
            v27 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"error"];
            errorMessage = v13->_errorMessage;
            v13->_errorMessage = v27;
          }

          v29 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"xoauth_yahoo_guid"];
          GUID = v13->_GUID;
          v13->_GUID = v29;
        }

        else
        {
          _SLLog(v5, 7, @"SLWebOAuth2TokenResponse response JSON data does not represent NSDictionary. Game over.");
        }
      }
    }

    else
    {
      _SLLog(v5, 7, @"SLWebOAuth2TokenResponse response is not NSHTTPURLResponse. Game over.");
    }
  }

  return v13;
}

@end
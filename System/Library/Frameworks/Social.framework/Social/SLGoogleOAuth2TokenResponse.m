@interface SLGoogleOAuth2TokenResponse
- (SLGoogleOAuth2TokenResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5;
@end

@implementation SLGoogleOAuth2TokenResponse

- (SLGoogleOAuth2TokenResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "length")}];
  _SLLog(v5, 7, @"SLGoogleOAuth2TokenResponse initWithData: %@ length urlResponse: %@ error: %@");

  v41.receiver = self;
  v41.super_class = SLGoogleOAuth2TokenResponse;
  v12 = [(SLGoogleOAuth2TokenResponse *)&v41 init:v38];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_error, a5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v10;
      v15 = [v14 statusCode];
      v13->_statusCode = v15;
      v39 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
      _SLLog(v5, 7, @"SLGoogleOAuth2TokenResponse httpResponse status code %@");

      if (!v13->_error)
      {
        v40 = 0;
        v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:{&v40, v39}];
        v17 = v40;
        v18 = v40;
        if (v18)
        {
          objc_storeStrong(&v13->_error, v17);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v13->_data, v16);
          v19 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"access_token"];
          token = v13->_token;
          v13->_token = v19;

          v21 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"refresh_token"];
          refreshToken = v13->_refreshToken;
          v13->_refreshToken = v21;

          v23 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"id_token"];
          idToken = v13->_idToken;
          v13->_idToken = v23;

          v25 = MEMORY[0x1E695DF00];
          v26 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"expires_in"];
          v27 = [v25 dateWithTimeIntervalSinceNow:{objc_msgSend(v26, "integerValue")}];
          expiryDate = v13->_expiryDate;
          v13->_expiryDate = v27;

          v29 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"scope"];
          v30 = [v29 componentsSeparatedByString:@" "];

          v31 = [SLGoogleWebClient dataclassesForScopes:v30];
          grantedDataclasses = v13->_grantedDataclasses;
          v13->_grantedDataclasses = v31;

          v33 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"error"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v35 = [(NSDictionary *)v13->_data objectForKeyedSubscript:@"error"];
            errorMessage = v13->_errorMessage;
            v13->_errorMessage = v35;
          }
        }

        else
        {
          _SLLog(v5, 7, @"SLGoogleOAuth2TokenResponse response JSON data does not represent NSDictionary. Game over.");
        }
      }
    }

    else
    {
      _SLLog(v5, 7, @"SLGoogleOAuth2TokenResponse response is not NSHTTPURLResponse. Game over.");
    }
  }

  return v13;
}

@end
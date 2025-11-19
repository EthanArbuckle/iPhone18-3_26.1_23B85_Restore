@interface SLYahooOAuth2MigrationResponse
- (SLYahooOAuth2MigrationResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5;
@end

@implementation SLYahooOAuth2MigrationResponse

- (SLYahooOAuth2MigrationResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "length")}];
  _SLLog(v5, 7, @"SLYahooOAuth2MigrationResponse initWithData: %@ length urlResponse: %@ error: %@");

  v31.receiver = self;
  v31.super_class = SLYahooOAuth2MigrationResponse;
  v12 = [(SLYahooOAuth2MigrationResponse *)&v31 init:v28];
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
      v29 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
      _SLLog(v5, 7, @"SLYahooOAuth2MigrationResponse httpResponse status code %@");

      if (!v13->_error)
      {
        v30 = 0;
        v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:{&v30, v29}];
        v17 = v30;
        v18 = v30;
        if (v18)
        {
          objc_storeStrong(&v13->_error, v17);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v13->_responseBody, v16);
          v19 = [(NSDictionary *)v13->_responseBody objectForKeyedSubscript:@"access_token"];
          accessToken = v13->_accessToken;
          v13->_accessToken = v19;

          v21 = [(NSDictionary *)v13->_responseBody objectForKeyedSubscript:@"refresh_token"];
          refreshToken = v13->_refreshToken;
          v13->_refreshToken = v21;

          v23 = MEMORY[0x1E695DF00];
          v24 = [(NSDictionary *)v13->_responseBody objectForKeyedSubscript:@"expires_in"];
          v25 = [v23 dateWithTimeIntervalSinceNow:{objc_msgSend(v24, "integerValue")}];
          expiryDate = v13->_expiryDate;
          v13->_expiryDate = v25;
        }

        else
        {
          _SLLog(v5, 7, @"SLYahooOAuth2MigrationResponse response JSON data does not represent NSDictionary. Game over.");
        }
      }
    }

    else
    {
      _SLLog(v5, 7, @"SLYahooOAuth2MigrationResponse response is not NSHTTPURLResponse. Game over.");
    }
  }

  return v13;
}

@end
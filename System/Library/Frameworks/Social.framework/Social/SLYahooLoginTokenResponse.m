@interface SLYahooLoginTokenResponse
- (SLYahooLoginTokenResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5;
@end

@implementation SLYahooLoginTokenResponse

- (SLYahooLoginTokenResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "length")}];
  _SLLog(v5, 7, @"SLYahooLoginTokenResponse initWithData: %@ length urlResponse: %@ error: %@");

  v25.receiver = self;
  v25.super_class = SLYahooLoginTokenResponse;
  v12 = [(SLYahooLoginTokenResponse *)&v25 init:v23];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_error, a5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v10 statusCode];
      v13->_statusCode = v14;
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
      _SLLog(v5, 7, @"SLYahooLoginTokenResponse httpResponse status code %@");

      if (!v13->_error)
      {
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:{4, v24}];
        body = v13->_body;
        v13->_body = v15;

        v17 = [(NSString *)v13->_body componentsSeparatedByString:@"="];
        if ([v17 count] < 2)
        {
          v19 = v17;
        }

        else
        {
          v18 = [v17 objectAtIndexedSubscript:1];
          v19 = [v18 componentsSeparatedByString:@"\n"];

          if ([v19 count])
          {
            v20 = [v19 firstObject];
            loginToken = v13->_loginToken;
            v13->_loginToken = v20;
          }
        }
      }
    }

    else
    {
      _SLLog(v5, 7, @"SLYahooLoginTokenResponse response is not NSHTTPURLResponse. Game over.");
    }
  }

  return v13;
}

@end
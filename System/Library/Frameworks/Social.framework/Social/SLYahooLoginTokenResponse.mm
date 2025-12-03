@interface SLYahooLoginTokenResponse
- (SLYahooLoginTokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation SLYahooLoginTokenResponse

- (SLYahooLoginTokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  _SLLog(v5, 7, @"SLYahooLoginTokenResponse initWithData: %@ length urlResponse: %@ error: %@");

  v25.receiver = self;
  v25.super_class = SLYahooLoginTokenResponse;
  v12 = [(SLYahooLoginTokenResponse *)&v25 init:v23];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_error, error);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      statusCode = [responseCopy statusCode];
      v13->_statusCode = statusCode;
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:statusCode];
      _SLLog(v5, 7, @"SLYahooLoginTokenResponse httpResponse status code %@");

      if (!v13->_error)
      {
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:{4, v24}];
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
            firstObject = [v19 firstObject];
            loginToken = v13->_loginToken;
            v13->_loginToken = firstObject;
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
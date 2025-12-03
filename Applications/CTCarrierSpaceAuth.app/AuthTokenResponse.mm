@interface AuthTokenResponse
- (AuthTokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation AuthTokenResponse

- (AuthTokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v27.receiver = self;
  v27.super_class = AuthTokenResponse;
  v11 = [(AuthTokenResponse *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_error, error);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12->_statusCode = [responseCopy statusCode];
    }

    if (dataCopy && !v12->_error)
    {
      v26 = 0;
      v13 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:&v26];
      v14 = v26;
      v15 = v26;
      if (v15)
      {
        objc_storeStrong(&v12->_error, v14);
      }

      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v12->_data, v13);
          v16 = [(NSDictionary *)v12->_data objectForKeyedSubscript:@"access_token"];
          token = v12->_token;
          v12->_token = v16;

          v18 = [(NSDictionary *)v12->_data objectForKeyedSubscript:@"refresh_token"];
          refreshToken = v12->_refreshToken;
          v12->_refreshToken = v18;

          v20 = [(NSDictionary *)v12->_data objectForKeyedSubscript:@"expires_in"];
          if (v20)
          {
            v21 = [(NSDictionary *)v12->_data objectForKeyedSubscript:@"expires_in"];
            v22 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", [v21 integerValue]);
            expiryDate = v12->_expiryDate;
            v12->_expiryDate = v22;
          }

          v24 = [(NSDictionary *)v12->_data objectForKeyedSubscript:@"error"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v12->_errorDescription, v24);
          }
        }
      }
    }
  }

  return v12;
}

@end
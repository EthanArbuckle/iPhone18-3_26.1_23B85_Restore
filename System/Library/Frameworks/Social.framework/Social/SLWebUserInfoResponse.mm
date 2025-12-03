@interface SLWebUserInfoResponse
- (SLWebUserInfoResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation SLWebUserInfoResponse

- (SLWebUserInfoResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  _SLLog(v5, 7, @"SLWebUserInfoResponse initWithData: %@ length urlResponse: %@ error: %@");

  v22.receiver = self;
  v22.super_class = SLWebUserInfoResponse;
  v12 = [(SLWebUserInfoResponse *)&v22 init:v19];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_error, error);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      statusCode = [responseCopy statusCode];
      v13->_statusCode = statusCode;
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:statusCode];
      _SLLog(v5, 7, @"SLWebUserInfoResponse httpResponse status code %@");

      if (!v13->_error)
      {
        v21 = 0;
        v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:{&v21, v20}];
        v16 = v21;
        v17 = v21;
        if (v17)
        {
          objc_storeStrong(&v13->_error, v16);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SLWebUserInfoResponse *)v13 _populateDataFromResponseDictionary:v15];
        }

        else
        {
          _SLLog(v5, 7, @"SLWebUserInfoResponse response JSON data does not represent NSDictionary. Game over.");
        }
      }
    }

    else
    {
      _SLLog(v5, 7, @"SLWebUserInfoResponse response is not NSHTTPURLResponse. Game over.");
    }
  }

  return v13;
}

@end
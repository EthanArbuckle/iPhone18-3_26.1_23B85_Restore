@interface SLGoogleLegacyTokenMigrationResponse
- (SLGoogleLegacyTokenMigrationResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation SLGoogleLegacyTokenMigrationResponse

- (SLGoogleLegacyTokenMigrationResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  _SLLog(v5, 7, @"SLGoogleLegacyTokenMigrationResponse initWithData: %@ length urlResponse: %@ error: %@");

  v19.receiver = self;
  v19.super_class = SLGoogleLegacyTokenMigrationResponse;
  v12 = [(SLGoogleLegacyTokenMigrationResponse *)&v19 init:v17];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_error, error);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13->_statusCode = [responseCopy statusCode];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
      responseBody = v13->_responseBody;
      v13->_responseBody = v14;

      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v13->_statusCode];
      _SLLog(v5, 7, @"SLGoogleLegacyTokenMigrationResponse httpResponse status code %@");
    }

    else
    {
      _SLLog(v5, 7, @"SLGoogleLegacyTokenMigrationResponse response is not NSHTTPURLResponse. Game over.");
    }
  }

  return v13;
}

@end
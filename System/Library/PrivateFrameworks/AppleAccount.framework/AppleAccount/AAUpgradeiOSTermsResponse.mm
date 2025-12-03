@interface AAUpgradeiOSTermsResponse
- (AAUpgradeiOSTermsResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation AAUpgradeiOSTermsResponse

- (AAUpgradeiOSTermsResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v17 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = AAUpgradeiOSTermsResponse;
  v8 = [(AAResponse *)&v14 initWithHTTPResponse:responseCopy data:dataCopy bodyIsPlist:0];
  if (v8)
  {
    if ([dataCopy length])
    {
      v9 = dataCopy;
      p_super = &v8->_xmlUIData->super;
      v8->_xmlUIData = v9;
    }

    else
    {
      p_super = _AALogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        statusCode = [responseCopy statusCode];
        *buf = 134217984;
        v16 = statusCode;
        _os_log_impl(&dword_1B6F6A000, p_super, OS_LOG_TYPE_DEFAULT, "Empty response for iOS Terms XMLUI, HTTP response: %ld", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

@end
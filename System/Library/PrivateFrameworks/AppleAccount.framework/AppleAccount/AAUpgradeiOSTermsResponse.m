@interface AAUpgradeiOSTermsResponse
- (AAUpgradeiOSTermsResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
@end

@implementation AAUpgradeiOSTermsResponse

- (AAUpgradeiOSTermsResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AAUpgradeiOSTermsResponse;
  v8 = [(AAResponse *)&v14 initWithHTTPResponse:v6 data:v7 bodyIsPlist:0];
  if (v8)
  {
    if ([v7 length])
    {
      v9 = v7;
      p_super = &v8->_xmlUIData->super;
      v8->_xmlUIData = v9;
    }

    else
    {
      p_super = _AALogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 statusCode];
        *buf = 134217984;
        v16 = v11;
        _os_log_impl(&dword_1B6F6A000, p_super, OS_LOG_TYPE_DEFAULT, "Empty response for iOS Terms XMLUI, HTTP response: %ld", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

@end
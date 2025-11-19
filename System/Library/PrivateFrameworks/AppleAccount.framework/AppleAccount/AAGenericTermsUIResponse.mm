@interface AAGenericTermsUIResponse
- (AAGenericTermsUIResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
@end

@implementation AAGenericTermsUIResponse

- (AAGenericTermsUIResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v21.receiver = self;
  v21.super_class = AAGenericTermsUIResponse;
  v8 = [(AAResponse *)&v21 initWithHTTPResponse:a3 data:v7 bodyIsPlist:1];
  v9 = v8;
  if (v8 && [(NSHTTPURLResponse *)v8->super._httpResponse statusCode]== 200)
  {
    if (v7)
    {
      objc_storeStrong(&v9->_responseData, a4);
      v10 = [(NSDictionary *)v9->super._responseDictionary objectForKey:@"terms"];
      responseTermsDictionary = v9->_responseTermsDictionary;
      v9->_responseTermsDictionary = v10;

      v12 = [(NSDictionary *)v9->super._responseDictionary objectForKey:@"agreeUrl"];
      responseAgreeURL = v9->_responseAgreeURL;
      v9->_responseAgreeURL = v12;

      v14 = _AALogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        responseDictionary = v9->super._responseDictionary;
        *buf = 138412290;
        v23 = responseDictionary;
        v16 = "AAGenericTermsUIResponse _responseDictionary %@";
        v17 = v14;
        v18 = 12;
LABEL_8:
        _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

    else
    {
      v14 = _AALogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v16 = "ERROR: reponse data is nil";
        v17 = v14;
        v18 = 2;
        goto LABEL_8;
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

@end
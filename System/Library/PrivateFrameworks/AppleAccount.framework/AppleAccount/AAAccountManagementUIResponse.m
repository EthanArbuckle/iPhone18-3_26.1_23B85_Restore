@interface AAAccountManagementUIResponse
- (AAAccountManagementUIResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
@end

@implementation AAAccountManagementUIResponse

- (AAAccountManagementUIResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = AAAccountManagementUIResponse;
  v7 = [(AAResponse *)&v13 initWithHTTPResponse:a3 data:v6 bodyIsPlist:1];
  v8 = v7;
  if (v7 && [(NSHTTPURLResponse *)v7->super._httpResponse statusCode]== 200)
  {
    if (v6)
    {
      v9 = v6;
      p_super = &v8->_responseData->super;
      v8->_responseData = v9;
    }

    else
    {
      p_super = _AALogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1B6F6A000, p_super, OS_LOG_TYPE_DEFAULT, "ERROR: reponse data is nil", v12, 2u);
      }
    }
  }

  return v8;
}

@end
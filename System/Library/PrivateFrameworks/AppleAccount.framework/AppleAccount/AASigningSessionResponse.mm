@interface AASigningSessionResponse
- (AASigningSessionResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation AASigningSessionResponse

- (AASigningSessionResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v11.receiver = self;
  v11.super_class = AASigningSessionResponse;
  v5 = [(AAResponse *)&v11 initWithHTTPResponse:response data:data bodyIsPlist:0];
  v6 = v5;
  if (v5)
  {
    if (data)
    {
      v7 = [(NSDictionary *)v5->super._responseDictionary objectForKey:@"session-info"];
      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
        p_super = &v6->_sessionData->super;
        v6->_sessionData = v8;
      }

      else
      {
        p_super = _AALogSystem();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [AASigningSessionResponse initWithHTTPResponse:? data:?];
        }
      }
    }

    else
    {
      v7 = _AALogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [AASigningSessionResponse initWithHTTPResponse:data:];
      }
    }
  }

  return v6;
}

- (void)initWithHTTPResponse:(uint64_t *)a1 data:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

@end
@interface AADeviceListResponse
- (AADeviceListResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation AADeviceListResponse

- (AADeviceListResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v34 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = AADeviceListResponse;
  v4 = [(AAResponse *)&v28 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4)
  {
    responseDictionary = [(AAResponse *)v4 responseDictionary];
    v7 = [responseDictionary objectForKeyedSubscript:@"devices"];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      array = [MEMORY[0x1E695DF70] array];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v25;
        do
        {
          v13 = 0;
          do
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v24 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [AADevice alloc];
              v16 = [(AADevice *)v15 initWithDictionary:v14, v24];
              [(NSArray *)array addObject:v16];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v11);
      }

      devices = v5->_devices;
      v5->_devices = array;
    }

    else
    {
      responseDictionary2 = [(AAResponse *)v5 responseDictionary];
      devices = [responseDictionary2 objectForKeyedSubscript:@"status"];

      responseDictionary3 = [(AAResponse *)v5 responseDictionary];
      v20 = [responseDictionary3 objectForKeyedSubscript:@"status-message"];

      v21 = _AALogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v30 = devices;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Error: Device list not seen in server response data with status=%@ message=%@", buf, 0x16u);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
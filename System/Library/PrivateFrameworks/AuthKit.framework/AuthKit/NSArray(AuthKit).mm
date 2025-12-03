@interface NSArray(AuthKit)
+ (id)ak_arrayWithJSONResponseData:()AuthKit;
@end

@implementation NSArray(AuthKit)

+ (id)ak_arrayWithJSONResponseData:()AuthKit
{
  v25 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    v17 = 0;
    v15 = 0;
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:location[0] options:0 error:&v15];
    objc_storeStrong(&v17, v15);
    v16 = v7;
    if (v17)
    {
      v14 = _AKLogSystem();
      v13 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v24, v17);
        _os_log_error_impl(&dword_193225000, v14, v13, "There was an error parsing body data! %@", v24, 0xCu);
      }

      objc_storeStrong(&v14, 0);
      v23 = 0;
      v18 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = MEMORY[0x1E69E5928](v16);
        v18 = 1;
      }

      else
      {
        oslog = _AKLogSystem();
        v11 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v5 = oslog;
          v6 = v11;
          __os_log_helper_16_0_0(v10);
          _os_log_error_impl(&dword_193225000, v5, v6, "The body data was not in the expected (dictionary) format!", v10, 2u);
        }

        objc_storeStrong(&oslog, 0);
        v23 = 0;
        v18 = 1;
      }
    }

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      __os_log_helper_16_0_0(v19);
      _os_log_error_impl(&dword_193225000, log, type, "Error: No response data!", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v23 = 0;
    v18 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v23;

  return v3;
}

@end
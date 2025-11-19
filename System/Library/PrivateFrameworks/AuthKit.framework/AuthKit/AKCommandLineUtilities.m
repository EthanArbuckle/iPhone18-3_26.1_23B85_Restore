@interface AKCommandLineUtilities
- (BOOL)_isURLString:(id)a3;
- (NSDateFormatter)dateFormatter;
- (id)_hostURL;
- (id)errorFromServerResponseBody:(id)a3;
- (id)jsonDictionaryForData:(id)a3 error:(id)a4;
- (id)mutableJSONRequestForPath:(id)a3;
- (id)mutableJSONRequestForURL:(id)a3;
- (void)beginDataTaskWithRequest:(id)a3 completionHandler:(id)a4;
- (void)createAndExecuteRequestForPath:(id)a3 requestBody:(id)a4 httpMethod:(id)a5 configuration:(id)a6 completion:(id)a7;
- (void)signXMLRequest:(id)a3;
- (void)signXMLRequest:(id)a3 withPostbackDictionary:(id)a4;
- (void)updateConfiguration:(id)a3 fromXMLAttributes:(id)a4 response:(id)a5;
@end

@implementation AKCommandLineUtilities

- (NSDateFormatter)dateFormatter
{
  if (!self->_dateFormatter)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = self->_dateFormatter;
    self->_dateFormatter = v2;
    MEMORY[0x1E69E5920](dateFormatter);
    [(NSDateFormatter *)self->_dateFormatter setDateStyle:2];
    [(NSDateFormatter *)self->_dateFormatter setTimeStyle:0];
    [(NSDateFormatter *)self->_dateFormatter setDateFormat:@"yyyy-MM-dd"];
  }

  v4 = self->_dateFormatter;

  return v4;
}

- (void)createAndExecuteRequestForPath:(id)a3 requestBody:(id)a4 httpMethod:(id)a5 configuration:(id)a6 completion:(id)a7
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v24 = 0;
  objc_storeStrong(&v24, a6);
  v23 = 0;
  objc_storeStrong(&v23, a7);
  v22 = [(AKCommandLineUtilities *)v28 mutableJSONRequestForPath:location[0]];
  [v22 ak_setJSONBodyWithParameters:v26];
  [v22 setHTTPMethod:v25];
  v7 = [v24 resourceLoadDelegate];
  [v7 signRequest:v22];
  MEMORY[0x1E69E5920](v7);
  objc_initWeak(&v21, v28);
  v9 = v28;
  v8 = v22;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __105__AKCommandLineUtilities_createAndExecuteRequestForPath_requestBody_httpMethod_configuration_completion___block_invoke;
  v18 = &unk_1E73D7A48;
  objc_copyWeak(&v20, &v21);
  v19 = MEMORY[0x1E69E5928](v23);
  [(AKCommandLineUtilities *)v9 beginDataTaskWithRequest:v8 completionHandler:&v14];
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v21);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void __105__AKCommandLineUtilities_createAndExecuteRequestForPath_requestBody_httpMethod_configuration_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 40));
  if (v13[0] && location[0])
  {
    v12 = 0;
    v11 = [v13[0] jsonDictionaryForData:location[0] error:0];
    v4 = [v13[0] errorFromServerResponseBody:v11];
    v5 = v14;
    v14 = v4;
    MEMORY[0x1E69E5920](v5);
    v6 = objc_opt_class();
    v10 = _AKSafeCast_15(v6, v15);
    (*(*(a1 + 32) + 16))(*(a1 + 32), v10, v11, v14);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (id)_hostURL
{
  v5 = &_hostURL_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_39);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = _hostURL_hostURL;

  return v2;
}

void __34__AKCommandLineUtilities__hostURL__block_invoke()
{
  v0 = [AKURLBag bagForAltDSID:0];
  v1 = [v0 lastKnownIDMSEnvironment];
  MEMORY[0x1E69E5920](v0);
  if (v1)
  {
    switch(v1)
    {
      case 1:
        objc_storeStrong(&_hostURL_hostURL, @"https://grandslam-idms1.apple.com");
        break;
      case 2:
        objc_storeStrong(&_hostURL_hostURL, @"https://grandslam-idms2.apple.com");
        break;
      case 3:
        objc_storeStrong(&_hostURL_hostURL, @"https://grandslam-idms3.apple.com");
        break;
    }
  }

  else
  {
    objc_storeStrong(&_hostURL_hostURL, @"https://gsa.apple.com");
  }
}

- (id)mutableJSONRequestForPath:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x1E696AF20];
  v5 = [(AKCommandLineUtilities *)v11 _hostURL];
  v9 = [v4 componentsWithString:?];
  MEMORY[0x1E69E5920](v5);
  [v9 setPath:location[0]];
  v6 = v11;
  v7 = [v9 URL];
  v8 = [(AKCommandLineUtilities *)v6 mutableJSONRequestForURL:?];
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)mutableJSONRequestForURL:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = _AKLogSystem();
  v6 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v9, location[0]);
    _os_log_error_impl(&dword_193225000, v7, v6, "_mutableJSONRequestForURL: %@", v9, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  v5 = [MEMORY[0x1E695AC18] requestWithURL:location[0]];
  [v5 setValue:? forHTTPHeaderField:?];
  [v5 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v4 = MEMORY[0x1E69E5928](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v4;
}

- (id)errorFromServerResponseBody:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  v28 = [location[0] objectForKeyedSubscript:@"hasError"];
  v27 = [location[0] objectForKeyedSubscript:@"serviceErrors"];
  if (([v28 BOOLValue] & 1) != 0 || objc_msgSend(v27, "count"))
  {
    v26 = [v27 firstObject];
    v25 = 0;
    if (v26)
    {
      v24 = _AKLogSystem();
      v23 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v33, v26);
        _os_log_error_impl(&dword_193225000, v24, v23, "Server response contained error: %@", v33, 0xCu);
      }

      objc_storeStrong(&v24, 0);
      v16 = [v26 objectForKeyedSubscript:@"title"];
      MEMORY[0x1E69E5920](v16);
      if (v16)
      {
        v13 = [v26 objectForKeyedSubscript:@"message"];
        MEMORY[0x1E69E5920](v13);
        if (v13)
        {
          v31[0] = *MEMORY[0x1E696A578];
          v10 = [v26 objectForKeyedSubscript:@"title"];
          v32[0] = v10;
          v31[1] = *MEMORY[0x1E696A588];
          v9 = [v26 objectForKeyedSubscript:@"message"];
          v32[1] = v9;
          v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
          v4 = v25;
          v25 = v3;
          MEMORY[0x1E69E5920](v4);
          MEMORY[0x1E69E5920](v9);
          MEMORY[0x1E69E5920](v10);
        }

        else
        {
          oslog = _AKLogSystem();
          v18 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v11 = oslog;
            v12 = v18;
            __os_log_helper_16_0_0(v17);
            _os_log_error_impl(&dword_193225000, v11, v12, "Server error returned with no description!!", v17, 2u);
          }

          objc_storeStrong(&oslog, 0);
        }
      }

      else
      {
        v22 = _AKLogSystem();
        v21 = 16;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v14 = v22;
          v15 = v21;
          __os_log_helper_16_0_0(v20);
          _os_log_error_impl(&dword_193225000, v14, v15, "Server error returned with no title!", v20, 2u);
        }

        objc_storeStrong(&v22, 0);
      }
    }

    v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7029 userInfo:v25];
    v6 = v29;
    v29 = v5;
    MEMORY[0x1E69E5920](v6);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  v8 = MEMORY[0x1E69E5928](v29);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v8;
}

- (id)jsonDictionaryForData:(id)a3 error:(id)a4
{
  v15 = a4;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, v15);
  v17 = 0;
  if ([location[0] length])
  {
    v13 = &v18;
    v16 = v18;
    v14 = [MEMORY[0x1E696ACB0] JSONObjectWithData:location[0] options:0 error:&v16];
    objc_storeStrong(&v18, v16);
    v4 = v17;
    v17 = v14;
    MEMORY[0x1E69E5920](v4);
    if (v18)
    {
      v11 = v18;
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = [v5 initWithData:location[0] encoding:4];
      AKPrintLine(@"Error deserializing data %@ for data %@", v11, v12);
      MEMORY[0x1E69E5920](v12);
    }
  }

  v8 = &v17;
  v10 = MEMORY[0x1E69E5928](v17);
  obj = 0;
  objc_storeStrong(v8, 0);
  objc_storeStrong(&v18, obj);
  objc_storeStrong(location, obj);
  v6 = v10;

  return v6;
}

- (void)beginDataTaskWithRequest:(id)a3 completionHandler:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v7 = +[AKCommandLineURLSession sharedServerUIURLSession];
  v6 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __69__AKCommandLineUtilities_beginDataTaskWithRequest_completionHandler___block_invoke;
  v12 = &unk_1E73D41D8;
  v13 = MEMORY[0x1E69E5928](v14);
  v4 = [v7 beginDataTaskWithRequest:v6 completionHandler:?];
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __69__AKCommandLineUtilities_beginDataTaskWithRequest_completionHandler___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20[1] = a1;
  if (location[0])
  {
    v7 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
    queue = v7;
    v12 = MEMORY[0x1E69E9820];
    v13 = -1073741824;
    v14 = 0;
    v15 = __69__AKCommandLineUtilities_beginDataTaskWithRequest_completionHandler___block_invoke_2;
    v16 = &unk_1E73D7A70;
    v20[0] = MEMORY[0x1E69E5928](a1[4]);
    v17 = MEMORY[0x1E69E5928](location[0]);
    v18 = MEMORY[0x1E69E5928](v22);
    v19 = MEMORY[0x1E69E5928](v21);
    dispatch_async(queue, &v12);
    MEMORY[0x1E69E5920](queue);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(v20, 0);
  }

  else if (v21)
  {
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }
  }

  else if (a1[4])
  {
    v5 = a1[4];
    v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
    (*(v5 + 16))(v5, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

void *__69__AKCommandLineUtilities_beginDataTaskWithRequest_completionHandler___block_invoke_2(void *result)
{
  if (result[7])
  {
    v1 = result[4];
    v2 = result[5];
    v3 = result[6];
    return (*(result[7] + 16))();
  }

  return result;
}

- (void)updateConfiguration:(id)a3 fromXMLAttributes:(id)a4 response:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  v31 = 0;
  objc_storeStrong(&v31, a5);
  v30 = [v32 objectForKey:@"httpMethod"];
  v29 = [v32 objectForKey:@"url"];
  v23 = [location[0] request];
  v28 = [v23 mutableCopy];
  MEMORY[0x1E69E5920](v23);
  if ([(AKCommandLineUtilities *)v34 _isURLString:v29])
  {
    v19 = MEMORY[0x1E695AC18];
    v20 = [MEMORY[0x1E695DFF8] URLWithString:v29];
    v5 = [v19 requestWithURL:?];
    v6 = v28;
    v28 = v5;
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v20);
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E696AF20]);
    v17 = [v28 URL];
    v16 = [v17 absoluteString];
    v27 = [v15 initWithString:?];
    MEMORY[0x1E69E5920](v16);
    MEMORY[0x1E69E5920](v17);
    [v27 setPath:v29];
    v18 = [v27 URL];
    [v28 setURL:?];
    MEMORY[0x1E69E5920](v18);
    objc_storeStrong(&v27, 0);
  }

  if (v30 && [v30 length])
  {
    [v28 setHTTPMethod:v30];
  }

  else
  {
    [v28 setHTTPMethod:@"GET"];
  }

  v26 = [v31 allHeaderFields];
  memset(__b, 0, sizeof(__b));
  v13 = [v26 allKeys];
  v14 = [v13 countByEnumeratingWithState:__b objects:v35 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(v13);
      }

      v25 = *(__b[1] + 8 * v11);
      v7 = v28;
      v8 = [v26 objectForKey:v25];
      [v7 setValue:? forHTTPHeaderField:?];
      MEMORY[0x1E69E5920](v8);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [v13 countByEnumeratingWithState:__b objects:v35 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](v13);
  [location[0] setRequest:v28];
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)signXMLRequest:(id)a3 withPostbackDictionary:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [location[0] ak_setBodyWithParameters:v5];
  [location[0] setHTTPMethod:@"POST"];
  [(AKCommandLineUtilities *)v7 signXMLRequest:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)signXMLRequest:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] setValue:@"application/x-buddyml" forHTTPHeaderField:@"Accept"];
  [location[0] setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  objc_storeStrong(location, 0);
}

- (BOOL)_isURLString:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [MEMORY[0x1E695DFF8] URLWithString:location[0]];
  v7 = 0;
  v5 = 0;
  v4 = 0;
  if (v9)
  {
    v8 = [v9 scheme];
    v7 = 1;
    v4 = 0;
    if (v8)
    {
      v6 = [v9 host];
      v5 = 1;
      v4 = v6 != 0;
    }
  }

  v11 = v4;
  if (v5)
  {
    MEMORY[0x1E69E5920](v6);
  }

  if (v7)
  {
    MEMORY[0x1E69E5920](v8);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v11;
}

@end
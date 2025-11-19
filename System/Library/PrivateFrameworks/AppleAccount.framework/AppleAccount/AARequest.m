@interface AARequest
+ (id)redactedHeadersFromHTTPHeaders:(id)a3;
- (AARequest)initWithURLString:(id)a3;
- (NSURLRequest)urlRequest;
- (id)bodyDictionary;
- (id)redactedBodyStringWithPropertyList:(id)a3;
- (void)_handleDataTaskCompletionWithData:(id)a3 response:(id)a4 error:(id)a5;
- (void)dealloc;
- (void)performPinnedOnlyRequestWithHandler:(id)a3;
- (void)performPinnedRequestWithHandler:(id)a3;
- (void)performRequestForDevice:(id)a3 anisetteDataProvider:(id)a4 withHandler:(id)a5;
- (void)performRequestWithHandler:(id)a3;
- (void)performRequestWithSession:(id)a3 withHandler:(id)a4;
- (void)performSignedRequestWithHandler:(id)a3;
- (void)setCookieStorage:(OpaqueCFHTTPCookieStorage *)a3;
@end

@implementation AARequest

- (AARequest)initWithURLString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AARequest;
  v6 = [(AARequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initialURLString, a3);
  }

  return v7;
}

- (void)setCookieStorage:(OpaqueCFHTTPCookieStorage *)a3
{
  cookieStorage = self->_cookieStorage;
  if (cookieStorage != a3)
  {
    if (cookieStorage)
    {
      CFRelease(cookieStorage);
    }

    self->_cookieStorage = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (NSURLRequest)urlRequest
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = [(AARequest *)self urlString];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"https://setup.icloud.com";
  }

  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v4];
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Request URL: %@", buf, 0xCu);
  }

  v7 = [(AARequest *)self flushCache];
  v8 = MEMORY[0x1E695AC18];
  v9 = [v5 URL];
  v10 = [v8 requestWithURL:v9 cachePolicy:v7 timeoutInterval:60.0];

  v11 = +[AADeviceInfo clientInfoHeader];
  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = v11;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Client Info Header: %@", buf, 0xCu);
  }

  [v10 addValue:v11 forHTTPHeaderField:@"X-MMe-Client-Info"];
  v13 = [MEMORY[0x1E695DF58] currentLocale];
  v14 = [v13 objectForKey:*MEMORY[0x1E695D978]];
  v15 = [v14 uppercaseString];
  [v10 addValue:v15 forHTTPHeaderField:@"X-MMe-Country"];

  v16 = [MEMORY[0x1E695DF58] preferredLanguages];
  v17 = [v16 componentsJoinedByString:{@", "}];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"en";
  }

  [v10 addValue:v19 forHTTPHeaderField:@"X-MMe-Language"];

  v20 = MEMORY[0x1E695DF58];
  v21 = [MEMORY[0x1E695DF58] _deviceLanguage];
  v50 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v23 = [v20 minimizedLanguagesFromLanguages:v22];
  v24 = [v23 componentsJoinedByString:{@", "}];

  [v10 addValue:v24 forHTTPHeaderField:@"Accept-Language"];
  if (self->_cookieStorage)
  {
    [v10 _CFURLRequest];
    cookieStorage = self->_cookieStorage;
    CFURLRequestSetHTTPCookieStorage();
    v26 = _AALogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v4;
      _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "Use custom cookie storage for urlRequest: %@", buf, 0xCu);
    }
  }

  if (self->_oneTimePassword)
  {
    v27 = _AALogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "Adding device provisioning OTP to the request header", buf, 2u);
    }

    [v10 addValue:self->_oneTimePassword forHTTPHeaderField:@"X-Apple-MD"];
  }

  if (self->_machineId)
  {
    v28 = _AALogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "Adding device provisioning machineId to the request header", buf, 2u);
    }

    [v10 addValue:self->_machineId forHTTPHeaderField:@"X-Apple-MD-M"];
  }

  [v10 aa_addMultiUserDeviceHeaderIfEnabled];
  if (+[AAPreferences isExperimentalModeEnabled])
  {
    v29 = _AALogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "Adding exp mode header", buf, 2u);
    }

    [v10 addValue:@"true" forHTTPHeaderField:@"X-iCloud-Experiment-Mode"];
  }

  if (self->_customHeaders)
  {
    v43 = v24;
    v44 = v11;
    v30 = v5;
    v31 = v4;
    v32 = _AALogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      customHeaders = self->_customHeaders;
      *buf = 138412290;
      v52 = customHeaders;
      _os_log_impl(&dword_1B6F6A000, v32, OS_LOG_TYPE_DEFAULT, "Appending custom headers %@", buf, 0xCu);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v34 = self->_customHeaders;
    v35 = [(NSDictionary *)v34 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v46;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v46 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v45 + 1) + 8 * i);
          v40 = [(NSDictionary *)self->_customHeaders objectForKeyedSubscript:v39, v43, v44, v45];
          [v10 setValue:v40 forHTTPHeaderField:v39];
        }

        v36 = [(NSDictionary *)v34 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v36);
    }

    v4 = v31;
    v5 = v30;
    v24 = v43;
    v11 = v44;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)bodyDictionary
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [objc_opt_class() protocolVersion];
  [v2 setObject:v3 forKey:@"protocolVersion"];

  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [v5 name];

  [v4 setObject:v6 forKey:@"timezone"];
  v7 = [MEMORY[0x1E695DF58] preferredLanguages];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"en";
  }

  [v4 setObject:v9 forKey:@"language"];
  v10 = +[AADeviceInfo appleIDClientIdentifier];
  [v4 setObject:v10 forKey:@"client-id"];

  [v2 setObject:v4 forKey:@"userInfo"];

  return v2;
}

- (void)performRequestWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[AAURLSession sharedSession];
  [(AARequest *)self performRequestWithSession:v5 withHandler:v4];
}

- (void)performSignedRequestWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[AAURLSession sharedSigningSession];
  [(AARequest *)self performRequestWithSession:v5 withHandler:v4];
}

- (void)performPinnedRequestWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[AAURLSession sharedPinningSession];
  [(AARequest *)self performRequestWithSession:v5 withHandler:v4];
}

- (void)performPinnedOnlyRequestWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[AAURLSession sharedPinningOnlySession];
  [(AARequest *)self performRequestWithSession:v5 withHandler:v4];
}

- (void)performRequestForDevice:(id)a3 anisetteDataProvider:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__8;
  v20 = __Block_byref_object_dispose__8;
  v21 = [[AAURLSession alloc] initForProxiedDevice:v8 anisetteDataProvider:v9];
  v11 = v17[5];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__AARequest_performRequestForDevice_anisetteDataProvider_withHandler___block_invoke;
  v13[3] = &unk_1E7C9C4A0;
  v15 = &v16;
  v12 = v10;
  v14 = v12;
  [(AARequest *)self performRequestWithSession:v11 withHandler:v13];

  _Block_object_dispose(&v16, 8);
}

void __70__AARequest_performRequestForDevice_anisetteDataProvider_withHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
  v9 = a4;
  v10 = a3;
  v11 = a2;

  (*(*(a1 + 32) + 16))();
}

- (void)performRequestWithSession:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AARequest_performRequestWithSession_withHandler___block_invoke;
  block[3] = &unk_1E7C9C4C8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __51__AARequest_performRequestWithSession_withHandler___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) urlString];

  if (v3)
  {
    v4 = [*v2 urlRequest];
    if (v4)
    {
      v5 = [*(a1 + 48) copy];
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      *(v6 + 8) = v5;

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __51__AARequest_performRequestWithSession_withHandler___block_invoke_86;
      v24[3] = &unk_1E7C9C230;
      v8 = *(a1 + 40);
      v24[4] = *(a1 + 32);
      v9 = [v8 dataTaskWithRequest:v4 completion:v24];
      [v9 resume];
    }

    else
    {
      v16 = _AALogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __51__AARequest_performRequestWithSession_withHandler___block_invoke_cold_1(v2, v16);
      }

      if (*(a1 + 48))
      {
        v17 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A578];
        v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v19 = [v18 localizedStringForKey:@"ICLOUD_CONFIG_ERROR" value:0 table:@"Localizable"];
        v26 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v21 = [v17 errorWithDomain:@"com.apple.appleaccount" code:-2 userInfo:v20];

        v22 = *(a1 + 32);
        (*(*(a1 + 48) + 16))();
      }
    }

    goto LABEL_12;
  }

  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __51__AARequest_performRequestWithSession_withHandler___block_invoke_cold_2(v2, v10);
  }

  if (*(a1 + 48))
  {
    v11 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v13 = [v12 localizedStringForKey:@"ICLOUD_CONFIG_ERROR" value:0 table:@"Localizable"];
    v28[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v4 = [v11 errorWithDomain:@"com.apple.appleaccount" code:-2 userInfo:v14];

    v15 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
LABEL_12:
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_handleDataTaskCompletionWithData:(id)a3 response:(id)a4 error:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v9;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Data task did complete with error: %@", &v19, 0xCu);
  }

  if (!v9)
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Response: %@", &v19, 0xCu);
    }
  }

  v13 = [objc_alloc(objc_msgSend(objc_opt_class() "responseClass"))];

  if (!v13)
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Failed to parse an AAResponse", &v19, 2u);
    }
  }

  v15 = [v9 _aa_userReadableError];
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, self, v13, v15);
    v17 = self->_handler;
    self->_handler = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  cookieStorage = self->_cookieStorage;
  if (cookieStorage)
  {
    CFRelease(cookieStorage);
  }

  v4.receiver = self;
  v4.super_class = AARequest;
  [(AARequest *)&v4 dealloc];
}

- (id)redactedBodyStringWithPropertyList:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [a3 mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [&unk_1F2F24CE0 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(&unk_1F2F24CE0);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v3 valueForKey:v8];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 unredactedSuffixOfLength:4];
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"...%@", v11];
          [v3 setValue:v12 forKey:v8];
        }
      }

      v5 = [&unk_1F2F24CE0 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:100 options:0 error:0];
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v13 length:"bytes") encoding:{objc_msgSend(v13, "length"), 4}];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)redactedHeadersFromHTTPHeaders:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a3 mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [&unk_1F2F24CF8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(&unk_1F2F24CF8);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v3 valueForKey:v8];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 unredactedSuffixOfLength:4];
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"...%@", v11];
          [v3 setValue:v12 forKey:v8];
        }
      }

      v5 = [&unk_1F2F24CF8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

void __51__AARequest_performRequestWithSession_withHandler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138477827;
  v5 = v2;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "AARequest has nil underlying request (%{private}@). Calling handler with an error.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __51__AARequest_performRequestWithSession_withHandler___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138477827;
  v5 = v2;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "AARequest has nil URL (%{private}@). Calling handler with an error.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end
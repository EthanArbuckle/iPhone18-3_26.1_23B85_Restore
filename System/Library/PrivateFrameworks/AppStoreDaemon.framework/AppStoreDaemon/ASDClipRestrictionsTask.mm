@interface ASDClipRestrictionsTask
- (ASDClipRestrictionsTask)initWithClipRequest:(id)a3;
- (ASDClipRestrictionsTask)initWithClipRequest:(id)a3 verificationDate:(id)a4;
- (ASDClipRestrictionsTask)initWithDictionary:(id)a3 verificationDate:(id)a4;
- (void)_verifyRequest;
@end

@implementation ASDClipRestrictionsTask

- (ASDClipRestrictionsTask)initWithDictionary:(id)a3 verificationDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASDClipRestrictionsTask;
  v9 = [(ASDClipRestrictionsTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dictionary, a3);
    objc_storeStrong(&v10->_verificationDate, a4);
    [(ASDClipRestrictionsTask *)v10 _verifyRequest];
  }

  return v10;
}

- (void)_verifyRequest
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 16) objectForKeyedSubscript:@"attributes"];
  v3 = [v2 objectForKeyedSubscript:@"appContentRatingsBySystem"];
  v4 = [v3 objectForKeyedSubscript:@"appsApple"];
  v5 = [v4 objectForKeyedSubscript:@"value"];

  if (v5)
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v40) = 0;
      _os_log_impl(&dword_1B8220000, v6, OS_LOG_TYPE_INFO, "Performing age verification", &v40, 2u);
    }

    v7 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v8 = [v7 effectiveValueForSetting:*MEMORY[0x1E69ADED0]];

    v9 = [v8 integerValue];
    v10 = [*(a1 + 16) objectForKeyedSubscript:@"attributes"];
    v11 = [v10 objectForKeyedSubscript:@"appContentRatingsBySystem"];
    v12 = [v11 objectForKeyedSubscript:@"appsApple"];
    v13 = [v12 objectForKeyedSubscript:@"value"];

    if (objc_opt_respondsToSelector())
    {
      v14 = [v13 integerValue];
    }

    else
    {
      v14 = 0;
    }

    v16 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v40 = 134218240;
      v41 = v14;
      v42 = 2048;
      v43 = v9;
      _os_log_impl(&dword_1B8220000, v16, OS_LOG_TYPE_INFO, "Verfiying app rank: %ld to restrictionsRank: %ld", &v40, 0x16u);
    }

    if (v14 <= v9)
    {
      v15 = 0;
    }

    else
    {
      v17 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v40) = 0;
        _os_log_error_impl(&dword_1B8220000, v17, OS_LOG_TYPE_ERROR, "Age verificaton failed", &v40, 2u);
      }

      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = [*(a1 + 16) objectForKeyedSubscript:@"attributes"];
  v19 = [v18 objectForKeyedSubscript:@"permissions"];
  if (v19)
  {
    v20 = v19;
    v21 = [*(a1 + 16) objectForKeyedSubscript:@"attributes"];
    v22 = [v21 objectForKeyedSubscript:@"permissions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [*(a1 + 16) objectForKeyedSubscript:@"attributes"];
      v24 = [v23 objectForKeyedSubscript:@"permissions"];
      v25 = [v24 containsObject:@"koreanAgeVerification"];

      if (!v25)
      {
        goto LABEL_41;
      }

      v26 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      v18 = [v26 ams_activeiTunesAccount];

      if (!v18)
      {
        v27 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v40) = 0;
          _os_log_error_impl(&dword_1B8220000, v27, OS_LOG_TYPE_ERROR, "AppStore account required to verify Korean age verification", &v40, 2u);
        }
      }

      v28 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&dword_1B8220000, v28, OS_LOG_TYPE_INFO, "Performing Korean age verification", &v40, 2u);
      }

      v21 = [v18 ams_accountFlagValueForAccountFlag:*MEMORY[0x1E698C498]];
      if (v21 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{(objc_msgSend(v21, "longLongValue") / 1000)}];
      }

      else
      {
        v20 = 0;
      }

      v29 = *(a1 + 24);
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = [MEMORY[0x1E695DF00] date];
      }

      v22 = v30;

      v31 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v40 = 138412546;
        v41 = v22;
        v42 = 2112;
        v43 = v20;
        _os_log_impl(&dword_1B8220000, v31, OS_LOG_TYPE_INFO, "Verfiying currentDate: %@ is before expirationDate: %@", &v40, 0x16u);
      }

      if (!v20 || [v22 compare:v20] != -1)
      {
        v32 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v40) = 0;
          _os_log_error_impl(&dword_1B8220000, v32, OS_LOG_TYPE_ERROR, "Korean age verification failed", &v40, 2u);
        }

        v15 |= 2uLL;
      }
    }
  }

LABEL_41:
  v33 = [*(a1 + 16) objectForKeyedSubscript:@"attributes"];
  v34 = [v33 objectForKeyedSubscript:@"platformAttributes"];
  v35 = [v34 objectForKeyedSubscript:@"ios"];
  v36 = [v35 objectForKeyedSubscript:@"minimumOSVersion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = [MEMORY[0x1E698C8A8] productVersion];
    if (v37)
    {
      if ([v36 compare:v37 options:64] == 1)
      {
        v15 |= 4uLL;
      }
    }

    else
    {
      v38 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v40) = 0;
        _os_log_error_impl(&dword_1B8220000, v38, OS_LOG_TYPE_ERROR, "Unable to read device OS version, skipping minimum OS version check!", &v40, 2u);
      }
    }
  }

  *(a1 + 8) = v15;

  v39 = *MEMORY[0x1E69E9840];
}

- (ASDClipRestrictionsTask)initWithClipRequest:(id)a3
{
  v4 = [a3 dictionary];
  v5 = [(ASDClipRestrictionsTask *)self initWithDictionary:v4 verificationDate:0];

  return v5;
}

- (ASDClipRestrictionsTask)initWithClipRequest:(id)a3 verificationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ASDClipRestrictionsTask;
  v8 = [(ASDClipRestrictionsTask *)&v13 init];
  if (v8)
  {
    v9 = [v6 dictionary];
    v10 = [v9 copy];
    dictionary = v8->_dictionary;
    v8->_dictionary = v10;

    objc_storeStrong(&v8->_verificationDate, a4);
    [(ASDClipRestrictionsTask *)v8 _verifyRequest];
  }

  return v8;
}

@end
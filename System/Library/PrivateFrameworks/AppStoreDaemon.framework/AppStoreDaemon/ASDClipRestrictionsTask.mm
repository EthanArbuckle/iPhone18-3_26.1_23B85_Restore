@interface ASDClipRestrictionsTask
- (ASDClipRestrictionsTask)initWithClipRequest:(id)request;
- (ASDClipRestrictionsTask)initWithClipRequest:(id)request verificationDate:(id)date;
- (ASDClipRestrictionsTask)initWithDictionary:(id)dictionary verificationDate:(id)date;
- (void)_verifyRequest;
@end

@implementation ASDClipRestrictionsTask

- (ASDClipRestrictionsTask)initWithDictionary:(id)dictionary verificationDate:(id)date
{
  dictionaryCopy = dictionary;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = ASDClipRestrictionsTask;
  v9 = [(ASDClipRestrictionsTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dictionary, dictionary);
    objc_storeStrong(&v10->_verificationDate, date);
    [(ASDClipRestrictionsTask *)v10 _verifyRequest];
  }

  return v10;
}

- (void)_verifyRequest
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = [*(self + 16) objectForKeyedSubscript:@"attributes"];
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

    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    v8 = [mEMORY[0x1E69ADFB8] effectiveValueForSetting:*MEMORY[0x1E69ADED0]];

    integerValue = [v8 integerValue];
    v10 = [*(self + 16) objectForKeyedSubscript:@"attributes"];
    v11 = [v10 objectForKeyedSubscript:@"appContentRatingsBySystem"];
    v12 = [v11 objectForKeyedSubscript:@"appsApple"];
    v13 = [v12 objectForKeyedSubscript:@"value"];

    if (objc_opt_respondsToSelector())
    {
      integerValue2 = [v13 integerValue];
    }

    else
    {
      integerValue2 = 0;
    }

    v16 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v40 = 134218240;
      v41 = integerValue2;
      v42 = 2048;
      v43 = integerValue;
      _os_log_impl(&dword_1B8220000, v16, OS_LOG_TYPE_INFO, "Verfiying app rank: %ld to restrictionsRank: %ld", &v40, 0x16u);
    }

    if (integerValue2 <= integerValue)
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

  ams_activeiTunesAccount = [*(self + 16) objectForKeyedSubscript:@"attributes"];
  v19 = [ams_activeiTunesAccount objectForKeyedSubscript:@"permissions"];
  if (v19)
  {
    v20 = v19;
    v21 = [*(self + 16) objectForKeyedSubscript:@"attributes"];
    v22 = [v21 objectForKeyedSubscript:@"permissions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [*(self + 16) objectForKeyedSubscript:@"attributes"];
      v24 = [v23 objectForKeyedSubscript:@"permissions"];
      v25 = [v24 containsObject:@"koreanAgeVerification"];

      if (!v25)
      {
        goto LABEL_41;
      }

      ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

      if (!ams_activeiTunesAccount)
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

      v21 = [ams_activeiTunesAccount ams_accountFlagValueForAccountFlag:*MEMORY[0x1E698C498]];
      if (v21 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{(objc_msgSend(v21, "longLongValue") / 1000)}];
      }

      else
      {
        v20 = 0;
      }

      v29 = *(self + 24);
      if (v29)
      {
        date = v29;
      }

      else
      {
        date = [MEMORY[0x1E695DF00] date];
      }

      v22 = date;

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
  v33 = [*(self + 16) objectForKeyedSubscript:@"attributes"];
  v34 = [v33 objectForKeyedSubscript:@"platformAttributes"];
  v35 = [v34 objectForKeyedSubscript:@"ios"];
  v36 = [v35 objectForKeyedSubscript:@"minimumOSVersion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    productVersion = [MEMORY[0x1E698C8A8] productVersion];
    if (productVersion)
    {
      if ([v36 compare:productVersion options:64] == 1)
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

  *(self + 8) = v15;

  v39 = *MEMORY[0x1E69E9840];
}

- (ASDClipRestrictionsTask)initWithClipRequest:(id)request
{
  dictionary = [request dictionary];
  v5 = [(ASDClipRestrictionsTask *)self initWithDictionary:dictionary verificationDate:0];

  return v5;
}

- (ASDClipRestrictionsTask)initWithClipRequest:(id)request verificationDate:(id)date
{
  requestCopy = request;
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = ASDClipRestrictionsTask;
  v8 = [(ASDClipRestrictionsTask *)&v13 init];
  if (v8)
  {
    dictionary = [requestCopy dictionary];
    v10 = [dictionary copy];
    dictionary = v8->_dictionary;
    v8->_dictionary = v10;

    objc_storeStrong(&v8->_verificationDate, date);
    [(ASDClipRestrictionsTask *)v8 _verifyRequest];
  }

  return v8;
}

@end
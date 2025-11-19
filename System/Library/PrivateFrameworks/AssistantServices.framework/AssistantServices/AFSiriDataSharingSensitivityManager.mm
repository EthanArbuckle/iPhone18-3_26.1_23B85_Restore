@interface AFSiriDataSharingSensitivityManager
+ (id)shared;
- (AFSiriDataSharingSensitivityManager)init;
- (BOOL)_isRequestSensitiveForUnknownPolicy;
- (BOOL)_isRequestSensitiveWithPolicy:(int64_t)a3 optInStatus:(int64_t)a4 siriLanguageCode:(id)a5;
- (BOOL)isOptedOutOfMTE;
- (BOOL)isRequestSensitiveWithPolicy:(int64_t)a3 optInStatus:(int64_t)a4 siriLanguageCode:(id)a5;
- (void)_registerUpdateHandler;
@end

@implementation AFSiriDataSharingSensitivityManager

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, &__block_literal_global_38722);
  }

  v3 = shared_shared;

  return v3;
}

- (BOOL)isOptedOutOfMTE
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[AFSiriDataSharingSensitivityManager isOptedOutOfMTE]";
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s #MTEOptOut device is opted out of uploading MTE.", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)_isRequestSensitiveForUnknownPolicy
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[AFSiriDataSharingSensitivityManager _isRequestSensitiveForUnknownPolicy]";
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s Unknown sensitivity policy used. This should not happen! Assuming non-sensitive.", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)_isRequestSensitiveWithPolicy:(int64_t)a3 optInStatus:(int64_t)a4 siriLanguageCode:(id)a5
{
  v8 = a5;
  if (a4 == 1)
  {
    goto LABEL_2;
  }

  switch(a3)
  {
    case 0:
      v10 = [(AFSiriDataSharingSensitivityManager *)self _isRequestSensitiveForUnknownPolicy];
      goto LABEL_9;
    case 3:
      v10 = [(AFSiriDataSharingSensitivityManager *)self _isRequestSensitiveForSensitiveDomainWithSamplingPolicyForLanguage:v8];
      goto LABEL_9;
    case 2:
      v10 = [(AFSiriDataSharingSensitivityManager *)self _isRequestSensitiveForSensitiveDomainPolicy];
LABEL_9:
      v9 = v10;
      goto LABEL_10;
  }

LABEL_2:
  v9 = 0;
LABEL_10:

  return v9;
}

- (void)_registerUpdateHandler
{
  v17 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[AFSiriDataSharingSensitivityManager _registerUpdateHandler]";
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s Registering update handler", buf, 0xCu);
  }

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __61__AFSiriDataSharingSensitivityManager__registerUpdateHandler__block_invoke;
  v12 = &unk_1E7347978;
  objc_copyWeak(&v13, &location);
  v4 = MEMORY[0x193AFB7B0](&v9);
  client = self->_client;
  v6 = [getTRINamespaceClass() namespaceNameFromId:{1571, v9, v10, v11, v12}];
  v7 = [(TRIClient *)client addUpdateHandlerForNamespaceName:v6 usingBlock:v4];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  v8 = *MEMORY[0x1E69E9840];
}

void __61__AFSiriDataSharingSensitivityManager__registerUpdateHandler__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [v3 namespaceName];
    v10 = 136315394;
    v11 = "[AFSiriDataSharingSensitivityManager _registerUpdateHandler]_block_invoke";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s New update for %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] refresh];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRequestSensitiveWithPolicy:(int64_t)a3 optInStatus:(int64_t)a4 siriLanguageCode:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (+[AFFeatureFlags isOptOutLogRedactionEnabled])
  {
    v9 = [(AFSiriDataSharingSensitivityManager *)self _isRequestSensitiveWithPolicy:a3 optInStatus:a4 siriLanguageCode:v8];
    v10 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      if (v9)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      if ((a3 - 1) > 2)
      {
        v12 = @"AFSiriDataSharingSensitivityPolicyUnknown";
      }

      else
      {
        v12 = off_1E73479B0[a3 - 1];
      }

      v14 = v10;
      if (a4 > 3)
      {
        v15 = @"(unknown)";
      }

      else
      {
        v15 = off_1E7348978[a4];
      }

      v16 = v15;
      v19 = 136316162;
      v20 = "[AFSiriDataSharingSensitivityManager isRequestSensitiveWithPolicy:optInStatus:siriLanguageCode:]";
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s Request is sensitive:%@ with policy:%@, optInStatus:%@, siriLanguage:%@", &v19, 0x34u);
    }
  }

  else
  {
    v13 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315138;
      v20 = "[AFSiriDataSharingSensitivityManager isRequestSensitiveWithPolicy:optInStatus:siriLanguageCode:]";
      _os_log_debug_impl(&dword_1912FE000, v13, OS_LOG_TYPE_DEBUG, "%s FeatureFlag opt_out_log_redaction disabled. Skipping.", &v19, 0xCu);
    }

    LOBYTE(v9) = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (AFSiriDataSharingSensitivityManager)init
{
  v8.receiver = self;
  v8.super_class = AFSiriDataSharingSensitivityManager;
  v2 = [(AFSiriDataSharingSensitivityManager *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getTRIClientClass_softClass;
    v13 = getTRIClientClass_softClass;
    if (!getTRIClientClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getTRIClientClass_block_invoke;
      v9[3] = &unk_1E7349228;
      v9[4] = &v10;
      __getTRIClientClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = [v3 clientWithIdentifier:317];
    client = v2->_client;
    v2->_client = v5;

    [(AFSiriDataSharingSensitivityManager *)v2 _registerUpdateHandler];
  }

  return v2;
}

void __45__AFSiriDataSharingSensitivityManager_shared__block_invoke()
{
  v0 = objc_alloc_init(AFSiriDataSharingSensitivityManager);
  v1 = shared_shared;
  shared_shared = v0;
}

@end
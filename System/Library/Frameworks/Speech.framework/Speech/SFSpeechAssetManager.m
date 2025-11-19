@interface SFSpeechAssetManager
+ (BOOL)isLanguageDetectorInstalled;
+ (id)_serialQueueForClientIdentifier:(id)a3;
+ (id)_timeoutError:(double)a3;
+ (id)assetPathForLanguage:(id)a3;
+ (id)assetPathForLanguage:(id)a3 clientIdentifier:(id)a4;
+ (id)configParametersForVoicemailWithLanguage:(id)a3;
+ (id)configParametersForVoicemailWithLanguage:(id)a3 clientIdentifier:(id)a4;
+ (id)generalASRLanguageForLocale:(id)a3;
+ (id)installedLanguagesForTaskHint:(int64_t)a3;
+ (id)languageCode:(id)a3;
+ (id)pathToAssetWithConfig:(id)a3 clientIdentifier:(id)a4;
+ (id)subscriptionsForClientIdentifier:(id)a3;
+ (id)supportedLanguagesForTaskHint:(int64_t)a3;
+ (id)versionOfAssetWithConfig:(id)a3 clientIdentifier:(id)a4;
+ (void)fetchAssetWithConfig:(id)a3 clientIdentifier:(id)a4 detailedProgress:(id)a5 completion:(id)a6;
+ (void)fetchAssetWithConfig:(id)a3 clientIdentifier:(id)a4 expiration:(id)a5 detailedProgress:(id)a6 completion:(id)a7 timeout:(double)a8;
+ (void)fetchAssetWithConfig:(id)a3 clientIdentifier:(id)a4 expiration:(id)a5 progress:(id)a6 completion:(id)a7;
+ (void)fetchAssetWithConfig:(id)a3 clientIdentifier:(id)a4 progress:(id)a5 completion:(id)a6 timeout:(double)a7;
+ (void)fetchAssetsForLanguage:(id)a3 clientIdentifier:(id)a4 detailedProgress:(id)a5 completion:(id)a6;
+ (void)fetchAssetsForLanguage:(id)a3 clientIdentifier:(id)a4 progress:(id)a5 completion:(id)a6;
+ (void)fetchAssetsForLanguage:(id)a3 clientIdentifier:(id)a4 urgent:(BOOL)a5 forceUpgrade:(BOOL)a6 detailedProgress:(id)a7 completion:(id)a8;
+ (void)fetchAssetsForLanguage:(id)a3 clientIdentifier:(id)a4 urgent:(BOOL)a5 forceUpgrade:(BOOL)a6 progress:(id)a7 completion:(id)a8;
+ (void)fetchAssetsForLanguage:(id)a3 progress:(id)a4 completion:(id)a5;
+ (void)fetchAssetsForLanguage:(id)a3 taskHint:(int64_t)a4 clientIdentifier:(id)a5 progress:(id)a6 completion:(id)a7;
+ (void)fetchAssetsForLanguage:(id)a3 urgent:(BOOL)a4 forceUpgrade:(BOOL)a5 detailedProgress:(id)a6 completion:(id)a7;
+ (void)fetchAssetsForLanguage:(id)a3 urgent:(BOOL)a4 forceUpgrade:(BOOL)a5 progress:(id)a6 completion:(id)a7;
+ (void)fetchAssetsForLanguage:(id)a3 urgent:(BOOL)a4 progress:(id)a5 completion:(id)a6;
+ (void)fetchLanguageDetectorAssetsForClientIdentifier:(id)a3 progress:(id)a4 completion:(id)a5;
+ (void)installationStateForAssetConfig:(id)a3 clientIdentifier:(id)a4 completion:(id)a5;
+ (void)installedLanguagesForTaskHint:(int64_t)a3 completion:(id)a4;
+ (void)pathToAssetWithConfig:(id)a3 clientIdentifier:(id)a4 completion:(id)a5;
+ (void)purgeAssetsForLanguage:(id)a3 clientIdentifier:(id)a4 error:(id *)a5;
+ (void)purgeAssetsForLanguage:(id)a3 error:(id *)a4;
+ (void)supportedLanguagesForTaskHint:(int64_t)a3 completion:(id)a4;
+ (void)unsubscribeFromAssetWithConfig:(id)a3 clientIdentifier:(id)a4 completion:(id)a5;
+ (void)unsubscribeFromAssetWithConfig:(id)a3 clientIdentifier:(id)a4 error:(id *)a5;
@end

@implementation SFSpeechAssetManager

+ (id)_timeoutError:(double)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Operation timed out after %.2f seconds.", *&a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"SFSpeechErrorDomain" code:12 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_serialQueueForClientIdentifier:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 stringWithFormat:@"%@.%@", v4, v6];

  v8 = [v7 UTF8String];
  v9 = dispatch_queue_create(v8, 0);

  return v9;
}

+ (id)configParametersForVoicemailWithLanguage:(id)a3
{
  v3 = a3;
  v4 = +[SFUtilities defaultClientID];
  v5 = [SFSpeechAssetManager configParametersForVoicemailWithLanguage:v3 clientIdentifier:v4];

  return v5;
}

+ (void)purgeAssetsForLanguage:(id)a3 error:(id *)a4
{
  v5 = a3;
  v9 = +[SFUtilities defaultClientID];
  v6 = [SFEntitledAssetConfig alloc];
  v7 = [SFSpeechAssetManager languageCode:v5];

  v8 = [(SFEntitledAssetConfig *)v6 initWithLanguage:v7 taskHint:0];
  [SFSpeechAssetManager unsubscribeFromAssetWithConfig:v8 clientIdentifier:v9 error:a4];
}

+ (void)purgeAssetsForLanguage:(id)a3 clientIdentifier:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [SFEntitledAssetConfig alloc];
  v10 = [SFSpeechAssetManager languageCode:v8];

  v11 = [(SFEntitledAssetConfig *)v9 initWithLanguage:v10 taskHint:0];
  [SFSpeechAssetManager unsubscribeFromAssetWithConfig:v11 clientIdentifier:v7 error:a5];
}

+ (id)assetPathForLanguage:(id)a3
{
  v3 = a3;
  v4 = +[SFUtilities defaultClientID];
  v5 = [SFEntitledAssetConfig alloc];
  v6 = [SFSpeechAssetManager languageCode:v3];

  v7 = [(SFEntitledAssetConfig *)v5 initWithLanguage:v6 taskHint:0];
  v8 = [SFSpeechAssetManager pathToAssetWithConfig:v7 clientIdentifier:v4];

  return v8;
}

+ (id)assetPathForLanguage:(id)a3 clientIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [SFEntitledAssetConfig alloc];
  v8 = [SFSpeechAssetManager languageCode:v6];

  v9 = [(SFEntitledAssetConfig *)v7 initWithLanguage:v8 taskHint:0];
  v10 = [SFSpeechAssetManager pathToAssetWithConfig:v9 clientIdentifier:v5];

  return v10;
}

+ (void)fetchAssetsForLanguage:(id)a3 clientIdentifier:(id)a4 urgent:(BOOL)a5 forceUpgrade:(BOOL)a6 detailedProgress:(id)a7 completion:(id)a8
{
  v11 = a8;
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [SFEntitledAssetConfig alloc];
  v16 = [SFSpeechAssetManager languageCode:v14];

  v17 = [(SFEntitledAssetConfig *)v15 initWithLanguage:v16 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v17 clientIdentifier:v13 detailedProgress:v12 completion:v11];
}

+ (void)fetchAssetsForLanguage:(id)a3 clientIdentifier:(id)a4 detailedProgress:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [SFEntitledAssetConfig alloc];
  v14 = [SFSpeechAssetManager languageCode:v12];

  v15 = [(SFEntitledAssetConfig *)v13 initWithLanguage:v14 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v15 clientIdentifier:v11 detailedProgress:v10 completion:v9];
}

+ (void)fetchAssetsForLanguage:(id)a3 urgent:(BOOL)a4 forceUpgrade:(BOOL)a5 detailedProgress:(id)a6 completion:(id)a7
{
  v9 = a7;
  v10 = a6;
  v11 = a3;
  v15 = +[SFUtilities defaultClientID];
  v12 = [SFEntitledAssetConfig alloc];
  v13 = [SFSpeechAssetManager languageCode:v11];

  v14 = [(SFEntitledAssetConfig *)v12 initWithLanguage:v13 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v14 clientIdentifier:v15 detailedProgress:v10 completion:v9];
}

+ (void)fetchAssetsForLanguage:(id)a3 clientIdentifier:(id)a4 urgent:(BOOL)a5 forceUpgrade:(BOOL)a6 progress:(id)a7 completion:(id)a8
{
  v11 = a8;
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [SFEntitledAssetConfig alloc];
  v16 = [SFSpeechAssetManager languageCode:v14];

  v17 = [(SFEntitledAssetConfig *)v15 initWithLanguage:v16 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v17 clientIdentifier:v13 progress:v12 completion:v11];
}

+ (void)fetchAssetsForLanguage:(id)a3 urgent:(BOOL)a4 progress:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = a3;
  v14 = +[SFUtilities defaultClientID];
  v11 = [SFEntitledAssetConfig alloc];
  v12 = [SFSpeechAssetManager languageCode:v10];

  v13 = [(SFEntitledAssetConfig *)v11 initWithLanguage:v12 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v13 clientIdentifier:v14 progress:v9 completion:v8];
}

+ (void)fetchAssetsForLanguage:(id)a3 urgent:(BOOL)a4 forceUpgrade:(BOOL)a5 progress:(id)a6 completion:(id)a7
{
  v9 = a7;
  v10 = a6;
  v11 = a3;
  v15 = +[SFUtilities defaultClientID];
  v12 = [SFEntitledAssetConfig alloc];
  v13 = [SFSpeechAssetManager languageCode:v11];

  v14 = [(SFEntitledAssetConfig *)v12 initWithLanguage:v13 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v14 clientIdentifier:v15 progress:v10 completion:v9];
}

+ (void)fetchAssetsForLanguage:(id)a3 progress:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v13 = +[SFUtilities defaultClientID];
  v10 = [SFEntitledAssetConfig alloc];
  v11 = [SFSpeechAssetManager languageCode:v9];

  v12 = [(SFEntitledAssetConfig *)v10 initWithLanguage:v11 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v12 clientIdentifier:v13 progress:v8 completion:v7];
}

+ (void)fetchAssetsForLanguage:(id)a3 clientIdentifier:(id)a4 progress:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [SFEntitledAssetConfig alloc];
  v14 = [SFSpeechAssetManager languageCode:v12];

  v15 = [(SFEntitledAssetConfig *)v13 initWithLanguage:v14 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v15 clientIdentifier:v11 progress:v10 completion:v9];
}

+ (void)fetchAssetsForLanguage:(id)a3 taskHint:(int64_t)a4 clientIdentifier:(id)a5 progress:(id)a6 completion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [SFEntitledAssetConfig alloc];
  v16 = [SFSpeechAssetManager languageCode:v14];

  v17 = [(SFEntitledAssetConfig *)v15 initWithLanguage:v16 assetType:SFEntitledAssetTypeForTaskHint(a4)];
  [SFSpeechAssetManager fetchAssetWithConfig:v17 clientIdentifier:v13 progress:v12 completion:v11];
}

+ (void)fetchLanguageDetectorAssetsForClientIdentifier:(id)a3 progress:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[SFEntitledAssetConfig alloc] initWithLanguage:@"default" assetType:6];
  [SFSpeechAssetManager fetchAssetWithConfig:v10 clientIdentifier:v9 progress:v8 completion:v7];
}

void __70__SFSpeechAssetManager_setAssetsPurgeability_forLanguages_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v4 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 64))
      {
        v6 = @"enable";
      }

      else
      {
        v6 = @"disable";
      }

      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = v4;
      v10 = [v7 language];
      v11 = 136316162;
      v12 = "+[SFSpeechAssetManager setAssetsPurgeability:forLanguages:completion:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v3;
      _os_log_error_impl(&dword_1AC5BC000, v9, OS_LOG_TYPE_ERROR, "%s Failed to %@ purgeability for %@ asset with language: %@, error: %@", &v11, 0x34u);
    }
  }

  dispatch_group_leave(*(a1 + 48));

  v5 = *MEMORY[0x1E69E9840];
}

void __70__SFSpeechAssetManager_setAssetsPurgeability_forLanguages_completion___block_invoke_41(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!v2)
  {
LABEL_10:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    v5 = *(a1 + 56);
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = v6;
    if (v5)
    {
      v8 = @"Failed to enable purgeability for one or more %@ assets.";
    }

    else
    {
      v8 = @"Failed to disable purgeability for one or more %@ assets.";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_1F2139F58 table:@"Localizable"];

    v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, *(a1 + 32)];
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [v11 errorWithDomain:@"SFSpeechErrorDomain" code:1 userInfo:v12];

    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v3 = *(v2 + 16);
  v4 = *MEMORY[0x1E69E9840];

  v3();
}

uint64_t __79__SFSpeechAssetManager_setPurgeabilityForAssetWithConfig_purgeable_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

+ (id)subscriptionsForClientIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = SFLogFramework;
  if (v3)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "+[SFSpeechAssetManager subscriptionsForClientIdentifier:]";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Client (%@) fetching all of their subscriptions.", buf, 0x16u);
    }

    v5 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v11 = __Block_byref_object_copy__3056;
    v12 = __Block_byref_object_dispose__3057;
    v13 = MEMORY[0x1E695E0F0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__SFSpeechAssetManager_subscriptionsForClientIdentifier___block_invoke;
    v9[3] = &unk_1E797CBC0;
    v9[4] = buf;
    [(SFLocalSpeechRecognitionClient *)v5 subscriptionsForClientId:v3 completion:v9];
    [(SFLocalSpeechRecognitionClient *)v5 invalidate];
    v6 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "+[SFSpeechAssetManager subscriptionsForClientIdentifier:]";
      _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
    }

    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (void)unsubscribeFromAssetWithConfig:(id)a3 clientIdentifier:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = SFLogFramework;
  if (!v8)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "+[SFSpeechAssetManager unsubscribeFromAssetWithConfig:clientIdentifier:error:]";
      _os_log_error_impl(&dword_1AC5BC000, v9, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
      if (!a5)
      {
        goto LABEL_13;
      }
    }

    else if (!a5)
    {
      goto LABEL_13;
    }

    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFSpeechErrorDomain" code:13 userInfo:0];
    goto LABEL_13;
  }

  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 assetType];
    if ((v11 - 1) > 6)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_1E797BC18[v11 - 1];
    }

    v13 = v12;
    v14 = [v7 language];
    *buf = 136315906;
    *&buf[4] = "+[SFSpeechAssetManager unsubscribeFromAssetWithConfig:clientIdentifier:error:]";
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v19 = v13;
    LOWORD(v20) = 2112;
    *(&v20 + 2) = v14;
    _os_log_impl(&dword_1AC5BC000, v10, OS_LOG_TYPE_DEFAULT, "%s Client (%@) unsubscribing from the %@ asset for: %@", buf, 0x2Au);
  }

  v15 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = __Block_byref_object_copy__3056;
  *&v20 = __Block_byref_object_dispose__3057;
  *(&v20 + 1) = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__SFSpeechAssetManager_unsubscribeFromAssetWithConfig_clientIdentifier_error___block_invoke;
  v17[3] = &unk_1E797CD80;
  v17[4] = buf;
  [(SFLocalSpeechRecognitionClient *)v15 unsubscribeFromAssetWithConfig:v7 clientID:v8 completion:v17];
  [(SFLocalSpeechRecognitionClient *)v15 invalidate];
  if (a5)
  {
    *a5 = *(*&buf[8] + 40);
  }

  _Block_object_dispose(buf, 8);

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];
}

+ (void)unsubscribeFromAssetWithConfig:(id)a3 clientIdentifier:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = SFLogFramework;
  if (v8)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [v7 assetType];
      if ((v12 - 1) > 6)
      {
        v13 = @"Unknown";
      }

      else
      {
        v13 = off_1E797BC18[v12 - 1];
      }

      v15 = v13;
      v16 = [v7 language];
      *buf = 136315906;
      v23 = "+[SFSpeechAssetManager unsubscribeFromAssetWithConfig:clientIdentifier:completion:]";
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_1AC5BC000, v11, OS_LOG_TYPE_INFO, "%s Client (%@) async unsubscribing from the %@ asset for: %@", buf, 0x2Au);
    }

    v17 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__SFSpeechAssetManager_unsubscribeFromAssetWithConfig_clientIdentifier_completion___block_invoke;
    v19[3] = &unk_1E797CD58;
    v20 = v17;
    v21 = v9;
    v14 = v17;
    [(SFLocalSpeechRecognitionClient *)v14 unsubscribeFromAssetWithConfig:v7 clientID:v8 asyncCompletion:v19];

    goto LABEL_11;
  }

  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v23 = "+[SFSpeechAssetManager unsubscribeFromAssetWithConfig:clientIdentifier:completion:]";
    _os_log_error_impl(&dword_1AC5BC000, v10, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v9)
  {
LABEL_7:
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFSpeechErrorDomain" code:13 userInfo:0];
    (*(v9 + 2))(v9, v14);
LABEL_11:
  }

LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __83__SFSpeechAssetManager_unsubscribeFromAssetWithConfig_clientIdentifier_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

+ (id)configParametersForVoicemailWithLanguage:(id)a3 clientIdentifier:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = @"Assistant";
    *buf = 136315906;
    *&buf[4] = "+[SFSpeechAssetManager configParametersForVoicemailWithLanguage:clientIdentifier:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v17 = @"Assistant";
    LOWORD(v18) = 2112;
    *(&v18 + 2) = v5;
    _os_log_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Client (%@) fetching the voicemail configuration for the %@ asset for: %@", buf, 0x2Au);
  }

  v10 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = __Block_byref_object_copy__3056;
  *&v18 = __Block_byref_object_dispose__3057;
  *(&v18 + 1) = 0;
  v11 = [SFSpeechAssetManager languageCode:v5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__SFSpeechAssetManager_configParametersForVoicemailWithLanguage_clientIdentifier___block_invoke;
  v15[3] = &unk_1E797CD30;
  v15[4] = buf;
  [(SFLocalSpeechRecognitionClient *)v10 configParametersForVoicemailWithLanguage:v11 clientID:v6 completion:v15];

  [(SFLocalSpeechRecognitionClient *)v10 invalidate];
  v12 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)versionOfAssetWithConfig:(id)a3 clientIdentifier:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 assetType];
    if ((v9 - 1) > 6)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = off_1E797BC18[v9 - 1];
    }

    v11 = v10;
    v12 = [v5 language];
    *buf = 136315906;
    *&buf[4] = "+[SFSpeechAssetManager versionOfAssetWithConfig:clientIdentifier:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v19 = v11;
    LOWORD(v20) = 2112;
    *(&v20 + 2) = v12;
    _os_log_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Client (%@) fetching the version of the %@ asset for: %@", buf, 0x2Au);
  }

  v13 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = __Block_byref_object_copy__3056;
  *&v20 = __Block_byref_object_dispose__3057;
  *(&v20 + 1) = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__SFSpeechAssetManager_versionOfAssetWithConfig_clientIdentifier___block_invoke;
  v17[3] = &unk_1E797CCB8;
  v17[4] = buf;
  [(SFLocalSpeechRecognitionClient *)v13 versionOfAssetWithConfig:v5 clientID:v6 completion:v17];
  [(SFLocalSpeechRecognitionClient *)v13 invalidate];
  v14 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (void)installationStateForAssetConfig:(id)a3 clientIdentifier:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v7 assetType];
    if ((v12 - 1) > 6)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = off_1E797BC18[v12 - 1];
    }

    v14 = v13;
    v15 = [v7 language];
    *buf = 136315906;
    v24 = "+[SFSpeechAssetManager installationStateForAssetConfig:clientIdentifier:completion:]";
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&dword_1AC5BC000, v11, OS_LOG_TYPE_INFO, "%s Client (%@) fetching the installation state for the %@ asset for: %@", buf, 0x2Au);
  }

  v16 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__SFSpeechAssetManager_installationStateForAssetConfig_clientIdentifier_completion___block_invoke;
  v20[3] = &unk_1E797CD08;
  v21 = v16;
  v22 = v9;
  v17 = v16;
  v18 = v9;
  [(SFLocalSpeechRecognitionClient *)v17 installationStateForAssetConfig:v7 clientID:v8 completion:v20];

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __84__SFSpeechAssetManager_installationStateForAssetConfig_clientIdentifier_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

+ (void)pathToAssetWithConfig:(id)a3 clientIdentifier:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v7 assetType];
    if ((v12 - 1) > 6)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = off_1E797BC18[v12 - 1];
    }

    v14 = v13;
    v15 = [v7 language];
    *buf = 136315906;
    v24 = "+[SFSpeechAssetManager pathToAssetWithConfig:clientIdentifier:completion:]";
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&dword_1AC5BC000, v11, OS_LOG_TYPE_INFO, "%s Client (%@) async fetching the path to the %@ asset for: %@", buf, 0x2Au);
  }

  v16 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__SFSpeechAssetManager_pathToAssetWithConfig_clientIdentifier_completion___block_invoke;
  v20[3] = &unk_1E797CCE0;
  v21 = v16;
  v22 = v9;
  v17 = v16;
  v18 = v9;
  [(SFLocalSpeechRecognitionClient *)v17 pathToAssetWithConfig:v7 clientID:v8 asyncCompletion:v20];

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __74__SFSpeechAssetManager_pathToAssetWithConfig_clientIdentifier_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

+ (id)pathToAssetWithConfig:(id)a3 clientIdentifier:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 assetType];
    if ((v9 - 1) > 6)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = off_1E797BC18[v9 - 1];
    }

    v11 = v10;
    v12 = [v5 language];
    *buf = 136315906;
    *&buf[4] = "+[SFSpeechAssetManager pathToAssetWithConfig:clientIdentifier:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v19 = v11;
    LOWORD(v20) = 2112;
    *(&v20 + 2) = v12;
    _os_log_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Client (%@) fetching the path to the %@ asset for: %@", buf, 0x2Au);
  }

  v13 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = __Block_byref_object_copy__3056;
  *&v20 = __Block_byref_object_dispose__3057;
  *(&v20 + 1) = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__SFSpeechAssetManager_pathToAssetWithConfig_clientIdentifier___block_invoke;
  v17[3] = &unk_1E797CCB8;
  v17[4] = buf;
  [(SFLocalSpeechRecognitionClient *)v13 pathToAssetWithConfig:v5 clientID:v6 completion:v17];
  [(SFLocalSpeechRecognitionClient *)v13 invalidate];
  v14 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (void)fetchAssetWithConfig:(id)a3 clientIdentifier:(id)a4 detailedProgress:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = SFLogFramework;
  if (v10)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v9 assetType];
      if ((v15 - 1) > 6)
      {
        v16 = @"Unknown";
      }

      else
      {
        v16 = off_1E797BC18[v15 - 1];
      }

      v18 = v16;
      v19 = [v9 language];
      *buf = 136315906;
      v26 = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:detailedProgress:completion:]";
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_1AC5BC000, v14, OS_LOG_TYPE_DEFAULT, "%s Client (%@) fetching the %@ asset for: %@", buf, 0x2Au);
    }

    v20 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __90__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_detailedProgress_completion___block_invoke;
    v22[3] = &unk_1E797CC90;
    v23 = v20;
    v24 = v12;
    v17 = v20;
    [(SFLocalSpeechRecognitionClient *)v17 downloadAssetsForConfig:v9 clientID:v10 expiration:0 detailedProgress:v11 completionHandler:v22];

    goto LABEL_11;
  }

  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v26 = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:detailedProgress:completion:]";
    _os_log_error_impl(&dword_1AC5BC000, v13, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v12)
  {
LABEL_7:
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFSpeechErrorDomain" code:13 userInfo:0];
    (*(v12 + 2))(v12, 0, v17);
LABEL_11:
  }

LABEL_12:

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __90__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_detailedProgress_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

+ (void)fetchAssetWithConfig:(id)a3 clientIdentifier:(id)a4 expiration:(id)a5 progress:(id)a6 completion:(id)a7
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = SFLogFramework;
  if (v12)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [v11 assetType];
      if ((v18 - 1) > 6)
      {
        v19 = @"Unknown";
      }

      else
      {
        v19 = off_1E797BC18[v18 - 1];
      }

      v21 = v19;
      v22 = [v11 language];
      *buf = 136315906;
      v29 = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:expiration:progress:completion:]";
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_1AC5BC000, v17, OS_LOG_TYPE_DEFAULT, "%s Client (%@) fetching the %@ asset for: %@", buf, 0x2Au);
    }

    v23 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __93__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_expiration_progress_completion___block_invoke;
    v25[3] = &unk_1E797CC90;
    v26 = v23;
    v27 = v15;
    v20 = v23;
    [(SFLocalSpeechRecognitionClient *)v20 downloadAssetsForConfig:v11 clientID:v12 expiration:v13 progress:v14 completionHandler:v25];

    goto LABEL_11;
  }

  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v29 = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:expiration:progress:completion:]";
    _os_log_error_impl(&dword_1AC5BC000, v16, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
    if (!v15)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v15)
  {
LABEL_7:
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFSpeechErrorDomain" code:13 userInfo:0];
    (*(v15 + 2))(v15, 0, v20);
LABEL_11:
  }

LABEL_12:

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __93__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_expiration_progress_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

+ (void)fetchAssetWithConfig:(id)a3 clientIdentifier:(id)a4 expiration:(id)a5 detailedProgress:(id)a6 completion:(id)a7 timeout:(double)a8
{
  v52 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if (v16)
  {
    if (a8 <= 0.0)
    {
      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      [v36 handleFailureInMethod:a2 object:a1 file:@"SFSpeechAssetManager.m" lineNumber:169 description:{@"Invalid timeout %f; must be value > 0.", *&a8}];
    }

    v20 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      v22 = [v15 assetType];
      if ((v22 - 1) > 6)
      {
        v23 = @"Unknown";
      }

      else
      {
        v23 = off_1E797BC18[v22 - 1];
      }

      v26 = v23;
      v27 = [v15 language];
      *buf = 136315906;
      *&buf[4] = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:expiration:detailedProgress:completion:timeout:]";
      *&buf[12] = 2112;
      *&buf[14] = v16;
      *&buf[22] = 2112;
      v49 = v26;
      v50 = 2112;
      v51 = v27;
      _os_log_impl(&dword_1AC5BC000, v21, OS_LOG_TYPE_INFO, "%s Client (%@) fetching the %@ asset for: %@", buf, 0x2Au);
    }

    v28 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v49) = 0;
    v29 = dispatch_time(0, (a8 * 1000000000.0));
    v30 = [a1 _serialQueueForClientIdentifier:v16];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_expiration_detailedProgress_completion_timeout___block_invoke;
    block[3] = &unk_1E797CC40;
    v31 = v28;
    v43 = v31;
    v45 = buf;
    v32 = v19;
    v44 = v32;
    v46 = a1;
    v47 = a8;
    dispatch_after(v29, v30, block);

    v33 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __109__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_expiration_detailedProgress_completion_timeout___block_invoke_2;
    v37[3] = &unk_1E797CC68;
    v25 = v31;
    v38 = v25;
    v41 = buf;
    v40 = v32;
    v34 = v33;
    v39 = v34;
    [(SFLocalSpeechRecognitionClient *)v34 downloadAssetsForConfig:v15 clientID:v16 expiration:v17 detailedProgress:v18 completionHandler:v37];

    _Block_object_dispose(buf, 8);
    goto LABEL_13;
  }

  v24 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:expiration:detailedProgress:completion:timeout:]";
    _os_log_error_impl(&dword_1AC5BC000, v24, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
    if (!v19)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v19)
  {
LABEL_9:
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFSpeechErrorDomain" code:13 userInfo:0];
    (*(v19 + 2))(v19, 0, v25);
LABEL_13:
  }

LABEL_14:

  v35 = *MEMORY[0x1E69E9840];
}

void __109__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_expiration_detailedProgress_completion_timeout___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0 && *(a1 + 40))
  {
    *(v2 + 24) = 1;
    v3 = *(a1 + 40);
    v4 = [*(a1 + 56) _timeoutError:*(a1 + 64)];
    (*(v3 + 16))(v3, 0, v4);
  }

  objc_sync_exit(obj);
}

void __109__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_expiration_detailedProgress_completion_timeout___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 56) + 8);
  if ((*(v7 + 24) & 1) == 0 && *(a1 + 48))
  {
    *(v7 + 24) = 1;
    (*(*(a1 + 48) + 16))();
  }

  objc_sync_exit(v6);

  [*(a1 + 40) invalidate];
}

+ (void)fetchAssetWithConfig:(id)a3 clientIdentifier:(id)a4 progress:(id)a5 completion:(id)a6 timeout:(double)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v14)
  {
    if (a7 <= 0.0)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInMethod:a2 object:a1 file:@"SFSpeechAssetManager.m" lineNumber:117 description:{@"Invalid timeout %f; must be value > 0.", *&a7}];
    }

    v17 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v19 = [v13 assetType];
      if ((v19 - 1) > 6)
      {
        v20 = @"Unknown";
      }

      else
      {
        v20 = off_1E797BC18[v19 - 1];
      }

      v23 = v20;
      v24 = [v13 language];
      *buf = 136315906;
      *&buf[4] = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:progress:completion:timeout:]";
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      v46 = v23;
      v47 = 2112;
      v48 = v24;
      _os_log_impl(&dword_1AC5BC000, v18, OS_LOG_TYPE_INFO, "%s Client (%@) fetching the %@ asset for: %@", buf, 0x2Au);
    }

    v25 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v46) = 0;
    v26 = dispatch_time(0, (a7 * 1000000000.0));
    v27 = [a1 _serialQueueForClientIdentifier:v14];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_progress_completion_timeout___block_invoke;
    block[3] = &unk_1E797CC40;
    v28 = v25;
    v40 = v28;
    v42 = buf;
    v29 = v16;
    v41 = v29;
    v43 = a1;
    v44 = a7;
    dispatch_after(v26, v27, block);

    v30 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __90__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_progress_completion_timeout___block_invoke_2;
    v34[3] = &unk_1E797CC68;
    v22 = v28;
    v35 = v22;
    v38 = buf;
    v37 = v29;
    v31 = v30;
    v36 = v31;
    [(SFLocalSpeechRecognitionClient *)v31 downloadAssetsForConfig:v13 clientID:v14 expiration:0 progress:v15 completionHandler:v34];

    _Block_object_dispose(buf, 8);
    goto LABEL_13;
  }

  v21 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:progress:completion:timeout:]";
    _os_log_error_impl(&dword_1AC5BC000, v21, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
    if (!v16)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v16)
  {
LABEL_9:
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFSpeechErrorDomain" code:13 userInfo:0];
    (*(v16 + 2))(v16, 0, v22);
LABEL_13:
  }

LABEL_14:

  v32 = *MEMORY[0x1E69E9840];
}

void __90__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_progress_completion_timeout___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0 && *(a1 + 40))
  {
    *(v2 + 24) = 1;
    v3 = *(a1 + 40);
    v4 = [*(a1 + 56) _timeoutError:*(a1 + 64)];
    (*(v3 + 16))(v3, 0, v4);
  }

  objc_sync_exit(obj);
}

void __90__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_progress_completion_timeout___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 56) + 8);
  if ((*(v7 + 24) & 1) == 0 && *(a1 + 48))
  {
    *(v7 + 24) = 1;
    (*(*(a1 + 48) + 16))();
  }

  objc_sync_exit(v6);

  [*(a1 + 40) invalidate];
}

+ (void)installedLanguagesForTaskHint:(int64_t)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = SFEntitledAssetTypeForTaskHint(a3);
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    if ((v6 - 1) > 6)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E797BC18[v6 - 1];
    }

    v10 = v9;
    *buf = 136315394;
    v19 = "+[SFSpeechAssetManager installedLanguagesForTaskHint:completion:]";
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Fetching languages of installed %@ assets.", buf, 0x16u);
  }

  v11 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__SFSpeechAssetManager_installedLanguagesForTaskHint_completion___block_invoke;
  v15[3] = &unk_1E797CC10;
  v16 = v11;
  v17 = v5;
  v12 = v11;
  v13 = v5;
  [(SFLocalSpeechRecognitionClient *)v12 installedLanguagesForAssetType:v6 synchronous:0 completion:v15];

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __65__SFSpeechAssetManager_installedLanguagesForTaskHint_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

+ (id)installedLanguagesForTaskHint:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = SFEntitledAssetTypeForTaskHint(a3);
  v4 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    if ((v3 - 1) > 6)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E797BC18[v3 - 1];
    }

    v7 = v6;
    *buf = 136315394;
    *&buf[4] = "+[SFSpeechAssetManager installedLanguagesForTaskHint:]";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_1AC5BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Fetching languages of installed %@ assets.", buf, 0x16u);
  }

  v8 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__3056;
  v15 = __Block_byref_object_dispose__3057;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__SFSpeechAssetManager_installedLanguagesForTaskHint___block_invoke;
  v12[3] = &unk_1E797CBE8;
  v12[4] = buf;
  [(SFLocalSpeechRecognitionClient *)v8 installedLanguagesForAssetType:v3 synchronous:1 completion:v12];
  [(SFLocalSpeechRecognitionClient *)v8 invalidate];
  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __54__SFSpeechAssetManager_installedLanguagesForTaskHint___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

+ (id)supportedLanguagesForTaskHint:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = SFEntitledAssetTypeForTaskHint(a3);
  v4 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    if ((v3 - 1) > 6)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E797BC18[v3 - 1];
    }

    v7 = v6;
    *buf = 136315394;
    *&buf[4] = "+[SFSpeechAssetManager supportedLanguagesForTaskHint:]";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_1AC5BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Fetching languages of supported %@ assets.", buf, 0x16u);
  }

  v8 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__3056;
  v15 = __Block_byref_object_dispose__3057;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__SFSpeechAssetManager_supportedLanguagesForTaskHint___block_invoke;
  v12[3] = &unk_1E797CBC0;
  v12[4] = buf;
  [(SFLocalSpeechRecognitionClient *)v8 supportedLanguagesForAssetType:v3 synchronous:1 completion:v12];
  [(SFLocalSpeechRecognitionClient *)v8 invalidate];
  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __54__SFSpeechAssetManager_supportedLanguagesForTaskHint___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

+ (void)supportedLanguagesForTaskHint:(int64_t)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = SFEntitledAssetTypeForTaskHint(a3);
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    if ((v6 - 1) > 6)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E797BC18[v6 - 1];
    }

    v10 = v9;
    *buf = 136315394;
    v19 = "+[SFSpeechAssetManager supportedLanguagesForTaskHint:completion:]";
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Fetching languages of supported %@ assets.", buf, 0x16u);
  }

  v11 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__SFSpeechAssetManager_supportedLanguagesForTaskHint_completion___block_invoke;
  v15[3] = &unk_1E797CB98;
  v16 = v11;
  v17 = v5;
  v12 = v11;
  v13 = v5;
  [(SFLocalSpeechRecognitionClient *)v12 supportedLanguagesForAssetType:v6 synchronous:0 completion:v15];

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __65__SFSpeechAssetManager_supportedLanguagesForTaskHint_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

+ (BOOL)isLanguageDetectorInstalled
{
  v2 = [[SFEntitledAssetConfig alloc] initWithLanguage:@"default" assetType:6];
  v3 = +[SFUtilities defaultClientID];
  v4 = [SFSpeechAssetManager pathToAssetWithConfig:v2 clientIdentifier:v3];
  v5 = v4 != 0;

  return v5;
}

+ (id)generalASRLanguageForLocale:(id)a3
{
  v3 = [a3 localeIdentifier];
  v4 = [SFSpeechAssetManager generalASRLanguageForLocaleIdentifier:v3];

  return v4;
}

+ (id)languageCode:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF58];
    v4 = a3;
    v5 = [[v3 alloc] initWithLocaleIdentifier:v4];

    v6 = MEMORY[0x1E696AEC0];
    v7 = [v5 objectForKey:*MEMORY[0x1E695D9B0]];
    v8 = [v5 objectForKey:*MEMORY[0x1E695D978]];
    v9 = [v6 stringWithFormat:@"%@-%@", v7, v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
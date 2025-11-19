@interface SFSpeechRecognitionRequest
- (SFRequestParameters)_requestParametersWithTaskHint:(void *)a3 requestIdentifier:(void *)a4 taskIdentifier:(uint64_t)a5 narrowband:(void *)a6 language:;
- (SFSpeechRecognitionRequest)init;
- (id)_dictationOptionsWithTaskHint:(void *)a3 requestIdentifier:;
- (id)_sandboxExtensionsWithError:(uint64_t)a1;
- (void)_setAFDictationRequestParams:(uint64_t)a1;
@end

@implementation SFSpeechRecognitionRequest

- (SFSpeechRecognitionRequest)init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SFSpeechRecognitionRequest;
    v4 = [(SFSpeechRecognitionRequest *)&v9 init];
    v5 = v4;
    if (v4)
    {
      v4->_shouldReportPartialResults = 1;
      contextualStrings = v4->_contextualStrings;
      v4->_contextualStrings = MEMORY[0x1E695E0F0];

      v5->_maximumRecognitionDuration = 60.0;
      *&v5->_addsPunctuation = 0;
    }

    self = v5;
    v7 = self;
  }

  return v7;
}

- (SFRequestParameters)_requestParametersWithTaskHint:(void *)a3 requestIdentifier:(void *)a4 taskIdentifier:(uint64_t)a5 narrowband:(void *)a6 language:
{
  v11 = a6;
  if (a1)
  {
    v12 = a4;
    v13 = a3;
    v14 = objc_alloc_init(SFRequestParameters);
    v15 = [MEMORY[0x1E696AAE8] mainBundle];
    v16 = [v15 bundleIdentifier];
    [(SFRequestParameters *)v14 setApplicationName:v16];

    v17 = [v15 infoDictionary];
    v18 = [v17 objectForKey:*MEMORY[0x1E695E500]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SFRequestParameters *)v14 setApplicationVersion:v18];
    }

    [(SFRequestParameters *)v14 setInlineItemList:*(a1 + 72)];
    [(SFRequestParameters *)v14 setRequestIdentifier:v13];

    [(SFRequestParameters *)v14 setTaskIdentifier:v12];
    if (![(__CFString *)v11 caseInsensitiveCompare:@"hi-IN-translit"])
    {
      v19 = @"hi-IN";

      v11 = @"hi-IN";
    }

    [(SFRequestParameters *)v14 setLanguage:v11];
    v20 = [SFUtilities taskNameFromTaskHint:a2];
    [(SFRequestParameters *)v14 setTask:v20];

    [(SFRequestParameters *)v14 setNarrowband:a5];
    [(SFRequestParameters *)v14 setRecognitionOverrides:*(a1 + 40)];
    [(SFRequestParameters *)v14 setModelOverrideURL:*(a1 + 48)];
    [(SFRequestParameters *)v14 setMaximumRecognitionDuration:3600.0];
    v21 = [*(a1 + 88) languageModel];
    [(SFRequestParameters *)v14 setDynamicLanguageModel:v21];

    v22 = [*(a1 + 88) vocabulary];
    [(SFRequestParameters *)v14 setDynamicVocabulary:v22];

    [(SFRequestParameters *)v14 setDetectMultipleUtterances:*(a1 + 12)];
    -[SFRequestParameters setOnDeviceOnly:](v14, "setOnDeviceOnly:", [a1 requiresOnDeviceRecognition]);
    -[SFRequestParameters setEnableAutoPunctuation:](v14, "setEnableAutoPunctuation:", [a1 addsPunctuation]);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_sandboxExtensionsWithError:(uint64_t)a1
{
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = +[SFUtilities sandboxExtensionsForUsingANEAndAssets];
    if (v3)
    {
      [v2 addObjectsFromArray:v3];
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      v5 = [v4 languageModel];
      v6 = [v5 path];
      v7 = [SFUtilities issueReadSandboxExtensionForFilePath:v6 error:0];

      v8 = [*(a1 + 88) vocabulary];
      if (v8)
      {
        v9 = [*(a1 + 88) vocabulary];
        v10 = [v9 path];
        v11 = [SFUtilities issueReadSandboxExtensionForFilePath:v10 error:0];
      }

      else
      {
        v11 = 0;
      }

      if (v7)
      {
        [v2 addObject:v7];
      }

      if (v11)
      {
        [v2 addObject:v11];
      }
    }

    v12 = [v2 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_dictationOptionsWithTaskHint:(void *)a3 requestIdentifier:
{
  if (a1)
  {
    v5 = MEMORY[0x1E698D128];
    v6 = a3;
    v7 = objc_alloc_init(v5);
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v8 bundleIdentifier];
    [v7 setApplicationName:v9];

    v10 = [v8 infoDictionary];
    v11 = [v10 objectForKey:*MEMORY[0x1E695E500]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setApplicationVersion:v11];
    }

    [v7 setInlineItemList:*(a1 + 72)];
    [v7 setRequestIdentifier:v6];

    [v7 setVoiceTriggerEventInfo:*(a1 + 32)];
    [v7 setMaximumRecognitionDuration:*(a1 + 16)];
    [v7 setDetectUtterances:*(a1 + 12)];
    v12 = *(a1 + 24);
    v13 = v12;
    if (v12)
    {
      [v7 setVoiceSearchTypeOptions:{objc_msgSend(v12, "searchTypes") & 3}];
      v14 = [v13 queryParameters];
      [v7 setVoiceSearchQueryParameters:v14];

      v15 = [v13 headerFields];
      [v7 setVoiceSearchHeaderFields:v15];

      [v7 setKeyboardType:12];
    }

    else
    {
      v16 = 1;
      if (a2 > 1001)
      {
        if (a2 == 1002)
        {
          v16 = 1;
          [v7 setTaskHint:1];
        }

        else if (a2 == 1004)
        {
          [v7 setTaskHint:2];
          v16 = 1;
        }
      }

      else
      {
        v17 = 13;
        if (a2 != 1001)
        {
          v17 = 1;
        }

        if (a2 == 2)
        {
          v16 = 12;
        }

        else
        {
          v16 = v17;
        }
      }

      [v7 setKeyboardType:v16];
      [v7 setAutoPunctuation:*(a1 + 11)];
    }

    [v7 setForceOfflineRecognition:*(a1 + 8)];
    if (*(a1 + 8) == 1)
    {
      [v7 setMaximumRecognitionDuration:3600.0];
    }

    [v7 setRecognitionOverrides:*(a1 + 40)];
    [v7 setModelOverrideURL:*(a1 + 48)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setAFDictationRequestParams:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

@end
@interface SFSpeechRecognitionRequest
- (SFRequestParameters)_requestParametersWithTaskHint:(void *)hint requestIdentifier:(void *)identifier taskIdentifier:(uint64_t)taskIdentifier narrowband:(void *)narrowband language:;
- (SFSpeechRecognitionRequest)init;
- (id)_dictationOptionsWithTaskHint:(void *)hint requestIdentifier:;
- (id)_sandboxExtensionsWithError:(uint64_t)error;
- (void)_setAFDictationRequestParams:(uint64_t)params;
@end

@implementation SFSpeechRecognitionRequest

- (SFSpeechRecognitionRequest)init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    selfCopy = 0;
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
    selfCopy = self;
  }

  return selfCopy;
}

- (SFRequestParameters)_requestParametersWithTaskHint:(void *)hint requestIdentifier:(void *)identifier taskIdentifier:(uint64_t)taskIdentifier narrowband:(void *)narrowband language:
{
  narrowbandCopy = narrowband;
  if (self)
  {
    identifierCopy = identifier;
    hintCopy = hint;
    v14 = objc_alloc_init(SFRequestParameters);
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [(SFRequestParameters *)v14 setApplicationName:bundleIdentifier];

    infoDictionary = [mainBundle infoDictionary];
    v18 = [infoDictionary objectForKey:*MEMORY[0x1E695E500]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SFRequestParameters *)v14 setApplicationVersion:v18];
    }

    [(SFRequestParameters *)v14 setInlineItemList:*(self + 72)];
    [(SFRequestParameters *)v14 setRequestIdentifier:hintCopy];

    [(SFRequestParameters *)v14 setTaskIdentifier:identifierCopy];
    if (![(__CFString *)narrowbandCopy caseInsensitiveCompare:@"hi-IN-translit"])
    {
      v19 = @"hi-IN";

      narrowbandCopy = @"hi-IN";
    }

    [(SFRequestParameters *)v14 setLanguage:narrowbandCopy];
    v20 = [SFUtilities taskNameFromTaskHint:a2];
    [(SFRequestParameters *)v14 setTask:v20];

    [(SFRequestParameters *)v14 setNarrowband:taskIdentifier];
    [(SFRequestParameters *)v14 setRecognitionOverrides:*(self + 40)];
    [(SFRequestParameters *)v14 setModelOverrideURL:*(self + 48)];
    [(SFRequestParameters *)v14 setMaximumRecognitionDuration:3600.0];
    languageModel = [*(self + 88) languageModel];
    [(SFRequestParameters *)v14 setDynamicLanguageModel:languageModel];

    vocabulary = [*(self + 88) vocabulary];
    [(SFRequestParameters *)v14 setDynamicVocabulary:vocabulary];

    [(SFRequestParameters *)v14 setDetectMultipleUtterances:*(self + 12)];
    -[SFRequestParameters setOnDeviceOnly:](v14, "setOnDeviceOnly:", [self requiresOnDeviceRecognition]);
    -[SFRequestParameters setEnableAutoPunctuation:](v14, "setEnableAutoPunctuation:", [self addsPunctuation]);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_sandboxExtensionsWithError:(uint64_t)error
{
  if (error)
  {
    array = [MEMORY[0x1E695DF70] array];
    v3 = +[SFUtilities sandboxExtensionsForUsingANEAndAssets];
    if (v3)
    {
      [array addObjectsFromArray:v3];
    }

    v4 = *(error + 88);
    if (v4)
    {
      languageModel = [v4 languageModel];
      path = [languageModel path];
      v7 = [SFUtilities issueReadSandboxExtensionForFilePath:path error:0];

      vocabulary = [*(error + 88) vocabulary];
      if (vocabulary)
      {
        vocabulary2 = [*(error + 88) vocabulary];
        path2 = [vocabulary2 path];
        v11 = [SFUtilities issueReadSandboxExtensionForFilePath:path2 error:0];
      }

      else
      {
        v11 = 0;
      }

      if (v7)
      {
        [array addObject:v7];
      }

      if (v11)
      {
        [array addObject:v11];
      }
    }

    v12 = [array copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_dictationOptionsWithTaskHint:(void *)hint requestIdentifier:
{
  if (self)
  {
    v5 = MEMORY[0x1E698D128];
    hintCopy = hint;
    v7 = objc_alloc_init(v5);
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [v7 setApplicationName:bundleIdentifier];

    infoDictionary = [mainBundle infoDictionary];
    v11 = [infoDictionary objectForKey:*MEMORY[0x1E695E500]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setApplicationVersion:v11];
    }

    [v7 setInlineItemList:*(self + 72)];
    [v7 setRequestIdentifier:hintCopy];

    [v7 setVoiceTriggerEventInfo:*(self + 32)];
    [v7 setMaximumRecognitionDuration:*(self + 16)];
    [v7 setDetectUtterances:*(self + 12)];
    v12 = *(self + 24);
    v13 = v12;
    if (v12)
    {
      [v7 setVoiceSearchTypeOptions:{objc_msgSend(v12, "searchTypes") & 3}];
      queryParameters = [v13 queryParameters];
      [v7 setVoiceSearchQueryParameters:queryParameters];

      headerFields = [v13 headerFields];
      [v7 setVoiceSearchHeaderFields:headerFields];

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
      [v7 setAutoPunctuation:*(self + 11)];
    }

    [v7 setForceOfflineRecognition:*(self + 8)];
    if (*(self + 8) == 1)
    {
      [v7 setMaximumRecognitionDuration:3600.0];
    }

    [v7 setRecognitionOverrides:*(self + 40)];
    [v7 setModelOverrideURL:*(self + 48)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setAFDictationRequestParams:(uint64_t)params
{
  if (params)
  {
    objc_storeStrong((params + 56), a2);
  }
}

@end
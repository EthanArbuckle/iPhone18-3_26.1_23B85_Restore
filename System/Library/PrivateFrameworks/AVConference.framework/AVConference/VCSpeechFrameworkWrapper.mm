@interface VCSpeechFrameworkWrapper
+ (id)defaultSpeechFrameworkWrapper;
+ (unint64_t)assetTypeForTaskHint:(unsigned __int8)hint;
- (BOOL)isAssetInstalledForTaskHint:(unsigned __int8)hint forLocale:(id)locale forTaskIdentifier:(id)identifier;
- (BOOL)loadSpeechFramework;
- (VCSpeechFrameworkWrapper)init;
- (id)findSpeechFrameworkPath;
- (id)newSFSpeechAnalyzerLanguageDetectorOptions;
- (id)newSFSpeechAnalyzerLanguageDetectorOptionsWithResultReportingFrequency:(unint64_t)frequency;
- (id)newSFSpeechAnalyzerOptionsWithHighPriority:(BOOL)priority modelRetention:(unint64_t)retention loggingInfo:(id)info powerContext:(id)context;
- (id)newSFSpeechAnalyzerSpeechDetectorOptions;
- (id)newSFSpeechAnalyzerTranscriberOptions;
- (id)newSFSpeechAnalyzerWithConfig:(tagVCSFSpeechAnalyzerConfig *)config didChangeVolatileRange:(id)range;
- (id)newSFSpeechAudioBufferRecognitionRequest;
- (id)newSFSpeechRecognizerWithLocale:(id)locale;
- (id)supportedLocales;
- (void)analyzerEndModelRetention:(id)retention;
- (void)loadSpeechAssetsWithAssetType:(unint64_t)type withLanguage:(id)language withTaskIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)loadSpeechFramework;
- (void)loadSpeechFunctionEndModelRetention;
- (void)loadTranscriptionAssetsWithTaskHint:(unsigned __int8)hint withLocale:(id)locale withTaskIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)newSFSpeechAnalyzerSpeechDetectorOptions;
@end

@implementation VCSpeechFrameworkWrapper

+ (id)defaultSpeechFrameworkWrapper
{
  result = defaultSpeechFrameworkWrapper__VCSpeechFrameworkWrapper;
  if (!defaultSpeechFrameworkWrapper__VCSpeechFrameworkWrapper)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!defaultSpeechFrameworkWrapper__VCSpeechFrameworkWrapper)
    {
      defaultSpeechFrameworkWrapper__VCSpeechFrameworkWrapper = objc_alloc_init(VCSpeechFrameworkWrapper);
    }

    objc_sync_exit(v3);
    return defaultSpeechFrameworkWrapper__VCSpeechFrameworkWrapper;
  }

  return result;
}

- (VCSpeechFrameworkWrapper)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCSpeechFrameworkWrapper;
  v2 = [(VCSpeechFrameworkWrapper *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_isFrameworkLoaded = [(VCSpeechFrameworkWrapper *)v2 loadSpeechFramework];
    [(VCSpeechFrameworkWrapper *)v3 loadSpeechFunctionEndModelRetention];
    if (v3->_isFrameworkLoaded)
    {
      v3->_isGeneralASRSupported = [NSClassFromString(&cfstr_Sfutilities.isa) isGeneralASRSupportedOnDevice];
    }
  }

  return v3;
}

- (id)findSpeechFrameworkPath
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  if (![(NSArray *)v2 count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = v8;
        v18 = 2080;
        v19 = "[VCSpeechFrameworkWrapper findSpeechFrameworkPath]";
        v20 = 1024;
        v21 = 82;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed search path initialization. Captions will not be available", buf, 0x1Cu);
      }
    }

    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&unk_1F579D3B0 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *v13;
LABEL_4:
  v6 = 0;
  while (1)
  {
    if (*v13 != v5)
    {
      objc_enumerationMutation(&unk_1F579D3B0);
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@%s", -[NSArray objectAtIndex:](v2, "objectAtIndex:", 0), *(*(&v12 + 1) + 8 * v6), "Speech.framework"];
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
    {
      return v7;
    }

    if (v4 == ++v6)
    {
      v4 = [&unk_1F579D3B0 countByEnumeratingWithState:&v12 objects:v11 count:16];
      v7 = 0;
      if (v4)
      {
        goto LABEL_4;
      }

      return v7;
    }
  }
}

- (BOOL)loadSpeechFramework
{
  v10 = *MEMORY[0x1E69E9840];
  findSpeechFrameworkPath = [(VCSpeechFrameworkWrapper *)self findSpeechFrameworkPath];
  self->_frameworkPath = findSpeechFrameworkPath;
  if (findSpeechFrameworkPath)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithPath:findSpeechFrameworkPath];
    if (v4)
    {
      v5 = v4;
      if ([v4 isLoaded] & 1) != 0 || (objc_msgSend(v5, "load"))
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!v6)
          {
            return v6;
          }

          [VCSpeechFrameworkWrapper loadSpeechFramework];
        }

        LOBYTE(v6) = 0;
      }
    }

    else
    {
      [(VCSpeechFrameworkWrapper *)&v8 loadSpeechFramework];
      LOBYTE(v6) = v8;
    }
  }

  else
  {
    [(VCSpeechFrameworkWrapper *)&v9 loadSpeechFramework];
    LOBYTE(v6) = v9;
  }

  return v6;
}

- (void)loadSpeechFunctionEndModelRetention
{
  v13 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v12 = 117;
        OUTLINED_FUNCTION_5_8();
LABEL_10:
        _os_log_impl(v2, v3, v4, v5, v6, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [self performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v8;
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_14_3();
        v2 = &dword_1DB56E000;
        v5 = " [%s] %s:%d %@(%p) Failed to have the Speech framework loaded.";
        v6 = &v10;
        v3 = v9;
        v4 = OS_LOG_TYPE_DEFAULT;
        v7 = 48;
        goto LABEL_10;
      }
    }
  }
}

- (id)newSFSpeechRecognizerWithLocale:(id)locale
{
  if (!self->_isFrameworkLoaded)
  {
    return 0;
  }

  v4 = NSClassFromString(&cfstr_Sfspeechrecogn.isa);
  if (locale)
  {
    v5 = [v4 alloc];

    return [v5 initWithLocale:locale];
  }

  else
  {

    return objc_alloc_init(v4);
  }
}

- (id)newSFSpeechAudioBufferRecognitionRequest
{
  if (!self->_isFrameworkLoaded)
  {
    return 0;
  }

  v3 = NSClassFromString(&cfstr_Sfspeechaudiob.isa);

  return objc_alloc_init(v3);
}

- (id)supportedLocales
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_isFrameworkLoaded)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  supportedLocales = [NSClassFromString(&cfstr_Sfspeechrecogn.isa) supportedLocales];
  v4 = [supportedLocales countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(supportedLocales);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [objc_alloc(NSClassFromString(&cfstr_Sfspeechrecogn.isa)) initWithLocale:v8];
        v10 = v9;
        if (v9 && [v9 _isAvailableForForcedOfflineRecognition])
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [supportedLocales countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)newSFSpeechAnalyzerWithConfig:(tagVCSFSpeechAnalyzerConfig *)config didChangeVolatileRange:(id)range
{
  if (!self->_isFrameworkLoaded)
  {
    return 0;
  }

  v6 = objc_alloc(NSClassFromString(&cfstr_Sfspeechanalyz.isa));
  LOBYTE(v8) = config->var11;
  return [v6 initWithClientIdentifier:config->var0 audioFormat:config->var1 formatForNewLines:config->var13 transcriberResultDelegate:config->var2 endpointingResultDelegate:config->var3 languageDetectorResultDelegate:config->var4 speechDetectorResultDelegate:config->var5 queue:config->var6 transcriberOptions:config->var7 options:config->var8 languageDetectorOptions:config->var9 speechDetectorOptions:config->var10 restrictedLogging:v8 contextualNamedEntities:config->var12 didChangeVolatileRange:range];
}

- (id)newSFSpeechAnalyzerOptionsWithHighPriority:(BOOL)priority modelRetention:(unint64_t)retention loggingInfo:(id)info powerContext:(id)context
{
  if (!self->_isFrameworkLoaded)
  {
    return 0;
  }

  priorityCopy = priority;
  v11 = objc_alloc(NSClassFromString(&cfstr_Sfspeechanalyz_0.isa));

  return [v11 initWithHighPriority:priorityCopy modelRetention:retention loggingInfo:info powerContext:context];
}

- (id)newSFSpeechAnalyzerTranscriberOptions
{
  if (!self->_isFrameworkLoaded)
  {
    return 0;
  }

  v3 = NSClassFromString(&cfstr_Sfspeechanalyz_1.isa);

  return objc_alloc_init(v3);
}

- (void)analyzerEndModelRetention:(id)retention
{
  endModelRetention = self->_endModelRetention;
  if (endModelRetention)
  {

    endModelRetention(retention);
  }

  else
  {
    [VCSpeechFrameworkWrapper analyzerEndModelRetention:];
  }
}

- (id)newSFSpeechAnalyzerLanguageDetectorOptions
{
  if (!self->_isFrameworkLoaded)
  {
    return 0;
  }

  v3 = NSClassFromString(&cfstr_Sfspeechanalyz_2.isa);

  return objc_alloc_init(v3);
}

- (id)newSFSpeechAnalyzerLanguageDetectorOptionsWithResultReportingFrequency:(unint64_t)frequency
{
  if (!self->_isFrameworkLoaded)
  {
    return 0;
  }

  v5 = objc_alloc(NSClassFromString(&cfstr_Sfspeechanalyz_2.isa));

  return [v5 initWithResultReportingFrequency:frequency];
}

- (id)newSFSpeechAnalyzerSpeechDetectorOptions
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_isFrameworkLoaded)
  {
    return 0;
  }

  v3 = objc_alloc_init(NSClassFromString(&cfstr_Sfspeechanalyz_3.isa));
  if (!v3)
  {
    [(VCSpeechFrameworkWrapper *)v15 newSFSpeechAnalyzerSpeechDetectorOptions];
    return *v15;
  }

  v4 = v3;
  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceSpeechDetectorSensitivityLevel", 1);
  [v4 setSensitivityLevel:IntValueForKey];
  [v4 setReportResults:1];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136315906;
        *&v15[4] = v7;
        v16 = 2080;
        v17 = "[VCSpeechFrameworkWrapper newSFSpeechAnalyzerSpeechDetectorOptions]";
        v18 = 1024;
        v19 = 233;
        v20 = 2048;
        v21 = IntValueForKey;
        v9 = " [%s] %s:%d Set up speech detector with sensitivityLevel=%lu";
        v10 = v8;
        v11 = 38;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v15, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSpeechFrameworkWrapper *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136316418;
        *&v15[4] = v12;
        v16 = 2080;
        v17 = "[VCSpeechFrameworkWrapper newSFSpeechAnalyzerSpeechDetectorOptions]";
        v18 = 1024;
        v19 = 233;
        v20 = 2112;
        v21 = v6;
        v22 = 2048;
        selfCopy = self;
        v24 = 2048;
        v25 = IntValueForKey;
        v9 = " [%s] %s:%d %@(%p) Set up speech detector with sensitivityLevel=%lu";
        v10 = v13;
        v11 = 58;
        goto LABEL_14;
      }
    }
  }

  return v4;
}

+ (unint64_t)assetTypeForTaskHint:(unsigned __int8)hint
{
  v3 = 7;
  if (hint != 2)
  {
    v3 = 0;
  }

  if (hint == 1)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (BOOL)isAssetInstalledForTaskHint:(unsigned __int8)hint forLocale:(id)locale forTaskIdentifier:(id)identifier
{
  v5 = 0;
  v10 = *MEMORY[0x1E69E9840];
  if (locale && self->_isFrameworkLoaded)
  {
    v7 = [objc_alloc(NSClassFromString(&cfstr_Sfentitledasse.isa)) initWithLanguage:objc_msgSend(locale assetType:{"languageIdentifier"), +[VCSpeechFrameworkWrapper assetTypeForTaskHint:](VCSpeechFrameworkWrapper, "assetTypeForTaskHint:", hint)}];
    if (v7)
    {
      v5 = [NSClassFromString(&cfstr_Sfspeechassetm.isa) pathToAssetWithConfig:v7 clientIdentifier:identifier]!= 0;
    }

    else
    {
      [VCSpeechFrameworkWrapper isAssetInstalledForTaskHint:? forLocale:? forTaskIdentifier:?];
      v5 = v9;
    }
  }

  return v5;
}

- (void)loadTranscriptionAssetsWithTaskHint:(unsigned __int8)hint withLocale:(id)locale withTaskIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  hintCopy = hint;
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 136316162;
        *&v19[4] = v12;
        *&v19[12] = 2080;
        *&v19[14] = "[VCSpeechFrameworkWrapper loadTranscriptionAssetsWithTaskHint:withLocale:withTaskIdentifier:withCompletionHandler:]";
        *&v19[22] = 1024;
        *v20 = 280;
        *&v20[4] = 1024;
        *&v20[6] = hintCopy;
        *&v20[10] = 2112;
        *&v20[12] = [locale localeIdentifier];
        v14 = " [%s] %s:%d Loading assets for taskHint=%d, locale=%@";
        v15 = v13;
        v16 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v19, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCSpeechFrameworkWrapper *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 136316674;
        *&v19[4] = v17;
        *&v19[12] = 2080;
        *&v19[14] = "[VCSpeechFrameworkWrapper loadTranscriptionAssetsWithTaskHint:withLocale:withTaskIdentifier:withCompletionHandler:]";
        *&v19[22] = 1024;
        *v20 = 280;
        *&v20[4] = 2112;
        *&v20[6] = v11;
        *&v20[14] = 2048;
        *&v20[16] = self;
        LOWORD(v21) = 1024;
        *(&v21 + 2) = hintCopy;
        HIWORD(v21) = 2112;
        localeIdentifier = [locale localeIdentifier];
        v14 = " [%s] %s:%d %@(%p) Loading assets for taskHint=%d, locale=%@";
        v15 = v18;
        v16 = 64;
        goto LABEL_11;
      }
    }
  }

  -[VCSpeechFrameworkWrapper loadSpeechAssetsWithAssetType:withLanguage:withTaskIdentifier:withCompletionHandler:](self, "loadSpeechAssetsWithAssetType:withLanguage:withTaskIdentifier:withCompletionHandler:", +[VCSpeechFrameworkWrapper assetTypeForTaskHint:](VCSpeechFrameworkWrapper, "assetTypeForTaskHint:", hintCopy, *v19, *&v19[16], *v20, *&v20[16], v21, localeIdentifier), [locale languageIdentifier], identifier, handler);
}

- (void)loadSpeechAssetsWithAssetType:(unint64_t)type withLanguage:(id)language withTaskIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_isFrameworkLoaded)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v9 = [objc_alloc(NSClassFromString(&cfstr_Sfentitledasse.isa)) initWithLanguage:language assetType:type];
    if (v9)
    {
      v13[3] = micro();
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __112__VCSpeechFrameworkWrapper_loadSpeechAssetsWithAssetType_withLanguage_withTaskIdentifier_withCompletionHandler___block_invoke;
      v11[3] = &unk_1E85F93F0;
      v11[5] = &v12;
      v11[6] = type;
      v11[4] = handler;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __112__VCSpeechFrameworkWrapper_loadSpeechAssetsWithAssetType_withLanguage_withTaskIdentifier_withCompletionHandler___block_invoke_59;
      v10[3] = &__block_descriptor_40_e8_v16__0Q8l;
      v10[4] = type;
      [NSClassFromString(&cfstr_Sfspeechassetm.isa) fetchAssetWithConfig:v9 clientIdentifier:identifier progress:v10 completion:v11];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSpeechFrameworkWrapper loadSpeechAssetsWithAssetType:withLanguage:withTaskIdentifier:withCompletionHandler:];
      }
    }

    _Block_object_dispose(&v12, 8);
  }
}

uint64_t __112__VCSpeechFrameworkWrapper_loadSpeechAssetsWithAssetType_withLanguage_withTaskIdentifier_withCompletionHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = micro();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a2)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[6];
        v11 = v6 - *(*(a1[5] + 8) + 24);
        v16 = 136316674;
        v17 = v8;
        v18 = 2080;
        v19 = "[VCSpeechFrameworkWrapper loadSpeechAssetsWithAssetType:withLanguage:withTaskIdentifier:withCompletionHandler:]_block_invoke";
        v20 = 1024;
        v21 = 300;
        v22 = 2048;
        v23 = v10;
        v24 = 2048;
        v25 = v11;
        v26 = 2112;
        v27 = a2;
        v28 = 2112;
        v29 = a3;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Assets download complete: assetType=%lu durationInSeconds=%f path=%@ error=%@", &v16, 0x44u);
      }
    }
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v15 = a1[6];
      v16 = 136316162;
      v17 = v12;
      v18 = 2080;
      v19 = "[VCSpeechFrameworkWrapper loadSpeechAssetsWithAssetType:withLanguage:withTaskIdentifier:withCompletionHandler:]_block_invoke";
      v20 = 1024;
      v21 = 302;
      v22 = 2048;
      v23 = v15;
      v24 = 2112;
      v25 = *&a3;
      _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Assets currently not deployed: assetType=%lu error=%@", &v16, 0x30u);
    }
  }

  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, a2, a3);
  }

  return result;
}

void __112__VCSpeechFrameworkWrapper_loadSpeechAssetsWithAssetType_withLanguage_withTaskIdentifier_withCompletionHandler___block_invoke_59(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 136316162;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCSpeechFrameworkWrapper loadSpeechAssetsWithAssetType:withLanguage:withTaskIdentifier:withCompletionHandler:]_block_invoke";
      v11 = 1024;
      v12 = 309;
      v13 = 2048;
      v14 = v6;
      v15 = 2048;
      v16 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Assets downloading: assetType=%lu progress=%lu", &v7, 0x30u);
    }
  }
}

- (void)loadSpeechFramework
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to find the Speech framework. Captions will not be available", v4, v5, v6, v7, v8);
    }
  }

  *self = 0;
}

- (void)analyzerEndModelRetention:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_8();
      _os_log_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newSFSpeechAnalyzerSpeechDetectorOptions
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to create SFSpeechAnalyzerSpeechDetectorOptions instance", v4, v5, v6, v7, v8);
    }
  }

  *self = 0;
}

- (void)isAssetInstalledForTaskHint:(_BYTE *)a1 forLocale:forTaskIdentifier:.cold.1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

- (void)loadSpeechAssetsWithAssetType:withLanguage:withTaskIdentifier:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end
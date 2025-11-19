@interface VCSpeechTranslation
@end

@implementation VCSpeechTranslation

uint64_t __VCSpeechTranslation_STSpeechTranslatorConfigurationClass_block_invoke()
{
  result = _VCSpeechTranslation_LibraryHandle();
  if (result)
  {
    result = objc_getClass("STSpeechTranslatorConfiguration");
    VCSpeechTranslation_STSpeechTranslatorConfigurationClass_speechTranslatorConfigurationClass = result;
  }

  return result;
}

uint64_t __VCSpeechTranslation_STSpeechTranslatorClientClass_block_invoke()
{
  result = _VCSpeechTranslation_LibraryHandle();
  if (result)
  {
    result = objc_getClass("STSpeechTranslatorClient");
    VCSpeechTranslation_STSpeechTranslatorClientClass_speechTranslatorClientClass = result;
  }

  return result;
}

void ___VCSpeechTranslation_LibraryHandle_block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  _MergedGlobals_8 = dlopen("/System/Library/PrivateFrameworks/SpeechTranslation.framework/SpeechTranslation", 1);
  if (_MergedGlobals_8)
  {
    return;
  }

  v0 = dlerror();
  if (!v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_21();
    v16 = "/System/Library/PrivateFrameworks/SpeechTranslation.framework/SpeechTranslation";
    OUTLINED_FUNCTION_2();
    v9 = 38;
LABEL_14:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    return;
  }

  v1 = v0;
  v2 = strlen(v0);
  v3 = malloc_type_calloc(v2 + 1, 1uLL, 0x100004077774924uLL);
  qword_1EDBDA8F0 = v3;
  if (!v3)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 136316162;
    v14 = v10;
    v15 = 2080;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_21();
    v16 = v1;
    v17 = v12;
    v18 = "/System/Library/PrivateFrameworks/SpeechTranslation.framework/SpeechTranslation";
    v4 = &dword_1DB56E000;
    v7 = " [%s] %s:%d Failed to softlink VCSpeechTranslation framework and could not copy over error=%s, path=%s";
    v8 = &v13;
    v5 = v11;
    v6 = OS_LOG_TYPE_ERROR;
    v9 = 48;
    goto LABEL_14;
  }

  strlcpy(v3, v1, v2 + 1);
}

@end
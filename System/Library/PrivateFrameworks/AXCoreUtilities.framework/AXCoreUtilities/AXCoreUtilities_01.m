id AXFormatNumberWithOptions(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  if (AXFormatNumberWithOptions__AXNumberFormatterWithOptionsOnceToken != -1)
  {
    AXFormatNumberWithOptions_cold_1();
  }

  if (a4)
  {
    [AXFormatNumberWithOptions__AXNumberFormatterWithOptions setNumberStyle:3];
    [AXFormatNumberWithOptions__AXNumberFormatterWithOptions _setUsesCharacterDirection:1];
    goto LABEL_12;
  }

  [v7 floatValue];
  if (v8 < 1.0)
  {
    [v7 floatValue];
    if (a2 <= 0 && v9 <= -1.0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v10 = AXFormatNumberWithOptions__AXNumberFormatterWithOptions;
    v11 = 1;
    goto LABEL_11;
  }

  if (a2 >= 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v10 = AXFormatNumberWithOptions__AXNumberFormatterWithOptions;
  v11 = 0;
LABEL_11:
  [v10 setNumberStyle:v11];
LABEL_12:
  [AXFormatNumberWithOptions__AXNumberFormatterWithOptions setMinimumFractionDigits:a3];
  [AXFormatNumberWithOptions__AXNumberFormatterWithOptions setMaximumFractionDigits:a2];
  v12 = [AXFormatNumberWithOptions__AXNumberFormatterWithOptions stringFromNumber:v7];

  return v12;
}

void __AXFormatNumberWithOptions_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = AXFormatNumberWithOptions__AXNumberFormatterWithOptions;
  AXFormatNumberWithOptions__AXNumberFormatterWithOptions = v0;

  v2 = AXFormatNumberWithOptions__AXNumberFormatterWithOptions;
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  [v2 setLocale:v3];
}

id AXFormatInteger(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v2 = AXFormatNumber(v1);

  return v2;
}

id AXFormatFloat(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v3 = AXFormatNumberWithOptions(v2, a1, 0, 0);

  return v3;
}

id AXFormatFloatWithPercentage(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v3 = AXFormatNumberWithOptions(v2, a1, 0, 1);

  return v3;
}

id AXFormatByteSize(uint64_t a1)
{
  v2 = a1;
  v3 = AXCLocString(@"size.bytes.format");
  if (a1 >= 1025)
  {
    v2 = v2 * 0.00097656;
    if (v2 >= 1024.0)
    {
      v2 = v2 * 0.00097656;
      if (v2 >= 1024.0)
      {
        v2 = v2 * 0.00097656;
        v4 = @"size.gigabytes.format";
      }

      else
      {
        v4 = @"size.megabytes.format";
      }
    }

    else
    {
      v4 = @"size.kilobytes.format";
    }

    v5 = AXCLocString(v4);

    v3 = v5;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v3, v2];

  return v6;
}

id AXFormatMagnificationFactor(float a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = AXCLocString(@"magnification.factor.format");
  *&v4 = a1;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v6 = AXFormatNumberWithOptions(v5, 1, 1, 0);
  v7 = [v2 stringWithFormat:v3, v6];

  return v7;
}

id AXFormatLocalizedPlaybackSpeedFactor(float a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = AXCLocString(@"playback.speed.factor.format");
  *&v4 = a1;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v6 = AXFormatNumberWithOptions(v5, 1, 0, 0);
  v7 = [v2 stringWithFormat:v3, v6];

  return v7;
}

uint64_t AXIntegerValueFromString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [MEMORY[0x1E696AD60] string];
    v3 = [MEMORY[0x1E696AE88] localizedScannerWithString:v1];
    if (([v3 isAtEnd] & 1) == 0)
    {
      do
      {
        v4 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
        v9 = 0;
        v5 = [v3 scanCharactersFromSet:v4 intoString:&v9];
        v6 = v9;

        if (v5)
        {
          [v2 appendString:v6];
        }

        else
        {
          [v3 setScanLocation:{objc_msgSend(v3, "scanLocation") + 1}];
        }
      }

      while (![v3 isAtEnd]);
    }

    if ([v2 length])
    {
      v7 = [v2 integerValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id AXDescriptionForHeadingInDegrees(int a1, double a2)
{
    ;
  }

    ;
  }

  v4 = @"DIRECTION_NORTH";
  if (i >= 22.0)
  {
    if (i >= 67.0)
    {
      if (i >= 112.0)
      {
        if (i >= 157.0)
        {
          if (i >= 202.0)
          {
            if (i >= 247.0)
            {
              if (i >= 292.0)
              {
                if (i < 337.0)
                {
                  v4 = @"DIRECTION_NORTHWEST";
                }
              }

              else
              {
                v4 = @"DIRECTION_WEST";
              }
            }

            else
            {
              v4 = @"DIRECTION_SOUTHWEST";
            }
          }

          else
          {
            v4 = @"DIRECTION_SOUTH";
          }
        }

        else
        {
          v4 = @"DIRECTION_SOUTHEAST";
        }
      }

      else
      {
        v4 = @"DIRECTION_EAST";
      }
    }

    else
    {
      v4 = @"DIRECTION_NORTHEAST";
    }
  }

  v5 = AXCLocString(v4);
  v6 = v5;
  if (a1)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = AXCLocString(@"degrees.format");
    LODWORD(v9) = llround(i);
    v10 = [v7 localizedStringWithFormat:v8, v9, v5];

    v11 = MEMORY[0x1E696AEC0];
    v12 = AXCLocString(@"compass.heading.format");
    v6 = [v11 localizedStringWithFormat:v12, v10, v5];
  }

  return v6;
}

void _AXAssertIsMainThread()
{
  v0 = [MEMORY[0x1E696AF00] currentThread];
  v1 = [v0 isMainThread];

  if ((v1 & 1) == 0)
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _AXAssertIsMainThread_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void _AXAssertIsThread(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  v2 = a1;
  v3 = [v1 currentThread];
  v4 = [v3 isEqual:v2];

  if ((v4 & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _AXAssertIsThread_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

void _AXAssertIsThreadNamed(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  v2 = a1;
  v3 = [v1 currentThread];
  v4 = [v3 name];
  v5 = [v4 isEqualToString:v2];

  if ((v5 & 1) == 0)
  {
    v6 = AXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _AXAssertIsThread_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

uint64_t AXSetThreadPriority(int a1)
{
  v7 = 0;
  v6 = 0;
  v2 = pthread_self();
  pthread_getschedparam(v2, &v6, &v7);
  sched_priority = v7.sched_priority;
  v7.sched_priority = a1;
  v4 = pthread_self();
  pthread_setschedparam(v4, 2, &v7);
  return sched_priority;
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id AXCBundle()
{
  v0 = AXCBundle_CUBundle;
  if (!AXCBundle_CUBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXCoreUtilities"];
    v2 = AXCBundle_CUBundle;
    AXCBundle_CUBundle = v1;

    v0 = AXCBundle_CUBundle;
  }

  return v0;
}

id AXCLanguageToCanonicalPlistPath()
{
  v0 = AXCBundle();
  v1 = [v0 pathForResource:@"AXLanguageToLocale" ofType:@"plist"];

  return v1;
}

id AXCLanguageFallbackPlistPath()
{
  v0 = AXCBundle();
  v1 = [v0 pathForResource:@"AXLanguageToFallback" ofType:@"plist"];

  return v1;
}

id AXCLanguageToLocales()
{
  if (AXCLanguageToLocales_onceToken != -1)
  {
    AXCLanguageToLocales_cold_1();
  }

  v1 = AXCLanguageToLocales_LanguageToLangLocale;

  return v1;
}

void __AXCLanguageToLocales_block_invoke()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v3 = AXCLanguageToCanonicalPlistPath();
  v1 = [v0 initWithContentsOfFile:v3];
  v2 = AXCLanguageToLocales_LanguageToLangLocale;
  AXCLanguageToLocales_LanguageToLangLocale = v1;
}

id AXCLanguageToFallbacks()
{
  if (AXCLanguageToFallbacks_onceToken != -1)
  {
    AXCLanguageToFallbacks_cold_1();
  }

  v1 = AXCLanguageToFallbacks_LanguageToFallback;

  return v1;
}

void __AXCLanguageToFallbacks_block_invoke()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v3 = AXCLanguageFallbackPlistPath();
  v1 = [v0 initWithContentsOfFile:v3];
  v2 = AXCLanguageToFallbacks_LanguageToFallback;
  AXCLanguageToFallbacks_LanguageToFallback = v1;
}

void sub_1915CAFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void AXBackgroundLog(void *a1, os_log_type_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (os_log_type_enabled(v5, a2))
  {
    if (_AXBackgroundLoggingQueue_onceToken[0] != -1)
    {
      AXBackgroundLog_cold_1();
    }

    v7 = _AXBackgroundLoggingQueue__queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AXBackgroundLog_block_invoke;
    block[3] = &unk_1E735BF40;
    v10 = v6;
    v9 = v5;
    v11 = a2;
    dispatch_async(v7, block);
  }
}

uint64_t __AXLogCommon_block_invoke()
{
  AXLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXSupportLogCommon()
{
  if (AXSupportLogCommon_onceToken != -1)
  {
    AXSupportLogCommon_cold_1();
  }

  v1 = AXSupportLogCommon___logObj;

  return v1;
}

uint64_t __AXSupportLogCommon_block_invoke()
{
  AXSupportLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXSupportCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXRuntimeLogCommon()
{
  if (AXRuntimeLogCommon_onceToken != -1)
  {
    AXRuntimeLogCommon_cold_1();
  }

  v1 = AXRuntimeLogCommon___logObj;

  return v1;
}

uint64_t __AXRuntimeLogCommon_block_invoke()
{
  AXRuntimeLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXRuntimeCommon");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __AXRuntimeLogPID_block_invoke()
{
  AXRuntimeLogPID___logObj = os_log_create("com.apple.Accessibility", "AXRuntimePID");

  return MEMORY[0x1EEE66BB8]();
}

id AXRuntimeLogNotifications()
{
  if (AXRuntimeLogNotifications_onceToken != -1)
  {
    AXRuntimeLogNotifications_cold_1();
  }

  v1 = AXRuntimeLogNotifications___logObj;

  return v1;
}

uint64_t __AXRuntimeLogNotifications_block_invoke()
{
  AXRuntimeLogNotifications___logObj = os_log_create("com.apple.Accessibility", "AXRuntimeNotifications");

  return MEMORY[0x1EEE66BB8]();
}

id AXRuntimeLogSerialization()
{
  if (AXRuntimeLogSerialization_onceToken != -1)
  {
    AXRuntimeLogSerialization_cold_1();
  }

  v1 = AXRuntimeLogSerialization___logObj;

  return v1;
}

uint64_t __AXRuntimeLogSerialization_block_invoke()
{
  AXRuntimeLogSerialization___logObj = os_log_create("com.apple.Accessibility", "AXRuntimeSerialization");

  return MEMORY[0x1EEE66BB8]();
}

id AXRuntimeLogElementFetcher()
{
  if (AXRuntimeLogElementFetcher_onceToken != -1)
  {
    AXRuntimeLogElementFetcher_cold_1();
  }

  v1 = AXRuntimeLogElementFetcher___logObj;

  return v1;
}

uint64_t __AXRuntimeLogElementFetcher_block_invoke()
{
  AXRuntimeLogElementFetcher___logObj = os_log_create("com.apple.Accessibility", "AXRuntimeElementFetcher");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogCommon()
{
  if (AXTTSLogCommon_onceToken != -1)
  {
    AXTTSLogCommon_cold_1();
  }

  v1 = AXTTSLogCommon___logObj;

  return v1;
}

uint64_t __AXTTSLogCommon_block_invoke()
{
  AXTTSLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXTTSCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogRange()
{
  if (AXTTSLogRange_onceToken != -1)
  {
    AXTTSLogRange_cold_1();
  }

  v1 = AXTTSLogRange___logObj;

  return v1;
}

uint64_t __AXTTSLogRange_block_invoke()
{
  AXTTSLogRange___logObj = os_log_create("com.apple.Accessibility", "AXTTSRange");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogVoiceBank()
{
  if (AXTTSLogVoiceBank_onceToken != -1)
  {
    AXTTSLogVoiceBank_cold_1();
  }

  v1 = AXTTSLogVoiceBank___logObj;

  return v1;
}

uint64_t __AXTTSLogVoiceBank_block_invoke()
{
  AXTTSLogVoiceBank___logObj = os_log_create("com.apple.Accessibility", "TTSVB");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogResourceManager()
{
  if (AXTTSLogResourceManager_onceToken != -1)
  {
    AXTTSLogResourceManager_cold_1();
  }

  v1 = AXTTSLogResourceManager___logObj;

  return v1;
}

uint64_t __AXTTSLogResourceManager_block_invoke()
{
  AXTTSLogResourceManager___logObj = os_log_create("com.apple.Accessibility", "AXTTSResourceManager");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogResourceMigration()
{
  if (AXTTSLogResourceMigration_onceToken != -1)
  {
    AXTTSLogResourceMigration_cold_1();
  }

  v1 = AXTTSLogResourceMigration___logObj;

  return v1;
}

uint64_t __AXTTSLogResourceMigration_block_invoke()
{
  AXTTSLogResourceMigration___logObj = os_log_create("com.apple.Accessibility", "AXTTSResourceMigration");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogKona()
{
  if (AXTTSLogKona_onceToken != -1)
  {
    AXTTSLogKona_cold_1();
  }

  v1 = AXTTSLogKona___logObj;

  return v1;
}

uint64_t __AXTTSLogKona_block_invoke()
{
  AXTTSLogKona___logObj = os_log_create("com.apple.Accessibility", "AXTTSKona");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogEventTap()
{
  if (AXLogEventTap_onceToken != -1)
  {
    AXLogEventTap_cold_1();
  }

  v1 = AXLogEventTap___logObj;

  return v1;
}

uint64_t __AXLogEventTap_block_invoke()
{
  AXLogEventTap___logObj = os_log_create("com.apple.Accessibility", "AXEventTap");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogDisplay()
{
  if (AXLogDisplay_onceToken != -1)
  {
    AXLogDisplay_cold_1();
  }

  v1 = AXLogDisplay___logObj;

  return v1;
}

uint64_t __AXLogDisplay_block_invoke()
{
  AXLogDisplay___logObj = os_log_create("com.apple.Accessibility", "AXDisplay");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUserInterfaceService()
{
  if (AXLogUserInterfaceService_onceToken != -1)
  {
    AXLogUserInterfaceService_cold_1();
  }

  v1 = AXLogUserInterfaceService___logObj;

  return v1;
}

uint64_t __AXLogUserInterfaceService_block_invoke()
{
  AXLogUserInterfaceService___logObj = os_log_create("com.apple.Accessibility", "AXUserInterfaceService");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUIViewService()
{
  if (AXLogUIViewService_onceToken != -1)
  {
    AXLogUIViewService_cold_1();
  }

  v1 = AXLogUIViewService___logObj;

  return v1;
}

uint64_t __AXLogUIViewService_block_invoke()
{
  AXLogUIViewService___logObj = os_log_create("com.apple.Accessibility", "AXUIViewService");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBrokenHomeButton()
{
  if (AXLogBrokenHomeButton_onceToken != -1)
  {
    AXLogBrokenHomeButton_cold_1();
  }

  v1 = AXLogBrokenHomeButton___logObj;

  return v1;
}

uint64_t __AXLogBrokenHomeButton_block_invoke()
{
  AXLogBrokenHomeButton___logObj = os_log_create("com.apple.Accessibility", "AXBrokenHomeButton");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogMIDI()
{
  if (AXLogMIDI_onceToken != -1)
  {
    AXLogMIDI_cold_1();
  }

  v1 = AXLogMIDI___logObj;

  return v1;
}

uint64_t __AXLogMIDI_block_invoke()
{
  AXLogMIDI___logObj = os_log_create("com.apple.Accessibility", "AXMIDI");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogDataMigrator()
{
  if (AXLogDataMigrator_onceToken != -1)
  {
    AXLogDataMigrator_cold_1();
  }

  v1 = AXLogDataMigrator___logObj;

  return v1;
}

uint64_t __AXLogDataMigrator_block_invoke()
{
  AXLogDataMigrator___logObj = os_log_create("com.apple.Accessibility", "AXDataMigrator");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogDragging()
{
  if (AXLogDragging_onceToken != -1)
  {
    AXLogDragging_cold_1();
  }

  v1 = AXLogDragging___logObj;

  return v1;
}

uint64_t __AXLogDragging_block_invoke()
{
  AXLogDragging___logObj = os_log_create("com.apple.Accessibility", "AXDragging");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSettings()
{
  if (AXLogSettings_onceToken != -1)
  {
    AXLogSettings_cold_1();
  }

  v1 = AXLogSettings___logObj;

  return v1;
}

uint64_t __AXLogSettings_block_invoke()
{
  AXLogSettings___logObj = os_log_create("com.apple.Accessibility", "AXSettings");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSiriShortcuts()
{
  if (AXLogSiriShortcuts_onceToken != -1)
  {
    AXLogSiriShortcuts_cold_1();
  }

  v1 = AXLogSiriShortcuts___logObj;

  return v1;
}

uint64_t __AXLogSiriShortcuts_block_invoke()
{
  AXLogSiriShortcuts___logObj = os_log_create("com.apple.Accessibility", "AXSiriShortcuts");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAssertions()
{
  if (AXLogAssertions_onceToken != -1)
  {
    AXLogAssertions_cold_1();
  }

  v1 = AXLogAssertions___logObj;

  return v1;
}

uint64_t __AXLogAssertions_block_invoke()
{
  AXLogAssertions___logObj = os_log_create("com.apple.Accessibility", "AXAssertions");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTimeProfile()
{
  if (AXLogTimeProfile_onceToken != -1)
  {
    AXLogTimeProfile_cold_1();
  }

  v1 = AXLogTimeProfile___logObj;

  return v1;
}

uint64_t __AXLogTimeProfile_block_invoke()
{
  AXLogTimeProfile___logObj = os_log_create("com.apple.Accessibility", "AXTimeProfile");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogMemoryProfile()
{
  if (AXLogMemoryProfile_onceToken != -1)
  {
    AXLogMemoryProfile_cold_1();
  }

  v1 = AXLogMemoryProfile___logObj;

  return v1;
}

uint64_t __AXLogMemoryProfile_block_invoke()
{
  AXLogMemoryProfile___logObj = os_log_create("com.apple.Accessibility", "AXMemoryProfile");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLookingGlass()
{
  if (AXLogLookingGlass_onceToken != -1)
  {
    AXLogLookingGlass_cold_1();
  }

  v1 = AXLogLookingGlass___logObj;

  return v1;
}

uint64_t __AXLogLookingGlass_block_invoke()
{
  AXLogLookingGlass___logObj = os_log_create("com.apple.Accessibility", "AXLookingGlass");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLookingGlassUI()
{
  if (AXLogLookingGlassUI_onceToken != -1)
  {
    AXLogLookingGlassUI_cold_1();
  }

  v1 = AXLogLookingGlassUI___logObj;

  return v1;
}

uint64_t __AXLogLookingGlassUI_block_invoke()
{
  AXLogLookingGlassUI___logObj = os_log_create("com.apple.Accessibility", "AXLookingGlassUI");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAccessories()
{
  if (AXLogAccessories_onceToken != -1)
  {
    AXLogAccessories_cold_1();
  }

  v1 = AXLogAccessories___logObj;

  return v1;
}

uint64_t __AXLogAccessories_block_invoke()
{
  AXLogAccessories___logObj = os_log_create("com.apple.Accessibility", "AXAccessories");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUI()
{
  if (AXLogUI_onceToken != -1)
  {
    AXLogUI_cold_1();
  }

  v1 = AXLogUI___logObj;

  return v1;
}

uint64_t __AXLogUI_block_invoke()
{
  AXLogUI___logObj = os_log_create("com.apple.Accessibility", "AXUI");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogManager()
{
  if (AXLogManager_onceToken != -1)
  {
    AXLogManager_cold_1();
  }

  v1 = AXLogManager___logObj;

  return v1;
}

uint64_t __AXLogManager_block_invoke()
{
  AXLogManager___logObj = os_log_create("com.apple.Accessibility", "AXManager");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBackboardServer()
{
  if (AXLogBackboardServer_onceToken != -1)
  {
    AXLogBackboardServer_cold_1();
  }

  v1 = AXLogBackboardServer___logObj;

  return v1;
}

uint64_t __AXLogBackboardServer_block_invoke()
{
  AXLogBackboardServer___logObj = os_log_create("com.apple.Accessibility", "AXBackboardServer");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpringboardServer()
{
  if (AXLogSpringboardServer_onceToken != -1)
  {
    AXLogSpringboardServer_cold_1();
  }

  v1 = AXLogSpringboardServer___logObj;

  return v1;
}

uint64_t __AXLogSpringboardServer_block_invoke()
{
  AXLogSpringboardServer___logObj = os_log_create("com.apple.Accessibility", "AXSpringboardServer");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSystemApp()
{
  if (AXLogSystemApp_onceToken != -1)
  {
    AXLogSystemApp_cold_1();
  }

  v1 = AXLogSystemApp___logObj;

  return v1;
}

uint64_t __AXLogSystemApp_block_invoke()
{
  AXLogSystemApp___logObj = os_log_create("com.apple.Accessibility", "AXSystemApp");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPhysicalInteraction()
{
  if (AXLogPhysicalInteraction_onceToken != -1)
  {
    AXLogPhysicalInteraction_cold_1();
  }

  v1 = AXLogPhysicalInteraction___logObj;

  return v1;
}

uint64_t __AXLogPhysicalInteraction_block_invoke()
{
  AXLogPhysicalInteraction___logObj = os_log_create("com.apple.Accessibility", "AXPhysicalInteraction");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAudioRouting()
{
  if (AXLogAudioRouting_onceToken != -1)
  {
    AXLogAudioRouting_cold_1();
  }

  v1 = AXLogAudioRouting___logObj;

  return v1;
}

uint64_t __AXLogAudioRouting_block_invoke()
{
  AXLogAudioRouting___logObj = os_log_create("com.apple.Accessibility", "AXAudioRouting");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPointerControl()
{
  if (AXLogPointerControl_onceToken != -1)
  {
    AXLogPointerControl_cold_1();
  }

  v1 = AXLogPointerControl___logObj;

  return v1;
}

uint64_t __AXLogPointerControl_block_invoke()
{
  AXLogPointerControl___logObj = os_log_create("com.apple.Accessibility", "AXPointerControl");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogCommon()
{
  if (ASTLogCommon_onceToken != -1)
  {
    ASTLogCommon_cold_1();
  }

  v1 = ASTLogCommon___logObj;

  return v1;
}

uint64_t __ASTLogCommon_block_invoke()
{
  ASTLogCommon___logObj = os_log_create("com.apple.Accessibility", "ASTCommon");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogMouse()
{
  if (ASTLogMouse_onceToken != -1)
  {
    ASTLogMouse_cold_1();
  }

  v1 = ASTLogMouse___logObj;

  return v1;
}

uint64_t __ASTLogMouse_block_invoke()
{
  ASTLogMouse___logObj = os_log_create("com.apple.Accessibility", "ASTMouse");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogEventManagement()
{
  if (ASTLogEventManagement_onceToken != -1)
  {
    ASTLogEventManagement_cold_1();
  }

  v1 = ASTLogEventManagement___logObj;

  return v1;
}

uint64_t __ASTLogEventManagement_block_invoke()
{
  ASTLogEventManagement___logObj = os_log_create("com.apple.Accessibility", "ASTEventManagement");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogRocker()
{
  if (ASTLogRocker_onceToken != -1)
  {
    ASTLogRocker_cold_1();
  }

  v1 = ASTLogRocker___logObj;

  return v1;
}

uint64_t __ASTLogRocker_block_invoke()
{
  ASTLogRocker___logObj = os_log_create("com.apple.Accessibility", "ASTRocker");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogSystemPointerController()
{
  if (ASTLogSystemPointerController_onceToken != -1)
  {
    ASTLogSystemPointerController_cold_1();
  }

  v1 = ASTLogSystemPointerController___logObj;

  return v1;
}

uint64_t __ASTLogSystemPointerController_block_invoke()
{
  ASTLogSystemPointerController___logObj = os_log_create("com.apple.Accessibility", "ASTSystemPointerController");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogRuntimeManager()
{
  if (ASTLogRuntimeManager_onceToken != -1)
  {
    ASTLogRuntimeManager_cold_1();
  }

  v1 = ASTLogRuntimeManager___logObj;

  return v1;
}

uint64_t __ASTLogRuntimeManager_block_invoke()
{
  ASTLogRuntimeManager___logObj = os_log_create("com.apple.Accessibility", "ASTRuntimeManager");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogDeviceManager()
{
  if (ASTLogDeviceManager_onceToken != -1)
  {
    ASTLogDeviceManager_cold_1();
  }

  v1 = ASTLogDeviceManager___logObj;

  return v1;
}

uint64_t __ASTLogDeviceManager_block_invoke()
{
  ASTLogDeviceManager___logObj = os_log_create("com.apple.Accessibility", "ASTDeviceManager");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogDisplayManager()
{
  if (ASTLogDisplayManager_onceToken != -1)
  {
    ASTLogDisplayManager_cold_1();
  }

  v1 = ASTLogDisplayManager___logObj;

  return v1;
}

uint64_t __ASTLogDisplayManager_block_invoke()
{
  ASTLogDisplayManager___logObj = os_log_create("com.apple.Accessibility", "ASTDisplayManager");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogKickStart()
{
  if (ASTLogKickStart_onceToken != -1)
  {
    ASTLogKickStart_cold_1();
  }

  v1 = ASTLogKickStart___logObj;

  return v1;
}

uint64_t __ASTLogKickStart_block_invoke()
{
  ASTLogKickStart___logObj = os_log_create("com.apple.Accessibility", "ASTKickStart");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAggregate()
{
  if (AXLogAggregate_onceToken != -1)
  {
    AXLogAggregate_cold_1();
  }

  v1 = AXLogAggregate___logObj;

  return v1;
}

uint64_t __AXLogAggregate_block_invoke()
{
  AXLogAggregate___logObj = os_log_create("com.apple.Accessibility", "AXAggregate");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUIA()
{
  if (AXLogUIA_onceToken != -1)
  {
    AXLogUIA_cold_1();
  }

  v1 = AXLogUIA___logObj;

  return v1;
}

uint64_t __AXLogUIA_block_invoke()
{
  AXLogUIA___logObj = os_log_create("com.apple.Accessibility", "AXUIA");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLocCaptionPanel()
{
  if (AXLogLocCaptionPanel_onceToken != -1)
  {
    AXLogLocCaptionPanel_cold_1();
  }

  v1 = AXLogLocCaptionPanel___logObj;

  return v1;
}

uint64_t __AXLogLocCaptionPanel_block_invoke()
{
  AXLogLocCaptionPanel___logObj = os_log_create("com.apple.Accessibility", "AXLocCaptionPanel");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogContextKit()
{
  if (AXLogContextKit_onceToken != -1)
  {
    AXLogContextKit_cold_1();
  }

  v1 = AXLogContextKit___logObj;

  return v1;
}

uint64_t __AXLogContextKit_block_invoke()
{
  AXLogContextKit___logObj = os_log_create("com.apple.Accessibility", "AXContextKit");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPronunciations()
{
  if (AXLogPronunciations_onceToken != -1)
  {
    AXLogPronunciations_cold_1();
  }

  v1 = AXLogPronunciations___logObj;

  return v1;
}

uint64_t __AXLogPronunciations_block_invoke()
{
  AXLogPronunciations___logObj = os_log_create("com.apple.Accessibility", "AXPronunciations");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBrailleHW()
{
  if (AXLogBrailleHW_onceToken != -1)
  {
    AXLogBrailleHW_cold_1();
  }

  v1 = AXLogBrailleHW___logObj;

  return v1;
}

uint64_t __AXLogBrailleHW_block_invoke()
{
  AXLogBrailleHW___logObj = os_log_create("com.apple.Accessibility", "AXBrailleHW");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBluetooth()
{
  if (AXLogBluetooth_onceToken != -1)
  {
    AXLogBluetooth_cold_1();
  }

  v1 = AXLogBluetooth___logObj;

  return v1;
}

uint64_t __AXLogBluetooth_block_invoke()
{
  AXLogBluetooth___logObj = os_log_create("com.apple.Accessibility", "AXBluetooth");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogFocusEngine()
{
  if (AXLogFocusEngine_onceToken != -1)
  {
    AXLogFocusEngine_cold_1();
  }

  v1 = AXLogFocusEngine___logObj;

  return v1;
}

uint64_t __AXLogFocusEngine_block_invoke()
{
  AXLogFocusEngine___logObj = os_log_create("com.apple.Accessibility", "AXFocusEngine");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSoundBoard()
{
  if (AXLogSoundBoard_onceToken != -1)
  {
    AXLogSoundBoard_cold_1();
  }

  v1 = AXLogSoundBoard___logObj;

  return v1;
}

uint64_t __AXLogSoundBoard_block_invoke()
{
  AXLogSoundBoard___logObj = os_log_create("com.apple.Accessibility", "AXSoundBoard");

  return MEMORY[0x1EEE66BB8]();
}

id FKALogCommon()
{
  if (FKALogCommon_onceToken != -1)
  {
    FKALogCommon_cold_1();
  }

  v1 = FKALogCommon___logObj;

  return v1;
}

uint64_t __FKALogCommon_block_invoke()
{
  FKALogCommon___logObj = os_log_create("com.apple.Accessibility", "FKACommon");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogCommon()
{
  if (GAXLogCommon_onceToken != -1)
  {
    GAXLogCommon_cold_1();
  }

  v1 = GAXLogCommon___logObj;

  return v1;
}

uint64_t __GAXLogCommon_block_invoke()
{
  GAXLogCommon___logObj = os_log_create("com.apple.Accessibility", "GAXCommon");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogTimeRestrictions()
{
  if (GAXLogTimeRestrictions_onceToken != -1)
  {
    GAXLogTimeRestrictions_cold_1();
  }

  v1 = GAXLogTimeRestrictions___logObj;

  return v1;
}

uint64_t __GAXLogTimeRestrictions_block_invoke()
{
  GAXLogTimeRestrictions___logObj = os_log_create("com.apple.Accessibility", "GAXTimeRestrictions");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogIntegrity()
{
  if (GAXLogIntegrity_onceToken != -1)
  {
    GAXLogIntegrity_cold_1();
  }

  v1 = GAXLogIntegrity___logObj;

  return v1;
}

uint64_t __GAXLogIntegrity_block_invoke()
{
  GAXLogIntegrity___logObj = os_log_create("com.apple.Accessibility", "GAXIntegrity");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogAppLaunching()
{
  if (GAXLogAppLaunching_onceToken != -1)
  {
    GAXLogAppLaunching_cold_1();
  }

  v1 = GAXLogAppLaunching___logObj;

  return v1;
}

uint64_t __GAXLogAppLaunching_block_invoke()
{
  GAXLogAppLaunching___logObj = os_log_create("com.apple.Accessibility", "GAXAppLaunching");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogBlockedTouches()
{
  if (GAXLogBlockedTouches_onceToken != -1)
  {
    GAXLogBlockedTouches_cold_1();
  }

  v1 = GAXLogBlockedTouches___logObj;

  return v1;
}

uint64_t __GAXLogBlockedTouches_block_invoke()
{
  GAXLogBlockedTouches___logObj = os_log_create("com.apple.Accessibility", "GAXBlockedTouches");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogInvertColors()
{
  if (AXLogInvertColors_onceToken != -1)
  {
    AXLogInvertColors_cold_1();
  }

  v1 = AXLogInvertColors___logObj;

  return v1;
}

uint64_t __AXLogInvertColors_block_invoke()
{
  AXLogInvertColors___logObj = os_log_create("com.apple.Accessibility", "AXInvertColors");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogInvertColorsTraversal()
{
  if (AXLogInvertColorsTraversal_onceToken != -1)
  {
    AXLogInvertColorsTraversal_cold_1();
  }

  v1 = AXLogInvertColorsTraversal___logObj;

  return v1;
}

uint64_t __AXLogInvertColorsTraversal_block_invoke()
{
  AXLogInvertColorsTraversal___logObj = os_log_create("com.apple.Accessibility", "AXInvertColorsTraversal");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogInvertColorsLoadBundles()
{
  if (AXLogInvertColorsLoadBundles_onceToken != -1)
  {
    AXLogInvertColorsLoadBundles_cold_1();
  }

  v1 = AXLogInvertColorsLoadBundles___logObj;

  return v1;
}

uint64_t __AXLogInvertColorsLoadBundles_block_invoke()
{
  AXLogInvertColorsLoadBundles___logObj = os_log_create("com.apple.Accessibility", "AXInvertColorsLoadBundles");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogMuseAccessibility()
{
  if (AXLogMuseAccessibility_onceToken != -1)
  {
    AXLogMuseAccessibility_cold_1();
  }

  v1 = AXLogMuseAccessibility___logObj;

  return v1;
}

uint64_t __AXLogMuseAccessibility_block_invoke()
{
  AXLogMuseAccessibility___logObj = os_log_create("com.apple.Accessibility", "AXMuseAccessibility");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __AXLogAppAccessibility_block_invoke()
{
  AXLogAppAccessibility___logObj = os_log_create("com.apple.Accessibility", "AXAppAccessibility");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAppCompareGeometry()
{
  if (AXLogAppCompareGeometry_onceToken != -1)
  {
    AXLogAppCompareGeometry_cold_1();
  }

  v1 = AXLogAppCompareGeometry___logObj;

  return v1;
}

uint64_t __AXLogAppCompareGeometry_block_invoke()
{
  AXLogAppCompareGeometry___logObj = os_log_create("com.apple.Accessibility", "AXAppCompareGeometry");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogValidations()
{
  if (AXLogValidations_onceToken != -1)
  {
    AXLogValidations_cold_1();
  }

  v1 = AXLogValidations___logObj;

  return v1;
}

uint64_t __AXLogValidations_block_invoke()
{
  AXLogValidations___logObj = os_log_create("com.apple.Accessibility", "AXValidations");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogValidationRunner()
{
  if (AXLogValidationRunner_onceToken != -1)
  {
    AXLogValidationRunner_cold_1();
  }

  v1 = AXLogValidationRunner___logObj;

  return v1;
}

uint64_t __AXLogValidationRunner_block_invoke()
{
  AXLogValidationRunner___logObj = os_log_create("com.apple.Accessibility", "AXValidationRunner");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogElementTraversal()
{
  if (AXLogElementTraversal_onceToken != -1)
  {
    AXLogElementTraversal_cold_1();
  }

  v1 = AXLogElementTraversal___logObj;

  return v1;
}

uint64_t __AXLogElementTraversal_block_invoke()
{
  AXLogElementTraversal___logObj = os_log_create("com.apple.Accessibility", "AXElementTraversal");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogFirstElement()
{
  if (AXLogFirstElement_onceToken != -1)
  {
    AXLogFirstElement_cold_1();
  }

  v1 = AXLogFirstElement___logObj;

  return v1;
}

uint64_t __AXLogFirstElement_block_invoke()
{
  AXLogFirstElement___logObj = os_log_create("com.apple.Accessibility", "AXFirstElement");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogHitTest()
{
  if (AXLogHitTest_onceToken != -1)
  {
    AXLogHitTest_cold_1();
  }

  v1 = AXLogHitTest___logObj;

  return v1;
}

uint64_t __AXLogHitTest_block_invoke()
{
  AXLogHitTest___logObj = os_log_create("com.apple.Accessibility", "AXHitTest");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogScrollToVisible()
{
  if (AXLogScrollToVisible_onceToken != -1)
  {
    AXLogScrollToVisible_cold_1();
  }

  v1 = AXLogScrollToVisible___logObj;

  return v1;
}

uint64_t __AXLogScrollToVisible_block_invoke()
{
  AXLogScrollToVisible___logObj = os_log_create("com.apple.Accessibility", "AXScrollToVisible");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogVisibleFrame()
{
  if (AXLogVisibleFrame_onceToken != -1)
  {
    AXLogVisibleFrame_cold_1();
  }

  v1 = AXLogVisibleFrame___logObj;

  return v1;
}

uint64_t __AXLogVisibleFrame_block_invoke()
{
  AXLogVisibleFrame___logObj = os_log_create("com.apple.Accessibility", "AXVisibleFrame");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogOpaqueElements()
{
  if (AXLogOpaqueElements_onceToken != -1)
  {
    AXLogOpaqueElements_cold_1();
  }

  v1 = AXLogOpaqueElements___logObj;

  return v1;
}

uint64_t __AXLogOpaqueElements_block_invoke()
{
  AXLogOpaqueElements___logObj = os_log_create("com.apple.Accessibility", "AXOpaqueElements");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLoading()
{
  if (AXLogLoading_onceToken != -1)
  {
    AXLogLoading_cold_1();
  }

  v1 = AXLogLoading___logObj;

  return v1;
}

uint64_t __AXLogLoading_block_invoke()
{
  AXLogLoading___logObj = os_log_create("com.apple.Accessibility", "AXLoading");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogVectorKit()
{
  if (AXLogVectorKit_onceToken != -1)
  {
    AXLogVectorKit_cold_1();
  }

  v1 = AXLogVectorKit___logObj;

  return v1;
}

uint64_t __AXLogVectorKit_block_invoke()
{
  AXLogVectorKit___logObj = os_log_create("com.apple.Accessibility", "AXVectorKit");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogRemoteElement()
{
  if (AXLogRemoteElement_onceToken != -1)
  {
    AXLogRemoteElement_cold_1();
  }

  v1 = AXLogRemoteElement___logObj;

  return v1;
}

uint64_t __AXLogRemoteElement_block_invoke()
{
  AXLogRemoteElement___logObj = os_log_create("com.apple.Accessibility", "AXRemoteElement");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogEscape()
{
  if (AXLogEscape_onceToken != -1)
  {
    AXLogEscape_cold_1();
  }

  v1 = AXLogEscape___logObj;

  return v1;
}

uint64_t __AXLogEscape_block_invoke()
{
  AXLogEscape___logObj = os_log_create("com.apple.Accessibility", "AXEscape");

  return MEMORY[0x1EEE66BB8]();
}

id MAGLogCommon()
{
  if (MAGLogCommon_onceToken != -1)
  {
    MAGLogCommon_cold_1();
  }

  v1 = MAGLogCommon___logObj;

  return v1;
}

uint64_t __MAGLogCommon_block_invoke()
{
  MAGLogCommon___logObj = os_log_create("com.apple.Accessibility", "MAGCommon");

  return MEMORY[0x1EEE66BB8]();
}

id MAGLogBrightness()
{
  if (MAGLogBrightness_onceToken != -1)
  {
    MAGLogBrightness_cold_1();
  }

  v1 = MAGLogBrightness___logObj;

  return v1;
}

uint64_t __MAGLogBrightness_block_invoke()
{
  MAGLogBrightness___logObj = os_log_create("com.apple.Accessibility", "MAGBrightness");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogMotionCues()
{
  if (AXLogMotionCues_onceToken != -1)
  {
    AXLogMotionCues_cold_1();
  }

  v1 = AXLogMotionCues___logObj;

  return v1;
}

uint64_t __AXLogMotionCues_block_invoke()
{
  AXLogMotionCues___logObj = os_log_create("com.apple.Accessibility", "AXMotionCues");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogGuestPass()
{
  if (AXLogGuestPass_onceToken != -1)
  {
    AXLogGuestPass_cold_1();
  }

  v1 = AXLogGuestPass___logObj;

  return v1;
}

uint64_t __AXLogGuestPass_block_invoke()
{
  AXLogGuestPass___logObj = os_log_create("com.apple.Accessibility", "AXGuestPass");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeechAssetDownload()
{
  if (AXLogSpeechAssetDownload_onceToken != -1)
  {
    AXLogSpeechAssetDownload_cold_1();
  }

  v1 = AXLogSpeechAssetDownload___logObj;

  return v1;
}

uint64_t __AXLogSpeechAssetDownload_block_invoke()
{
  AXLogSpeechAssetDownload___logObj = os_log_create("com.apple.Accessibility", "AXSpeechAssetDownload");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogCharacterVoices()
{
  if (AXLogCharacterVoices_onceToken != -1)
  {
    AXLogCharacterVoices_cold_1();
  }

  v1 = AXLogCharacterVoices___logObj;

  return v1;
}

uint64_t __AXLogCharacterVoices_block_invoke()
{
  AXLogCharacterVoices___logObj = os_log_create("com.apple.Accessibility", "AXCharacterVoices");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeechSynthesis()
{
  if (AXLogSpeechSynthesis_onceToken != -1)
  {
    AXLogSpeechSynthesis_cold_1();
  }

  v1 = AXLogSpeechSynthesis___logObj;

  return v1;
}

uint64_t __AXLogSpeechSynthesis_block_invoke()
{
  AXLogSpeechSynthesis___logObj = os_log_create("com.apple.Accessibility", "AXSpeechSynthesis");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogOrator()
{
  if (AXLogOrator_onceToken != -1)
  {
    AXLogOrator_cold_1();
  }

  v1 = AXLogOrator___logObj;

  return v1;
}

uint64_t __AXLogOrator_block_invoke()
{
  AXLogOrator___logObj = os_log_create("com.apple.Accessibility", "AXOrator");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeakSelection()
{
  if (AXLogSpeakSelection_onceToken != -1)
  {
    AXLogSpeakSelection_cold_1();
  }

  v1 = AXLogSpeakSelection___logObj;

  return v1;
}

uint64_t __AXLogSpeakSelection_block_invoke()
{
  AXLogSpeakSelection___logObj = os_log_create("com.apple.Accessibility", "AXSpeakSelection");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeakTyping()
{
  if (AXLogSpeakTyping_onceToken != -1)
  {
    AXLogSpeakTyping_cold_1();
  }

  v1 = AXLogSpeakTyping___logObj;

  return v1;
}

uint64_t __AXLogSpeakTyping_block_invoke()
{
  AXLogSpeakTyping___logObj = os_log_create("com.apple.Accessibility", "AXSpeakTyping");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeakScreen()
{
  if (AXLogSpeakScreen_onceToken != -1)
  {
    AXLogSpeakScreen_cold_1();
  }

  v1 = AXLogSpeakScreen___logObj;

  return v1;
}

uint64_t __AXLogSpeakScreen_block_invoke()
{
  AXLogSpeakScreen___logObj = os_log_create("com.apple.Accessibility", "AXSpeakScreen");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeakFingerManager()
{
  if (AXLogSpeakFingerManager_onceToken != -1)
  {
    AXLogSpeakFingerManager_cold_1();
  }

  v1 = AXLogSpeakFingerManager___logObj;

  return v1;
}

uint64_t __AXLogSpeakFingerManager_block_invoke()
{
  AXLogSpeakFingerManager___logObj = os_log_create("com.apple.Accessibility", "AXSpeakFingerManager");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpokenContentTextProcessing()
{
  if (AXLogSpokenContentTextProcessing_onceToken != -1)
  {
    AXLogSpokenContentTextProcessing_cold_1();
  }

  v1 = AXLogSpokenContentTextProcessing___logObj;

  return v1;
}

uint64_t __AXLogSpokenContentTextProcessing_block_invoke()
{
  AXLogSpokenContentTextProcessing___logObj = os_log_create("com.apple.Accessibility", "AXSpokenContentTextProcessing");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogCommon()
{
  if (SWCHLogCommon_onceToken != -1)
  {
    SWCHLogCommon_cold_1();
  }

  v1 = SWCHLogCommon___logObj;

  return v1;
}

uint64_t __SWCHLogCommon_block_invoke()
{
  SWCHLogCommon___logObj = os_log_create("com.apple.Accessibility", "SWCHCommon");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogElementNav()
{
  if (SWCHLogElementNav_onceToken != -1)
  {
    SWCHLogElementNav_cold_1();
  }

  v1 = SWCHLogElementNav___logObj;

  return v1;
}

uint64_t __SWCHLogElementNav_block_invoke()
{
  SWCHLogElementNav___logObj = os_log_create("com.apple.Accessibility", "SWCHElementNav");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogPauseResume()
{
  if (SWCHLogPauseResume_onceToken != -1)
  {
    SWCHLogPauseResume_cold_1();
  }

  v1 = SWCHLogPauseResume___logObj;

  return v1;
}

uint64_t __SWCHLogPauseResume_block_invoke()
{
  SWCHLogPauseResume___logObj = os_log_create("com.apple.Accessibility", "SWCHPauseResume");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogHW()
{
  if (SWCHLogHW_onceToken != -1)
  {
    SWCHLogHW_cold_1();
  }

  v1 = SWCHLogHW___logObj;

  return v1;
}

uint64_t __SWCHLogHW_block_invoke()
{
  SWCHLogHW___logObj = os_log_create("com.apple.Accessibility", "SWCHHW");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogMenu()
{
  if (SWCHLogMenu_onceToken != -1)
  {
    SWCHLogMenu_cold_1();
  }

  v1 = SWCHLogMenu___logObj;

  return v1;
}

uint64_t __SWCHLogMenu_block_invoke()
{
  SWCHLogMenu___logObj = os_log_create("com.apple.Accessibility", "SWCHMenu");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogSettings()
{
  if (SWCHLogSettings_onceToken != -1)
  {
    SWCHLogSettings_cold_1();
  }

  v1 = SWCHLogSettings___logObj;

  return v1;
}

uint64_t __SWCHLogSettings_block_invoke()
{
  SWCHLogSettings___logObj = os_log_create("com.apple.Accessibility", "SWCHSettings");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogInputController()
{
  if (SWCHLogInputController_onceToken != -1)
  {
    SWCHLogInputController_cold_1();
  }

  v1 = SWCHLogInputController___logObj;

  return v1;
}

uint64_t __SWCHLogInputController_block_invoke()
{
  SWCHLogInputController___logObj = os_log_create("com.apple.Accessibility", "SWCHInputController");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogScannerManager()
{
  if (SWCHLogScannerManager_onceToken != -1)
  {
    SWCHLogScannerManager_cold_1();
  }

  v1 = SWCHLogScannerManager___logObj;

  return v1;
}

uint64_t __SWCHLogScannerManager_block_invoke()
{
  SWCHLogScannerManager___logObj = os_log_create("com.apple.Accessibility", "SWCHScannerManager");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogModernMenuActions()
{
  if (SWCHLogModernMenuActions_onceToken != -1)
  {
    SWCHLogModernMenuActions_cold_1();
  }

  v1 = SWCHLogModernMenuActions___logObj;

  return v1;
}

uint64_t __SWCHLogModernMenuActions_block_invoke()
{
  SWCHLogModernMenuActions___logObj = os_log_create("com.apple.Accessibility", "SWCHModernMenuActions");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTapticTime()
{
  if (AXLogTapticTime_onceToken != -1)
  {
    AXLogTapticTime_cold_1();
  }

  v1 = AXLogTapticTime___logObj;

  return v1;
}

uint64_t __AXLogTapticTime_block_invoke()
{
  AXLogTapticTime___logObj = os_log_create("com.apple.Accessibility", "AXTapticTime");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTouchAccommodations()
{
  if (AXLogTouchAccommodations_onceToken != -1)
  {
    AXLogTouchAccommodations_cold_1();
  }

  v1 = AXLogTouchAccommodations___logObj;

  return v1;
}

uint64_t __AXLogTouchAccommodations_block_invoke()
{
  AXLogTouchAccommodations___logObj = os_log_create("com.apple.Accessibility", "AXTouchAccommodations");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __AXLogIDS_block_invoke()
{
  AXLogIDS___logObj = os_log_create("com.apple.Accessibility", "AXIDS");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogCommon()
{
  if (VOTLogCommon_onceToken != -1)
  {
    VOTLogCommon_cold_1();
  }

  v1 = VOTLogCommon___logObj;

  return v1;
}

uint64_t __VOTLogCommon_block_invoke()
{
  VOTLogCommon___logObj = os_log_create("com.apple.Accessibility", "VOTCommon");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogLayoutChange()
{
  if (VOTLogLayoutChange_onceToken != -1)
  {
    VOTLogLayoutChange_cold_1();
  }

  v1 = VOTLogLayoutChange___logObj;

  return v1;
}

uint64_t __VOTLogLayoutChange_block_invoke()
{
  VOTLogLayoutChange___logObj = os_log_create("com.apple.Accessibility", "VOTLayoutChange");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogHandwriting()
{
  if (VOTLogHandwriting_onceToken != -1)
  {
    VOTLogHandwriting_cold_1();
  }

  v1 = VOTLogHandwriting___logObj;

  return v1;
}

uint64_t __VOTLogHandwriting_block_invoke()
{
  VOTLogHandwriting___logObj = os_log_create("com.apple.Accessibility", "VOTHandwriting");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogSpeech()
{
  if (VOTLogSpeech_onceToken != -1)
  {
    VOTLogSpeech_cold_1();
  }

  v1 = VOTLogSpeech___logObj;

  return v1;
}

uint64_t __VOTLogSpeech_block_invoke()
{
  VOTLogSpeech___logObj = os_log_create("com.apple.Accessibility", "VOTSpeech");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogICloud()
{
  if (VOTLogICloud_onceToken != -1)
  {
    VOTLogICloud_cold_1();
  }

  v1 = VOTLogICloud___logObj;

  return v1;
}

uint64_t __VOTLogICloud_block_invoke()
{
  VOTLogICloud___logObj = os_log_create("com.apple.Accessibility", "VOTICloud");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogAudio()
{
  if (VOTLogAudio_onceToken != -1)
  {
    VOTLogAudio_cold_1();
  }

  v1 = VOTLogAudio___logObj;

  return v1;
}

uint64_t __VOTLogAudio_block_invoke()
{
  VOTLogAudio___logObj = os_log_create("com.apple.Accessibility", "VOTAudio");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogElement()
{
  if (VOTLogElement_onceToken != -1)
  {
    VOTLogElement_cold_1();
  }

  v1 = VOTLogElement___logObj;

  return v1;
}

uint64_t __VOTLogElement_block_invoke()
{
  VOTLogElement___logObj = os_log_create("com.apple.Accessibility", "VOTElement");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogEvent()
{
  if (VOTLogEvent_onceToken != -1)
  {
    VOTLogEvent_cold_1();
  }

  v1 = VOTLogEvent___logObj;

  return v1;
}

uint64_t __VOTLogEvent_block_invoke()
{
  VOTLogEvent___logObj = os_log_create("com.apple.Accessibility", "VOTEvent");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogBraille()
{
  if (VOTLogBraille_onceToken != -1)
  {
    VOTLogBraille_cold_1();
  }

  v1 = VOTLogBraille___logObj;

  return v1;
}

uint64_t __VOTLogBraille_block_invoke()
{
  VOTLogBraille___logObj = os_log_create("com.apple.Accessibility", "VOTBraille");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogBrailleGestures()
{
  if (VOTLogBrailleGestures_onceToken != -1)
  {
    VOTLogBrailleGestures_cold_1();
  }

  v1 = VOTLogBrailleGestures___logObj;

  return v1;
}

uint64_t __VOTLogBrailleGestures_block_invoke()
{
  VOTLogBrailleGestures___logObj = os_log_create("com.apple.Accessibility", "VOTBrailleGestures");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogNotifications()
{
  if (VOTLogNotifications_onceToken != -1)
  {
    VOTLogNotifications_cold_1();
  }

  v1 = VOTLogNotifications___logObj;

  return v1;
}

uint64_t __VOTLogNotifications_block_invoke()
{
  VOTLogNotifications___logObj = os_log_create("com.apple.Accessibility", "VOTNotifications");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogKeyboard()
{
  if (VOTLogKeyboard_onceToken != -1)
  {
    VOTLogKeyboard_cold_1();
  }

  v1 = VOTLogKeyboard___logObj;

  return v1;
}

uint64_t __VOTLogKeyboard_block_invoke()
{
  VOTLogKeyboard___logObj = os_log_create("com.apple.Accessibility", "VOTKeyboard");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogTVFocus()
{
  if (VOTLogTVFocus_onceToken != -1)
  {
    VOTLogTVFocus_cold_1();
  }

  v1 = VOTLogTVFocus___logObj;

  return v1;
}

uint64_t __VOTLogTVFocus_block_invoke()
{
  VOTLogTVFocus___logObj = os_log_create("com.apple.Accessibility", "VOTTVFocus");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogTVExplorer()
{
  if (VOTLogTVExplorer_onceToken != -1)
  {
    VOTLogTVExplorer_cold_1();
  }

  v1 = VOTLogTVExplorer___logObj;

  return v1;
}

uint64_t __VOTLogTVExplorer_block_invoke()
{
  VOTLogTVExplorer___logObj = os_log_create("com.apple.Accessibility", "VOTTVExplorer");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogIAP()
{
  if (VOTLogIAP_onceToken != -1)
  {
    VOTLogIAP_cold_1();
  }

  v1 = VOTLogIAP___logObj;

  return v1;
}

uint64_t __VOTLogIAP_block_invoke()
{
  VOTLogIAP___logObj = os_log_create("com.apple.Accessibility", "VOTIAP");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogLifeCycle()
{
  if (VOTLogLifeCycle_onceToken != -1)
  {
    VOTLogLifeCycle_cold_1();
  }

  v1 = VOTLogLifeCycle___logObj;

  return v1;
}

uint64_t __VOTLogLifeCycle_block_invoke()
{
  VOTLogLifeCycle___logObj = os_log_create("com.apple.Accessibility", "VOTLifeCycle");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogMagicTap()
{
  if (VOTLogMagicTap_onceToken != -1)
  {
    VOTLogMagicTap_cold_1();
  }

  v1 = VOTLogMagicTap___logObj;

  return v1;
}

uint64_t __VOTLogMagicTap_block_invoke()
{
  VOTLogMagicTap___logObj = os_log_create("com.apple.Accessibility", "VOTMagicTap");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogRotor()
{
  if (VOTLogRotor_onceToken != -1)
  {
    VOTLogRotor_cold_1();
  }

  v1 = VOTLogRotor___logObj;

  return v1;
}

uint64_t __VOTLogRotor_block_invoke()
{
  VOTLogRotor___logObj = os_log_create("com.apple.Accessibility", "VOTRotor");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogQuickSettings()
{
  if (VOTLogQuickSettings_onceToken != -1)
  {
    VOTLogQuickSettings_cold_1();
  }

  v1 = VOTLogQuickSettings___logObj;

  return v1;
}

uint64_t __VOTLogQuickSettings_block_invoke()
{
  VOTLogQuickSettings___logObj = os_log_create("com.apple.Accessibility", "VOTQuickSettings");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogSimpleTap()
{
  if (VOTLogSimpleTap_onceToken != -1)
  {
    VOTLogSimpleTap_cold_1();
  }

  v1 = VOTLogSimpleTap___logObj;

  return v1;
}

uint64_t __VOTLogSimpleTap_block_invoke()
{
  VOTLogSimpleTap___logObj = os_log_create("com.apple.Accessibility", "VOTSimpleTap");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __AXLogPunctuationStorage_block_invoke()
{
  AXLogPunctuationStorage___logObj = os_log_create("com.apple.Accessibility", "AXPunctuationStorage");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogWebPageMovement()
{
  if (VOTLogWebPageMovement_onceToken != -1)
  {
    VOTLogWebPageMovement_cold_1();
  }

  v1 = VOTLogWebPageMovement___logObj;

  return v1;
}

uint64_t __VOTLogWebPageMovement_block_invoke()
{
  VOTLogWebPageMovement___logObj = os_log_create("com.apple.Accessibility", "VOTWebPageMovement");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogCommands()
{
  if (VOTLogCommands_onceToken != -1)
  {
    VOTLogCommands_cold_1();
  }

  v1 = VOTLogCommands___logObj;

  return v1;
}

uint64_t __VOTLogCommands_block_invoke()
{
  VOTLogCommands___logObj = os_log_create("com.apple.Accessibility", "VOTCommands");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogImageExplorer()
{
  if (VOTLogImageExplorer_onceToken != -1)
  {
    VOTLogImageExplorer_cold_1();
  }

  v1 = VOTLogImageExplorer___logObj;

  return v1;
}

uint64_t __VOTLogImageExplorer_block_invoke()
{
  VOTLogImageExplorer___logObj = os_log_create("com.apple.Accessibility", "VOTImageExplorer");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogVisualAlerts()
{
  if (AXLogVisualAlerts_onceToken != -1)
  {
    AXLogVisualAlerts_cold_1();
  }

  v1 = AXLogVisualAlerts___logObj;

  return v1;
}

uint64_t __AXLogVisualAlerts_block_invoke()
{
  AXLogVisualAlerts___logObj = os_log_create("com.apple.Accessibility", "AXVisualAlerts");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __AXLogRTT_block_invoke()
{
  AXLogRTT___logObj = os_log_create("com.apple.Accessibility", "AXRTT");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUltron()
{
  if (AXLogUltron_onceToken != -1)
  {
    AXLogUltron_cold_1();
  }

  v1 = AXLogUltron___logObj;

  return v1;
}

uint64_t __AXLogUltron_block_invoke()
{
  AXLogUltron___logObj = os_log_create("com.apple.Accessibility", "AXUltron");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUltronKShot()
{
  if (AXLogUltronKShot_onceToken != -1)
  {
    AXLogUltronKShot_cold_1();
  }

  v1 = AXLogUltronKShot___logObj;

  return v1;
}

uint64_t __AXLogUltronKShot_block_invoke()
{
  AXLogUltronKShot___logObj = os_log_create("com.apple.Accessibility", "AXUltronKShot");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAudiogram()
{
  if (AXLogAudiogram_onceToken != -1)
  {
    AXLogAudiogram_cold_1();
  }

  v1 = AXLogAudiogram___logObj;

  return v1;
}

uint64_t __AXLogAudiogram_block_invoke()
{
  AXLogAudiogram___logObj = os_log_create("com.apple.Accessibility", "AXAudiogram");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogDisplayFilters()
{
  if (AXLogDisplayFilters_onceToken != -1)
  {
    AXLogDisplayFilters_cold_1();
  }

  v1 = AXLogDisplayFilters___logObj;

  return v1;
}

uint64_t __AXLogDisplayFilters_block_invoke()
{
  AXLogDisplayFilters___logObj = os_log_create("com.apple.Accessibility", "AXDisplayFilters");

  return MEMORY[0x1EEE66BB8]();
}

id ZOOMLogCommon()
{
  if (ZOOMLogCommon_onceToken != -1)
  {
    ZOOMLogCommon_cold_1();
  }

  v1 = ZOOMLogCommon___logObj;

  return v1;
}

uint64_t __ZOOMLogCommon_block_invoke()
{
  ZOOMLogCommon___logObj = os_log_create("com.apple.Accessibility", "ZOOMCommon");

  return MEMORY[0x1EEE66BB8]();
}

id ZOOMLogEvents()
{
  if (ZOOMLogEvents_onceToken != -1)
  {
    ZOOMLogEvents_cold_1();
  }

  v1 = ZOOMLogEvents___logObj;

  return v1;
}

uint64_t __ZOOMLogEvents_block_invoke()
{
  ZOOMLogEvents___logObj = os_log_create("com.apple.Accessibility", "ZOOMEvents");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUnitTesting()
{
  if (AXLogUnitTesting_onceToken != -1)
  {
    AXLogUnitTesting_cold_1();
  }

  v1 = AXLogUnitTesting___logObj;

  return v1;
}

uint64_t __AXLogUnitTesting_block_invoke()
{
  AXLogUnitTesting___logObj = os_log_create("com.apple.Accessibility", "AXUnitTesting");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPerfTesting()
{
  if (AXLogPerfTesting_onceToken != -1)
  {
    AXLogPerfTesting_cold_1();
  }

  v1 = AXLogPerfTesting___logObj;

  return v1;
}

uint64_t __AXLogPerfTesting_block_invoke()
{
  AXLogPerfTesting___logObj = os_log_create("com.apple.Accessibility", "AXPerfTesting");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogCommon()
{
  if (AXMediaLogCommon_onceToken != -1)
  {
    AXMediaLogCommon_cold_1();
  }

  v1 = AXMediaLogCommon___logObj;

  return v1;
}

uint64_t __AXMediaLogCommon_block_invoke()
{
  AXMediaLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXMediaCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogSettings()
{
  if (AXMediaLogSettings_onceToken != -1)
  {
    AXMediaLogSettings_cold_1();
  }

  v1 = AXMediaLogSettings___logObj;

  return v1;
}

uint64_t __AXMediaLogSettings_block_invoke()
{
  AXMediaLogSettings___logObj = os_log_create("com.apple.Accessibility", "AXMediaSettings");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogService()
{
  if (AXMediaLogService_onceToken != -1)
  {
    AXMediaLogService_cold_1();
  }

  v1 = AXMediaLogService___logObj;

  return v1;
}

uint64_t __AXMediaLogService_block_invoke()
{
  AXMediaLogService___logObj = os_log_create("com.apple.Accessibility", "AXMediaService");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogEngineCache()
{
  if (AXMediaLogEngineCache_onceToken != -1)
  {
    AXMediaLogEngineCache_cold_1();
  }

  v1 = AXMediaLogEngineCache___logObj;

  return v1;
}

uint64_t __AXMediaLogEngineCache_block_invoke()
{
  AXMediaLogEngineCache___logObj = os_log_create("com.apple.Accessibility", "AXMediaEngineCache");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogEnginePriority()
{
  if (AXMediaLogEnginePriority_onceToken != -1)
  {
    AXMediaLogEnginePriority_cold_1();
  }

  v1 = AXMediaLogEnginePriority___logObj;

  return v1;
}

uint64_t __AXMediaLogEnginePriority_block_invoke()
{
  AXMediaLogEnginePriority___logObj = os_log_create("com.apple.Accessibility", "AXMediaEnginePriority");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogScreenGrab()
{
  if (AXMediaLogScreenGrab_onceToken != -1)
  {
    AXMediaLogScreenGrab_cold_1();
  }

  v1 = AXMediaLogScreenGrab___logObj;

  return v1;
}

uint64_t __AXMediaLogScreenGrab_block_invoke()
{
  AXMediaLogScreenGrab___logObj = os_log_create("com.apple.Accessibility", "AXMediaScreenGrab");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogOCR()
{
  if (AXMediaLogOCR_onceToken != -1)
  {
    AXMediaLogOCR_cold_1();
  }

  v1 = AXMediaLogOCR___logObj;

  return v1;
}

uint64_t __AXMediaLogOCR_block_invoke()
{
  AXMediaLogOCR___logObj = os_log_create("com.apple.Accessibility", "AXMediaOCR");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogMLElement()
{
  if (AXMediaLogMLElement_onceToken != -1)
  {
    AXMediaLogMLElement_cold_1();
  }

  v1 = AXMediaLogMLElement___logObj;

  return v1;
}

uint64_t __AXMediaLogMLElement_block_invoke()
{
  AXMediaLogMLElement___logObj = os_log_create("com.apple.Accessibility", "AXMediaMLElement");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogTextProcessing()
{
  if (AXMediaLogTextProcessing_onceToken != -1)
  {
    AXMediaLogTextProcessing_cold_1();
  }

  v1 = AXMediaLogTextProcessing___logObj;

  return v1;
}

uint64_t __AXMediaLogTextProcessing_block_invoke()
{
  AXMediaLogTextProcessing___logObj = os_log_create("com.apple.Accessibility", "AXMediaTextProcessing");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogElementVision()
{
  if (AXMediaLogElementVision_onceToken != -1)
  {
    AXMediaLogElementVision_cold_1();
  }

  v1 = AXMediaLogElementVision___logObj;

  return v1;
}

uint64_t __AXMediaLogElementVision_block_invoke()
{
  AXMediaLogElementVision___logObj = os_log_create("com.apple.Accessibility", "AXMediaElementVision");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogTextLayout()
{
  if (AXMediaLogTextLayout_onceToken != -1)
  {
    AXMediaLogTextLayout_cold_1();
  }

  v1 = AXMediaLogTextLayout___logObj;

  return v1;
}

uint64_t __AXMediaLogTextLayout_block_invoke()
{
  AXMediaLogTextLayout___logObj = os_log_create("com.apple.Accessibility", "AXMediaTextLayout");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogResults()
{
  if (AXMediaLogResults_onceToken != -1)
  {
    AXMediaLogResults_cold_1();
  }

  v1 = AXMediaLogResults___logObj;

  return v1;
}

uint64_t __AXMediaLogResults_block_invoke()
{
  AXMediaLogResults___logObj = os_log_create("com.apple.Accessibility", "AXMediaResults");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogTracking()
{
  if (AXMediaLogTracking_onceToken != -1)
  {
    AXMediaLogTracking_cold_1();
  }

  v1 = AXMediaLogTracking___logObj;

  return v1;
}

uint64_t __AXMediaLogTracking_block_invoke()
{
  AXMediaLogTracking___logObj = os_log_create("com.apple.Accessibility", "AXMediaTracking");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogOutput()
{
  if (AXMediaLogOutput_onceToken != -1)
  {
    AXMediaLogOutput_cold_1();
  }

  v1 = AXMediaLogOutput___logObj;

  return v1;
}

uint64_t __AXMediaLogOutput_block_invoke()
{
  AXMediaLogOutput___logObj = os_log_create("com.apple.Accessibility", "AXMediaOutput");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogSpeech()
{
  if (AXMediaLogSpeech_onceToken != -1)
  {
    AXMediaLogSpeech_cold_1();
  }

  v1 = AXMediaLogSpeech___logObj;

  return v1;
}

uint64_t __AXMediaLogSpeech_block_invoke()
{
  AXMediaLogSpeech___logObj = os_log_create("com.apple.Accessibility", "AXMediaSpeech");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogSounds()
{
  if (AXMediaLogSounds_onceToken != -1)
  {
    AXMediaLogSounds_cold_1();
  }

  v1 = AXMediaLogSounds___logObj;

  return v1;
}

uint64_t __AXMediaLogSounds_block_invoke()
{
  AXMediaLogSounds___logObj = os_log_create("com.apple.Accessibility", "AXMediaSounds");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogHaptics()
{
  if (AXMediaLogHaptics_onceToken != -1)
  {
    AXMediaLogHaptics_cold_1();
  }

  v1 = AXMediaLogHaptics___logObj;

  return v1;
}

uint64_t __AXMediaLogHaptics_block_invoke()
{
  AXMediaLogHaptics___logObj = os_log_create("com.apple.Accessibility", "AXMediaHaptics");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogCaptionDescriptions()
{
  if (AXMediaLogCaptionDescriptions_onceToken != -1)
  {
    AXMediaLogCaptionDescriptions_cold_1();
  }

  v1 = AXMediaLogCaptionDescriptions___logObj;

  return v1;
}

uint64_t __AXMediaLogCaptionDescriptions_block_invoke()
{
  AXMediaLogCaptionDescriptions___logObj = os_log_create("com.apple.Accessibility", "AXMediaCaptionDescriptions");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogDiagnostics()
{
  if (AXMediaLogDiagnostics_onceToken != -1)
  {
    AXMediaLogDiagnostics_cold_1();
  }

  v1 = AXMediaLogDiagnostics___logObj;

  return v1;
}

uint64_t __AXMediaLogDiagnostics_block_invoke()
{
  AXMediaLogDiagnostics___logObj = os_log_create("com.apple.Accessibility", "AXMediaDiagnostics");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogLanguageTranslation()
{
  if (AXMediaLogLanguageTranslation_onceToken != -1)
  {
    AXMediaLogLanguageTranslation_cold_1();
  }

  v1 = AXMediaLogLanguageTranslation___logObj;

  return v1;
}

uint64_t __AXMediaLogLanguageTranslation_block_invoke()
{
  AXMediaLogLanguageTranslation___logObj = os_log_create("com.apple.Accessibility", "AXMediaLanguageTranslation");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAirPodSettings()
{
  if (AXLogAirPodSettings_onceToken != -1)
  {
    AXLogAirPodSettings_cold_1();
  }

  v1 = AXLogAirPodSettings___logObj;

  return v1;
}

uint64_t __AXLogAirPodSettings_block_invoke()
{
  AXLogAirPodSettings___logObj = os_log_create("com.apple.Accessibility", "AXAirPodSettings");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAssetDaemon()
{
  if (AXLogAssetDaemon_onceToken != -1)
  {
    AXLogAssetDaemon_cold_1();
  }

  v1 = AXLogAssetDaemon___logObj;

  return v1;
}

uint64_t __AXLogAssetDaemon_block_invoke()
{
  AXLogAssetDaemon___logObj = os_log_create("com.apple.Accessibility", "AXAssetDaemon");

  return MEMORY[0x1EEE66BB8]();
}

id AXPlatformTranslationLogCommon()
{
  if (AXPlatformTranslationLogCommon_onceToken != -1)
  {
    AXPlatformTranslationLogCommon_cold_1();
  }

  v1 = AXPlatformTranslationLogCommon___logObj;

  return v1;
}

uint64_t __AXPlatformTranslationLogCommon_block_invoke()
{
  AXPlatformTranslationLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXPlatformTranslationCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTemp()
{
  if (AXLogTemp_onceToken != -1)
  {
    AXLogTemp_cold_1();
  }

  v1 = AXLogTemp___logObj;

  return v1;
}

uint64_t __AXLogTemp_block_invoke()
{
  AXLogTemp___logObj = os_log_create("com.apple.Accessibility", "AXTemp");

  return MEMORY[0x1EEE66BB8]();
}

id BRLLogTranslation()
{
  if (BRLLogTranslation_onceToken != -1)
  {
    BRLLogTranslation_cold_1();
  }

  v1 = BRLLogTranslation___logObj;

  return v1;
}

uint64_t __BRLLogTranslation_block_invoke()
{
  BRLLogTranslation___logObj = os_log_create("com.apple.Accessibility", "BRLTranslation");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBackTap()
{
  if (AXLogBackTap_onceToken != -1)
  {
    AXLogBackTap_cold_1();
  }

  v1 = AXLogBackTap___logObj;

  return v1;
}

uint64_t __AXLogBackTap_block_invoke()
{
  AXLogBackTap___logObj = os_log_create("com.apple.Accessibility", "AXBackTap");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSoundActions()
{
  if (AXLogSoundActions_onceToken != -1)
  {
    AXLogSoundActions_cold_1();
  }

  v1 = AXLogSoundActions___logObj;

  return v1;
}

uint64_t __AXLogSoundActions_block_invoke()
{
  AXLogSoundActions___logObj = os_log_create("com.apple.Accessibility", "AXSoundActions");

  return MEMORY[0x1EEE66BB8]();
}

id CLFLogCommon()
{
  if (CLFLogCommon_onceToken != -1)
  {
    CLFLogCommon_cold_1();
  }

  v1 = CLFLogCommon___logObj;

  return v1;
}

uint64_t __CLFLogCommon_block_invoke()
{
  CLFLogCommon___logObj = os_log_create("com.apple.Accessibility", "CLFCommon");

  return MEMORY[0x1EEE66BB8]();
}

id CLFLogSettings()
{
  if (CLFLogSettings_onceToken != -1)
  {
    CLFLogSettings_cold_1();
  }

  v1 = CLFLogSettings___logObj;

  return v1;
}

uint64_t __CLFLogSettings_block_invoke()
{
  CLFLogSettings___logObj = os_log_create("com.apple.Accessibility", "CLFSettings");

  return MEMORY[0x1EEE66BB8]();
}

id CLFLogBacklight()
{
  if (CLFLogBacklight_onceToken != -1)
  {
    CLFLogBacklight_cold_1();
  }

  v1 = CLFLogBacklight___logObj;

  return v1;
}

uint64_t __CLFLogBacklight_block_invoke()
{
  CLFLogBacklight___logObj = os_log_create("com.apple.Accessibility", "CLFBacklight");

  return MEMORY[0x1EEE66BB8]();
}

id HTLogCommon()
{
  if (HTLogCommon_onceToken != -1)
  {
    HTLogCommon_cold_1();
  }

  v1 = HTLogCommon___logObj;

  return v1;
}

uint64_t __HTLogCommon_block_invoke()
{
  HTLogCommon___logObj = os_log_create("com.apple.Accessibility", "HTCommon");

  return MEMORY[0x1EEE66BB8]();
}

id LiveSpeechLogCommon()
{
  if (LiveSpeechLogCommon_onceToken != -1)
  {
    LiveSpeechLogCommon_cold_1();
  }

  v1 = LiveSpeechLogCommon___logObj;

  return v1;
}

uint64_t __LiveSpeechLogCommon_block_invoke()
{
  LiveSpeechLogCommon___logObj = os_log_create("com.apple.Accessibility", "LiveSpeechCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLiveTranscription()
{
  if (AXLogLiveTranscription_onceToken != -1)
  {
    AXLogLiveTranscription_cold_1();
  }

  v1 = AXLogLiveTranscription___logObj;

  return v1;
}

uint64_t __AXLogLiveTranscription_block_invoke()
{
  AXLogLiveTranscription___logObj = os_log_create("com.apple.Accessibility", "AXLiveTranscription");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTwiceRemoteScreen()
{
  if (AXLogTwiceRemoteScreen_onceToken != -1)
  {
    AXLogTwiceRemoteScreen_cold_1();
  }

  v1 = AXLogTwiceRemoteScreen___logObj;

  return v1;
}

uint64_t __AXLogTwiceRemoteScreen_block_invoke()
{
  AXLogTwiceRemoteScreen___logObj = os_log_create("com.apple.Accessibility", "AXTwiceRemoteScreen");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogHapticMusic()
{
  if (AXLogHapticMusic_onceToken != -1)
  {
    AXLogHapticMusic_cold_1();
  }

  v1 = AXLogHapticMusic___logObj;

  return v1;
}

uint64_t __AXLogHapticMusic_block_invoke()
{
  AXLogHapticMusic___logObj = os_log_create("com.apple.Accessibility", "AXHapticMusic");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAVS()
{
  if (AXLogAVS_onceToken != -1)
  {
    AXLogAVS_cold_1();
  }

  v1 = AXLogAVS___logObj;

  return v1;
}

uint64_t __AXLogAVS_block_invoke()
{
  AXLogAVS___logObj = os_log_create("com.apple.Accessibility", "AXAVS");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogHearingTest()
{
  if (AXLogHearingTest_onceToken != -1)
  {
    AXLogHearingTest_cold_1();
  }

  v1 = AXLogHearingTest___logObj;

  return v1;
}

uint64_t __AXLogHearingTest_block_invoke()
{
  AXLogHearingTest___logObj = os_log_create("com.apple.Accessibility", "AXHearingTest");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogReader()
{
  if (AXLogReader_onceToken != -1)
  {
    AXLogReader_cold_1();
  }

  v1 = AXLogReader___logObj;

  return v1;
}

uint64_t __AXLogReader_block_invoke()
{
  AXLogReader___logObj = os_log_create("com.apple.Accessibility", "AXReader");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogVoiceOverMapsAI()
{
  if (AXLogVoiceOverMapsAI_onceToken != -1)
  {
    AXLogVoiceOverMapsAI_cold_1();
  }

  v1 = AXLogVoiceOverMapsAI___logObj;

  return v1;
}

uint64_t __AXLogVoiceOverMapsAI_block_invoke()
{
  AXLogVoiceOverMapsAI___logObj = os_log_create("com.apple.Accessibility", "AXVoiceOverMapsAI");

  return MEMORY[0x1EEE66BB8]();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1915D2A64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1915D2A84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1915D2B04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1915D2B24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1915D2B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_191652EA0(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF258, &qword_191671A40);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t sub_1915D2BFC()
{
  v0 = sub_191652FB4(&unk_1F05754B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF260, &qword_191671A48);
  result = swift_arrayDestroy();
  qword_1EADB6DE8 = v0;
  return result;
}

uint64_t sub_1915D2C58()
{
  v0 = sub_191652FB4(&unk_1F0575540);
  result = sub_1915D3224(&unk_1F0575560);
  qword_1EADB6DF0 = v0;
  return result;
}

uint64_t sub_1915D2C98(uint64_t a1, id *a2)
{
  result = sub_19166B728();
  *a2 = 0;
  return result;
}

uint64_t sub_1915D2D10(uint64_t a1, id *a2)
{
  v3 = sub_19166B738();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1915D2D90@<X0>(uint64_t *a1@<X8>)
{
  sub_19166B748();
  v2 = sub_19166B718();

  *a1 = v2;
  return result;
}

uint64_t sub_1915D2DD4(uint64_t a1)
{
  v2 = sub_1915D33B8(&qword_1EADAF2C0, type metadata accessor for Name);
  v3 = sub_1915D33B8(&unk_1EADAF2C8, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1915D2E90(uint64_t a1)
{
  v2 = sub_1915D33B8(&qword_1EADAE4C0, type metadata accessor for FileAttributeKey);
  v3 = sub_1915D33B8(&unk_1EADAF2D8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1915D2F4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_19166B718();

  *a2 = v5;
  return result;
}

uint64_t sub_1915D2F94(uint64_t a1)
{
  v2 = sub_1915D33B8(&qword_1EADAE670, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1915D33B8(&qword_1EADAF2E8, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1915D3050()
{
  v1 = *v0;
  v2 = sub_19166B748();
  v3 = MEMORY[0x193AFC7B0](v2);

  return v3;
}

uint64_t sub_1915D308C()
{
  v1 = *v0;
  sub_19166B748();
  sub_19166B828();
}

uint64_t sub_1915D30E0()
{
  v1 = *v0;
  sub_19166B748();
  sub_19166C778();
  sub_19166B828();
  v2 = sub_19166C7B8();

  return v2;
}

uint64_t sub_1915D3154(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_19166B748();
  v6 = v5;
  if (v4 == sub_19166B748() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_19166C5E8();
  }

  return v9 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1915D3224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF260, &qword_191671A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1915D32DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1915D33B8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t axObservationTrackingStream<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19166BB98();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v13 = a3;
  v14 = a1;
  v15 = a2;
  (*(v10 + 104))(&v12[-v9], *MEMORY[0x1E69E8650]);
  return sub_19166BC18();
}

uint64_t sub_1915D3744(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v38 = a4;
  v39 = a1;
  v6 = sub_19166BBC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v40 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v16 = &v38 - v15;
  v17 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v18);
  v19 = sub_19166BB78();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v38 - v24;
  a2(v23);
  v26 = v39;
  sub_19166BBA8();
  (*(v20 + 8))(v25, v19);
  sub_19166BB38();
  v27 = sub_19166BB58();
  (*(*(v27 - 8) + 56))(v16, 0, 1, v27);
  v28 = v40;
  (*(v7 + 16))(v40, v26, v6);
  v29 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v30 = (v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v38;
  *(v31 + 4) = v38;
  (*(v7 + 32))(&v31[v29], v28, v6);
  v33 = &v31[v30];
  v34 = v41;
  *v33 = a2;
  *(v33 + 1) = v34;

  v35 = sub_1915D42EC(0, 0, v16, &unk_1916720A0, v31);
  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  *(v36 + 24) = v35;
  return sub_19166BB88();
}

uint64_t sub_1915D3A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(a7 - 8) + 64) + 15;
  v7[6] = swift_task_alloc();
  v9 = sub_19166BB78();
  v7[7] = v9;
  v10 = *(v9 - 8);
  v7[8] = v10;
  v11 = *(v10 + 64) + 15;
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915D3B90, 0, 0);
}

uint64_t sub_1915D3B90()
{
  if (sub_19166BC48())
  {
    v1 = v0[9];
    v2 = v0[6];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_1915D3C78;
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[3];
    v9 = v0[4];

    return withNextChange<A>(_:)(v6, v8, v9, v7);
  }
}

uint64_t sub_1915D3C78()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1915D3ECC;
  }

  else
  {
    v3 = sub_1915D3D8C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1915D3D8C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = v0[2];
  sub_19166BBC8();
  sub_19166BBA8();
  (*(v2 + 8))(v1, v3);
  if (sub_19166BC48())
  {
    v7 = v0[9];
    v8 = v0[6];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_1915D3C78;
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[3];
    v15 = v0[4];

    return withNextChange<A>(_:)(v12, v14, v15, v13);
  }
}

uint64_t sub_1915D3ECC()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t withNextChange<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1915D3F60, 0, 0);
}

uint64_t sub_1915D3F60()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for ObservationSentinel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v0 + 48) = v5;
  *(v5 + 16) = 0;
  v14 = *(v0 + 24);
  sub_19166B438();
  v6 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v0 + 56) = v6;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v5;
  *(v7 + 32) = v14;
  *(v7 + 48) = v6;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  v9 = *(MEMORY[0x1E69E88F0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1915D40D4;
  v11 = *(v0 + 40);
  v12 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v12, &unk_191671F10, v7, sub_1915D5FE4, v8, 0, 0, v11);
}

uint64_t sub_1915D40D4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1915D4264;
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    v4 = sub_1915D41F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1915D41F8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1915D4264()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);
  v5 = *(v0 + 88);

  return v4();
}

uint64_t sub_1915D42EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v25 - v11;
  sub_1915D77C0(a3, v25 - v11);
  v13 = sub_19166BB58();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1915D7830(v12);
  }

  else
  {
    sub_19166BB48();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_19166BA78();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_19166B7D8() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_1915D7830(a3);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1915D7830(a3);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1915D455C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8650];
  v3 = sub_19166BB98();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for ObservationSentinel()
{
  result = qword_1EADAE810;
  if (!qword_1EADAE810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1915D4620()
{
  swift_getKeyPath();
  sub_1915D8150(&qword_1EADAE820, type metadata accessor for ObservationSentinel);
  sub_19166B428();

  return *(v0 + 16);
}

uint64_t sub_1915D46C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1915D8150(&qword_1EADAE820, type metadata accessor for ObservationSentinel);
  sub_19166B428();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1915D4790(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1915D8150(&qword_1EADAE820, type metadata accessor for ObservationSentinel);
    sub_19166B418();
  }

  return result;
}

uint64_t sub_1915D48A0()
{
  v1 = OBJC_IVAR____TtC15AXCoreUtilitiesP33_AB91057B37695AB1D964E83478A9F98119ObservationSentinel___observationRegistrar;
  v2 = sub_19166B448();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1915D493C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1915D4964, 0, 0);
}

uint64_t sub_1915D4964()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1915D4A5C;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000012, 0x800000019167C550, sub_1915D7DD0, v1, v6);
}

uint64_t sub_1915D4A5C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1915D4B98, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1915D4B98()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1915D4BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1915D4C24, 0, 0);
}

uint64_t sub_1915D4C24()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1915D4D28;
  v7 = *(v0 + 56);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000012, 0x800000019167C550, sub_1915D7E9C, v2, v7);
}

uint64_t sub_1915D4D28()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1915D4E64, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1915D4E64()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1915D4EC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D4F90;

  return sub_1915D4BFC(a1, v5, v6, v7, v8, v4);
}

uint64_t sub_1915D4F90()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1915D5084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v31 = a1;
  v32 = a5;
  v29 = a4;
  v30 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
  v10 = sub_19166BAA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v28 - v15;
  v33 = *(a6 - 8);
  v17 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v14, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a6;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  (*(v11 + 16))(v16, v31, v10);
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 2) = a6;
  *(v22 + 3) = v23;
  *(v22 + 4) = a2;
  (*(v11 + 32))(&v22[v21], v16, v10);
  v24 = &v22[(v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v29;
  *v24 = v30;
  *(v24 + 1) = v25;
  v26 = v23;

  sub_19166B408();

  return (*(v33 + 8))(v20, a6);
}

uint64_t sub_1915D52E8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getKeyPath();
  sub_1915D8150(&qword_1EADAE820, type metadata accessor for ObservationSentinel);
  sub_19166B428();

  return a2(v3);
}

uint64_t sub_1915D53A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v30 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
  v11 = sub_19166BAA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v29 - v20;
  v22 = sub_19166BB58();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v12 + 16))(v16, a4, v11);
  v23 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a7;
  *(v24 + 5) = a2;
  *(v24 + 6) = a3;
  (*(v12 + 32))(&v24[v23], v16, v11);
  v25 = &v24[(v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
  v26 = v30;
  *v25 = v29;
  *(v25 + 1) = v26;
  v27 = a2;

  sub_1915D593C(0, 0, v21, &unk_191672090, v24);
}

uint64_t sub_1915D55EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1915D5620, 0, 0);
}

uint64_t sub_1915D5620()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  [*(v0 + 24) lock];
  sub_1915D5724(v5, v4, v3, v1, v2);
  [*(v0 + 24) unlock];
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1915D5724(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = *(*(a5 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](a1, a2);
  if ((*(result + 17) & 1) == 0)
  {
    *(result + 17) = 1;
    v8 = result;
    swift_getKeyPath();
    sub_1915D8150(&qword_1EADAE820, type metadata accessor for ObservationSentinel);
    sub_19166B428();

    if (*(v8 + 16) == 1)
    {
      sub_19166BAB8();
      sub_1915D8150(&qword_1EADAF3C8, MEMORY[0x1E69E8550]);
      swift_allocError();
      sub_19166B658();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
      sub_19166BAA8();
      return sub_19166BA88();
    }

    else
    {
      a3(v9);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
      sub_19166BAA8();
      return sub_19166BA98();
    }
  }

  return result;
}

uint64_t sub_1915D593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v28 - v12;
  sub_1915D77C0(a3, v28 - v12);
  v14 = sub_19166BB58();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1915D7830(v13);
  }

  else
  {
    sub_19166BB48();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_19166BA78();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_19166B7D8() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_1915D7830(a3);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1915D7830(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1915D5BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v28 - v12;
  sub_1915D77C0(a3, v28 - v12);
  v14 = sub_19166BB58();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1915D7830(v13);
  }

  else
  {
    sub_19166BB48();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_19166BA78();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_19166B7D8() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3C0, &qword_1916738F0);
      v24 = (v21 | v19);
      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v25 = swift_task_create();

      sub_1915D7830(a3);

      return v25;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1915D7830(a3);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3C0, &qword_1916738F0);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1915D5ED0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = sub_19166BB58();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v11 = a1;

  sub_1915D593C(0, 0, v8, &unk_191672080, v10);
}

uint64_t sub_1915D5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1915D600C, 0, 0);
}

uint64_t sub_1915D600C()
{
  v1 = *(v0 + 32);
  [*(v0 + 24) lock];
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    v2 = *(v0 + 32);
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    *(v0 + 16) = v2;
    sub_1915D8150(&qword_1EADAE820, type metadata accessor for ObservationSentinel);
    sub_19166B418();
  }

  [*(v0 + 24) unlock];
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1915D6164()
{
  type metadata accessor for AXBlockObserver();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  qword_1EADAF3B0 = v0;
  return result;
}

uint64_t AXBlockObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t static AXBlockObserver.shared.getter()
{
  if (qword_1EADAEFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AXBlockObserver.shared.setter(uint64_t a1)
{
  if (qword_1EADAEFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EADAF3B0 = a1;
}

uint64_t (*static AXBlockObserver.shared.modify())()
{
  if (qword_1EADAEFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1915D6374@<X0>(void *a1@<X8>)
{
  if (qword_1EADAEFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EADAF3B0;
}

uint64_t sub_1915D63F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EADAEFF0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EADAF3B0 = v1;
}

uint64_t AXBlockObserver.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t sub_1915D64A8(uint64_t a1)
{
  v3 = sub_19166B1C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v9 = *(v1 + 112);
  if (*(v9 + 16))
  {

    v10 = sub_1915DB2EC(a1);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
      sub_19166BC28();
    }

    else
    {
    }
  }

  (*(v4 + 16))(v8, a1, v3);
  swift_beginAccess();
  sub_1915E0BE8(0, v8);
  return swift_endAccess();
}

uint64_t (*sub_1915D6640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v36 = a3;
  v35 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v33 - v9;
  v34 = sub_19166B1C8();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v34, v13);
  v15 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v38 = &v33 - v17;
  sub_19166B1B8();
  sub_19166BB38();
  v18 = sub_19166BB58();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 0, 1, v18);
  sub_19166BB28();

  v20 = sub_19166BB18();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v20;
  v21[3] = v22;
  v23 = v36;
  v21[4] = v35;
  v21[5] = a2;
  v21[6] = v23;
  v21[7] = a4;
  v24 = sub_1915D42EC(0, 0, v10, &unk_191671F28, v21);
  v19(v10, 1, 1, v18);
  v25 = v34;
  (*(v11 + 16))(v15, v38, v34);
  v26 = *(v11 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v37;
  *(v27 + 4) = v37;
  *(v27 + 5) = v24;
  v29 = *(v11 + 32);
  v29(&v27[(v26 + 48) & ~v26], v15, v25);

  sub_1915D593C(0, 0, v10, &unk_191671F38, v27);

  v30 = v25;
  v29(v15, v38, v25);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v29((v31 + ((v26 + 24) & ~v26)), v15, v30);

  return sub_1915D7470;
}

uint64_t sub_1915D6980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_19166BB28();
  v7[6] = sub_19166BB18();
  v9 = sub_19166BA78();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1915D6A1C, v9, v8);
}

uint64_t sub_1915D6A1C()
{
  if (sub_19166BC48())
  {
    v1 = v0[6];

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[2];
    v5 = v0[3];
    v6 = swift_allocObject();
    v0[9] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;

    return MEMORY[0x1EEE6DFA0](sub_1915D6AEC, 0, 0);
  }
}

uint64_t sub_1915D6AEC()
{
  v1 = v0[9];
  v2 = type metadata accessor for ObservationSentinel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = 0;
  sub_19166B438();
  v6 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v0[11] = v6;
  v7 = swift_task_alloc();
  v0[12] = v7;
  v7[2] = v5;
  v7[3] = sub_1915D7D08;
  v7[4] = v1;
  v7[5] = v6;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  v9 = *(MEMORY[0x1E69E88F0] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1915D6C58;

  return MEMORY[0x1EEE6DE18]();
}

uint64_t sub_1915D6C58()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1915D6ED8;
  }

  else
  {
    v6 = *(v2 + 96);
    v5 = *(v2 + 104);

    v4 = sub_1915D6D7C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1915D6D7C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1915D6DF4, v3, v4);
}

uint64_t sub_1915D6DF4()
{
  if (sub_19166BC48() & 1) != 0 || (v1 = *(v0 + 40), (*(v0 + 32))(), (sub_19166BC48()))
  {
    v2 = *(v0 + 48);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = swift_allocObject();
    *(v0 + 72) = v7;
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;

    return MEMORY[0x1EEE6DFA0](sub_1915D6AEC, 0, 0);
  }
}

uint64_t sub_1915D6ED8()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];

  v6 = v0[7];
  v7 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1915D6F68, v6, v7);
}

uint64_t sub_1915D6F68()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1915D6FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1915D8338;

  return sub_1915D6980(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1915D70A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1915D70C4, a4, 0);
}

uint64_t sub_1915D70C4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  swift_beginAccess();

  v4 = *(v3 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_1915E20A0(v2, v1, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v8;
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1915D718C(uint64_t a1)
{
  v4 = *(sub_19166B1C8() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1915D8338;

  return sub_1915D70A0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1915D7290(uint64_t a1, uint64_t a2)
{
  v4 = sub_19166B1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v17 - v11;
  v13 = sub_19166BB58();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a1;
  (*(v5 + 32))(&v15[v14], &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_1915D593C(0, 0, v12, &unk_191672050, v15);
}

uint64_t sub_1915D7470()
{
  v1 = *(sub_19166B1C8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1915D7290(v2, v3);
}

uint64_t sub_1915D74D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1915D74F4, a4, 0);
}

uint64_t sub_1915D74F4()
{
  v1 = v0[2];
  sub_1915D64A8(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t (*static AXBlockObserver.observe(_:onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (qword_1EADAEFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_1915D6640(a1, a2, a3, a4);

  return sub_1915D7470;
}

uint64_t AXBlockObserver.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AXBlockObserver.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1915D76A0()
{
  result = sub_19166B448();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1915D77C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915D7830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1915D7898(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1915D798C;

  return v6(v2 + 32);
}

uint64_t sub_1915D798C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1915D7AA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1915D8338;

  return sub_1915D7898(a1, v5);
}

uint64_t sub_1915D7B58(uint64_t a1)
{
  v4 = *(sub_19166B1C8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_1915D74D4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1915D7C50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1915D8338;

  return sub_1915FCC6C(a1, v5);
}

uint64_t sub_1915D7D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1915D8338;

  return sub_1915D493C(a1, v4, v5, v7, v6);
}

uint64_t sub_1915D7DDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1915D8338;

  return sub_1915D5FEC(a1, v4, v5, v7, v6);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1915D7EF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  return sub_1915D52E8(*(v0 + 24), *(v0 + 32));
}

uint64_t sub_1915D7F00(uint64_t a1)
{
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
  v4 = *(sub_19166BAA8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1915D53A8(a1, v6, v7, v1 + v5, v9, v10, v3);
}

uint64_t sub_1915D7FD8(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
  v5 = *(sub_19166BAA8() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v10 = v1[6];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1915D4F90;

  return sub_1915D55EC(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_1915D8150(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1915D8198(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(sub_19166BBC8() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1915D8338;

  return sub_1915D3A9C(a1, v8, v9, v1 + v7, v11, v12, v5);
}

uint64_t sub_1915D82D8()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);

  return sub_19166BC28();
}

uint64_t AXFetchableStream.callAsFunction()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1915D4F90;

  return AXFetchableStream.value()(a1, a2);
}

uint64_t AXFetchableStream.value()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1915D8424, 0, 0);
}

uint64_t sub_1915D8424()
{
  v1 = (v0[4] + *(v0[3] + 28));
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1915D8520;
  v5 = v0[2];

  return v7(v5);
}

uint64_t sub_1915D8520()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AXFetchableStream.makeAsyncIterator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_19166BC08();

  return sub_19166BBD8();
}

uint64_t AXFetchableStream.stream.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_19166BC08();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t AXFetchableStream.init(stream:fetcher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_19166BC08();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AXFetchableStream();
  v10 = (a4 + *(result + 28));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t AXFetchableStream.asyncMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a1;
  v23 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = sub_19166BC08();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v22 - v15;
  v17 = *(a3 + 16);
  v18 = sub_19166BC08();
  AsyncStream.asyncMap<A>(_:)(a1, a2, v18, a4);
  (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = a4;
  *(v20 + 4) = v22;
  *(v20 + 5) = a2;
  (*(v10 + 32))(&v20[v19], &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  AXFetchableStream.init(stream:fetcher:)(v16, &unk_1916720C8, v20, v23);
}

uint64_t sub_1915D893C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(a5 - 8);
  v5[7] = v6;
  v7 = *(v6 + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915D89F8, 0, 0);
}

uint64_t sub_1915D89F8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = (v2 + *(type metadata accessor for AXFetchableStream() + 28));
  v4 = v3[1];
  v9 = (*v3 + **v3);
  v5 = (*v3)[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1915D8AFC;
  v7 = v0[8];

  return v9(v7);
}

uint64_t sub_1915D8AFC()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 24);
  v4 = *v0;

  v11 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v1[10] = v6;
  *v6 = v4;
  v6[1] = sub_1915D8CD8;
  v7 = v1[8];
  v8 = v1[4];
  v9 = v1[2];

  return v11(v9, v7);
}

uint64_t sub_1915D8CD8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1915D8E30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(type metadata accessor for AXFetchableStream() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1915D4F90;

  return sub_1915D893C(a1, v8, v9, v1 + v7, v4);
}

uint64_t sub_1915D8F38(uint64_t a1)
{
  AXFetchableStream.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_1915D8F98(double a1)
{
  v16 = sub_19166BDB8();
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v16, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19166BDA8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = sub_19166B5B8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  *(v1 + 16) = 0;
  v15[1] = sub_1915DAA60(0, &qword_1EADAE7F0, 0x1E69E9610);
  sub_19166B598();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1915DAAA8(&qword_1EADAE7F8, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3E0, &unk_1916721A0);
  sub_1915DAAF0(&qword_1EADAE808, &qword_1EADAF3E0, &unk_1916721A0);
  sub_19166BFE8();
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8090], v16);
  *(v1 + 32) = sub_19166BDE8();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1915D9218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v50 = sub_19166B588();
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50, v5);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19166B578();
  v47 = *(v7 - 8);
  v8 = v47[8];
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v46 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v45 - v13);
  v53 = sub_19166B5F8();
  v55 = *(v53 - 8);
  v15 = *(v55 + 64);
  v17 = MEMORY[0x1EEE9AC00](v53, v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v52 = &v45 - v21;
  v22 = sub_19166BE08();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  if (*(a1 + 16))
  {
    v28 = *(a1 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_19166BE38();
    swift_unknownObjectRelease();
  }

  sub_1915DAA60(0, &qword_1EADAE678, 0x1E69E9630);
  sub_19166BDF8();
  v29 = v54;
  v30 = *(v54 + 32);
  v45 = sub_19166BE18();

  (*(v23 + 8))(v27, v22);
  result = sub_19166B5D8();
  v32 = *(v29 + 24) * 1000.0;
  if (COERCE__INT64(fabs(v32)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v32 < 9.22337204e18)
  {
    *v14 = v32;
    v33 = v47;
    v34 = v47[13];
    v34(v14, *MEMORY[0x1E69E7F38], v7);
    v35 = v52;
    sub_19166B5E8();
    v36 = v33[1];
    v36(v14, v7);
    v37 = *(v55 + 8);
    v55 += 8;
    v47 = v37;
    (v37)(v19, v53);
    v38 = v45;
    ObjectType = swift_getObjectType();
    v34(v14, *MEMORY[0x1E69E7F40], v7);
    v40 = v46;
    *v46 = 0;
    v34(v40, *MEMORY[0x1E69E7F28], v7);
    MEMORY[0x193AFCD80](v35, v14, v40, ObjectType);
    v36(v40, v7);
    v36(v14, v7);
    aBlock[4] = v48;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1915EADB4;
    aBlock[3] = &block_descriptor_31;
    _Block_copy(aBlock);
    v56 = MEMORY[0x1E69E7CC0];
    sub_1915DAAA8(&qword_1EADAE6B0, MEMORY[0x1E69E7F60]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D8, &qword_191676060);
    sub_1915DAAF0(&qword_1EADAE6A0, &qword_1EADAF3D8, &qword_191676060);
    sub_19166BFE8();
    v41 = sub_19166B618();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    sub_19166B608();

    sub_19166BE28();

    sub_19166BE48();
    (v47)(v52, v53);
    v44 = *(v54 + 16);
    *(v54 + 16) = v38;
    return swift_unknownObjectRelease();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1915D97E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t AsyncStream.debounced(delay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v47 = a3;
  v45 = *(a1 - 8);
  v46 = a1;
  v49 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v40 - v11;
  v43 = &v40 - v11;
  v13 = *(a1 + 16);
  v14 = sub_19166BB98();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v40 - v18;
  v44 = sub_19166BBC8();
  v20 = *(v44 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v44, v22);
  v41 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v40 - v25;
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8650], v14);
  v42 = v13;
  sub_19166BB68();
  (*(v15 + 8))(v19, v14);
  v27 = sub_19166BB58();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  v28 = v45;
  v29 = v7;
  v30 = v7;
  v31 = v46;
  (*(v45 + 16))(v30, v48, v46);
  v32 = v44;
  (*(v20 + 16))(&v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v44);
  v33 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v34 = (v49 + v33 + *(v20 + 80)) & ~*(v20 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v36 = v42;
  *(v35 + 32) = v42;
  *(v35 + 40) = a4;
  (*(v28 + 32))(v35 + v33, v29, v31);
  (*(v20 + 32))(v35 + v34, v41, v32);
  v37 = sub_1915D593C(0, 0, v43, &unk_1916720E0, v35);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  sub_19166BB88();
  return (*(v20 + 8))(v26, v32);
}

uint64_t sub_1915D9C54(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = a7;
  *(v7 + 80) = a5;
  *(v7 + 72) = a1;
  v9 = sub_19166B588();
  *(v7 + 104) = v9;
  v10 = *(v9 - 8);
  *(v7 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  v12 = sub_19166B5B8();
  *(v7 + 128) = v12;
  v13 = *(v12 - 8);
  *(v7 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v15 = *(a7 - 8);
  *(v7 + 152) = v15;
  *(v7 + 160) = *(v15 + 64);
  *(v7 + 168) = swift_task_alloc();
  v16 = sub_19166BBC8();
  *(v7 + 176) = v16;
  v17 = *(v16 - 8);
  *(v7 + 184) = v17;
  *(v7 + 192) = *(v17 + 64);
  *(v7 + 200) = swift_task_alloc();
  v18 = *(*(sub_19166BF58() - 8) + 64) + 15;
  *(v7 + 208) = swift_task_alloc();
  v19 = sub_19166BBF8();
  *(v7 + 216) = v19;
  v20 = *(v19 - 8);
  *(v7 + 224) = v20;
  v21 = *(v20 + 64) + 15;
  *(v7 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915D9ECC, 0, 0);
}

uint64_t sub_1915D9ECC()
{
  v1 = *(v0 + 29);
  v2 = *(v0 + 12);
  v3 = *(v0 + 10);
  v4 = v0[9];
  type metadata accessor for Debouncer();
  *(v0 + 30) = swift_allocObject();
  sub_1915D8F98(v4);
  sub_19166BC08();
  sub_19166BBD8();
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  *(v0 + 31) = v6;
  *v6 = v0;
  v6[1] = sub_1915D9FC8;
  v7 = *(v0 + 29);
  v8 = *(v0 + 26);
  v9 = *(v0 + 27);

  return MEMORY[0x1EEE6D9C8](v8, 0, 0, v9);
}

uint64_t sub_1915D9FC8()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1915DA0C4, 0, 0);
}

uint64_t sub_1915DA0C4()
{
  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[12];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v0[21];
  v6 = v0[22];
  if (v4 == 1)
  {
    v7 = v0[30];
    v8 = v0[25];
    v9 = v0[18];
    v10 = v0[15];
    v11 = v0[11];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_19166BBB8();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[24];
    v33 = v0[25];
    v15 = v0[23];
    v34 = v0[20];
    v35 = v0[30];
    v37 = v0[18];
    v41 = v0[17];
    v42 = v0[16];
    v40 = v0[14];
    v38 = v0[15];
    v39 = v0[13];
    v16 = v0[11];
    (*(v15 + 16))();
    v17 = *(v2 + 32);
    v17(v5, v1, v3);
    v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v19 = *(v2 + 80);
    v20 = v14 + v19 + v18;
    v21 = v5;
    v22 = v20 & ~v19;
    v23 = swift_allocObject();
    *(v23 + 16) = v3;
    (*(v15 + 32))(v23 + v18, v33, v6);
    v17(v23 + v22, v21, v3);
    v24 = *(v35 + 32);
    v25 = swift_allocObject();
    v25[2] = v35;
    v25[3] = sub_1915DA974;
    v25[4] = v23;
    v0[6] = sub_1915DAA3C;
    v0[7] = v25;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1915EADB4;
    v0[5] = &block_descriptor;
    v26 = _Block_copy(v0 + 2);
    aBlock = v24;

    sub_19166B598();
    v0[8] = MEMORY[0x1E69E7CC0];
    sub_1915DAAA8(&qword_1EADAE6B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D8, &qword_191676060);
    sub_1915DAAF0(&qword_1EADAE6A0, &qword_1EADAF3D8, &qword_191676060);
    sub_19166BFE8();
    MEMORY[0x193AFCC80](0, v37, v38, v26);
    _Block_release(v26);

    (*(v40 + 8))(v38, v39);
    (*(v41 + 8))(v37, v42);
    v27 = v0[7];

    v28 = *(MEMORY[0x1E69E8678] + 4);
    v29 = swift_task_alloc();
    v0[31] = v29;
    *v29 = v0;
    v29[1] = sub_1915D9FC8;
    v30 = v0[29];
    v31 = v0[26];
    v32 = v0[27];

    return MEMORY[0x1EEE6D9C8](v31, 0, 0, v32);
  }
}

uint64_t sub_1915DA520(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 4);
  v6 = *(sub_19166BC08() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_19166BBC8() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + 2);
  v12 = *(v1 + 3);
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1915D8338;

  return sub_1915D9C54(v13, a1, v11, v12, v1 + v7, v1 + v10, v5);
}

uint64_t sub_1915DA690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19166BB78();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  (*(v5 + 16))(v8, a2, a3);
  sub_19166BBC8();
  sub_19166BBA8();
  return (*(v10 + 8))(v14, v9);
}

unint64_t sub_1915DA850(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_19166BC08();
  if (v3 <= 0x3F)
  {
    result = sub_1915DA900();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1915DA900()
{
  result = qword_1ED5A81E8;
  if (!qword_1ED5A81E8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED5A81E8);
  }

  return result;
}

uint64_t sub_1915DA974()
{
  v1 = *(v0 + 16);
  v2 = *(sub_19166BBC8() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_1915DA690(v0 + v3, v4, v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1915DAA60(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1915DAAA8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1915DAAF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double AXSettingProtocol.objcMode.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t sub_1915DAB60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAF3F0, &unk_191674CF0);
  v5 = sub_19164AB68(v4, 1, a1, v4, *(*(a2 + 8) + 8));
  v6 = (*(a2 + 24))(a1, a2);
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = sub_1915F4D18(*(v6 + 16), 0);
    v10 = sub_1915DBA54(&v20, (v9 + 4), v8, v7);
    result = sub_1915DBBC0();
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v19 = *(v5 + 16);
  if (v19)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      ++v12;
      v15 = *(v13 - 1);
      v14 = *v13;
      ObjectType = swift_getObjectType();
      v17 = *(v14 + 24);
      swift_unknownObjectRetain();
      v18 = v17(ObjectType, v14);
      v20 = v9;

      sub_1915E38BC(v18);

      result = swift_unknownObjectRelease();
      v9 = v20;
      v13 += 2;
      if (v19 == v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    return v9;
  }

  return result;
}

uint64_t AXObservableSettings.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 24))(a3, a5);
  if (*(v7 + 16) && (v8 = sub_1915DB0E4(a1, a2), (v9 & 1) != 0))
  {
    sub_1915DB15C(*(v7 + 56) + 40 * v8, v12);

    sub_1915A04D0(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3E8, &qword_1916721B0);
    type metadata accessor for AXSettingRecord();
    swift_dynamicCast();
    return v11;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t AXSettingsStore.value(forKey:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = &type metadata for AXConcreteKey;
  v15[4] = &protocol witness table for AXConcreteKey;
  v12 = swift_allocObject();
  v15[0] = v12;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 2;
  *(v12 + 88) = 0;
  v13 = *(a6 + 8);

  v13(v15, a5, a6);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t AXSettingsStore.set(value:forKey:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[3] = &type metadata for AXConcreteKey;
  v17[4] = &protocol witness table for AXConcreteKey;
  v14 = swift_allocObject();
  v17[0] = v14;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 2;
  *(v14 + 88) = 0;
  v15 = *(a7 + 16);

  v15(a1, v17, a6, a7);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t AXSettingsStore.observe(key:domain:onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[3] = &type metadata for AXConcreteKey;
  v19[4] = &protocol witness table for AXConcreteKey;
  v16 = swift_allocObject();
  v19[0] = v16;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 2;
  *(v16 + 88) = 0;
  v17 = *(a8 + 32);

  v17(v19, a5, a6, a7, a8);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

unint64_t sub_1915DB0E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_19166C778();
  sub_19166B828();
  v6 = sub_19166C7B8();

  return sub_1915DB4A4(a1, a2, v6);
}

uint64_t sub_1915DB15C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1915DB1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_1915DB2EC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_19166B1C8();
  sub_1915DB708(&qword_1EADAE9E0);
  v5 = sub_19166B6B8();

  return sub_1915DB55C(a1, v5);
}

unint64_t sub_1915DB370(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_19166C768();
  return sub_1915DB9E8(a1, v4);
}

unint64_t sub_1915DB3AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_19166C1E8();
  v5 = sub_19166B6B8();

  return sub_1915DB74C(a1, v5);
}

unint64_t sub_1915DB410(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_19166B748();
  sub_19166C778();
  sub_19166B828();
  v4 = sub_19166C7B8();

  return sub_1915DB8E4(a1, v4);
}

unint64_t sub_1915DB4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_19166C5E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1915DB55C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_19166B1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_1915DB708(&qword_1EADAE910);
      v17 = sub_19166B6E8();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1915DB708(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19166B1C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1915DB74C(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_19166C1E8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v7 + 16);
    v13 = v7 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v9, *(v24 + 48) + v16 * v11, v4);
      v19 = sub_19166B6E8();
      (*v17)(v9, v4);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1915DB8E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_19166B748();
      v9 = v8;
      if (v7 == sub_19166B748() && v9 == v10)
      {
        break;
      }

      v12 = sub_19166C5E8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1915DB9E8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1915DBA54(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1915DB15C(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_1915A04D0(v20, v21);
      sub_1915A04D0(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void static AXKeyedArchiveSourcable.migrate(from:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1915DCB54(a1, a2);
  v6 = sub_1915DCA94();
  sub_1915DCBA8(a1, a2);
  if (!v2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v10 = sub_19166B718();

    [v6 setClass:ObjCClassFromMetadata forClassName:v10];

    [v6 setRequiresSecureCoding_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAF400, &unk_191672230);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_191672210;
    *(v11 + 32) = AssociatedTypeWitness;
    v12 = *MEMORY[0x1E696A508];
    sub_19166B748();
    sub_19166BF38();

    if (v14[3])
    {
      if (swift_dynamicCast())
      {
        v14[0] = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF418, &qword_191672240);
        sub_1915DCCB8();
        sub_19166C058();

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      sub_1915DCBFC(v14);
    }

    sub_1915DCC64();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();
  }
}

void static Array<A>.migrate(from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1915DCB54(a1, a2);
  v10 = sub_1915DCA94();
  sub_1915DCBA8(a1, a2);
  if (!v4)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v14 = sub_19166B718();

    [v10 setClass:ObjCClassFromMetadata forClassName:v14];

    [v10 setRequiresSecureCoding_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAF400, &unk_191672230);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_191672220;
    *(v15 + 32) = AssociatedTypeWitness;
    *(v15 + 40) = sub_1915DAA60(0, &qword_1EADAFBD0, 0x1E695DEC8);
    v16 = *MEMORY[0x1E696A508];
    sub_19166B748();
    sub_19166BF38();

    if (v27[3])
    {
      v17 = sub_19166BA68();
      v18 = swift_dynamicCast();
      if (v18)
      {
        v26[1] = v26;
        v27[0] = v27[5];
        MEMORY[0x1EEE9AC00](v18, v19);
        v25[2] = a3;
        v25[3] = a4;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF418, &qword_191672240);
        WitnessTable = swift_getWitnessTable();
        v23 = sub_1915DC290(sub_1915DCD34, v25, v17, v20, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v22);

        v27[0] = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF420, &qword_191672248);
        sub_1915DCD54();
        sub_19166C058();
LABEL_7:

        return;
      }
    }

    else
    {
      sub_1915DCBFC(v27);
    }

    sub_1915DCC64();
    swift_allocError();
    *v24 = 5;
    swift_willThrow();
    goto LABEL_7;
  }
}

uint64_t sub_1915DC1D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a2 = result;
  return result;
}

uint64_t sub_1915DC290(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_19166BD28();
  if (!v29)
  {
    return sub_19166BA28();
  }

  v51 = v29;
  v55 = sub_19166C158();
  v42 = sub_19166C168();
  sub_19166C138();
  result = sub_19166BD08();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_19166BD48();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_19166C148();
      result = sub_19166BD38();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void static Set<>.migrate(from:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1915DCB54(a1, a2);
  v16 = sub_1915DCA94();
  sub_1915DCBA8(a1, a2);
  if (!v7)
  {
    v36 = a7;
    v37 = a6;
    v35 = a5;
    [v16 setRequiresSecureCoding_];
    v17 = a4;
    v18 = a3;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v22 = sub_19166B718();

    [v16 setClass:ObjCClassFromMetadata forClassName:v22];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAF400, &unk_191672230);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_191672220;
    *(v23 + 32) = AssociatedTypeWitness;
    *(v23 + 40) = sub_1915DAA60(0, &unk_1EADAF430, 0x1E695DFD8);
    v24 = *MEMORY[0x1E696A508];
    sub_19166B748();
    sub_19166BF38();
    v25 = v16;

    if (v38[3])
    {
      v26 = sub_19166BCF8();
      v27 = swift_dynamicCast();
      if (v27)
      {
        v38[0] = v38[5];
        MEMORY[0x1EEE9AC00](v27, v28);
        v34[2] = v18;
        v34[3] = v17;
        v34[4] = v35;
        v34[5] = v37;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF418, &qword_191672240);
        WitnessTable = swift_getWitnessTable();
        v32 = sub_1915DC290(sub_1915DCDD8, v34, v26, v29, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v31);

        v38[0] = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF420, &qword_191672248);
        sub_1915DCD54();
        sub_19166C058();
LABEL_7:

        return;
      }
    }

    else
    {
      sub_1915DCBFC(v38);
    }

    sub_1915DCC64();
    swift_allocError();
    *v33 = 5;
    swift_willThrow();
    goto LABEL_7;
  }
}

id sub_1915DCA94()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_19166B0D8();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_19166AFF8();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1915DCB54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1915DCBA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1915DCBFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1915DCC64()
{
  result = qword_1EADAF410;
  if (!qword_1EADAF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAF410);
  }

  return result;
}

unint64_t sub_1915DCCB8()
{
  result = qword_1EADAE850;
  if (!qword_1EADAE850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF418, &qword_191672240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE850);
  }

  return result;
}

uint64_t sub_1915DCD34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1915DC1D4(a1, a2);
}

unint64_t sub_1915DCD54()
{
  result = qword_1EADAF428;
  if (!qword_1EADAF428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF420, &qword_191672248);
    sub_1915DCCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAF428);
  }

  return result;
}

uint64_t sub_1915DCDD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_1915DC1D4(a1, a2);
}

uint64_t sub_1915DCE4C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + qword_1EADB6DA8);
  if (*(v3 + 16) && (v4 = sub_1915DB370(&type metadata for AXTraitsKey), (v5 & 1) != 0))
  {
    sub_1915DFD18(*(v3 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  result = swift_dynamicCast();
  v7 = v8;
  if (!result)
  {
    v7 = 0;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1915DCF04()
{
  v1 = *(*v0 + 80);
  v2 = sub_19166BF58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  (*(*(v1 - 8) + 56))(&v9 - v6, 1, 1, v1);
  sub_1915DFD9C(v7);
  return (*(v3 + 8))(v7, v2);
}

uint64_t AXSettingRecord.key.getter()
{
  v0 = sub_1915DFD88();

  return v0;
}

uint64_t AXSettingRecord.domain.getter()
{
  v0 = sub_1915DFD74();

  return v0;
}

uint64_t sub_1915DD09C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_19166BF58();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_1915DD150(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 80);
  v4 = sub_19166BF58();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a2);
  return sub_1915DD09C(v8);
}

uint64_t sub_1915DD234@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 160);
  swift_beginAccess();
  return sub_1915E0A90(v1 + v3, a1, &qword_1EADAF4A0, &qword_191673940);
}

uint64_t sub_1915DD2A8(uint64_t a1)
{
  v3 = *(*v1 + 160);
  swift_beginAccess();
  sub_1915E0A20(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1915DD314@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(*v1 + 152));
  [v3 lock];
  sub_1915DD234(a1);

  return [v3 unlock];
}

uint64_t sub_1915DD388(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + *(*v1 + 152));
  [v4 lock];
  sub_1915DD43C(v2, a1);
  [v4 unlock];
  return sub_19159E780(a1, &qword_1EADAF4A0, &qword_191673940);
}

uint64_t sub_1915DD43C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v9 - v6;
  sub_1915E0A90(a2, &v9 - v6, &qword_1EADAF4A0, &qword_191673940);
  return sub_1915DD2A8(v7);
}

uint64_t sub_1915DD4F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  v6 = sub_19166BF58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20[-v10 - 8];
  v12 = v2 + *(v4 + 168);
  v14 = *v12;
  v13 = *(v12 + 1);
  sub_1915DD9C4(v20);
  v14(v20);
  sub_19159E780(v20, &qword_1EADAF4A8, &qword_191672420);
  v15 = *(v5 - 8);
  v16 = *(v15 + 48);
  if (v16(v11, 1, v5) != 1)
  {
    return (*(v15 + 32))(a1, v11, v5);
  }

  v17 = *(v2 + qword_1EADB6DA0 + 8);
  (*(v2 + qword_1EADB6DA0))();
  result = (v16)(v11, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_1915DD70C(uint64_t a1, uint64_t *a2)
{
  sub_1915E0A90(a1, v5, &qword_1EADAF4A8, &qword_191672420);
  v3 = *a2;
  return sub_1915DDFD4(v5);
}

uint64_t sub_1915DD758(uint64_t a1)
{
  v3 = *v1;
  sub_1915DFE34(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_1915DD7D4(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_19159F050(v9);
  return sub_1915DD8E8;
}

void sub_1915DD8E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_1915DFE34(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1915DFE34((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1915DD9C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25[1] = a1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v25 - v11;
  v26[0] = v2;
  v13 = *(v3 + 80);
  v25[2] = v13;
  swift_getKeyPath();
  type metadata accessor for AXSettingRecord();
  swift_getWitnessTable();
  sub_19166B428();

  v14 = *(v2 + *(*v2 + 152));
  [v14 lock];
  sub_1915DD234(v12);
  [v14 unlock];
  v15 = sub_19166B1C8();
  LODWORD(v3) = (*(*(v15 - 8) + 48))(v12, 1, v15);
  sub_19159E780(v12, &qword_1EADAF4A0, &qword_191673940);
  if (v3 == 1)
  {
    v16 = *(v2 + qword_1EADB6D90 + 24);
    v17 = *(v2 + qword_1EADB6D90 + 32);
    __swift_project_boxed_opaque_existential_1((v2 + qword_1EADB6D90), v16);
    v27 = swift_checkMetadataState();
    v28 = &protocol witness table for AXSettingRecord<A>;
    v26[0] = v2;
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v13;
    *(v19 + 24) = v18;
    v20 = *(v17 + 32);

    v20(v26, sub_1915E0008, v19, v16, v17);

    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_1915DD388(v9);
  }

  v21 = *(v2 + qword_1EADB6D90 + 24);
  v22 = *(v2 + qword_1EADB6D90 + 32);
  __swift_project_boxed_opaque_existential_1((v2 + qword_1EADB6D90), v21);
  v27 = swift_checkMetadataState();
  v28 = &protocol witness table for AXSettingRecord<A>;
  v26[0] = v2;
  v23 = *(v22 + 8);

  v23(v26, v21, v22);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_1915DDCFC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + *(*result + 200));
    [v2 lock];
    sub_1915DDDC4(v1);
    [v2 unlock];
  }

  return result;
}

uint64_t sub_1915DDDC4(uint64_t a1)
{
  v2 = *(*a1 + 80);
  swift_getKeyPath();
  type metadata accessor for AXSettingRecord();
  swift_getWitnessTable();
  sub_19166B418();
}

uint64_t sub_1915DDEB4(uint64_t a1)
{
  v1 = *(*a1 + 80);
  v2 = sub_19166BF58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  (*(*(v1 - 8) + 56))(&v9 - v6, 1, 1, v1);
  sub_1915DFD9C(v7);
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_1915DDFD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + *(*v1 + 200));
  [v4 lock];
  sub_1915DE088(v2);
  [v4 unlock];
  return sub_19159E780(a1, &qword_1EADAF4A8, &qword_191672420);
}

uint64_t sub_1915DE088(uint64_t a1)
{
  v2 = *(*a1 + 80);
  swift_getKeyPath();
  type metadata accessor for AXSettingRecord();
  swift_getWitnessTable();
  sub_19166B418();
}

uint64_t sub_1915DE184(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v14 = sub_19166BF58();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v14, v7);
  v9 = &v15[-1] - v8;
  v10 = *(a1 + qword_1EADB6D90 + 24);
  v11 = *(a1 + qword_1EADB6D90 + 32);
  __swift_project_boxed_opaque_existential_1((a1 + qword_1EADB6D90), v10);
  v15[3] = type metadata accessor for AXSettingRecord();
  v15[4] = &protocol witness table for AXSettingRecord<A>;
  v15[0] = a1;
  v12 = *(v11 + 16);

  v12(a2, v15, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v15);
  (*(*(v4 - 8) + 56))(v9, 1, 1, v4);
  sub_1915DFD9C(v9);
  return (*(v5 + 8))(v9, v14);
}

void (*sub_1915DE330(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_1915DD9C4(v3);
  return sub_1915DE3A8;
}

void sub_1915DE3A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_1915E0A90(*a1, v2 + 40, &qword_1EADAF4A8, &qword_191672420);
    sub_1915DDFD4(v2 + 40);
    sub_19159E780(v2, &qword_1EADAF4A8, &qword_191672420);
  }

  else
  {
    sub_1915DDFD4(*a1);
  }

  free(v2);
}

uint64_t sub_1915DE438()
{
  v1 = *(*v0 + 80);

  axObservationTrackingStream<A>(_:)(sub_1915E0010, v0, v1);
}

uint64_t sub_1915DE4B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_19166BC08();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10 - v7;
  sub_1915DE438();
  AXFetchableStream.init(stream:fetcher:)(v8, &unk_191672358, v1, a1);
}

uint64_t sub_1915DE570(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1915DE590, 0, 0);
}

uint64_t sub_1915DE590()
{
  v1 = v0[3];
  sub_19159F050(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t *AXSettingRecord.__allocating_init<A>(owner:defaultValue:key:domain:didSet:willSet:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v47 = a1;
  v48 = a8;
  v49 = a3;
  v52 = a6;
  v53 = a7;
  v50 = a4;
  v51 = a5;
  v46 = a9;
  v44 = a2;
  v45 = a10;
  v54 = a18;
  v41 = a16;
  v42 = a17;
  v19 = *(v18 + 80);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v39 = a12;
  MEMORY[0x1EEE9AC00](a1, a2);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *v23;
  (*(v20 + 16))(v22);
  v24 = *(v20 + 80);
  v43 = v20;
  v25 = (v24 + 80) & ~v24;
  v26 = swift_allocObject();
  v27 = v19;
  *(v26 + 2) = v19;
  *(v26 + 3) = a12;
  *(v26 + 4) = a13;
  *(v26 + 5) = a14;
  v29 = v41;
  v28 = v42;
  *(v26 + 6) = a15;
  *(v26 + 7) = v29;
  v30 = v54;
  *(v26 + 8) = v28;
  *(v26 + 9) = v30;
  v31 = v27;
  (*(v20 + 32))(&v26[v25], v22);
  v55 = v40;
  v32 = swift_allocObject();
  v33 = v39;
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = a13;
  v32[5] = a14;
  v32[6] = a15;
  v32[7] = v29;
  v34 = v54;
  v32[8] = v28;
  v32[9] = v34;
  v35 = swift_allocObject();
  v35[2] = v31;
  v35[3] = v33;
  v35[4] = a13;
  v35[5] = a14;
  v35[6] = a15;
  v35[7] = v29;
  v35[8] = v28;
  v35[9] = v34;
  v36 = sub_1915E0410(v47, sub_1915E00B0, v26, v49, v50, v51, v52, v53, v48, v46, v45, &v55, sub_1915E00F0, v32, sub_1915E00F4, v35, v33, v29);
  swift_unknownObjectRelease();
  (*(v43 + 8))(v44, v31);
  return v36;
}

uint64_t *AXSettingRecord.__allocating_init<A>(owner:defaultValue:key:domain:didSet:willSet:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v32 = a1;
  v33 = a8;
  v34 = a3;
  v37 = a6;
  v38 = a7;
  v35 = a4;
  v36 = a5;
  v31 = a9;
  v29 = a2;
  v30 = a10;
  v17 = *(v16 + 80);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v21;
  (*(v18 + 16))(v20);
  v22 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v17;
  *(v23 + 3) = a12;
  *(v23 + 4) = a13;
  *(v23 + 5) = a14;
  *(v23 + 6) = a15;
  *(v23 + 7) = a16;
  (*(v18 + 32))(&v23[v22], v20, v17);
  v39 = v28;
  v24 = swift_allocObject();
  v24[2] = v17;
  v24[3] = a12;
  v24[4] = a13;
  v24[5] = a14;
  v24[6] = a15;
  v24[7] = a16;
  v25 = swift_allocObject();
  v25[2] = v17;
  v25[3] = a12;
  v25[4] = a13;
  v25[5] = a14;
  v25[6] = a15;
  v25[7] = a16;
  v26 = sub_1915E0410(v32, sub_1915E04F0, v23, v34, v35, v36, v37, v38, v33, v31, v30, &v39, sub_1915E0530, v24, sub_1915E0534, v25, a12, a14);
  swift_unknownObjectRelease();
  (*(v18 + 8))(v29, v17);
  return v26;
}

uint64_t *AXSettingRecord.__allocating_init<A>(owner:defaultValue:key:domain:didSet:willSet:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v32 = a8;
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v30 = a9;
  v31 = a1;
  v28 = a2;
  v29 = a10;
  v16 = *(v15 + 80);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v20;
  (*(v17 + 16))(v19);
  v22 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v16;
  *(v23 + 3) = a12;
  *(v23 + 4) = a13;
  *(v23 + 5) = a14;
  *(v23 + 6) = a15;
  (*(v17 + 32))(&v23[v22], v19, v16);
  v38 = v21;
  v24 = swift_allocObject();
  v24[2] = v16;
  v24[3] = a12;
  v24[4] = a13;
  v24[5] = a14;
  v24[6] = a15;
  v25 = swift_allocObject();
  v25[2] = v16;
  v25[3] = a12;
  v25[4] = a13;
  v25[5] = a14;
  v25[6] = a15;
  v26 = sub_1915E0410(v31, sub_1915E0538, v23, v33, v34, v35, v36, v37, v32, v30, v29, &v38, sub_1915E0578, v24, sub_1915E057C, v25, a12, a15);
  swift_unknownObjectRelease();
  (*(v17 + 8))(v28, v16);
  return v26;
}

uint64_t *AXSettingRecord.__allocating_init<A>(owner:defaultValue:key:domain:didSet:willSet:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v33 = *a12;
  v20 = swift_allocObject();
  v21 = *(v19 + 80);
  v20[2] = v21;
  v20[3] = a13;
  v20[4] = a14;
  v20[5] = a15;
  v20[6] = a16;
  v20[7] = a17;
  v20[8] = a18;
  v20[9] = a19;
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a13;
  v22[4] = a14;
  v22[5] = a15;
  v22[6] = a16;
  v22[7] = a17;
  v22[8] = a18;
  v22[9] = a19;
  v23 = sub_1915E0410(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &v33, sub_1915E0BD0, v20, sub_1915E0BD4, v22, a13, a17);
  swift_unknownObjectRelease();
  return v23;
}

uint64_t sub_1915DEE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1915E0A90(a1, &v8, &qword_1EADAF4A8, &qword_191672420);
  if (*(&v9 + 1))
  {
    v11[0] = v8;
    v11[1] = v9;
    v12 = v10;
    type metadata accessor for AXMigratingDecoder();
    v5 = swift_allocObject();
    v6 = MEMORY[0x1E69E7CC0];
    v5[2] = MEMORY[0x1E69E7CC0];
    v5[3] = sub_191653100(v6);
    v5[4] = 0xC000000000000000;
    sub_19164EF2C(a2, v11, a2);
    sub_1915E0AF8(v11);

    return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }

  else
  {
    sub_19159E780(&v8, &qword_1EADAF4A8, &qword_191672420);
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }
}

uint64_t sub_1915DEFA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for AXMigratingEncoder();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  v4[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v4[4] = 0xC000000000000000;
  v4[2] = v5;
  sub_191654454(a1, a2);
}

uint64_t *AXSettingRecord.__allocating_init<A>(owner:defaultValue:key:domain:didSet:willSet:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v31 = *a12;
  v19 = swift_allocObject();
  v20 = *(v17 + 80);
  v19[2] = v20;
  v19[3] = a13;
  v19[4] = a14;
  v19[5] = a15;
  v19[6] = a16;
  v19[7] = a17;
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a13;
  v21[4] = a14;
  v21[5] = a15;
  v21[6] = a16;
  v21[7] = a17;
  v22 = sub_1915E0410(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &v31, sub_1915E0BD8, v19, sub_1915E0BDC, v21, a13, a15);
  swift_unknownObjectRelease();
  return v22;
}

uint64_t sub_1915DF1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v27[3] = a4;
  v27[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_19166BF58();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v27 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v12, v17);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v27 - v22;
  sub_1915E0A90(a1, &v28, &qword_1EADAF4A8, &qword_191672420);
  if (*(&v29 + 1))
  {
    v27[2] = a5;
    v31[0] = v28;
    v31[1] = v29;
    v32 = v30;
    type metadata accessor for AXMigratingDecoder();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E7CC0];
    v24[2] = MEMORY[0x1E69E7CC0];
    v24[3] = sub_191653100(v25);
    v24[4] = 0xC000000000000000;
    sub_19164EF2C(AssociatedTypeWitness, v31, AssociatedTypeWitness);

    (*(v15 + 56))(v14, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v23, v14, AssociatedTypeWitness);
    (*(v15 + 16))(v20, v23, AssociatedTypeWitness);
    sub_19166B9A8();
    (*(v15 + 8))(v23, AssociatedTypeWitness);
    return sub_1915E0AF8(v31);
  }

  else
  {
    sub_19159E780(&v28, &qword_1EADAF4A8, &qword_191672420);
    return (*(*(a2 - 8) + 56))(a5, 1, 1, a2);
  }
}

uint64_t sub_1915DF518@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v5);
  v7 = &v11 - v6;
  type metadata accessor for AXMigratingEncoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v8[4] = 0xC000000000000000;
  v8[2] = v9;
  sub_19166B998();
  sub_191654454(AssociatedTypeWitness, a1);
  (*(v3 + 8))(v7, AssociatedTypeWitness);
}

uint64_t *AXSettingRecord.__allocating_init<A>(owner:defaultValue:key:domain:didSet:willSet:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v30 = *a12;
  v19 = swift_allocObject();
  v20 = *(v16 + 80);
  v19[2] = v20;
  v19[3] = a13;
  v19[4] = a14;
  v19[5] = a15;
  v19[6] = a16;
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a13;
  v21[4] = a14;
  v21[5] = a15;
  v21[6] = a16;
  v22 = sub_1915E0410(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &v30, sub_1915E0BE0, v19, sub_1915E0BE4, v21, a13, a16);
  swift_unknownObjectRelease();
  return v22;
}

uint64_t *AXSettingRecord.deinit()
{
  v1 = *v0;
  v2 = qword_1EADAE9C0;
  v3 = sub_19166B448();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_1EADB6D98 + 8);

  v5 = *(v0 + qword_1EADB6D88 + 8);

  v6 = *(v0 + qword_1EADB6DA8);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EADB6D90));
  v7 = *(v0 + qword_1EADB6DA0 + 8);

  v8 = *(*v0 + 144);
  v9 = *(v1 + 80);
  v10 = sub_19166BF58();
  (*(*(v10 - 8) + 8))(v0 + v8, v10);

  sub_19159E780(v0 + *(*v0 + 160), &qword_1EADAF4A0, &qword_191673940);
  v11 = *(v0 + *(*v0 + 168) + 8);

  v12 = *(v0 + *(*v0 + 176) + 8);

  v13 = (v0 + *(*v0 + 184));
  v14 = v13[1];
  sub_19159F5CC(*v13);
  v15 = (v0 + *(*v0 + 192));
  v16 = v15[1];
  sub_19159F5CC(*v15);

  return v0;
}

uint64_t AXSettingRecord.__deallocating_deinit()
{
  AXSettingRecord.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*sub_1915DFAB8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1915DE330(v3);
  return sub_1915DFB2C;
}

void sub_1915DFB2C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1915DFB98()
{
  v1 = *v0;
  v2 = sub_1915DFD88();

  return v2;
}

uint64_t sub_1915DFBD4()
{
  v1 = *v0;
  v2 = sub_1915DFD74();

  return v2;
}

int8x16_t sub_1915DFC58@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1915DB370(&type metadata for AXWatchPreferenceKey), (v5 & 1) != 0))
  {
    sub_1915DFD18(*(a1 + 56) + 32 * v4, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4B0, &qword_191672418);
  if (swift_dynamicCast())
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vdupq_n_s64(v6);
  result = vandq_s8(v9, v7);
  *a2 = result;
  a2[1] = vandq_s8(v10, v7);
  return result;
}

uint64_t sub_1915DFD18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1915DFD74()
{
  result = *(v0 + qword_1EADB6D88);
  v2 = *(v0 + qword_1EADB6D88 + 8);
  return result;
}

uint64_t sub_1915DFD88()
{
  result = *(v0 + qword_1EADB6D98);
  v2 = *(v0 + qword_1EADB6D98 + 8);
  return result;
}

id sub_1915DFD9C(uint64_t a1)
{
  v3 = *(v1 + qword_1EADB6DB0);
  [v3 lock];
  sub_1915DD150(v1, a1);

  return [v3 unlock];
}

uint64_t sub_1915DFE34(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a1);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v22[-1] - v11;
  v14 = v1 + *(v13 + 192);
  if (*v14)
  {
    v15 = *(v14 + 8);
    (*v14)(v10);
    (*(v4 + 32))(v12, v8, v3);
  }

  else
  {
    (*(v4 + 16))(&v22[-1] - v11);
  }

  v16 = v2 + *(*v2 + 176);
  v17 = *(v16 + 8);
  (*v16)(v22, v12);
  sub_1915DDFD4(v22);
  v18 = v2 + *(*v2 + 184);
  if (*v18)
  {
    v19 = *(v18 + 8);
    (*v18)(v12);
  }

  return (*(v4 + 8))(v12, v3);
}

uint64_t sub_1915E0008()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_1915DDCFC();
}

uint64_t sub_1915E0014(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1915D4F90;

  return sub_1915DE570(a1, v1);
}

uint64_t *sub_1915E00F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = *v18;
  v39 = *a12;
  sub_19166B438();
  v22 = qword_1EADB6DB0;
  *(v18 + v22) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  (*(*(*(v21 + 80) - 8) + 56))(v18 + *(*v18 + 144), 1, 1);
  v23 = *(*v18 + 152);
  *(v18 + v23) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v24 = *(*v18 + 160);
  v25 = sub_19166B1C8();
  (*(*(v25 - 8) + 56))(v18 + v24, 1, 1, v25);
  v26 = *(*v18 + 200);
  *(v18 + v26) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  (*(a18 + 56))(v42, a17, a18);
  sub_1915A04D0(v42, v18 + qword_1EADB6D90);
  if (!a7)
  {
    a6 = (*(a18 + 48))(a17, a18);
    a7 = v27;
  }

  v28 = (v18 + qword_1EADB6D88);
  *v28 = a6;
  v28[1] = a7;
  v29 = (v18 + qword_1EADB6D98);
  *v29 = a4;
  v29[1] = a5;
  v30 = (v18 + qword_1EADB6DA0);
  *v30 = a2;
  v30[1] = a3;
  v31 = (v18 + *(*v18 + 184));
  *v31 = a8;
  v31[1] = a9;
  v32 = (v18 + *(*v18 + 192));
  *v32 = a10;
  v32[1] = a11;
  *(v18 + qword_1EADB6DA8) = v39;
  v33 = (v18 + *(*v18 + 176));
  *v33 = a15;
  v33[1] = a16;
  v34 = (v18 + *(*v18 + 168));
  *v34 = a13;
  v34[1] = a14;
  return v18;
}

uint64_t *sub_1915E0410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v26 = *(v18 + 80);
  v27 = type metadata accessor for AXSettingRecord();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  return sub_1915E00F8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1915E0580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v8 = v2[8];
  v10 = v2[9];
  return sub_1915DEE30(a1, v2[2], a2);
}

uint64_t sub_1915E05B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v9 = v1[9];
  return sub_1915DEFA0(v1[2], a1);
}

uint64_t sub_1915E05E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  v5 = v2[7];
  return sub_1915DF1A0(a1, v2[2], v2[4], v2[6], a2);
}

uint64_t sub_1915E060C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return sub_1915DF518(a1);
}

uint64_t sub_1915E0630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  return sub_1915DEE30(a1, v2[2], a2);
}

uint64_t sub_1915E0654@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  return sub_1915DEFA0(v1[2], a1);
}

void sub_1915E067C(uint64_t a1)
{
  v2 = sub_19166B448();
  if (v3 <= 0x3F)
  {
    v9 = *(v2 - 8) + 64;
    v4 = *(a1 + 80);
    v5 = sub_19166BF58();
    if (v6 <= 0x3F)
    {
      v10 = *(v5 - 8) + 64;
      sub_1915E09C8();
      if (v8 <= 0x3F)
      {
        v11 = *(v7 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1915E09C8()
{
  if (!qword_1EADAE9D8)
  {
    sub_19166B1C8();
    v0 = sub_19166BF58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADAE9D8);
    }
  }
}

uint64_t sub_1915E0A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915E0A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1915E0B84()
{
  result = qword_1EADAE918;
  if (!qword_1EADAE918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADAE918);
  }

  return result;
}

uint64_t sub_1915E0BE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_1915E20A0(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_19166B1C8();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1915DB2EC(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_191647AC0();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_19166B1C8();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1916471BC(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_19166B1C8();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1915E0DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v6;
    v12 = *(a1 + 32);
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1915E226C(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    sub_19159E780(a1, &qword_1EADAF4A8, &qword_191672420);
    sub_1915E1FEC(a2, a3, v11);

    return sub_19159E780(v11, &qword_1EADAF4A8, &qword_191672420);
  }

  return result;
}

_OWORD *sub_1915E0E80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1915E4370(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1915E2578(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_19159E780(a1, &unk_1EADB0270, &unk_191672C20);
    v8 = *v2;
    v9 = sub_1915DB370(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_191648090();
        v14 = v16;
      }

      sub_1915E4370((*(v14 + 56) + 32 * v11), v17);
      sub_191647630(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_19159E780(v17, &unk_1EADB0270, &unk_191672C20);
  }

  return result;
}

uint64_t sub_1915E0F84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1915E2980(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_19166B1C8();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1915DB2EC(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_191648654();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_19166B1C8();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_1916471BC(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_19166B1C8();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_1915E1144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1915E2CC4(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_191648B80, sub_191646F08);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1915DB0E4(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_191648B80();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_191649424(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1915E128C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_1915E12EC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1915E1324(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1915E13BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_1915E141C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1915E1454(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

double sub_1915E14EC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 16);
  if (*(v11 + 16))
  {
    v12 = *(v3 + 16);

    v13 = sub_1915DB0E4(v8, v10);
    v15 = v14;

    if (v15)
    {
      v16 = *(*(v11 + 56) + 8 * v13);

      v17 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v17);
      v19 = (*(v18 + 8))(v17, v18);
      if (*(v16 + 16))
      {
        v21 = sub_1915DB0E4(v19, v20);
        v23 = v22;

        if (v23)
        {
          sub_1915E1F90(*(v16 + 56) + 40 * v21, a2);

          return result;
        }
      }

      else
      {
      }
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1915E1668(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v7 = *(v5 + 16);
  v8 = v7(v6, v5);
  v10 = v9;
  v56 = v7;
  v11 = v7(v6, v5);
  v13 = v12;
  swift_beginAccess();
  v14 = *(v2 + 16);
  if (*(v14 + 16))
  {
    v54 = v8;

    v15 = sub_1915DB0E4(v11, v13);
    v17 = v16;

    if (v17)
    {
      v18 = *(*(v14 + 56) + 8 * v15);

      v8 = v54;
      goto LABEL_7;
    }

    v8 = v54;
  }

  else
  {
  }

  v18 = sub_191652FC8(MEMORY[0x1E69E7CC0]);
LABEL_7:
  swift_beginAccess();
  v19 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60[0] = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_1915E2CC4(v18, v8, v10, isUniquelyReferenced_nonNull_native, sub_191647EF4, sub_191645920);

  *(v3 + 16) = v60[0];
  swift_endAccess();
  v21 = v56(v6, v5);
  v23 = v22;
  v55 = sub_1915E136C();
  v24 = sub_1915E1AAC(v59, v21, v23);
  if (*v25)
  {
    v52 = v5;
    v26 = v6;
    v27 = a2[3];
    v28 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v27);
    v29 = (*(v28 + 8))(v27, v28);
    v31 = v30;
    sub_1915E0A90(a1, &v57, &qword_1EADAF4A8, &qword_191672420);
    v32 = v31;
    v6 = v26;
    v5 = v52;
    sub_1915E0DA8(&v57, v29, v32);
    (v24)(v59, 0);

    (v55)(v60, 0);
  }

  else
  {
    (v24)(v59, 0);

    (v55)(v60, 0);
  }

  v57 = v56(v6, v5);
  v58 = v33;
  MEMORY[0x193AFC710](46, 0xE100000000000000);
  v34 = a2[3];
  v35 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v34);
  v36 = (*(v35 + 8))(v34, v35);
  MEMORY[0x193AFC710](v36);

  v38 = v57;
  v37 = v58;
  swift_beginAccess();
  v39 = *(v3 + 24);
  v40 = *(v39 + 16);

  if (v40)
  {
    v41 = sub_1915DB0E4(v38, v37);
    v43 = v42;

    if (v43)
    {
      v44 = *(*(v39 + 56) + 8 * v41);

      goto LABEL_15;
    }
  }

  else
  {
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_15:

  v46 = *(v44 + 16);
  if (!v46)
  {
  }

  v47 = 0;
  v48 = (v44 + 40);
  while (v47 < *(v44 + 16))
  {
    ++v47;
    v50 = *(v48 - 1);
    v49 = *v48;

    v50(v51);

    v48 += 2;
    if (v46 == v47)
    {
    }
  }

  __break(1u);
  return result;
}

void (*sub_1915E1AAC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1915E2F7C(v6, a2, a3);
  return sub_1915E1B34;
}

void (*sub_1915E1B38(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1915E302C(v6, a2, a3);
  return sub_1915E4388;
}

void (*sub_1915E1BC0(uint64_t **a1, uint64_t a2))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1915E30D8(v4, a2);
  return sub_1915E4388;
}

void sub_1915E1C38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1915E1C84(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v25 = (*(v9 + 16))(v8, v9);
  v26 = v10;
  MEMORY[0x193AFC710](46, 0xE100000000000000);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  MEMORY[0x193AFC710](v13);

  swift_beginAccess();
  v14 = *(v3 + 24);
  if (*(v14 + 16))
  {
    v15 = *(v3 + 24);

    v16 = sub_1915DB0E4(v25, v26);
    if (v17)
    {
      v18 = *(*(v14 + 56) + 8 * v16);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4B8, &qword_191672428);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(inited + 32) = sub_1915E4118;
  *(inited + 40) = v20;

  sub_1915E3CAC(inited);
  swift_beginAccess();
  v21 = *(v4 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  sub_1915E2CC4(v18, v25, v26, isUniquelyReferenced_nonNull_native, sub_191647F08, sub_191645934);

  *(v4 + 24) = v24;
  return swift_endAccess();
}

uint64_t AXInMemorySettingsStore.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t AXInMemorySettingsStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

double sub_1915E1FEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1915DB0E4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_191647D40();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 40 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 32) = *(v14 + 32);
    sub_191647474(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1915E20A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19166B1C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_1915DB2EC(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_191647AC0();
      goto LABEL_7;
    }

    sub_1916452A4(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_1915DB2EC(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_1915E2E5C(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_19166C6F8();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t sub_1915E226C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1915DB0E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_191645650(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1915DB0E4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_19166C6F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_191647D40();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_1915E4314(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

uint64_t sub_1915E23FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1915DB0E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_191645948(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1915DB0E4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_19166C6F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_191647F1C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_1915E2578(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1915DB370(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_191648090();
      v9 = v17;
      goto LABEL_8;
    }

    sub_191645BF0(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1915DB370(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_19166C6F8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v21);

    return sub_1915E4370(a1, v21);
  }

  else
  {

    return sub_1915E2F14(v9, a2, a1, v20);
  }
}

unint64_t sub_1915E26A4(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1915DB0E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_191645E68(v16, a4 & 1);
      v20 = *v5;
      result = sub_1915DB0E4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_19166C6F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_19164820C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 4 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1915E2808(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1915DB0E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_19164663C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1915DB0E4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_19166C6F8();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_191648640();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

void sub_1915E2980(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19166B1C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_1915DB2EC(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_191648654();
      goto LABEL_7;
    }

    sub_191646650(v19, a3 & 1);
    v25 = *v4;
    v26 = sub_1915DB2EC(a2);
    if ((v20 & 1) == (v27 & 1))
    {
      v16 = v26;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      sub_1915E2E5C(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    sub_19166C6F8();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

unint64_t sub_1915E2B4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1915DB370(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_191646C98(v14, a3 & 1);
      v18 = *v4;
      result = sub_1915DB370(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_19166C6F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_191648A24();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_1915E2CC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1915DB0E4(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_1915DB0E4(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_19166C6F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_1915E2E5C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_19166B1C8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1915E2F14(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1915E4370(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t (*sub_1915E2F7C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1915E3860(v8);
  v8[9] = sub_1915E31DC(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1915E3028;
}

void (*sub_1915E302C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1915E3894(v8);
  v8[9] = sub_1915E334C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1915E438C;
}

void (*sub_1915E30D8(uint64_t *a1, uint64_t a2))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1915E3894(v6);
  v6[9] = sub_1915E35F8(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1915E438C;
}

void sub_1915E317C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1915E31DC(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1915DB0E4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_191647EF4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_191645920(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1915DB0E4(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_19166C6F8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_1915E3334;
}

void (*sub_1915E334C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1915DB0E4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_191648B80();
      v13 = v21;
      goto LABEL_11;
    }

    sub_191646F08(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1915DB0E4(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_19166C6F8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_1915E3334;
}
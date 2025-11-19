@interface NSError(LTTranslationError)
+ (id)lt_errorWithCode:()LTTranslationError description:userInfo:;
+ (id)lt_offlineNotImplementedError;
+ (id)lt_onlineNotImplementedError;
+ (id)lt_speechLimitExceeded;
+ (id)lt_speechTranslationOngoing;
+ (id)lt_translationTimeout;
+ (id)lt_unsupportedLanguageError:()LTTranslationError;
+ (id)lt_unsupportedPairingErrorWithSource:()LTTranslationError target:;
+ (id)lt_unsupportedSourceLanguageError:()LTTranslationError;
+ (id)lt_unsupportedTargetLanguageError:()LTTranslationError;
@end

@implementation NSError(LTTranslationError)

+ (id)lt_errorWithCode:()LTTranslationError description:userInfo:
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = v10;
  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:a3 userInfo:v11];

  return v12;
}

+ (id)lt_onlineNotImplementedError
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"ONLINE_TRANSLATION_NOT_IMPLEMENTED_ERROR_DESCRIPTION" value:&stru_284DBB9B8 table:0];
  v4 = [a1 lt_errorWithCode:1 description:v3 userInfo:0];

  return v4;
}

+ (id)lt_offlineNotImplementedError
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"OFFLINE_TRANSLATION_NOT_IMPLEMENTED_ERROR_DESCRIPTION" value:&stru_284DBB9B8 table:0];
  v4 = [a1 lt_errorWithCode:1 description:v3 userInfo:0];

  return v4;
}

+ (id)lt_speechTranslationOngoing
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"ONGOING_SPEECH_TRANSLATION_ERROR_DESCRIPTION" value:&stru_284DBB9B8 table:0];
  v4 = [a1 lt_errorWithCode:7 description:v3 userInfo:0];

  return v4;
}

+ (id)lt_speechLimitExceeded
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"SPEECH_DURATION_EXCEEDED_ERROR_DESCRIPTION" value:&stru_284DBB9B8 table:0];
  v4 = [a1 lt_errorWithCode:6 description:v3 userInfo:0];

  return v4;
}

+ (id)lt_translationTimeout
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"SERVER_TIMEOUT_ERROR_DESCRIPTION" value:&stru_284DBB9B8 table:0];
  v4 = [a1 lt_errorWithCode:9 description:v3 userInfo:0];

  return v4;
}

+ (id)lt_unsupportedLanguageError:()LTTranslationError
{
  v4 = [a3 _ltLocaleIdentifier];
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"UNSUPPORTED_LANGUAGE_ERROR_DESCRIPTION" value:&stru_284DBB9B8 table:0];
  v8 = @"nil";
  if (v4)
  {
    v8 = v4;
  }

  v9 = [v5 stringWithFormat:v7, v8];

  v10 = [a1 lt_errorWithCode:18 description:v9 userInfo:0];

  return v10;
}

+ (id)lt_unsupportedPairingErrorWithSource:()LTTranslationError target:
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionary];
  [v8 setObject:v7 forKeyedSubscript:@"sourceLocale"];

  [v8 setObject:v6 forKeyedSubscript:@"targetLocale"];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:11 userInfo:v8];

  return v9;
}

+ (id)lt_unsupportedSourceLanguageError:()LTTranslationError
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"sourceLocale"];

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:18 userInfo:v5];

  return v6;
}

+ (id)lt_unsupportedTargetLanguageError:()LTTranslationError
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"targetLocale"];

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:19 userInfo:v5];

  return v6;
}

@end
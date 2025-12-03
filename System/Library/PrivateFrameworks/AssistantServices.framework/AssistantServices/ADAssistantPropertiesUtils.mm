@interface ADAssistantPropertiesUtils
+ (id)SISchemaLocaleToSISchemaISOLocale:(int)locale;
+ (int)ODDSiriSchemaODDListenForFrom:(id)from;
+ (int)SISchemaDataSharingOptInStateFrom:(int64_t)from;
+ (int)SISchemaVoiceGenderFromAFVoiceGender:(int64_t)gender;
@end

@implementation ADAssistantPropertiesUtils

+ (id)SISchemaLocaleToSISchemaISOLocale:(int)locale
{
  v4 = objc_alloc_init(SISchemaISOLocale);
  v5 = v4;
  if (locale <= 0x3E)
  {
    v6 = dword_1003F058C[locale];
    v7 = dword_1003F0688[locale];
    [v4 setCountryCode:v6];
    [v5 setLanguageCode:v7];
  }

  return v5;
}

+ (int)ODDSiriSchemaODDListenForFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy isHeySiriTriggerPhraseEnabled] && (objc_msgSend(fromCopy, "isJustSiriTriggerPhraseEnabled") & 1) != 0)
  {
    v4 = 1;
  }

  else if ([fromCopy isHeySiriTriggerPhraseEnabled])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (int)SISchemaDataSharingOptInStateFrom:(int64_t)from
{
  if ((from - 1) < 3)
  {
    return from;
  }

  else
  {
    return 0;
  }
}

+ (int)SISchemaVoiceGenderFromAFVoiceGender:(int64_t)gender
{
  if ((gender - 1) > 2)
  {
    return 0;
  }

  else
  {
    return dword_1003F0580[gender - 1];
  }
}

@end
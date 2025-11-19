@interface ADAssistantPropertiesUtils
+ (id)SISchemaLocaleToSISchemaISOLocale:(int)a3;
+ (int)ODDSiriSchemaODDListenForFrom:(id)a3;
+ (int)SISchemaDataSharingOptInStateFrom:(int64_t)a3;
+ (int)SISchemaVoiceGenderFromAFVoiceGender:(int64_t)a3;
@end

@implementation ADAssistantPropertiesUtils

+ (id)SISchemaLocaleToSISchemaISOLocale:(int)a3
{
  v4 = objc_alloc_init(SISchemaISOLocale);
  v5 = v4;
  if (a3 <= 0x3E)
  {
    v6 = dword_1003F058C[a3];
    v7 = dword_1003F0688[a3];
    [v4 setCountryCode:v6];
    [v5 setLanguageCode:v7];
  }

  return v5;
}

+ (int)ODDSiriSchemaODDListenForFrom:(id)a3
{
  v3 = a3;
  if ([v3 isHeySiriTriggerPhraseEnabled] && (objc_msgSend(v3, "isJustSiriTriggerPhraseEnabled") & 1) != 0)
  {
    v4 = 1;
  }

  else if ([v3 isHeySiriTriggerPhraseEnabled])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (int)SISchemaDataSharingOptInStateFrom:(int64_t)a3
{
  if ((a3 - 1) < 3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

+ (int)SISchemaVoiceGenderFromAFVoiceGender:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return dword_1003F0580[a3 - 1];
  }
}

@end
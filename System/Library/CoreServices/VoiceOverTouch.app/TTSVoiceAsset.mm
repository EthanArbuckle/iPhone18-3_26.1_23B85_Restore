@interface TTSVoiceAsset
- (BOOL)isEligibleForVOTWithVoiceInfo:(id)a3 language:(id)a4;
@end

@implementation TTSVoiceAsset

- (BOOL)isEligibleForVOTWithVoiceInfo:(id)a3 language:(id)a4
{
  v5 = a3;
  v6 = AXLanguageCanonicalFormToGeneralLanguage();
  v7 = [(TTSVoiceAsset *)self languages];
  v8 = [v7 firstObject];
  v9 = AXLanguageCanonicalFormToGeneralLanguage();

  v10 = AXCRemapLanguageCodeToFallbackIfNeccessary();
  if ([(TTSVoiceAsset *)self isInstalled])
  {
    v11 = [(TTSVoiceAsset *)self name];
    v12 = [v5 name];
    if ([v11 isEqualToString:v12])
    {
      v13 = [v6 isEqualToString:v10];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
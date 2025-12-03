@interface TTSVoiceAsset
- (BOOL)isEligibleForVOTWithVoiceInfo:(id)info language:(id)language;
@end

@implementation TTSVoiceAsset

- (BOOL)isEligibleForVOTWithVoiceInfo:(id)info language:(id)language
{
  infoCopy = info;
  v6 = AXLanguageCanonicalFormToGeneralLanguage();
  languages = [(TTSVoiceAsset *)self languages];
  firstObject = [languages firstObject];
  v9 = AXLanguageCanonicalFormToGeneralLanguage();

  v10 = AXCRemapLanguageCodeToFallbackIfNeccessary();
  if ([(TTSVoiceAsset *)self isInstalled])
  {
    name = [(TTSVoiceAsset *)self name];
    name2 = [infoCopy name];
    if ([name isEqualToString:name2])
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
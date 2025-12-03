@interface AFVoiceInfo(SiriTTSServiceAdditions)
- (uint64_t)isMatchForSiriVoice:()SiriTTSServiceAdditions;
@end

@implementation AFVoiceInfo(SiriTTSServiceAdditions)

- (uint64_t)isMatchForSiriVoice:()SiriTTSServiceAdditions
{
  v4 = a3;
  type = [v4 type];
  isCustom = [self isCustom];
  footprint = [self footprint];
  aFVoiceFootprint = [v4 AFVoiceFootprint];
  languageCode = [self languageCode];
  language = [v4 language];
  if ([languageCode isEqualToString:language])
  {
    if (isCustom)
    {
      v11 = -3;
    }

    else
    {
      v11 = -1;
    }

    name = [self name];
    name2 = [v4 name];
    v19 = name;
    v14 = [name isEqualToString:name2];
    v15 = 0;
    if (v14 && (v11 + type) <= 1 && footprint == aFVoiceFootprint)
    {
      contentVersion = [self contentVersion];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "version")}];
      v15 = [contentVersion isEqualToNumber:v17];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end
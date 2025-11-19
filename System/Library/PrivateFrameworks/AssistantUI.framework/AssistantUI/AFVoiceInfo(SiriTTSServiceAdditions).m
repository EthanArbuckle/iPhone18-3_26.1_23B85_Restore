@interface AFVoiceInfo(SiriTTSServiceAdditions)
- (uint64_t)isMatchForSiriVoice:()SiriTTSServiceAdditions;
@end

@implementation AFVoiceInfo(SiriTTSServiceAdditions)

- (uint64_t)isMatchForSiriVoice:()SiriTTSServiceAdditions
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [a1 isCustom];
  v7 = [a1 footprint];
  v8 = [v4 AFVoiceFootprint];
  v9 = [a1 languageCode];
  v10 = [v4 language];
  if ([v9 isEqualToString:v10])
  {
    if (v6)
    {
      v11 = -3;
    }

    else
    {
      v11 = -1;
    }

    v12 = [a1 name];
    v13 = [v4 name];
    v19 = v12;
    v14 = [v12 isEqualToString:v13];
    v15 = 0;
    if (v14 && (v11 + v5) <= 1 && v7 == v8)
    {
      v16 = [a1 contentVersion];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "version")}];
      v15 = [v16 isEqualToNumber:v17];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end
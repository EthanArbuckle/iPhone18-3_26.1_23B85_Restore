@interface SAVoice(SiriTTSServiceAddition)
- (void)initWithSiriVoice:()SiriTTSServiceAddition;
@end

@implementation SAVoice(SiriTTSServiceAddition)

- (void)initWithSiriVoice:()SiriTTSServiceAddition
{
  v4 = a3;
  v5 = [self init];
  language = [v4 language];
  [v5 setLanguageString:language];

  name = [v4 name];
  [v5 setName:name];

  sAVoiceGender = [v4 SAVoiceGender];
  [v5 setGender:sAVoiceGender];

  sAVoiceQuality = [v4 SAVoiceQuality];
  [v5 setQuality:sAVoiceQuality];

  sAVoiceType = [v4 SAVoiceType];
  [v5 setVoiceType:sAVoiceType];

  version = [v4 version];
  [v5 setVoiceContentVersion:version];
  return v5;
}

@end
@interface SAVoice
- (SAVoice)initWithSiriVoice:(id)voice;
@end

@implementation SAVoice

- (SAVoice)initWithSiriVoice:(id)voice
{
  voiceCopy = voice;
  v5 = [(SAVoice *)self init];
  language = [voiceCopy language];
  [(SAVoice *)v5 setLanguageString:language];

  name = [voiceCopy name];
  [(SAVoice *)v5 setName:name];

  sAVoiceGender = [voiceCopy SAVoiceGender];
  [(SAVoice *)v5 setGender:sAVoiceGender];

  sAVoiceQuality = [voiceCopy SAVoiceQuality];
  [(SAVoice *)v5 setQuality:sAVoiceQuality];

  sAVoiceType = [voiceCopy SAVoiceType];
  [(SAVoice *)v5 setVoiceType:sAVoiceType];

  version = [voiceCopy version];
  [(SAVoice *)v5 setVoiceContentVersion:version];
  return v5;
}

@end
@interface SAVoice
- (SAVoice)initWithSiriVoice:(id)a3;
@end

@implementation SAVoice

- (SAVoice)initWithSiriVoice:(id)a3
{
  v4 = a3;
  v5 = [(SAVoice *)self init];
  v6 = [v4 language];
  [(SAVoice *)v5 setLanguageString:v6];

  v7 = [v4 name];
  [(SAVoice *)v5 setName:v7];

  v8 = [v4 SAVoiceGender];
  [(SAVoice *)v5 setGender:v8];

  v9 = [v4 SAVoiceQuality];
  [(SAVoice *)v5 setQuality:v9];

  v10 = [v4 SAVoiceType];
  [(SAVoice *)v5 setVoiceType:v10];

  v11 = [v4 version];
  [(SAVoice *)v5 setVoiceContentVersion:v11];
  return v5;
}

@end
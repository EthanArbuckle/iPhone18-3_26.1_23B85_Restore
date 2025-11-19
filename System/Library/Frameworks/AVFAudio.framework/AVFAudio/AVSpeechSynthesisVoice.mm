@interface AVSpeechSynthesisVoice
+ (void)initialize;
- (AVSpeechSynthesisVoice)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVSpeechSynthesisVoice

- (AVSpeechSynthesisVoice)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AVSpeechSynthesisVoice;
  v5 = [(AVSpeechSynthesisVoice *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    [(AVSpeechSynthesisVoice *)v5 setLanguage:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(AVSpeechSynthesisVoice *)v5 setIdentifier:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(AVSpeechSynthesisVoice *)v5 setName:v8];

    -[AVSpeechSynthesisVoice setQuality:](v5, "setQuality:", [v4 decodeIntegerForKey:@"quality"]);
    -[AVSpeechSynthesisVoice setGender:](v5, "setGender:", [v4 decodeIntegerForKey:@"gender"]);
    -[AVSpeechSynthesisVoice setVoiceTraits:](v5, "setVoiceTraits:", [v4 decodeIntegerForKey:@"voiceTraits"]);
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(AVSpeechSynthesisVoice *)self language];
  [v7 encodeObject:v4 forKey:@"language"];

  v5 = [(AVSpeechSynthesisVoice *)self identifier];
  [v7 encodeObject:v5 forKey:@"identifier"];

  v6 = [(AVSpeechSynthesisVoice *)self name];
  [v7 encodeObject:v6 forKey:@"name"];

  [v7 encodeInteger:-[AVSpeechSynthesisVoice quality](self forKey:{"quality"), @"quality"}];
  [v7 encodeInteger:-[AVSpeechSynthesisVoice gender](self forKey:{"gender"), @"gender"}];
  [v7 encodeInteger:-[AVSpeechSynthesisVoice voiceTraits](self forKey:{"voiceTraits"), @"voiceTraits"}];
}

+ (void)initialize
{
  if (_AVLoadSpeechSynthesisImplementation(void)::onceToken != -1)
  {
    dispatch_once(&_AVLoadSpeechSynthesisImplementation(void)::onceToken, &__block_literal_global_5035);
  }
}

@end
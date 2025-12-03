@interface AVSpeechSynthesisVoice
+ (void)initialize;
- (AVSpeechSynthesisVoice)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVSpeechSynthesisVoice

- (AVSpeechSynthesisVoice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AVSpeechSynthesisVoice;
  v5 = [(AVSpeechSynthesisVoice *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    [(AVSpeechSynthesisVoice *)v5 setLanguage:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(AVSpeechSynthesisVoice *)v5 setIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(AVSpeechSynthesisVoice *)v5 setName:v8];

    -[AVSpeechSynthesisVoice setQuality:](v5, "setQuality:", [coderCopy decodeIntegerForKey:@"quality"]);
    -[AVSpeechSynthesisVoice setGender:](v5, "setGender:", [coderCopy decodeIntegerForKey:@"gender"]);
    -[AVSpeechSynthesisVoice setVoiceTraits:](v5, "setVoiceTraits:", [coderCopy decodeIntegerForKey:@"voiceTraits"]);
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  language = [(AVSpeechSynthesisVoice *)self language];
  [coderCopy encodeObject:language forKey:@"language"];

  identifier = [(AVSpeechSynthesisVoice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  name = [(AVSpeechSynthesisVoice *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInteger:-[AVSpeechSynthesisVoice quality](self forKey:{"quality"), @"quality"}];
  [coderCopy encodeInteger:-[AVSpeechSynthesisVoice gender](self forKey:{"gender"), @"gender"}];
  [coderCopy encodeInteger:-[AVSpeechSynthesisVoice voiceTraits](self forKey:{"voiceTraits"), @"voiceTraits"}];
}

+ (void)initialize
{
  if (_AVLoadSpeechSynthesisImplementation(void)::onceToken != -1)
  {
    dispatch_once(&_AVLoadSpeechSynthesisImplementation(void)::onceToken, &__block_literal_global_5035);
  }
}

@end
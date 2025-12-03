@interface AVSpeechSynthesisProviderVoice
+ (void)initialize;
- (AVSpeechSynthesisProviderVoice)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVSpeechSynthesisProviderVoice

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(AVSpeechSynthesisProviderVoice *)self name];
  [v4 setName:name];

  identifier = [(AVSpeechSynthesisProviderVoice *)self identifier];
  [v4 setIdentifier:identifier];

  supportedLanguages = [(AVSpeechSynthesisProviderVoice *)self supportedLanguages];
  [v4 setSupportedLanguages:supportedLanguages];

  [v4 setVoiceSize:{-[AVSpeechSynthesisProviderVoice voiceSize](self, "voiceSize")}];
  version = [(AVSpeechSynthesisProviderVoice *)self version];
  [v4 setVersion:version];

  [v4 setGender:{-[AVSpeechSynthesisProviderVoice gender](self, "gender")}];
  [v4 setAge:{-[AVSpeechSynthesisProviderVoice age](self, "age")}];
  return v4;
}

- (AVSpeechSynthesisProviderVoice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = AVSpeechSynthesisProviderVoice;
  v5 = [(AVSpeechSynthesisProviderVoice *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(AVSpeechSynthesisProviderVoice *)v5 setName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(AVSpeechSynthesisProviderVoice *)v5 setIdentifier:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"primaryLanguages"];
    [(AVSpeechSynthesisProviderVoice *)v5 setSupportedLanguages:v11];

    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:@"supportedLanguages"];
    [(AVSpeechSynthesisProviderVoice *)v5 setSupportedLanguages:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voiceSize"];
    -[AVSpeechSynthesisProviderVoice setVoiceSize:](v5, "setVoiceSize:", [v13 longLongValue]);

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    [(AVSpeechSynthesisProviderVoice *)v5 setVersion:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gender"];
    -[AVSpeechSynthesisProviderVoice setGender:](v5, "setGender:", [v15 integerValue]);

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"age"];
    -[AVSpeechSynthesisProviderVoice setAge:](v5, "setAge:", [v16 integerValue]);

    v17 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(AVSpeechSynthesisProviderVoice *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  identifier = [(AVSpeechSynthesisProviderVoice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  primaryLanguages = [(AVSpeechSynthesisProviderVoice *)self primaryLanguages];
  [coderCopy encodeObject:primaryLanguages forKey:@"primaryLanguages"];

  supportedLanguages = [(AVSpeechSynthesisProviderVoice *)self supportedLanguages];
  [coderCopy encodeObject:supportedLanguages forKey:@"supportedLanguages"];

  version = [(AVSpeechSynthesisProviderVoice *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  [coderCopy encodeInt64:-[AVSpeechSynthesisProviderVoice voiceSize](self forKey:{"voiceSize"), @"voiceSize"}];
  [coderCopy encodeInteger:-[AVSpeechSynthesisProviderVoice gender](self forKey:{"gender"), @"gender"}];
  [coderCopy encodeInteger:-[AVSpeechSynthesisProviderVoice age](self forKey:{"age"), @"age"}];
}

+ (void)initialize
{
  if (_AVLoadSpeechSynthesisImplementation(void)::onceToken != -1)
  {
    dispatch_once(&_AVLoadSpeechSynthesisImplementation(void)::onceToken, &__block_literal_global_5035);
  }
}

@end
@interface AVSpeechSynthesisProviderVoice
+ (void)initialize;
- (AVSpeechSynthesisProviderVoice)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVSpeechSynthesisProviderVoice

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(AVSpeechSynthesisProviderVoice *)self name];
  [v4 setName:v5];

  v6 = [(AVSpeechSynthesisProviderVoice *)self identifier];
  [v4 setIdentifier:v6];

  v7 = [(AVSpeechSynthesisProviderVoice *)self supportedLanguages];
  [v4 setSupportedLanguages:v7];

  [v4 setVoiceSize:{-[AVSpeechSynthesisProviderVoice voiceSize](self, "voiceSize")}];
  v8 = [(AVSpeechSynthesisProviderVoice *)self version];
  [v4 setVersion:v8];

  [v4 setGender:{-[AVSpeechSynthesisProviderVoice gender](self, "gender")}];
  [v4 setAge:{-[AVSpeechSynthesisProviderVoice age](self, "age")}];
  return v4;
}

- (AVSpeechSynthesisProviderVoice)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AVSpeechSynthesisProviderVoice;
  v5 = [(AVSpeechSynthesisProviderVoice *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(AVSpeechSynthesisProviderVoice *)v5 setName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(AVSpeechSynthesisProviderVoice *)v5 setIdentifier:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"primaryLanguages"];
    [(AVSpeechSynthesisProviderVoice *)v5 setSupportedLanguages:v11];

    v12 = [v4 decodeObjectOfClasses:v10 forKey:@"supportedLanguages"];
    [(AVSpeechSynthesisProviderVoice *)v5 setSupportedLanguages:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voiceSize"];
    -[AVSpeechSynthesisProviderVoice setVoiceSize:](v5, "setVoiceSize:", [v13 longLongValue]);

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    [(AVSpeechSynthesisProviderVoice *)v5 setVersion:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gender"];
    -[AVSpeechSynthesisProviderVoice setGender:](v5, "setGender:", [v15 integerValue]);

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"age"];
    -[AVSpeechSynthesisProviderVoice setAge:](v5, "setAge:", [v16 integerValue]);

    v17 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(AVSpeechSynthesisProviderVoice *)self name];
  [v9 encodeObject:v4 forKey:@"name"];

  v5 = [(AVSpeechSynthesisProviderVoice *)self identifier];
  [v9 encodeObject:v5 forKey:@"identifier"];

  v6 = [(AVSpeechSynthesisProviderVoice *)self primaryLanguages];
  [v9 encodeObject:v6 forKey:@"primaryLanguages"];

  v7 = [(AVSpeechSynthesisProviderVoice *)self supportedLanguages];
  [v9 encodeObject:v7 forKey:@"supportedLanguages"];

  v8 = [(AVSpeechSynthesisProviderVoice *)self version];
  [v9 encodeObject:v8 forKey:@"version"];

  [v9 encodeInt64:-[AVSpeechSynthesisProviderVoice voiceSize](self forKey:{"voiceSize"), @"voiceSize"}];
  [v9 encodeInteger:-[AVSpeechSynthesisProviderVoice gender](self forKey:{"gender"), @"gender"}];
  [v9 encodeInteger:-[AVSpeechSynthesisProviderVoice age](self forKey:{"age"), @"age"}];
}

+ (void)initialize
{
  if (_AVLoadSpeechSynthesisImplementation(void)::onceToken != -1)
  {
    dispatch_once(&_AVLoadSpeechSynthesisImplementation(void)::onceToken, &__block_literal_global_5035);
  }
}

@end
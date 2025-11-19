@interface SFSpeechLanguageModelConfiguration
- (SFSpeechLanguageModelConfiguration)initWithCoder:(id)a3;
- (SFSpeechLanguageModelConfiguration)initWithLanguageModel:(id)a3 vocabulary:(id)a4 weight:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSpeechLanguageModelConfiguration

- (SFSpeechLanguageModelConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SFSpeechLanguageModelConfiguration;
  v5 = [(SFSpeechLanguageModelConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_languageModel"];
    languageModel = v5->_languageModel;
    v5->_languageModel = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_vocabulary"];
    vocabulary = v5->_vocabulary;
    v5->_vocabulary = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_weight"];
    weight = v5->_weight;
    v5->_weight = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  languageModel = self->_languageModel;
  v5 = a3;
  [v5 encodeObject:languageModel forKey:@"_languageModel"];
  [v5 encodeObject:self->_vocabulary forKey:@"_vocabulary"];
  [v5 encodeObject:self->_weight forKey:@"_weight"];
}

- (SFSpeechLanguageModelConfiguration)initWithLanguageModel:(id)a3 vocabulary:(id)a4 weight:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = SFSpeechLanguageModelConfiguration;
  v11 = [(SFSpeechLanguageModelConfiguration *)&v21 init];
  if (v11)
  {
    v12 = [v8 copy];
    languageModel = v11->_languageModel;
    v11->_languageModel = v12;

    v14 = [v9 copy];
    vocabulary = v11->_vocabulary;
    v11->_vocabulary = v14;

    if (v10)
    {
      [v10 doubleValue];
      if (v16 < 0.0 || ([v10 doubleValue], v17 > 1.0))
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Weight must be in range [0.0, 1.0]"}];
      }
    }

    v18 = [v10 copy];
    weight = v11->_weight;
    v11->_weight = v18;
  }

  return v11;
}

@end
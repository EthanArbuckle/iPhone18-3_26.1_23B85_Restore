@interface SFSpeechLanguageModelConfiguration
- (SFSpeechLanguageModelConfiguration)initWithCoder:(id)coder;
- (SFSpeechLanguageModelConfiguration)initWithLanguageModel:(id)model vocabulary:(id)vocabulary weight:(id)weight;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSpeechLanguageModelConfiguration

- (SFSpeechLanguageModelConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SFSpeechLanguageModelConfiguration;
  v5 = [(SFSpeechLanguageModelConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_languageModel"];
    languageModel = v5->_languageModel;
    v5->_languageModel = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_vocabulary"];
    vocabulary = v5->_vocabulary;
    v5->_vocabulary = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_weight"];
    weight = v5->_weight;
    v5->_weight = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  languageModel = self->_languageModel;
  coderCopy = coder;
  [coderCopy encodeObject:languageModel forKey:@"_languageModel"];
  [coderCopy encodeObject:self->_vocabulary forKey:@"_vocabulary"];
  [coderCopy encodeObject:self->_weight forKey:@"_weight"];
}

- (SFSpeechLanguageModelConfiguration)initWithLanguageModel:(id)model vocabulary:(id)vocabulary weight:(id)weight
{
  modelCopy = model;
  vocabularyCopy = vocabulary;
  weightCopy = weight;
  v21.receiver = self;
  v21.super_class = SFSpeechLanguageModelConfiguration;
  v11 = [(SFSpeechLanguageModelConfiguration *)&v21 init];
  if (v11)
  {
    v12 = [modelCopy copy];
    languageModel = v11->_languageModel;
    v11->_languageModel = v12;

    v14 = [vocabularyCopy copy];
    vocabulary = v11->_vocabulary;
    v11->_vocabulary = v14;

    if (weightCopy)
    {
      [weightCopy doubleValue];
      if (v16 < 0.0 || ([weightCopy doubleValue], v17 > 1.0))
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Weight must be in range [0.0, 1.0]"}];
      }
    }

    v18 = [weightCopy copy];
    weight = v11->_weight;
    v11->_weight = v18;
  }

  return v11;
}

@end
@interface AFPhonemeTranscription
- (AFPhonemeTranscription)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFPhonemeTranscription

- (void)encodeWithCoder:(id)a3
{
  language = self->_language;
  v5 = a3;
  [v5 encodeObject:language forKey:@"_language"];
  [v5 encodeObject:self->_orthography forKey:@"_orthography"];
  [v5 encodeObject:self->_phonemeSuggestions forKey:@"_phonemeSuggestions"];
}

- (AFPhonemeTranscription)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = AFPhonemeTranscription;
  v5 = [(AFPhonemeTranscription *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_orthography"];
    orthography = v5->_orthography;
    v5->_orthography = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_language"];
    language = v5->_language;
    v5->_language = v8;

    v10 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_phonemeSuggestions"];
    phonemeSuggestions = v5->_phonemeSuggestions;
    v5->_phonemeSuggestions = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
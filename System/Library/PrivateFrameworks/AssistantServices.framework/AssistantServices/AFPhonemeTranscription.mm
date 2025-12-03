@interface AFPhonemeTranscription
- (AFPhonemeTranscription)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFPhonemeTranscription

- (void)encodeWithCoder:(id)coder
{
  language = self->_language;
  coderCopy = coder;
  [coderCopy encodeObject:language forKey:@"_language"];
  [coderCopy encodeObject:self->_orthography forKey:@"_orthography"];
  [coderCopy encodeObject:self->_phonemeSuggestions forKey:@"_phonemeSuggestions"];
}

- (AFPhonemeTranscription)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = AFPhonemeTranscription;
  v5 = [(AFPhonemeTranscription *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_orthography"];
    orthography = v5->_orthography;
    v5->_orthography = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_language"];
    language = v5->_language;
    v5->_language = v8;

    v10 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_phonemeSuggestions"];
    phonemeSuggestions = v5->_phonemeSuggestions;
    v5->_phonemeSuggestions = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
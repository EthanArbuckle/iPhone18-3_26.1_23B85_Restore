@interface NLCFROLanguageRecognizer
+ (id)dominantLanguageForString:(id)string;
- (NLCFROLanguageRecognizer)init;
- (id)dominantLanguage;
- (id)languageHypothesesWithMaximum:(unint64_t)maximum;
- (void)dealloc;
- (void)processString:(id)string;
- (void)reset;
@end

@implementation NLCFROLanguageRecognizer

- (NLCFROLanguageRecognizer)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = *MEMORY[0x1E6998248];
  [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v3 = NLTaggerCreate();
  if (v3)
  {
    v4 = v3;
    v10.receiver = self;
    v10.super_class = NLCFROLanguageRecognizer;
    v5 = [(NLLanguageRecognizer *)&v10 init];
    self = v5;
    if (v5)
    {
      v5->_tagger = v4;
      v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
      string = self->_string;
      self->_string = v6;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)dealloc
{
  tagger = self->_tagger;
  if (tagger)
  {
    CFRelease(tagger);
  }

  v4.receiver = self;
  v4.super_class = NLCFROLanguageRecognizer;
  [(NLLanguageRecognizer *)&v4 dealloc];
}

+ (id)dominantLanguageForString:(id)string
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6998248];
  v11[0] = *MEMORY[0x1E6998248];
  v4 = MEMORY[0x1E695DEC8];
  stringCopy = string;
  [v4 arrayWithObjects:v11 count:1];
  v6 = NLTaggerCreate();
  NLTaggerSetString();

  v7 = *v3;
  v8 = NLTaggerCopyTagAtIndex();
  CFRelease(v6);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)processString:(id)string
{
  stringCopy = string;
  if ([(NSMutableString *)self->_string length])
  {
    [(NSMutableString *)self->_string appendString:@" "];
  }

  [(NSMutableString *)self->_string appendString:stringCopy];
}

- (void)reset
{
  string = self->_string;
  v3 = [(NSMutableString *)string length];

  [(NSMutableString *)string replaceCharactersInRange:0 withString:v3, &stru_1F10C6540];
}

- (id)dominantLanguage
{
  tagger = self->_tagger;
  string = self->_string;
  NLTaggerSetString();
  v5 = self->_tagger;
  v6 = *MEMORY[0x1E6998248];
  v7 = NLTaggerCopyTagAtIndex();
  v8 = self->_tagger;
  NLTaggerSetString();

  return v7;
}

- (id)languageHypothesesWithMaximum:(unint64_t)maximum
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (maximum)
  {
    dominantLanguage = [(NLCFROLanguageRecognizer *)self dominantLanguage];
    if (dominantLanguage)
    {
      [dictionary setObject:&unk_1F10D1490 forKey:dominantLanguage];
    }
  }

  return dictionary;
}

@end
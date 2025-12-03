@interface NLLMTokenIDConverter
- (NLLMTokenIDConverter)initWithLanguageModel:(id)model;
- (NLLanguageModel)languageModel;
- (id)stringForTokenIDs:(const unsigned int *)ds length:(unint64_t)length;
- (unsigned)tokenIDForString:(id)string;
- (void)enumerateTokenIDsForString:(id)string range:(_NSRange)range withBlock:(id)block;
@end

@implementation NLLMTokenIDConverter

- (NLLMTokenIDConverter)initWithLanguageModel:(id)model
{
  v15[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  if (modelCopy)
  {
    v14.receiver = self;
    v14.super_class = NLLMTokenIDConverter;
    v5 = [(NLLMTokenIDConverter *)&v14 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_languageModel, modelCopy);
      v7 = [NLTagger alloc];
      v15[0] = @"TokenType";
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v9 = [(NLTagger *)v7 initWithTagSchemes:v8];
      tagger = v6->_tagger;
      v6->_tagger = v9;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (unsigned)tokenIDForString:(id)string
{
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_languageModel);
  lexicon = [WeakRetained lexicon];
  v7 = [lexicon entryForString:stringCopy];

  if (v7)
  {
    tokenID = [v7 tokenID];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_languageModel);
    tokenID = [v9 tokenIDForString:stringCopy];
  }

  return tokenID;
}

- (id)stringForTokenIDs:(const unsigned int *)ds length:(unint64_t)length
{
  for (i = [MEMORY[0x1E696AD60] string];
  {
    v8 = *ds++;
    if (v8 >= 6)
    {
      v9 = [(NLLMTokenIDConverter *)self stringForTokenID:?];
      if (v9)
      {
        v10 = v9;
        if ([i length])
        {
          alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          [v10 rangeOfCharacterFromSet:alphanumericCharacterSet];
          v13 = v12;

          if (v13)
          {
            [i appendString:@" "];
          }
        }

        [i appendString:v10];
      }
    }
  }

  return i;
}

- (void)enumerateTokenIDsForString:(id)string range:(_NSRange)range withBlock:(id)block
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  blockCopy = block;
  [(NLTagger *)self->_tagger setString:stringCopy];
  WeakRetained = objc_loadWeakRetained(&self->_languageModel);
  language = [WeakRetained language];

  if (language)
  {
    tagger = self->_tagger;
    v14 = objc_loadWeakRetained(&self->_languageModel);
    language2 = [v14 language];
    -[NLTagger setLanguage:range:](tagger, "setLanguage:range:", language2, 0, [stringCopy length]);
  }

  v16 = self->_tagger;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__NLLMTokenIDConverter_enumerateTokenIDsForString_range_withBlock___block_invoke;
  v19[3] = &unk_1E7629860;
  v19[4] = self;
  v20 = stringCopy;
  v21 = blockCopy;
  v17 = blockCopy;
  v18 = stringCopy;
  [(NLTagger *)v16 enumerateTagsInRange:location unit:length scheme:0 options:@"TokenType" usingBlock:36, v19];
}

uint64_t __67__NLLMTokenIDConverter_enumerateTokenIDsForString_range_withBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) substringWithRange:?];
  [v7 tokenIDForString:v8];

  result = (*(*(a1 + 48) + 16))();
  *a5 = 0;
  return result;
}

- (NLLanguageModel)languageModel
{
  WeakRetained = objc_loadWeakRetained(&self->_languageModel);

  return WeakRetained;
}

@end
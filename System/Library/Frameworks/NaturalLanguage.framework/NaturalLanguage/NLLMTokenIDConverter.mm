@interface NLLMTokenIDConverter
- (NLLMTokenIDConverter)initWithLanguageModel:(id)a3;
- (NLLanguageModel)languageModel;
- (id)stringForTokenIDs:(const unsigned int *)a3 length:(unint64_t)a4;
- (unsigned)tokenIDForString:(id)a3;
- (void)enumerateTokenIDsForString:(id)a3 range:(_NSRange)a4 withBlock:(id)a5;
@end

@implementation NLLMTokenIDConverter

- (NLLMTokenIDConverter)initWithLanguageModel:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v14.receiver = self;
    v14.super_class = NLLMTokenIDConverter;
    v5 = [(NLLMTokenIDConverter *)&v14 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_languageModel, v4);
      v7 = [NLTagger alloc];
      v15[0] = @"TokenType";
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v9 = [(NLTagger *)v7 initWithTagSchemes:v8];
      tagger = v6->_tagger;
      v6->_tagger = v9;
    }

    self = v6;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unsigned)tokenIDForString:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_languageModel);
  v6 = [WeakRetained lexicon];
  v7 = [v6 entryForString:v4];

  if (v7)
  {
    v8 = [v7 tokenID];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_languageModel);
    v8 = [v9 tokenIDForString:v4];
  }

  return v8;
}

- (id)stringForTokenIDs:(const unsigned int *)a3 length:(unint64_t)a4
{
  for (i = [MEMORY[0x1E696AD60] string];
  {
    v8 = *a3++;
    if (v8 >= 6)
    {
      v9 = [(NLLMTokenIDConverter *)self stringForTokenID:?];
      if (v9)
      {
        v10 = v9;
        if ([i length])
        {
          v11 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          [v10 rangeOfCharacterFromSet:v11];
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

- (void)enumerateTokenIDsForString:(id)a3 range:(_NSRange)a4 withBlock:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  [(NLTagger *)self->_tagger setString:v9];
  WeakRetained = objc_loadWeakRetained(&self->_languageModel);
  v12 = [WeakRetained language];

  if (v12)
  {
    tagger = self->_tagger;
    v14 = objc_loadWeakRetained(&self->_languageModel);
    v15 = [v14 language];
    -[NLTagger setLanguage:range:](tagger, "setLanguage:range:", v15, 0, [v9 length]);
  }

  v16 = self->_tagger;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__NLLMTokenIDConverter_enumerateTokenIDsForString_range_withBlock___block_invoke;
  v19[3] = &unk_1E7629860;
  v19[4] = self;
  v20 = v9;
  v21 = v10;
  v17 = v10;
  v18 = v9;
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
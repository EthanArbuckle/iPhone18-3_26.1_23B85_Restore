@interface NLLexicon
+ (NLLexicon)lexiconWithOptions:(id)a3 error:(id *)a4;
- (BOOL)getProbabilityForString:(id)a3 probability:(double *)a4;
- (BOOL)getProbabilityForTokenID:(unsigned int)a3 probability:(double *)a4;
- (NLLexicon)initWithLocalization:(id)a3;
- (NLLexicon)initWithLocalization:(id)a3 error:(id *)a4;
- (id)description;
- (id)entryForString:(id)a3;
- (id)entryForTokenID:(unsigned int)a3;
- (id)languages;
- (void)_enumerateEntriesForString:(id)a3 usingBlock:(id)a4;
- (void)dealloc;
- (void)enumerateCompletionsForPrefix:(id)a3 usingBlock:(id)a4;
@end

@implementation NLLexicon

- (NLLexicon)initWithLocalization:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v22 = 0;
  v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v6];
  v8 = objc_alloc(MEMORY[0x1E695DF20]);
  v9 = [v8 initWithObjectsAndKeys:{MEMORY[0x1E695E118], *MEMORY[0x1E69ABFD8], v7, *MEMORY[0x1E69ABFE8], 0}];
  v10 = LXLexiconCreate();
  if (v10)
  {
    v11 = v10;
    v21.receiver = self;
    v21.super_class = NLLexicon;
    v12 = [(NLLexicon *)&v21 init];
    if (v12)
    {
      v13 = [v6 copy];
      localization = v12->_localization;
      v12->_localization = v13;

      v12->_lexicon = v11;
    }

    self = v12;
    v15 = self;
  }

  else
  {
    if (a4)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load lexicon for %@", v6];
      v17 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24[0] = v16;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      *a4 = [v17 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:10 userInfo:v18];
    }

    v15 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (NLLexicon)initWithLocalization:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(NLLexicon *)self initWithLocalization:v4 error:&v9];
  v6 = v9;
  v7 = v6;
  if (v6)
  {
    NSLog(&cfstr_LexiconCreatio.isa, v4, v6);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = NLLexicon;
  v4 = [(NLLexicon *)&v7 description];
  v5 = objc_msgSend(v3, "stringWithFormat:", @"%@(%@"), v4, self->_localization;

  [v5 appendString:@""]);

  return v5;
}

- (void)dealloc
{
  lexicon = self->_lexicon;
  if (lexicon)
  {
    CFRelease(lexicon);
  }

  v4.receiver = self;
  v4.super_class = NLLexicon;
  [(NLLexicon *)&v4 dealloc];
}

- (void)_enumerateEntriesForString:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NLLexiconCursor alloc] initWithLexicon:self string:v7];

  [(NLLexiconCursor *)v8 _enumerateEntriesUsingBlock:v6];
}

- (id)entryForTokenID:(unsigned int)a3
{
  lexicon = self->_lexicon;
  v4 = LXLexiconCopyEntryForTokenID();
  if (v4)
  {
    v5 = v4;
    v6 = LXEntryCopyString();
    TokenID = LXEntryGetTokenID();
    MetaFlags = LXEntryGetMetaFlags();
    LXEntryGetProbability();
    v9 = [NLLexiconEntry entryWithString:v6 tokenID:TokenID flags:MetaFlags probability:?];
    if (v6)
    {
      CFRelease(v6);
    }

    CFRelease(v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)entryForString:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__NLLexicon_entryForString___block_invoke;
  v8[3] = &unk_1E7629148;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(NLLexicon *)self _enumerateEntriesForString:v5 usingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __28__NLLexicon_entryForString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, double a6)
{
  v14 = a2;
  if ([*(a1 + 32) isEqualToString:?])
  {
    v11 = [NLLexiconEntry entryWithString:v14 tokenID:a3 flags:a4 probability:a6];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a5 = 1;
  }
}

- (BOOL)getProbabilityForString:(id)a3 probability:(double *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0xC03E000000000000;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__NLLexicon_getProbabilityForString_probability___block_invoke;
  v10[3] = &unk_1E7629170;
  v7 = v6;
  v11 = v7;
  v12 = &v14;
  v13 = &v18;
  [(NLLexicon *)self _enumerateEntriesForString:v7 usingBlock:v10];
  v8 = *(v19 + 24);
  if (a4 && *(v19 + 24))
  {
    *a4 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __49__NLLexicon_getProbabilityForString_probability___block_invoke(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  result = [*(a1 + 32) isEqualToString:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a6 = 1;
  }

  return result;
}

- (BOOL)getProbabilityForTokenID:(unsigned int)a3 probability:(double *)a4
{
  lexicon = self->_lexicon;
  v6 = LXLexiconCopyEntryForTokenID();
  if (v6)
  {
    LXEntryGetProbability();
    v8 = v7;
    CFRelease(v6);
    if (a4)
    {
      *a4 = v8;
    }
  }

  return v6 != 0;
}

- (void)enumerateCompletionsForPrefix:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NLLexiconCursor alloc] initWithLexicon:self string:v7];

  [(NLLexiconCursor *)v8 enumerateCompletionsUsingBlock:v6];
}

+ (NLLexicon)lexiconWithOptions:(id)a3 error:(id *)a4
{
  v5 = localizationForOptions(a3);
  v6 = [[NLLexicon alloc] initWithLocalization:v5 error:a4];

  return v6;
}

- (id)languages
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(NLLexicon *)self language];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end
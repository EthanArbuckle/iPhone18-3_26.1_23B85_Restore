@interface NLLMLanguageModelSession
- (BOOL)addTokenForString:(id)string tokenID:(unsigned int *)d;
- (BOOL)getFirstDynamicTokenID:(unsigned int *)d lastDynamicTokenID:(unsigned int *)iD;
- (BOOL)shouldAdaptToTokenIDs:(const unsigned int *)ds length:(unint64_t)length;
- (NLLMLanguageModelSession)initWithLanguageModel:(id)model options:(id)options;
- (float)usageCountForTokenID:(unsigned int)d;
- (id)conditionalProbabilityForString:(id)string context:(id)context;
- (id)conditionalProbabilityForToken:(id)token context:(id)context;
- (id)conditionalProbabilityForTokenID:(unsigned int)d contextTokenIDs:(const unsigned int *)ds length:(unint64_t)length;
- (id)description;
- (int64_t)blocklistStatusForString:(id)string matchType:(int64_t)type;
- (int64_t)blocklistStatusForTokenIDs:(const unsigned int *)ds length:(unint64_t)length matchType:(int64_t)type;
- (void)adaptToToken:(id)token context:(id)context;
- (void)adaptToTokenID:(unsigned int)d contextTokenIDs:(const unsigned int *)ds length:(unint64_t)length;
- (void)applyExponentialDecay;
- (void)dealloc;
- (void)enumeratePredictionsForContext:(id)context maximumPredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block;
- (void)enumeratePredictionsForContextTokenIDs:(const unsigned int *)ds length:(unint64_t)length maximumPredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block;
- (void)flushDynamicData;
- (void)pruneToSize:(unint64_t)size;
- (void)recordWithDifferentialPrivacy:(id)privacy;
- (void)reset;
- (void)unadaptToToken:(id)token context:(id)context;
- (void)unadaptToTokenID:(unsigned int)d contextTokenIDs:(const unsigned int *)ds length:(unint64_t)length;
@end

@implementation NLLMLanguageModelSession

- (NLLMLanguageModelSession)initWithLanguageModel:(id)model options:(id)options
{
  modelCopy = model;
  optionsCopy = options;
  v8 = objc_alloc(MEMORY[0x1E695DF58]);
  localization = [modelCopy localization];
  v10 = [v8 initWithLocaleIdentifier:localization];

  v11 = objc_alloc(MEMORY[0x1E695DF90]);
  v12 = [v11 initWithObjectsAndKeys:{v10, *MEMORY[0x1E69ABF90], 0}];
  v13 = [optionsCopy objectForKey:@"AppContext"];
  v14 = BOOLForKey(optionsCopy, @"AdaptationEnabled", 1);
  v15 = BOOLForKey(optionsCopy, @"IsSiriModel", 0);
  if (v13)
  {
    [v12 setObject:v13 forKey:*MEMORY[0x1E69ABF60]];
  }

  if ((v14 & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:0];
    [v12 setObject:v16 forKey:*MEMORY[0x1E69ABF50]];
  }

  if (v15)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v12 setObject:v17 forKey:*MEMORY[0x1E69ABF88]];
  }

  v22.receiver = self;
  v22.super_class = NLLMLanguageModelSession;
  v18 = [(NLLanguageModelSession *)&v22 initWithLanguageModel:modelCopy options:optionsCopy];
  if (v18)
  {
    v18->_model = LMLanguageModelCreate();
    v19 = [[NLTokenizer alloc] initWithUnit:0];
    tokenizer = v18->_tokenizer;
    v18->_tokenizer = v19;
  }

  return v18;
}

- (void)dealloc
{
  if (self->_model)
  {
    LMLanguageModelRelease();
  }

  v3.receiver = self;
  v3.super_class = NLLMLanguageModelSession;
  [(NLLMLanguageModelSession *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v9.receiver = self;
  v9.super_class = NLLMLanguageModelSession;
  v4 = [(NLLMLanguageModelSession *)&v9 description];
  languageModel = [(NLLanguageModelSession *)self languageModel];
  localization = [languageModel localization];
  v7 = objc_msgSend(v3, "stringWithFormat:", @"%@(%@"), v4, localization;

  if (self->_model)
  {
    [v7 appendFormat:@":%p", self->_model];
  }

  [v7 appendString:@""]);

  return v7;
}

- (id)conditionalProbabilityForToken:(id)token context:(id)context
{
  contextCopy = context;
  tokenCopy = token;
  languageModel = [(NLLanguageModelSession *)self languageModel];
  lexicon = [languageModel lexicon];

  v10 = [lexicon entryForString:tokenCopy];

  v11 = entrySequenceForStringWithOptionalBOS(contextCopy, lexicon, self->_tokenizer, 1);

  v12 = tokensForEntrySequence(v11);
  v13 = v12;
  if (v11)
  {
    v14 = self->_model == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || v10 == 0 || v12 == 0)
  {
    initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];
    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    initWithInvalidProbability = -[NLLMLanguageModelSession conditionalProbabilityForTokenID:contextTokenIDs:length:](self, "conditionalProbabilityForTokenID:contextTokenIDs:length:", [v10 tokenID], v12, objc_msgSend(v11, "count"));
  }

  free(v13);
LABEL_14:

  return initWithInvalidProbability;
}

- (id)conditionalProbabilityForString:(id)string context:(id)context
{
  stringCopy = string;
  contextCopy = context;
  languageModel = [(NLLanguageModelSession *)self languageModel];
  lexicon = [languageModel lexicon];

  v10 = entrySequenceForStringWithOptionalBOS(contextCopy, lexicon, self->_tokenizer, 1);
  v11 = entrySequenceForStringWithOptionalBOS(stringCopy, lexicon, self->_tokenizer, 0);
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = 0x1E7628000uLL;
  if (v13 || ![v11 count])
  {
    v17 = 0;
    v15 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  v15 = [v10 arrayByAddingObjectsFromArray:v12];
  v16 = tokensForEntrySequence(v15);
  v17 = v16;
  v18 = v16 != 0;
  if (self->_model)
  {
    v19 = v16 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
LABEL_16:
    initWithInvalidProbability = [objc_alloc(*(v14 + 2280)) initWithInvalidProbability];
    if (!v18)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v30 = v15;
  v31 = stringCopy;
  v20 = [v10 count];
  v21 = [v12 count];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = 0.0;
    while (1)
    {
      v25 = [(NLLMLanguageModelSession *)self conditionalProbabilityForTokenID:v17[v20 + v23] contextTokenIDs:v17 length:v20 + v23];
      if (![v25 isValid])
      {
        break;
      }

      [v25 log10Probability];
      v24 = v24 + v26;

      if (++v23 >= v22)
      {
        goto LABEL_22;
      }
    }

    v18 = 1;
    stringCopy = v31;
    v15 = v30;
    v14 = 0x1E7628000;
    goto LABEL_16;
  }

  v24 = 0.0;
LABEL_22:
  v14 = 0x1E7628000uLL;
  v29 = [[NLProbabilityInfo alloc] initWithLog10Probability:0 flags:v24];
  v15 = v30;
  if (!v29)
  {
    v18 = 1;
    stringCopy = v31;
    goto LABEL_16;
  }

  initWithInvalidProbability = v29;
  stringCopy = v31;
LABEL_17:
  free(v17);
LABEL_18:

  return initWithInvalidProbability;
}

- (void)enumeratePredictionsForContext:(id)context maximumPredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block
{
  blockCopy = block;
  contextCopy = context;
  languageModel = [(NLLanguageModelSession *)self languageModel];
  lexicon = [languageModel lexicon];

  v13 = entrySequenceForStringWithOptionalBOS(contextCopy, lexicon, self->_tokenizer, 1);

  v14 = tokensForEntrySequence(v13);
  -[NLLMLanguageModelSession enumeratePredictionsForContextTokenIDs:length:maximumPredictions:maximumTokensPerPrediction:withBlock:](self, "enumeratePredictionsForContextTokenIDs:length:maximumPredictions:maximumTokensPerPrediction:withBlock:", v14, [v13 count], predictions, prediction, blockCopy);

  if (v14)
  {
    free(v14);
  }
}

- (int64_t)blocklistStatusForString:(id)string matchType:(int64_t)type
{
  stringCopy = string;
  languageModel = [(NLLanguageModelSession *)self languageModel];
  lexicon = [languageModel lexicon];

  v9 = entrySequenceForStringWithOptionalBOS(stringCopy, lexicon, self->_tokenizer, 0);

  v10 = tokensForEntrySequence(v9);
  v11 = -[NLLMLanguageModelSession blocklistStatusForTokenIDs:length:matchType:](self, "blocklistStatusForTokenIDs:length:matchType:", v10, [v9 count], type);
  if (v10)
  {
    free(v10);
  }

  return v11;
}

- (void)adaptToToken:(id)token context:(id)context
{
  contextCopy = context;
  tokenCopy = token;
  languageModel = [(NLLanguageModelSession *)self languageModel];
  lexicon = [languageModel lexicon];

  v9 = [lexicon entryForString:tokenCopy];

  v10 = entrySequenceForStringWithOptionalBOS(contextCopy, lexicon, self->_tokenizer, 1);

  v11 = tokensForEntrySequence(v10);
  if (v9)
  {
    -[NLLMLanguageModelSession adaptToTokenID:contextTokenIDs:length:](self, "adaptToTokenID:contextTokenIDs:length:", [v9 tokenID], v11, objc_msgSend(v10, "count"));
  }

  if (v11)
  {
    free(v11);
  }
}

- (void)unadaptToToken:(id)token context:(id)context
{
  contextCopy = context;
  tokenCopy = token;
  languageModel = [(NLLanguageModelSession *)self languageModel];
  lexicon = [languageModel lexicon];

  v9 = [lexicon entryForString:tokenCopy];

  v10 = entrySequenceForStringWithOptionalBOS(contextCopy, lexicon, self->_tokenizer, 1);

  v11 = tokensForEntrySequence(v10);
  if (v9)
  {
    -[NLLMLanguageModelSession unadaptToTokenID:contextTokenIDs:length:](self, "unadaptToTokenID:contextTokenIDs:length:", [v9 tokenID], v11, objc_msgSend(v10, "count"));
  }

  if (v11)
  {
    free(v11);
  }
}

- (id)conditionalProbabilityForTokenID:(unsigned int)d contextTokenIDs:(const unsigned int *)ds length:(unint64_t)length
{
  if (self->_model)
  {
    LMLanguageModelConditionalProbability();
    initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithLog10Probability:0 flags:v5];
  }

  else
  {
    initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];
  }

  return initWithInvalidProbability;
}

- (void)enumeratePredictionsForContextTokenIDs:(const unsigned int *)ds length:(unint64_t)length maximumPredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block
{
  blockCopy = block;
  languageModel = [(NLLanguageModelSession *)self languageModel];
  lexicon = [languageModel lexicon];

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  model = self->_model;
  v12 = lexicon;
  v13 = blockCopy;
  LMLanguageModelEnumeratePredictionsWithBlock();

  _Block_object_dispose(v14, 8);
}

void __130__NLLMLanguageModelSession_enumeratePredictionsForContextTokenIDs_length_maximumPredictions_maximumTokensPerPrediction_withBlock___block_invoke(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, _BYTE *a5, double a6)
{
  v11 = [MEMORY[0x1E696AD60] string];
  if (a3)
  {
    v12 = a2;
    v13 = a3;
    do
    {
      v14 = *v12++;
      v15 = [*(a1 + 32) entryForTokenID:v14];
      v16 = [v15 string];

      if (v16)
      {
        if ([v11 length])
        {
          [v11 appendString:@" "];
        }

        [v11 appendString:v16];
      }

      --v13;
    }

    while (v13);
  }

  if ([v11 length])
  {
    v17 = [[NLProbabilityInfo alloc] initWithLog10Probability:0 flags:a6];
    v18 = [[NLPredictionInfo alloc] initWithPrediction:v11 tokenIDs:a2 length:a3 contextLength:a4 probabilityInfo:v17];
    (*(*(a1 + 40) + 16))();
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56))
  {
    *a5 = 1;
  }
}

- (int64_t)blocklistStatusForTokenIDs:(const unsigned int *)ds length:(unint64_t)length matchType:(int64_t)type
{
  result = self->_model;
  if (result)
  {
    return LMLanguageModelTokenSequenceIsBlocklisted();
  }

  return result;
}

- (void)adaptToTokenID:(unsigned int)d contextTokenIDs:(const unsigned int *)ds length:(unint64_t)length
{
  if (self->_model)
  {
    MEMORY[0x1EEE18800]();
  }
}

- (void)unadaptToTokenID:(unsigned int)d contextTokenIDs:(const unsigned int *)ds length:(unint64_t)length
{
  if (self->_model)
  {
    MEMORY[0x1EEE187C0]();
  }
}

- (BOOL)addTokenForString:(id)string tokenID:(unsigned int *)d
{
  model = self->_model;
  if (model)
  {
    LOBYTE(model) = MEMORY[0x1EEE18788]();
  }

  return model;
}

- (BOOL)getFirstDynamicTokenID:(unsigned int *)d lastDynamicTokenID:(unsigned int *)iD
{
  model = self->_model;
  if (model)
  {
    LOBYTE(model) = MEMORY[0x1EEE187E0]();
  }

  return model;
}

- (void)recordWithDifferentialPrivacy:(id)privacy
{
  if (self->_model)
  {
    MEMORY[0x1EEE18818]();
  }
}

- (void)reset
{
  model = self->_model;
  if (model)
  {
    MEMORY[0x1EEE18828](model, a2);
  }
}

- (void)flushDynamicData
{
  if (self->_model)
  {
    MEMORY[0x1EEE187D8]();
  }
}

- (void)applyExponentialDecay
{
  model = self->_model;
  if (model)
  {
    MEMORY[0x1EEE18798](model, a2);
  }
}

- (void)pruneToSize:(unint64_t)size
{
  if (self->_model)
  {
    MEMORY[0x1EEE18810]();
  }
}

- (BOOL)shouldAdaptToTokenIDs:(const unsigned int *)ds length:(unint64_t)length
{
  model = self->_model;
  if (model)
  {
    LOBYTE(model) = MEMORY[0x1EEE18838]();
  }

  return model;
}

- (float)usageCountForTokenID:(unsigned int)d
{
  result = 0.0;
  if (d)
  {
    if (self->_model)
    {
      LMLanguageModelGetUsageCount();
    }
  }

  return result;
}

@end
@interface NLNLPLanguageModelSession
- (NLNLPLanguageModelSession)initWithLanguageModel:(id)model options:(id)options;
- (id)conditionalProbabilitiesForStrings:(id)strings context:(id)context;
- (id)conditionalProbabilityForString:(id)string context:(id)context;
- (id)conditionalProbabilityForToken:(id)token context:(id)context;
- (id)description;
- (id)predictionInitialCharacterSet;
- (id)predictionOptionsForMaximumPredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction;
- (id)stateWithOptions:(id)options;
- (void)dealloc;
- (void)enumeratePredictionsForContext:(id)context maximumPredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block;
@end

@implementation NLNLPLanguageModelSession

- (NLNLPLanguageModelSession)initWithLanguageModel:(id)model options:(id)options
{
  optionsCopy = options;
  modelCopy = model;
  granularity = [modelCopy granularity];
  v9 = objc_alloc(MEMORY[0x1E695DF20]);
  localization = [modelCopy localization];
  v11 = MEMORY[0x1E69980C0];
  if (granularity != 1)
  {
    v11 = MEMORY[0x1E69980C8];
  }

  v12 = *v11;
  v13 = MEMORY[0x1E6998120];
  if (granularity != 1)
  {
    v13 = MEMORY[0x1E6998128];
  }

  v14 = [v9 initWithObjectsAndKeys:{localization, *MEMORY[0x1E69980F8], v12, *MEMORY[0x1E69980B8], *v13, *MEMORY[0x1E6998130], 0}];

  v17.receiver = self;
  v17.super_class = NLNLPLanguageModelSession;
  v15 = [(NLLanguageModelSession *)&v17 initWithLanguageModel:modelCopy options:optionsCopy];

  if (v15)
  {
    v15->_model = CoreLMCreate();
  }

  return v15;
}

- (void)dealloc
{
  model = self->_model;
  if (model)
  {
    CFRelease(model);
  }

  v4.receiver = self;
  v4.super_class = NLNLPLanguageModelSession;
  [(NLNLPLanguageModelSession *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v9.receiver = self;
  v9.super_class = NLNLPLanguageModelSession;
  v4 = [(NLNLPLanguageModelSession *)&v9 description];
  languageModel = [(NLLanguageModelSession *)self languageModel];
  localization = [languageModel localization];
  v7 = objc_msgSend(v3, "stringWithFormat:", @"%@(%@"), v4, localization;

  if (self->_model)
  {
    [v7 appendFormat:@":NLP:%p", self->_model];
  }

  [v7 appendString:@""]);

  return v7;
}

- (id)conditionalProbabilityForToken:(id)token context:(id)context
{
  tokenCopy = token;
  contextCopy = context;
  if (self->_model)
  {
    v8 = CoreLMCopyTokenIdsForText();
    model = self->_model;
    v10 = CoreLMCopyTokenIdsForText();
    v11 = v10;
    if (v8)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      initWithInvalidProbability = 0;
      if (!v8)
      {
        if (!v10)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if (CFArrayGetCount(v10) == 1 && (v15 = self->_model, CoreLMUpdateWithContext()))
    {
      v16 = self->_model;
      v17 = CoreLMCopyConditionalProbabilities();
      if (v17)
      {
        v18 = v17;
        if (CFArrayGetCount(v17) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v18, 0), valuePtr = 0.0, CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr)))
        {
          v20 = [NLProbabilityInfo alloc];
          initWithInvalidProbability = [(NLProbabilityInfo *)v20 initWithProbability:0 flags:valuePtr];
        }

        else
        {
          initWithInvalidProbability = 0;
        }

        CFRelease(v18);
      }

      else
      {
        initWithInvalidProbability = 0;
      }

      v21 = self->_model;
      CoreLMReset();
    }

    else
    {
      initWithInvalidProbability = 0;
    }

    CFRelease(v8);
    if (!v11)
    {
LABEL_10:
      if (initWithInvalidProbability)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    CFRelease(v11);
    goto LABEL_10;
  }

LABEL_11:
  initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];
LABEL_12:

  return initWithInvalidProbability;
}

- (id)conditionalProbabilityForString:(id)string context:(id)context
{
  v33[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  contextCopy = context;
  if (self->_model)
  {
    v8 = CoreLMCopyTokenIdsForText();
    model = self->_model;
    v10 = CoreLMCopyTokenIdsForText();
    v11 = [v10 count];
    if (v8)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      initWithInvalidProbability = 0;
      if (!v8)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v14 = v11;
      v15 = self->_model;
      if (CoreLMUpdateWithContext())
      {
        v30 = stringCopy;
        if (v14)
        {
          v17 = 0;
          v18 = 1.0;
          while (1)
          {
            v19 = [v10 objectAtIndex:v17];
            v20 = self->_model;
            v33[0] = v19;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
            v21 = CoreLMCopyConditionalProbabilities();
            if (!v21)
            {
              break;
            }

            v22 = v21;
            if (CFArrayGetCount(v21) == 1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
              valuePtr = 0.0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
              v25 = Value != 0;
              if (Value)
              {
                v18 = v18 * valuePtr;
              }
            }

            else
            {
              v25 = 0;
            }

            CFRelease(v22);
            ++v17;
            if (v25 && v17 < v14)
            {
              v26 = self->_model;
              v32 = v19;
              [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
              LOBYTE(v26) = CoreLMUpdateWithContext();

              if ((v26 & 1) == 0)
              {
                goto LABEL_29;
              }
            }

            else
            {

              if (!v25)
              {
                goto LABEL_29;
              }
            }

            if (v14 == v17)
            {
              goto LABEL_27;
            }
          }

LABEL_29:
          initWithInvalidProbability = 0;
        }

        else
        {
          v18 = 1.0;
LABEL_27:
          initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithProbability:0 flags:v18];
        }

        v27 = self->_model;
        CoreLMReset();
        stringCopy = v30;
        if (v8)
        {
          goto LABEL_31;
        }

LABEL_32:

        if (initWithInvalidProbability)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      initWithInvalidProbability = 0;
    }

LABEL_31:
    CFRelease(v8);
    goto LABEL_32;
  }

LABEL_33:
  initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];
LABEL_34:

  v28 = *MEMORY[0x1E69E9840];

  return initWithInvalidProbability;
}

- (id)conditionalProbabilitiesForStrings:(id)strings context:(id)context
{
  stringsCopy = strings;
  contextCopy = context;
  if (self->_model && (v8 = CoreLMCopyTokenIdsForText()) != 0)
  {
    v9 = v8;
    model = self->_model;
    if (CoreLMUpdateWithContext())
    {
      v11 = [NLNLPLanguageModelNode conditionalProbabilitiesForStrings:stringsCopy modelState:self->_model copyRequired:0];
      v12 = self->_model;
      CoreLMReset();
    }

    else
    {
      v11 = [NLNLPLanguageModelNode conditionalProbabilitiesForStrings:stringsCopy modelState:0 copyRequired:0];
    }

    CFRelease(v9);
  }

  else
  {
    v11 = [NLNLPLanguageModelNode conditionalProbabilitiesForStrings:stringsCopy modelState:0 copyRequired:0];
  }

  return v11;
}

- (id)stateWithOptions:(id)options
{
  optionsCopy = options;
  if (self->_model && (v5 = CoreLMCreateCopy()) != 0)
  {
    v6 = [[NLNLPLanguageModelState alloc] initWithSession:self options:optionsCopy context:&stru_1F10C6540 modelState:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)predictionOptionsForMaximumPredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction
{
  v12[3] = *MEMORY[0x1E69E9840];
  if (predictions <= 0xA)
  {
    predictions = 10;
  }

  v12[0] = *MEMORY[0x1E6998108];
  v5 = *MEMORY[0x1E6998118];
  v11[0] = *MEMORY[0x1E6998110];
  v11[1] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:predictions];
  v12[1] = v6;
  v11[2] = *MEMORY[0x1E6998100];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:prediction];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)predictionInitialCharacterSet
{
  if (predictionInitialCharacterSet_onceToken != -1)
  {
    [NLNLPLanguageModelSession predictionInitialCharacterSet];
  }

  v3 = predictionInitialCharacterSet_initialSet;

  return v3;
}

uint64_t __58__NLNLPLanguageModelSession_predictionInitialCharacterSet__block_invoke()
{
  predictionInitialCharacterSet_initialSet = [MEMORY[0x1E696AB08] letterCharacterSet];

  return MEMORY[0x1EEE66BB8]();
}

- (void)enumeratePredictionsForContext:(id)context maximumPredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block
{
  v46 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  blockCopy = block;
  if (self->_model)
  {
    v11 = CoreLMCopyTokenIdsForText();
    if (v11)
    {
      v12 = v11;
      model = self->_model;
      if (CoreLMUpdateWithContext())
      {
        v35 = v12;
        v37 = contextCopy;
        v34 = [(NLNLPLanguageModelSession *)self predictionOptionsForMaximumPredictions:predictions maximumTokensPerPrediction:prediction];
        v14 = self->_model;
        v15 = CoreLMCopyPredictions();
        v16 = [v15 keysSortedByValueUsingComparator:&__block_literal_global_311];
        selfCopy = self;
        predictionInitialCharacterSet = [(NLNLPLanguageModelSession *)self predictionInitialCharacterSet];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        obj = v16;
        v18 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = *v42;
LABEL_6:
          v22 = 0;
          while (1)
          {
            if (*v42 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v41 + 1) + 8 * v22);
            v24 = [v15 objectForKey:v23];
            [v24 doubleValue];
            v26 = v25;

            v40 = 0;
            [v23 rangeOfCharacterFromSet:predictionInitialCharacterSet options:8];
            if (v27)
            {
              v28 = [[NLProbabilityInfo alloc] initWithProbability:0 flags:v26];
              if ([v23 length] >= 2 && (objc_msgSend(v23, "hasSuffix:", @" ") & 1) != 0)
              {
                v29 = [v23 substringToIndex:{objc_msgSend(v23, "length") - 1}];
              }

              else
              {
                v29 = v23;
              }

              v30 = v29;
              v31 = [[NLPredictionInfo alloc] initWithPrediction:v29 probabilityInfo:v28];
              blockCopy[2](blockCopy, v31, &v40);
              ++v20;
            }

            if ((v40 & 1) != 0 || v20 >= predictions)
            {
              break;
            }

            if (v19 == ++v22)
            {
              v19 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
              if (v19)
              {
                goto LABEL_6;
              }

              break;
            }
          }
        }

        v32 = selfCopy->_model;
        CoreLMReset();

        contextCopy = v37;
        v12 = v35;
      }

      CFRelease(v12);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t __116__NLNLPLanguageModelSession_enumeratePredictionsForContext_maximumPredictions_maximumTokensPerPrediction_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7;

  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

@end
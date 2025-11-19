@interface NLNLPLanguageModelSession
- (NLNLPLanguageModelSession)initWithLanguageModel:(id)a3 options:(id)a4;
- (id)conditionalProbabilitiesForStrings:(id)a3 context:(id)a4;
- (id)conditionalProbabilityForString:(id)a3 context:(id)a4;
- (id)conditionalProbabilityForToken:(id)a3 context:(id)a4;
- (id)description;
- (id)predictionInitialCharacterSet;
- (id)predictionOptionsForMaximumPredictions:(unint64_t)a3 maximumTokensPerPrediction:(unint64_t)a4;
- (id)stateWithOptions:(id)a3;
- (void)dealloc;
- (void)enumeratePredictionsForContext:(id)a3 maximumPredictions:(unint64_t)a4 maximumTokensPerPrediction:(unint64_t)a5 withBlock:(id)a6;
@end

@implementation NLNLPLanguageModelSession

- (NLNLPLanguageModelSession)initWithLanguageModel:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 granularity];
  v9 = objc_alloc(MEMORY[0x1E695DF20]);
  v10 = [v7 localization];
  v11 = MEMORY[0x1E69980C0];
  if (v8 != 1)
  {
    v11 = MEMORY[0x1E69980C8];
  }

  v12 = *v11;
  v13 = MEMORY[0x1E6998120];
  if (v8 != 1)
  {
    v13 = MEMORY[0x1E6998128];
  }

  v14 = [v9 initWithObjectsAndKeys:{v10, *MEMORY[0x1E69980F8], v12, *MEMORY[0x1E69980B8], *v13, *MEMORY[0x1E6998130], 0}];

  v17.receiver = self;
  v17.super_class = NLNLPLanguageModelSession;
  v15 = [(NLLanguageModelSession *)&v17 initWithLanguageModel:v7 options:v6];

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
  v5 = [(NLLanguageModelSession *)self languageModel];
  v6 = [v5 localization];
  v7 = objc_msgSend(v3, "stringWithFormat:", @"%@(%@"), v4, v6;

  if (self->_model)
  {
    [v7 appendFormat:@":NLP:%p", self->_model];
  }

  [v7 appendString:@""]);

  return v7;
}

- (id)conditionalProbabilityForToken:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      v13 = 0;
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
          v13 = [(NLProbabilityInfo *)v20 initWithProbability:0 flags:valuePtr];
        }

        else
        {
          v13 = 0;
        }

        CFRelease(v18);
      }

      else
      {
        v13 = 0;
      }

      v21 = self->_model;
      CoreLMReset();
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v8);
    if (!v11)
    {
LABEL_10:
      if (v13)
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
  v13 = [[NLProbabilityInfo alloc] initWithInvalidProbability];
LABEL_12:

  return v13;
}

- (id)conditionalProbabilityForString:(id)a3 context:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
      v13 = 0;
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
        v30 = v6;
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
          v13 = 0;
        }

        else
        {
          v18 = 1.0;
LABEL_27:
          v13 = [[NLProbabilityInfo alloc] initWithProbability:0 flags:v18];
        }

        v27 = self->_model;
        CoreLMReset();
        v6 = v30;
        if (v8)
        {
          goto LABEL_31;
        }

LABEL_32:

        if (v13)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v13 = 0;
    }

LABEL_31:
    CFRelease(v8);
    goto LABEL_32;
  }

LABEL_33:
  v13 = [[NLProbabilityInfo alloc] initWithInvalidProbability];
LABEL_34:

  v28 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)conditionalProbabilitiesForStrings:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_model && (v8 = CoreLMCopyTokenIdsForText()) != 0)
  {
    v9 = v8;
    model = self->_model;
    if (CoreLMUpdateWithContext())
    {
      v11 = [NLNLPLanguageModelNode conditionalProbabilitiesForStrings:v6 modelState:self->_model copyRequired:0];
      v12 = self->_model;
      CoreLMReset();
    }

    else
    {
      v11 = [NLNLPLanguageModelNode conditionalProbabilitiesForStrings:v6 modelState:0 copyRequired:0];
    }

    CFRelease(v9);
  }

  else
  {
    v11 = [NLNLPLanguageModelNode conditionalProbabilitiesForStrings:v6 modelState:0 copyRequired:0];
  }

  return v11;
}

- (id)stateWithOptions:(id)a3
{
  v4 = a3;
  if (self->_model && (v5 = CoreLMCreateCopy()) != 0)
  {
    v6 = [[NLNLPLanguageModelState alloc] initWithSession:self options:v4 context:&stru_1F10C6540 modelState:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)predictionOptionsForMaximumPredictions:(unint64_t)a3 maximumTokensPerPrediction:(unint64_t)a4
{
  v12[3] = *MEMORY[0x1E69E9840];
  if (a3 <= 0xA)
  {
    a3 = 10;
  }

  v12[0] = *MEMORY[0x1E6998108];
  v5 = *MEMORY[0x1E6998118];
  v11[0] = *MEMORY[0x1E6998110];
  v11[1] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v12[1] = v6;
  v11[2] = *MEMORY[0x1E6998100];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
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

- (void)enumeratePredictionsForContext:(id)a3 maximumPredictions:(unint64_t)a4 maximumTokensPerPrediction:(unint64_t)a5 withBlock:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
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
        v37 = v9;
        v34 = [(NLNLPLanguageModelSession *)self predictionOptionsForMaximumPredictions:a4 maximumTokensPerPrediction:a5];
        v14 = self->_model;
        v15 = CoreLMCopyPredictions();
        v16 = [v15 keysSortedByValueUsingComparator:&__block_literal_global_311];
        v36 = self;
        v17 = [(NLNLPLanguageModelSession *)self predictionInitialCharacterSet];
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
            [v23 rangeOfCharacterFromSet:v17 options:8];
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
              v10[2](v10, v31, &v40);
              ++v20;
            }

            if ((v40 & 1) != 0 || v20 >= a4)
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

        v32 = v36->_model;
        CoreLMReset();

        v9 = v37;
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
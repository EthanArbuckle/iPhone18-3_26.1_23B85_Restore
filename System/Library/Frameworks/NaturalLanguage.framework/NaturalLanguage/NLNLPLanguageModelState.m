@interface NLNLPLanguageModelState
- (NLNLPLanguageModelState)initWithSession:(id)a3 options:(id)a4 context:(id)a5 modelState:(void *)a6;
- (id)conditionalProbabilityForString:(id)a3;
- (id)conditionalProbabilityForToken:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addContext:(id)a3;
- (void)dealloc;
- (void)enumeratePredictions:(unint64_t)a3 maximumTokensPerPrediction:(unint64_t)a4 withBlock:(id)a5;
- (void)resetContext;
@end

@implementation NLNLPLanguageModelState

- (NLNLPLanguageModelState)initWithSession:(id)a3 options:(id)a4 context:(id)a5 modelState:(void *)a6
{
  v8.receiver = self;
  v8.super_class = NLNLPLanguageModelState;
  result = [(NLLanguageModelState *)&v8 initWithSession:a3 options:a4 context:a5];
  if (result)
  {
    result->_modelState = a6;
  }

  return result;
}

- (void)dealloc
{
  modelState = self->_modelState;
  if (modelState)
  {
    CFRelease(modelState);
  }

  v4.receiver = self;
  v4.super_class = NLNLPLanguageModelState;
  [(NLNLPLanguageModelState *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = NLNLPLanguageModelState;
  v4 = [(NLLanguageModelState *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@", v4];

  if (self->_modelState)
  {
    [v5 appendFormat:@"(NLP:%p)", self->_modelState];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (!self->_modelState)
  {
    return 0;
  }

  v4 = CoreLMCreateCopy();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [NLNLPLanguageModelState alloc];
  v7 = [(NLLanguageModelState *)self session];
  v8 = [(NLLanguageModelState *)self options];
  v9 = [(NLLanguageModelState *)self context];
  v10 = [(NLNLPLanguageModelState *)v6 initWithSession:v7 options:v8 context:v9 modelState:v5];

  return v10;
}

- (void)addContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NLNLPLanguageModelState;
  [(NLLanguageModelState *)&v8 addContext:v4];
  if (self->_modelState)
  {
    v5 = CoreLMCopyTokenIdsForText();
    if (v5)
    {
      v6 = v5;
      modelState = self->_modelState;
      CoreLMUpdateWithContext();
      CFRelease(v6);
    }
  }
}

- (void)resetContext
{
  v3.receiver = self;
  v3.super_class = NLNLPLanguageModelState;
  [(NLLanguageModelState *)&v3 resetContext];
  if (self->_modelState)
  {
    CoreLMReset();
  }
}

- (id)conditionalProbabilityForToken:(id)a3
{
  v4 = a3;
  if (!self->_modelState)
  {
    goto LABEL_9;
  }

  v5 = CoreLMCopyTokenIdsForText();
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  if (CFArrayGetCount(v5) != 1 || (modelState = self->_modelState, (v8 = CoreLMCopyConditionalProbabilities()) == 0))
  {
    CFRelease(v6);
LABEL_9:
    v12 = [[NLProbabilityInfo alloc] initWithInvalidProbability];
    goto LABEL_10;
  }

  v9 = v8;
  if (CFArrayGetCount(v8) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v9, 0), valuePtr = 0.0, CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr)))
  {
    v11 = [NLProbabilityInfo alloc];
    v12 = [(NLProbabilityInfo *)v11 initWithProbability:0 flags:valuePtr];
  }

  else
  {
    v12 = 0;
  }

  CFRelease(v9);
  CFRelease(v6);
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v12;
}

- (id)conditionalProbabilityForString:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  modelState = self->_modelState;
  if (modelState)
  {
    v6 = self->_modelState;
    v7 = CoreLMCopyTokenIdsForText();
    v8 = [v7 count];
    if (v8 < 2)
    {
      v10 = 0;
    }

    else
    {
      v9 = self->_modelState;
      modelState = CoreLMCreateCopy();
      v10 = modelState != 0;
    }

    if (v7)
    {
      v11 = modelState == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      if (!v8)
      {
        v16 = 1.0;
LABEL_33:
        v12 = [[NLProbabilityInfo alloc] initWithProbability:0 flags:v16];
        if (!v10)
        {
LABEL_12:

          if (v12)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

LABEL_11:
        CFRelease(modelState);
        goto LABEL_12;
      }

      v15 = 0;
      v16 = 1.0;
      while (1)
      {
        v17 = [v7 objectAtIndex:v15];
        v26[0] = v17;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
        v18 = CoreLMCopyConditionalProbabilities();
        if (!v18)
        {
          break;
        }

        v19 = v18;
        if (CFArrayGetCount(v18) == 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v19, 0);
          v24 = 0.0;
          Value = CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &v24);
          v22 = Value != 0;
          if (Value)
          {
            v16 = v16 * v24;
          }
        }

        else
        {
          v22 = 0;
        }

        CFRelease(v19);
        if (++v15 < v8 && v22)
        {
          v25 = v17;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
          v23 = CoreLMUpdateWithContext();

          if ((v23 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {

          if (!v22)
          {
            goto LABEL_10;
          }
        }

        if (v8 == v15)
        {
          goto LABEL_33;
        }
      }
    }

LABEL_10:
    v12 = 0;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v12 = [[NLProbabilityInfo alloc] initWithInvalidProbability];
LABEL_14:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)enumeratePredictions:(unint64_t)a3 maximumTokensPerPrediction:(unint64_t)a4 withBlock:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (self->_modelState)
  {
    v9 = [(NLLanguageModelState *)self session];
    v10 = [v9 predictionOptionsForMaximumPredictions:a3 maximumTokensPerPrediction:a4];

    modelState = self->_modelState;
    v32 = v10;
    v12 = CoreLMCopyPredictions();
    v13 = [v12 keysSortedByValueUsingComparator:&__block_literal_global_380];
    v14 = [(NLLanguageModelState *)self session];
    v15 = [v14 predictionInitialCharacterSet];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v13;
    v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = a3;
      v19 = 0;
      v20 = *v37;
      v34 = v18;
LABEL_4:
      v21 = 0;
      while (1)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v36 + 1) + 8 * v21);
        v23 = [v12 objectForKey:v22];
        [v23 doubleValue];
        v25 = v24;

        v35 = 0;
        [v22 rangeOfCharacterFromSet:v15 options:8];
        if (v26)
        {
          v27 = [[NLProbabilityInfo alloc] initWithProbability:0 flags:v25];
          if ([v22 length] >= 2 && (objc_msgSend(v22, "hasSuffix:", @" ") & 1) != 0)
          {
            v28 = [v22 substringToIndex:{objc_msgSend(v22, "length") - 1}];
          }

          else
          {
            v28 = v22;
          }

          v29 = v28;
          v30 = [[NLPredictionInfo alloc] initWithPrediction:v28 probabilityInfo:v27];
          v8[2](v8, v30, &v35);
          ++v19;

          v18 = v34;
        }

        if ((v35 & 1) != 0 || v19 >= v18)
        {
          break;
        }

        if (v17 == ++v21)
        {
          v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v17)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __85__NLNLPLanguageModelState_enumeratePredictions_maximumTokensPerPrediction_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
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
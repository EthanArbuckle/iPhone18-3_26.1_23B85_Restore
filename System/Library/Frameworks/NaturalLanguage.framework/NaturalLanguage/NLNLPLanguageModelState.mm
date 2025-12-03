@interface NLNLPLanguageModelState
- (NLNLPLanguageModelState)initWithSession:(id)session options:(id)options context:(id)context modelState:(void *)state;
- (id)conditionalProbabilityForString:(id)string;
- (id)conditionalProbabilityForToken:(id)token;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addContext:(id)context;
- (void)dealloc;
- (void)enumeratePredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block;
- (void)resetContext;
@end

@implementation NLNLPLanguageModelState

- (NLNLPLanguageModelState)initWithSession:(id)session options:(id)options context:(id)context modelState:(void *)state
{
  v8.receiver = self;
  v8.super_class = NLNLPLanguageModelState;
  result = [(NLLanguageModelState *)&v8 initWithSession:session options:options context:context];
  if (result)
  {
    result->_modelState = state;
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

- (id)copyWithZone:(_NSZone *)zone
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
  session = [(NLLanguageModelState *)self session];
  options = [(NLLanguageModelState *)self options];
  context = [(NLLanguageModelState *)self context];
  v10 = [(NLNLPLanguageModelState *)v6 initWithSession:session options:options context:context modelState:v5];

  return v10;
}

- (void)addContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = NLNLPLanguageModelState;
  [(NLLanguageModelState *)&v8 addContext:contextCopy];
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

- (id)conditionalProbabilityForToken:(id)token
{
  tokenCopy = token;
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
    initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];
    goto LABEL_10;
  }

  v9 = v8;
  if (CFArrayGetCount(v8) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v9, 0), valuePtr = 0.0, CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr)))
  {
    v11 = [NLProbabilityInfo alloc];
    initWithInvalidProbability = [(NLProbabilityInfo *)v11 initWithProbability:0 flags:valuePtr];
  }

  else
  {
    initWithInvalidProbability = 0;
  }

  CFRelease(v9);
  CFRelease(v6);
  if (!initWithInvalidProbability)
  {
    goto LABEL_9;
  }

LABEL_10:

  return initWithInvalidProbability;
}

- (id)conditionalProbabilityForString:(id)string
{
  v26[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
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
        initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithProbability:0 flags:v16];
        if (!v10)
        {
LABEL_12:

          if (initWithInvalidProbability)
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
    initWithInvalidProbability = 0;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];
LABEL_14:

  v13 = *MEMORY[0x1E69E9840];

  return initWithInvalidProbability;
}

- (void)enumeratePredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block
{
  v41 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (self->_modelState)
  {
    session = [(NLLanguageModelState *)self session];
    v10 = [session predictionOptionsForMaximumPredictions:predictions maximumTokensPerPrediction:prediction];

    modelState = self->_modelState;
    v32 = v10;
    v12 = CoreLMCopyPredictions();
    v13 = [v12 keysSortedByValueUsingComparator:&__block_literal_global_380];
    session2 = [(NLLanguageModelState *)self session];
    predictionInitialCharacterSet = [session2 predictionInitialCharacterSet];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v13;
    v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      predictionsCopy = predictions;
      v19 = 0;
      v20 = *v37;
      v34 = predictionsCopy;
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
        [v22 rangeOfCharacterFromSet:predictionInitialCharacterSet options:8];
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
          blockCopy[2](blockCopy, v30, &v35);
          ++v19;

          predictionsCopy = v34;
        }

        if ((v35 & 1) != 0 || v19 >= predictionsCopy)
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
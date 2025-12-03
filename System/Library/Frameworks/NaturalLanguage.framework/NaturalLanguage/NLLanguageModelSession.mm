@interface NLLanguageModelSession
- (NLLanguageModelSession)initWithLanguageModel:(id)model options:(id)options;
- (id)conditionalProbabilitiesForStrings:(id)strings context:(id)context;
- (id)conditionalProbabilitiesForTokens:(id)tokens context:(id)context;
- (id)conditionalProbabilityForString:(id)string context:(id)context;
- (id)conditionalProbabilityForToken:(id)token context:(id)context;
- (id)stateWithOptions:(id)options;
@end

@implementation NLLanguageModelSession

- (NLLanguageModelSession)initWithLanguageModel:(id)model options:(id)options
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = NLLanguageModelSession;
  v7 = [(NLLanguageModelSession *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_languageModel, model);
  }

  return v8;
}

- (id)conditionalProbabilityForToken:(id)token context:(id)context
{
  initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];

  return initWithInvalidProbability;
}

- (id)conditionalProbabilitiesForTokens:(id)tokens context:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = tokensCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NLLanguageModelSession *)self conditionalProbabilityForToken:*(*(&v17 + 1) + 8 * i) context:contextCopy, v17];
        [array addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)conditionalProbabilityForString:(id)string context:(id)context
{
  initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];

  return initWithInvalidProbability;
}

- (id)conditionalProbabilitiesForStrings:(id)strings context:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = stringsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NLLanguageModelSession *)self conditionalProbabilityForString:*(*(&v17 + 1) + 8 * i) context:contextCopy, v17];
        [array addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)stateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [[NLLanguageModelState alloc] initWithSession:self options:optionsCopy context:&stru_1F10C6540];

  return v5;
}

@end
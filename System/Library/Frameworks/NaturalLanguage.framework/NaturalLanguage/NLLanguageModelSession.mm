@interface NLLanguageModelSession
- (NLLanguageModelSession)initWithLanguageModel:(id)a3 options:(id)a4;
- (id)conditionalProbabilitiesForStrings:(id)a3 context:(id)a4;
- (id)conditionalProbabilitiesForTokens:(id)a3 context:(id)a4;
- (id)conditionalProbabilityForString:(id)a3 context:(id)a4;
- (id)conditionalProbabilityForToken:(id)a3 context:(id)a4;
- (id)stateWithOptions:(id)a3;
@end

@implementation NLLanguageModelSession

- (NLLanguageModelSession)initWithLanguageModel:(id)a3 options:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = NLLanguageModelSession;
  v7 = [(NLLanguageModelSession *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_languageModel, a3);
  }

  return v8;
}

- (id)conditionalProbabilityForToken:(id)a3 context:(id)a4
{
  v4 = [[NLProbabilityInfo alloc] initWithInvalidProbability];

  return v4;
}

- (id)conditionalProbabilitiesForTokens:(id)a3 context:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
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

        v14 = [(NLLanguageModelSession *)self conditionalProbabilityForToken:*(*(&v17 + 1) + 8 * i) context:v7, v17];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)conditionalProbabilityForString:(id)a3 context:(id)a4
{
  v4 = [[NLProbabilityInfo alloc] initWithInvalidProbability];

  return v4;
}

- (id)conditionalProbabilitiesForStrings:(id)a3 context:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
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

        v14 = [(NLLanguageModelSession *)self conditionalProbabilityForString:*(*(&v17 + 1) + 8 * i) context:v7, v17];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)stateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [[NLLanguageModelState alloc] initWithSession:self options:v4 context:&stru_1F10C6540];

  return v5;
}

@end
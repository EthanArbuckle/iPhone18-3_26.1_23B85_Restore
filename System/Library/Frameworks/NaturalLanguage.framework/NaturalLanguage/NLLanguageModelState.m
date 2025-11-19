@interface NLLanguageModelState
- (NLLanguageModelState)initWithSession:(id)a3 options:(id)a4 context:(id)a5;
- (id)conditionalProbabilitiesForStrings:(id)a3;
- (id)conditionalProbabilitiesForTokens:(id)a3;
- (id)conditionalProbabilityForString:(id)a3;
- (id)conditionalProbabilityForToken:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)enumeratePredictions:(unint64_t)a3 maximumTokensPerPrediction:(unint64_t)a4 withBlock:(id)a5;
- (void)resetContext;
@end

@implementation NLLanguageModelState

- (NLLanguageModelState)initWithSession:(id)a3 options:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = NLLanguageModelState;
  v12 = [(NLLanguageModelState *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_session, a3);
    objc_storeStrong(&v13->_options, a4);
    v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v11];
    context = v13->_context;
    v13->_context = v14;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = NLLanguageModelState;
  v4 = [(NLLanguageModelState *)&v11 description];
  v5 = [(NLLanguageModelState *)self session];
  v6 = [v5 languageModel];
  v7 = [v6 localization];
  v8 = [(NLLanguageModelState *)self context];
  v9 = [v3 stringWithFormat:@"%@(%@)<%@>", v4, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NLLanguageModelState *)self session];
  v6 = [(NLLanguageModelState *)self options];
  v7 = [(NLLanguageModelState *)self context];
  v8 = [v4 initWithSession:v5 options:v6 context:v7];

  return v8;
}

- (void)resetContext
{
  context = self->_context;
  v3 = [(NSMutableString *)context length];

  [(NSMutableString *)context deleteCharactersInRange:0, v3];
}

- (id)conditionalProbabilityForToken:(id)a3
{
  v4 = a3;
  v5 = [(NLLanguageModelState *)self session];
  v6 = [(NLLanguageModelState *)self context];
  v7 = [v5 conditionalProbabilityForToken:v4 context:v6];

  return v7;
}

- (id)conditionalProbabilitiesForTokens:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NLLanguageModelState *)self conditionalProbabilityForToken:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)conditionalProbabilityForString:(id)a3
{
  v4 = a3;
  v5 = [(NLLanguageModelState *)self session];
  v6 = [(NLLanguageModelState *)self context];
  v7 = [v5 conditionalProbabilityForString:v4 context:v6];

  return v7;
}

- (id)conditionalProbabilitiesForStrings:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NLLanguageModelState *)self conditionalProbabilityForString:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)enumeratePredictions:(unint64_t)a3 maximumTokensPerPrediction:(unint64_t)a4 withBlock:(id)a5
{
  v8 = a5;
  v10 = [(NLLanguageModelState *)self session];
  v9 = [(NLLanguageModelState *)self context];
  [v10 enumeratePredictionsForContext:v9 maximumPredictions:a3 maximumTokensPerPrediction:a4 withBlock:v8];
}

@end
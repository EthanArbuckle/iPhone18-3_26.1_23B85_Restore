@interface NLLanguageModelState
- (NLLanguageModelState)initWithSession:(id)session options:(id)options context:(id)context;
- (id)conditionalProbabilitiesForStrings:(id)strings;
- (id)conditionalProbabilitiesForTokens:(id)tokens;
- (id)conditionalProbabilityForString:(id)string;
- (id)conditionalProbabilityForToken:(id)token;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)enumeratePredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block;
- (void)resetContext;
@end

@implementation NLLanguageModelState

- (NLLanguageModelState)initWithSession:(id)session options:(id)options context:(id)context
{
  sessionCopy = session;
  optionsCopy = options;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = NLLanguageModelState;
  v12 = [(NLLanguageModelState *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_session, session);
    objc_storeStrong(&v13->_options, options);
    v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:contextCopy];
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
  session = [(NLLanguageModelState *)self session];
  languageModel = [session languageModel];
  localization = [languageModel localization];
  context = [(NLLanguageModelState *)self context];
  v9 = [v3 stringWithFormat:@"%@(%@)<%@>", v4, localization, context];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  session = [(NLLanguageModelState *)self session];
  options = [(NLLanguageModelState *)self options];
  context = [(NLLanguageModelState *)self context];
  v8 = [v4 initWithSession:session options:options context:context];

  return v8;
}

- (void)resetContext
{
  context = self->_context;
  v3 = [(NSMutableString *)context length];

  [(NSMutableString *)context deleteCharactersInRange:0, v3];
}

- (id)conditionalProbabilityForToken:(id)token
{
  tokenCopy = token;
  session = [(NLLanguageModelState *)self session];
  context = [(NLLanguageModelState *)self context];
  v7 = [session conditionalProbabilityForToken:tokenCopy context:context];

  return v7;
}

- (id)conditionalProbabilitiesForTokens:(id)tokens
{
  v19 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = tokensCopy;
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
        [array addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)conditionalProbabilityForString:(id)string
{
  stringCopy = string;
  session = [(NLLanguageModelState *)self session];
  context = [(NLLanguageModelState *)self context];
  v7 = [session conditionalProbabilityForString:stringCopy context:context];

  return v7;
}

- (id)conditionalProbabilitiesForStrings:(id)strings
{
  v19 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = stringsCopy;
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
        [array addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)enumeratePredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block
{
  blockCopy = block;
  session = [(NLLanguageModelState *)self session];
  context = [(NLLanguageModelState *)self context];
  [session enumeratePredictionsForContext:context maximumPredictions:predictions maximumTokensPerPrediction:prediction withBlock:blockCopy];
}

@end
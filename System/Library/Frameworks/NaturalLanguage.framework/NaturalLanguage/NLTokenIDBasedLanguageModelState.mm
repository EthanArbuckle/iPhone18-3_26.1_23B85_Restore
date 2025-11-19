@interface NLTokenIDBasedLanguageModelState
- (NLTokenIDBasedLanguageModelState)initWithSession:(id)a3 options:(id)a4 context:(id)a5;
- (NLTokenIDBasedLanguageModelState)initWithSession:(id)a3 options:(id)a4 context:(id)a5 contextTokenIDArray:(id)a6;
- (id)conditionalProbabilitiesForTokenIDs:(const unsigned int *)a3 count:(unint64_t)a4;
- (id)conditionalProbabilityForToken:(id)a3;
- (id)contextTokenIDArrayForContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)contextTokenIDs;
- (void)addContext:(id)a3;
- (void)addContextTokenIDs:(const unsigned int *)a3 length:(unint64_t)a4;
- (void)enumeratePredictions:(unint64_t)a3 maximumTokensPerPrediction:(unint64_t)a4 withBlock:(id)a5;
- (void)resetContext;
@end

@implementation NLTokenIDBasedLanguageModelState

- (id)contextTokenIDArrayForContext:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v7 = [(NLLanguageModelState *)self session];
  v8 = [v7 languageModel];
  v9 = [v8 tokenIDConverter];

  v10 = [v5 length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__NLTokenIDBasedLanguageModelState_contextTokenIDArrayForContext___block_invoke;
  v13[3] = &unk_1E76298D0;
  v11 = v6;
  v14 = v11;
  [v9 enumerateTokenIDsForString:v5 range:0 withBlock:{v10, v13}];

  return v11;
}

void __66__NLTokenIDBasedLanguageModelState_contextTokenIDArrayForContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v4 addObject:v5];
}

- (NLTokenIDBasedLanguageModelState)initWithSession:(id)a3 options:(id)a4 context:(id)a5 contextTokenIDArray:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = NLTokenIDBasedLanguageModelState;
  v11 = [(NLLanguageModelState *)&v15 initWithSession:a3 options:a4 context:a5];
  if (v11)
  {
    v12 = [v10 mutableCopy];
    contextTokenIDArray = v11->_contextTokenIDArray;
    v11->_contextTokenIDArray = v12;
  }

  return v11;
}

- (NLTokenIDBasedLanguageModelState)initWithSession:(id)a3 options:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NLTokenIDBasedLanguageModelState *)self contextTokenIDArrayForContext:v8];
  v12 = [(NLTokenIDBasedLanguageModelState *)self initWithSession:v10 options:v9 context:v8 contextTokenIDArray:v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NLLanguageModelState *)self session];
  v6 = [(NLLanguageModelState *)self options];
  v7 = [(NLLanguageModelState *)self context];
  v8 = [v4 initWithSession:v5 options:v6 context:v7 contextTokenIDArray:self->_contextTokenIDArray];

  return v8;
}

- (void)addContext:(id)a3
{
  v4 = a3;
  v5 = [(NLTokenIDBasedLanguageModelState *)self contextTokenIDArrayForContext:v4];
  v6.receiver = self;
  v6.super_class = NLTokenIDBasedLanguageModelState;
  [(NLLanguageModelState *)&v6 addContext:v4];

  [(NSMutableArray *)self->_contextTokenIDArray addObjectsFromArray:v5];
}

- (void)resetContext
{
  v3.receiver = self;
  v3.super_class = NLTokenIDBasedLanguageModelState;
  [(NLLanguageModelState *)&v3 resetContext];
  [(NSMutableArray *)self->_contextTokenIDArray removeAllObjects];
}

- (void)addContextTokenIDs:(const unsigned int *)a3 length:(unint64_t)a4
{
  v7 = [(NLLanguageModelState *)self session];
  v8 = [v7 languageModel];
  v9 = [v8 tokenIDConverter];

  v10 = [v9 stringForTokenIDs:a3 length:a4];
  v11 = [(NLLanguageModelState *)self context];
  if ([v11 length])
  {
    v12 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
    [v10 rangeOfCharacterFromSet:v12];
    v14 = v13;

    if (v14)
    {
      v19.receiver = self;
      v19.super_class = NLTokenIDBasedLanguageModelState;
      [(NLLanguageModelState *)&v19 addContext:@" "];
    }
  }

  else
  {
  }

  v18.receiver = self;
  v18.super_class = NLTokenIDBasedLanguageModelState;
  [(NLLanguageModelState *)&v18 addContext:v10];
  for (; a4; --a4)
  {
    contextTokenIDArray = self->_contextTokenIDArray;
    v16 = *a3++;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
    [(NSMutableArray *)contextTokenIDArray addObject:v17];
  }
}

- (id)conditionalProbabilityForToken:(id)a3
{
  v4 = a3;
  v5 = [(NLLanguageModelState *)self session];
  v6 = [v5 languageModel];
  v7 = [v6 tokenIDConverter];

  v8 = [v7 tokenIDForString:v4];
  v9 = [(NLTokenIDBasedLanguageModelState *)self conditionalProbabilityForTokenID:v8];

  return v9;
}

- (unsigned)contextTokenIDs
{
  v3 = [(NLTokenIDBasedLanguageModelState *)self contextLength];
  v4 = malloc_type_malloc(4 * v3, 0x100004052888210uLL);
  *v4 = 1;
  if (v3 >= 2)
  {
    v5 = 0;
    v6 = v3 - 1;
    do
    {
      v7 = [(NSMutableArray *)self->_contextTokenIDArray objectAtIndex:v5];
      v4[v5 + 1] = [v7 unsignedIntegerValue];

      ++v5;
    }

    while (v6 != v5);
  }

  return v4;
}

- (id)conditionalProbabilitiesForTokenIDs:(const unsigned int *)a3 count:(unint64_t)a4
{
  v7 = [(NLTokenIDBasedLanguageModelState *)self contextTokenIDs];
  v8 = [(NLLanguageModelState *)self session];
  v9 = [v8 conditionalProbabilitiesForTokenIDs:a3 count:a4 contextTokenIDs:v7 length:{-[NLTokenIDBasedLanguageModelState contextLength](self, "contextLength")}];

  if (v7)
  {
    free(v7);
  }

  return v9;
}

- (void)enumeratePredictions:(unint64_t)a3 maximumTokensPerPrediction:(unint64_t)a4 withBlock:(id)a5
{
  v8 = a5;
  v9 = [(NLTokenIDBasedLanguageModelState *)self contextTokenIDs];
  v10 = [(NLLanguageModelState *)self session];
  [v10 enumeratePredictionsForContextTokenIDs:v9 length:-[NLTokenIDBasedLanguageModelState contextLength](self maximumPredictions:"contextLength") maximumTokensPerPrediction:a3 withBlock:{a4, v8}];

  if (v9)
  {

    free(v9);
  }
}

@end
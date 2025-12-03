@interface NLTokenIDBasedLanguageModelState
- (NLTokenIDBasedLanguageModelState)initWithSession:(id)session options:(id)options context:(id)context;
- (NLTokenIDBasedLanguageModelState)initWithSession:(id)session options:(id)options context:(id)context contextTokenIDArray:(id)array;
- (id)conditionalProbabilitiesForTokenIDs:(const unsigned int *)ds count:(unint64_t)count;
- (id)conditionalProbabilityForToken:(id)token;
- (id)contextTokenIDArrayForContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)contextTokenIDs;
- (void)addContext:(id)context;
- (void)addContextTokenIDs:(const unsigned int *)ds length:(unint64_t)length;
- (void)enumeratePredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block;
- (void)resetContext;
@end

@implementation NLTokenIDBasedLanguageModelState

- (id)contextTokenIDArrayForContext:(id)context
{
  v4 = MEMORY[0x1E695DF70];
  contextCopy = context;
  array = [v4 array];
  session = [(NLLanguageModelState *)self session];
  languageModel = [session languageModel];
  tokenIDConverter = [languageModel tokenIDConverter];

  v10 = [contextCopy length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__NLTokenIDBasedLanguageModelState_contextTokenIDArrayForContext___block_invoke;
  v13[3] = &unk_1E76298D0;
  v11 = array;
  v14 = v11;
  [tokenIDConverter enumerateTokenIDsForString:contextCopy range:0 withBlock:{v10, v13}];

  return v11;
}

void __66__NLTokenIDBasedLanguageModelState_contextTokenIDArrayForContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v4 addObject:v5];
}

- (NLTokenIDBasedLanguageModelState)initWithSession:(id)session options:(id)options context:(id)context contextTokenIDArray:(id)array
{
  arrayCopy = array;
  v15.receiver = self;
  v15.super_class = NLTokenIDBasedLanguageModelState;
  v11 = [(NLLanguageModelState *)&v15 initWithSession:session options:options context:context];
  if (v11)
  {
    v12 = [arrayCopy mutableCopy];
    contextTokenIDArray = v11->_contextTokenIDArray;
    v11->_contextTokenIDArray = v12;
  }

  return v11;
}

- (NLTokenIDBasedLanguageModelState)initWithSession:(id)session options:(id)options context:(id)context
{
  contextCopy = context;
  optionsCopy = options;
  sessionCopy = session;
  v11 = [(NLTokenIDBasedLanguageModelState *)self contextTokenIDArrayForContext:contextCopy];
  v12 = [(NLTokenIDBasedLanguageModelState *)self initWithSession:sessionCopy options:optionsCopy context:contextCopy contextTokenIDArray:v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  session = [(NLLanguageModelState *)self session];
  options = [(NLLanguageModelState *)self options];
  context = [(NLLanguageModelState *)self context];
  v8 = [v4 initWithSession:session options:options context:context contextTokenIDArray:self->_contextTokenIDArray];

  return v8;
}

- (void)addContext:(id)context
{
  contextCopy = context;
  v5 = [(NLTokenIDBasedLanguageModelState *)self contextTokenIDArrayForContext:contextCopy];
  v6.receiver = self;
  v6.super_class = NLTokenIDBasedLanguageModelState;
  [(NLLanguageModelState *)&v6 addContext:contextCopy];

  [(NSMutableArray *)self->_contextTokenIDArray addObjectsFromArray:v5];
}

- (void)resetContext
{
  v3.receiver = self;
  v3.super_class = NLTokenIDBasedLanguageModelState;
  [(NLLanguageModelState *)&v3 resetContext];
  [(NSMutableArray *)self->_contextTokenIDArray removeAllObjects];
}

- (void)addContextTokenIDs:(const unsigned int *)ds length:(unint64_t)length
{
  session = [(NLLanguageModelState *)self session];
  languageModel = [session languageModel];
  tokenIDConverter = [languageModel tokenIDConverter];

  v10 = [tokenIDConverter stringForTokenIDs:ds length:length];
  context = [(NLLanguageModelState *)self context];
  if ([context length])
  {
    alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
    [v10 rangeOfCharacterFromSet:alphanumericCharacterSet];
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
  for (; length; --length)
  {
    contextTokenIDArray = self->_contextTokenIDArray;
    v16 = *ds++;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
    [(NSMutableArray *)contextTokenIDArray addObject:v17];
  }
}

- (id)conditionalProbabilityForToken:(id)token
{
  tokenCopy = token;
  session = [(NLLanguageModelState *)self session];
  languageModel = [session languageModel];
  tokenIDConverter = [languageModel tokenIDConverter];

  v8 = [tokenIDConverter tokenIDForString:tokenCopy];
  v9 = [(NLTokenIDBasedLanguageModelState *)self conditionalProbabilityForTokenID:v8];

  return v9;
}

- (unsigned)contextTokenIDs
{
  contextLength = [(NLTokenIDBasedLanguageModelState *)self contextLength];
  v4 = malloc_type_malloc(4 * contextLength, 0x100004052888210uLL);
  *v4 = 1;
  if (contextLength >= 2)
  {
    v5 = 0;
    v6 = contextLength - 1;
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

- (id)conditionalProbabilitiesForTokenIDs:(const unsigned int *)ds count:(unint64_t)count
{
  contextTokenIDs = [(NLTokenIDBasedLanguageModelState *)self contextTokenIDs];
  session = [(NLLanguageModelState *)self session];
  v9 = [session conditionalProbabilitiesForTokenIDs:ds count:count contextTokenIDs:contextTokenIDs length:{-[NLTokenIDBasedLanguageModelState contextLength](self, "contextLength")}];

  if (contextTokenIDs)
  {
    free(contextTokenIDs);
  }

  return v9;
}

- (void)enumeratePredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block
{
  blockCopy = block;
  contextTokenIDs = [(NLTokenIDBasedLanguageModelState *)self contextTokenIDs];
  session = [(NLLanguageModelState *)self session];
  [session enumeratePredictionsForContextTokenIDs:contextTokenIDs length:-[NLTokenIDBasedLanguageModelState contextLength](self maximumPredictions:"contextLength") maximumTokensPerPrediction:predictions withBlock:{prediction, blockCopy}];

  if (contextTokenIDs)
  {

    free(contextTokenIDs);
  }
}

@end
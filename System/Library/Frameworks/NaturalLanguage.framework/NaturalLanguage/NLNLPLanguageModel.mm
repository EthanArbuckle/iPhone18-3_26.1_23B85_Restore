@interface NLNLPLanguageModel
- (NLNLPLanguageModel)initWithLocalization:(id)localization options:(id)options;
- (double)conditionalProbabilityForEntry:(id)entry context:(id)context;
- (double)conditionalProbabilityForWord:(id)word context:(id)context;
- (id)sessionWithOptions:(id)options;
- (void)enumeratePredictionsForContext:(id)context maxEntriesPerPrediction:(unint64_t)prediction usingBlock:(id)block;
- (void)enumeratePredictionsForContext:(id)context maxWordsPerPrediction:(unint64_t)prediction usingBlock:(id)block;
@end

@implementation NLNLPLanguageModel

- (NLNLPLanguageModel)initWithLocalization:(id)localization options:(id)options
{
  localizationCopy = localization;
  v7 = granularityForOptions(options);
  v10.receiver = self;
  v10.super_class = NLNLPLanguageModel;
  v8 = [(NLLanguageModel *)&v10 initWithLocalization:localizationCopy];

  if (v8)
  {
    v8->_granularity = v7;
  }

  return v8;
}

- (id)sessionWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [[NLNLPLanguageModelSession alloc] initWithLanguageModel:self options:optionsCopy];

  return v5;
}

- (double)conditionalProbabilityForEntry:(id)entry context:(id)context
{
  if (conditionalProbabilityForEntry_context__onceToken != -1)
  {
    [NLNLPLanguageModel conditionalProbabilityForEntry:context:];
  }

  return -30.0;
}

- (double)conditionalProbabilityForWord:(id)word context:(id)context
{
  if (conditionalProbabilityForWord_context__onceToken != -1)
  {
    [NLNLPLanguageModel conditionalProbabilityForWord:context:];
  }

  return -30.0;
}

- (void)enumeratePredictionsForContext:(id)context maxEntriesPerPrediction:(unint64_t)prediction usingBlock:(id)block
{
  if (enumeratePredictionsForContext_maxEntriesPerPrediction_usingBlock__onceToken != -1)
  {
    [NLNLPLanguageModel enumeratePredictionsForContext:maxEntriesPerPrediction:usingBlock:];
  }
}

- (void)enumeratePredictionsForContext:(id)context maxWordsPerPrediction:(unint64_t)prediction usingBlock:(id)block
{
  if (enumeratePredictionsForContext_maxWordsPerPrediction_usingBlock__onceToken != -1)
  {
    [NLNLPLanguageModel enumeratePredictionsForContext:maxWordsPerPrediction:usingBlock:];
  }
}

@end
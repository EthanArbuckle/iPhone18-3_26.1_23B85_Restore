@interface NLNLPLanguageModel
- (NLNLPLanguageModel)initWithLocalization:(id)a3 options:(id)a4;
- (double)conditionalProbabilityForEntry:(id)a3 context:(id)a4;
- (double)conditionalProbabilityForWord:(id)a3 context:(id)a4;
- (id)sessionWithOptions:(id)a3;
- (void)enumeratePredictionsForContext:(id)a3 maxEntriesPerPrediction:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumeratePredictionsForContext:(id)a3 maxWordsPerPrediction:(unint64_t)a4 usingBlock:(id)a5;
@end

@implementation NLNLPLanguageModel

- (NLNLPLanguageModel)initWithLocalization:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = granularityForOptions(a4);
  v10.receiver = self;
  v10.super_class = NLNLPLanguageModel;
  v8 = [(NLLanguageModel *)&v10 initWithLocalization:v6];

  if (v8)
  {
    v8->_granularity = v7;
  }

  return v8;
}

- (id)sessionWithOptions:(id)a3
{
  v4 = a3;
  v5 = [[NLNLPLanguageModelSession alloc] initWithLanguageModel:self options:v4];

  return v5;
}

- (double)conditionalProbabilityForEntry:(id)a3 context:(id)a4
{
  if (conditionalProbabilityForEntry_context__onceToken != -1)
  {
    [NLNLPLanguageModel conditionalProbabilityForEntry:context:];
  }

  return -30.0;
}

- (double)conditionalProbabilityForWord:(id)a3 context:(id)a4
{
  if (conditionalProbabilityForWord_context__onceToken != -1)
  {
    [NLNLPLanguageModel conditionalProbabilityForWord:context:];
  }

  return -30.0;
}

- (void)enumeratePredictionsForContext:(id)a3 maxEntriesPerPrediction:(unint64_t)a4 usingBlock:(id)a5
{
  if (enumeratePredictionsForContext_maxEntriesPerPrediction_usingBlock__onceToken != -1)
  {
    [NLNLPLanguageModel enumeratePredictionsForContext:maxEntriesPerPrediction:usingBlock:];
  }
}

- (void)enumeratePredictionsForContext:(id)a3 maxWordsPerPrediction:(unint64_t)a4 usingBlock:(id)a5
{
  if (enumeratePredictionsForContext_maxWordsPerPrediction_usingBlock__onceToken != -1)
  {
    [NLNLPLanguageModel enumeratePredictionsForContext:maxWordsPerPrediction:usingBlock:];
  }
}

@end
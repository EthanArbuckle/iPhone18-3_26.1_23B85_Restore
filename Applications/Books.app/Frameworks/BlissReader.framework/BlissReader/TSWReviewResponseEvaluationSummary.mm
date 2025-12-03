@interface TSWReviewResponseEvaluationSummary
- (TSWReviewResponseEvaluationSummary)initWithScore:(id)score correctCount:(unint64_t)count incorrectCount:(unint64_t)incorrectCount missingCount:(unint64_t)missingCount;
- (void)dealloc;
@end

@implementation TSWReviewResponseEvaluationSummary

- (TSWReviewResponseEvaluationSummary)initWithScore:(id)score correctCount:(unint64_t)count incorrectCount:(unint64_t)incorrectCount missingCount:(unint64_t)missingCount
{
  v12.receiver = self;
  v12.super_class = TSWReviewResponseEvaluationSummary;
  v10 = [(TSWReviewResponseEvaluationSummary *)&v12 init];
  if (v10)
  {
    v10->_score = [score copy];
    v10->_correctCount = count;
    v10->_incorrectCount = incorrectCount;
    v10->_missingCount = missingCount;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWReviewResponseEvaluationSummary;
  [(TSWReviewResponseEvaluationSummary *)&v3 dealloc];
}

@end
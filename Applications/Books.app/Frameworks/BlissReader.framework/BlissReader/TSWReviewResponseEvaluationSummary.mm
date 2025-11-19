@interface TSWReviewResponseEvaluationSummary
- (TSWReviewResponseEvaluationSummary)initWithScore:(id)a3 correctCount:(unint64_t)a4 incorrectCount:(unint64_t)a5 missingCount:(unint64_t)a6;
- (void)dealloc;
@end

@implementation TSWReviewResponseEvaluationSummary

- (TSWReviewResponseEvaluationSummary)initWithScore:(id)a3 correctCount:(unint64_t)a4 incorrectCount:(unint64_t)a5 missingCount:(unint64_t)a6
{
  v12.receiver = self;
  v12.super_class = TSWReviewResponseEvaluationSummary;
  v10 = [(TSWReviewResponseEvaluationSummary *)&v12 init];
  if (v10)
  {
    v10->_score = [a3 copy];
    v10->_correctCount = a4;
    v10->_incorrectCount = a5;
    v10->_missingCount = a6;
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
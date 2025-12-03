@interface TSWReviewResponseEvaluator
+ (id)evaluate:(id)evaluate blockIfCorrect:(id)correct blockIfIncorrect:(id)incorrect blockIfMissing:(id)missing;
- (void)dealloc;
@end

@implementation TSWReviewResponseEvaluator

+ (id)evaluate:(id)evaluate blockIfCorrect:(id)correct blockIfIncorrect:(id)incorrect blockIfMissing:(id)missing
{
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setDataSource:evaluate];
  v11 = [v10 evaluateBlockIfCorrect:correct blockIfIncorrect:incorrect blockIfMissing:missing];

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWReviewResponseEvaluator;
  [(TSWReviewResponseEvaluator *)&v3 dealloc];
}

@end
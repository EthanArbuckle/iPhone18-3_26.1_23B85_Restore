@interface TSWReviewResponseEvaluator
+ (id)evaluate:(id)a3 blockIfCorrect:(id)a4 blockIfIncorrect:(id)a5 blockIfMissing:(id)a6;
- (void)dealloc;
@end

@implementation TSWReviewResponseEvaluator

+ (id)evaluate:(id)a3 blockIfCorrect:(id)a4 blockIfIncorrect:(id)a5 blockIfMissing:(id)a6
{
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setDataSource:a3];
  v11 = [v10 evaluateBlockIfCorrect:a4 blockIfIncorrect:a5 blockIfMissing:a6];

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWReviewResponseEvaluator;
  [(TSWReviewResponseEvaluator *)&v3 dealloc];
}

@end
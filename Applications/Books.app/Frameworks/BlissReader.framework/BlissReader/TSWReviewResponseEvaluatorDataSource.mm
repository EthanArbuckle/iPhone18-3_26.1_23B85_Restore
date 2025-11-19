@interface TSWReviewResponseEvaluatorDataSource
- (TSWReviewResponseEvaluatorDataSource)initWithResponse:(id)a3;
- (double)fractionForChoiceIndex:(unint64_t)a3;
- (void)addFraction:(double)a3;
- (void)dealloc;
@end

@implementation TSWReviewResponseEvaluatorDataSource

- (TSWReviewResponseEvaluatorDataSource)initWithResponse:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSWReviewResponseEvaluatorDataSource;
  v4 = [(TSWReviewResponseEvaluatorDataSource *)&v6 init];
  if (v4)
  {
    v4->_response = a3;
    v4->_fractions = objc_alloc_init(NSMutableArray);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWReviewResponseEvaluatorDataSource;
  [(TSWReviewResponseEvaluatorDataSource *)&v3 dealloc];
}

- (void)addFraction:(double)a3
{
  fractions = self->_fractions;
  *&a3 = a3;
  v4 = [NSNumber numberWithFloat:a3];

  [(NSMutableArray *)fractions addObject:v4];
}

- (double)fractionForChoiceIndex:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_fractions count];
  result = 0.0;
  if (v5 > a3)
  {
    [-[NSMutableArray objectAtIndex:](self->_fractions objectAtIndex:{a3, 0.0), "floatValue"}];
    return v7;
  }

  return result;
}

@end